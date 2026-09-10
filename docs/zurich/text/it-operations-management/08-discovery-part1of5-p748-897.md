# Zurich IT Operations Management — Discovery

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 748–897 of 4823 | Part 1 of 5

Sections: Discovery (p748)

---

<!-- page 748 -->
What to know before you begin
ITOM Visibility is available with activation of the Discovery (com.snc.discovery) plugin and
the Service Mapping (com.snc.service-mapping) plugin, which require an ITOM Visibility
subscription. For details, see Request Discovery and Request Service Mapping. For full ITOM
Visibility functionality, install the latest ITOM Visibility applications from the ServiceNow Store.
For cumulative release note information for all released apps, see the ServiceNow Store version
history release notes.
Define users and configure credentials to enable ITOM Visibility access to applications and
devices inside your organization network. For details, see Prerequisites for performing top-down
discovery using Service Mapping.

Discovery
ServiceNow Discovery is an automated process that continuously scans and identifies all the
components within the IT infrastructure. It plays a crucial role in maintaining an accurate and upto-date CMDB 360 with the information it finds.
https://player.vimeo.com/video/1092921849?
h=0dcb800150&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Discovery is available as a separate subscription from the rest of the ServiceNow AI Platform.
See Request Discovery for details.
Discovery supports database encryption and full-disk encryption. See Database Encryption
details.

for

Get started

Introduction

Set up

Configure

• Zurich

• Request Discovery

• Configuring Discovery

• Exploring Discovery

• Discovery setup

• Discovery properties

• MID Server installation

• Create a Discovery behavior

• Create and test your
credentials

• Create a Discovery CI
classification

• Migrate from CAPI to Patterns

• Create a Discovery process
classification

Use

Integrate and develop

Troubleshoot and get help

• Schedule a horizontal
discovery

• Activate SCCM Asset
Intelligence scheduled
imports

• Discovery monitoring and issue
resolution

• Run a Quick Discovery
• Discovery status

• Discovery APIs on the

• Search the Known Error Portal
for known error articles

®

ServiceNow Developer Site

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


<!-- page 749 -->
• Validate discovery
results

• Ask or answer questions in the
ITOM forum

• Discovery Admin
Workspace

• Contact Customer Service and
Support

• Discovery for cloud
environment
• Certificate Inventory
and Management

Exploring Discovery
Discovery finds computers, servers, printers, a variety of IP-enabled devices, and the
applications that run on them. It can then update the CIs in your CMDB with the data it collects.

Horizontal discovery and top-down discovery
There are two types of discovery:
Horizontal discovery
Horizontal discovery is a technique that Discovery uses to scan your network,
find computers and devices, and then populate the CMDB with the CIs it finds.
Horizontal discovery creates direct relationships between CIs, such as a runs
on relationship between an application CI and the actual computer CI that it runs
on. Horizontal discovery is not aware of business services and does not create
relationships between CIs based on the business service they are in.
Top-down discovery
Top-down discovery is a technique that Service Mapping uses to find and maps
CIs that are part of business services, such as an email service. For example, topdown discovery can map a website business service by showing the relationships
between an Apache Tomcat web server service, a Windows server, and the MSSQL
database that stores the data for the business service.
Typically, Service Mapping and Discovery work together to run horizontal discovery
first to find CIs, and then top-down discovery to establish the relationships between
business services that you need to know.

Probes, sensors, and patterns
Discovery uses these components to find CIs:
Probes and sensors
Probes and sensors are scripts that collect and process data on a host and then
update the CMDB. More specifically, probes explore or investigate CIs on your
network, and sensors parse the data returned from the probes. Several probes
and sensors are provided by default, but you can customize them to find different
information, or you can create ones. You can also configure several parameters to
control the behavior of a particular probe every time it is triggered.
Patterns
Patterns, like probes and sensors, are a series of operations that also collect
data on a host, process it, and update the CMDB. Patterns differ from probes and
sensors in that they are written in Neebula Discovery Language (NDL) rather than
JavaScript, and they are called into action in the later stages of the horizontal
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
discovery process. Default patterns are provided, but you can also customize or
create patterns using the Pattern Designer.

Horizontal discovery phases
The phases of horizontal discovery are:
Discovery follows these phases:
Scanning
Discovery sends a probe called Shazzam to the network to see if commonly used
ports are open and if these ports can respond to queries. For example, if Shazzam
finds a device that responds on port 135, Discovery knows that it’s a Windows
server.
Classification
If Discovery finds devices or computers, it sends additional probes to find the type
of device or the operating system on the device. For example, Discovery sends the
WMI probe to a Windows machine to detect the Windows 2012 operating system.
Then Discovery uses records called classifiers, which specify the trigger probe or
probes that run during the next two phases. If you’re using patterns, the classifier
specifies a trigger probe that in turn launches a pattern.
Identification
Discovery tries to gather more information about the device and then tries to
determine if a CI for the device exists in the CMDB. Discovery then uses additional
probes, sensors, and identifiers to update existing CIs in the CMDB or create new
ones. Identifiers, also known as identification rules, specify the attributes that the
probes look at when reconciling data with the CIs in the CMDB. If you’re using
patterns, Discovery uses the appropriate identification rule for the CI type specified
in the pattern.
Exploration
The identifier launches additional probes configured in the classifier. These probes
are especially designed as exploration probes to gather additional information
about the device, like the applications running it, and additional attributes, such as
memory, network cards, and drivers. Discovery then creates relationships between
applications and devices and between applications. If you’re using patterns, the
operations in the pattern perform the exploration of the CI.

Discovery communication through MID Servers
A MID Server , which constantly queries the instance for probes to run, executes the
instructions in the probe or in the pattern that the probe specifies. The MID Server then returns
the results to the instance, where sensors process it. The MID Server does not retain any
discovery information.
The MID Server starts all communications, using SOAP on HTTPS, which means that all
communications are secure, and all communications are initiated inside the enterprise's firewall.
No special firewall rules or VPNs are required.
Because Discovery is agentless, meaning that it does not require any permanent software to be
installed on any computer or device to be discovered, the MID Server uses several techniques
to probe devices without using agents. For example, the MID Server uses SSH to connect to a
Unix or Linux computer, and then it can run a standard command, as specified in the probe, to
gather information. Similarly, it uses the Simple Network Management Protocol (SNMP) to gather
information from a network switch or a printer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
Types of discovery
The types of horizontal discovery that the Discovery application can perform are explained in the
following table:

Type

Description

Network discovery

Run this type of discovery to find the internal IP networks within
your organization. If you already know the IP address ranges in
your network, it is not necessary to run network discovery.

CI discovery

Run this type of discovery to find the devices, computers, and
applications on your network. This is essentially the standard
type of discovery that you run most often.

Cloud discovery

Run this type of discovery to find AWS and Azure resources in
your organization's cloud.

Serverless discovery

Run this type of discovery to find applications on host machines
without the need to discover the host first. Serverless discovery
relies on patterns to explore CIs on a host.

IP service affinity
IP Service affinity saves the IP service information that is used to successfully find a device and
associates it with the IP address of the device. Using this information, Discovery can target the
device in subsequent runs with the accurate protocol. Discovery records the IP Service along
with the IP address. Discovery can store the successful IP service information in the IP Service
Affinity table [ip_service_affinity].
For example: A network device has both an SSH port and an SNMP port open. By its agentless
design, Discovery tries SSH first. However, network devices should be discovered through SNMP.
Discovery tries the SSH probe and it fails. This triggers the SNMP probe, which succeeds. With
the association between the IP address and the IP service, subsequent discovery runs that
target this IP address use SNMP first, because that is the probe that succeeded.
Related topics
Discovery setup
Discovery monitoring and issue resolution

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
Horizontal discovery process flow with probes and sensors
The horizontal discovery process passes through the four phases of discovery using probes,
which gather information on the target machine, and then sensors, which help Discovery
determine what to do with that information.

Kicking off Discovery
A user triggers horizontal discovery by configuring a discovery schedule or by launching an ondemand discovery with Discover now or Quick Discovery. The schedule specifies one or more IP
addresses or range of IP addresses.

Scanning phase
1. Discovery first takes the Shazzam probe (and then port probes) and places it in a request in
the External Communication Channel (ECC) queue.
2. The MID Server checks the ECC queue, retrieves the discovery request, and runs the probes
against the host and discovers open ports.
3. The port probes scan common ports using several protocols, such as WMI, HTTP, SSH, and
SNMP.
4. If one or more ports respond, the Shazzam probe sends information about the port back to the
ECC queue through the MID Server.
5. Discovery checks the ECC queue to find out which ports responded, which identifies the type
of machine. For example, if Shazzam detects that the machine is listening on port 22, Discovery
treats the machine as a UNIX or Linux machine.

Classification phase
1. The Discovery application determines which classification probe to send to the newly
discovered device by using information in the record of the port probe that successfully
responded.
2. Discovery puts the classification probe into the ECC queue.
3. The MID Server checks the ECC queue, retrieves the discovery request, and runs the
classification probe.
4. The classification probe retrieves additional information, such as which version of the
operating system is running on a machine. This information determines the class of the CI that
Discovery found. There is only one classification probe per discovered device.
5. The classification probe sends information back to the instance ECC queue through the MID
Server.

The Identification phase
1. Discovery determines which classifier to use based on the class of the CI and the criteria
specified in all CI classifier records. The classifier specifies which probes to use for the next
two phases.
2. Discovery puts the identification trigger probe for the CI classifier into the ECC queue. For
example, a UNIX machine running HP-UX would require the HP-UX classifier, which specifies
that the Multi Probe-HP-UX Identity identification trigger probe. These probes use identification
rules to determine whether or not to insert or update a CI in the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
Note: The trigger probe could also be the Horizontal Pattern probe, which tells
Discovery to follow the operations in the specified pattern, rather than sending out
additional probes. The operations in the pattern cover both the identification and
exploration phases. Discovery knows which identification rules to use based on the CI
type, and Discovery makes inserts or updates to the CMDB based on these rules. Probes
and sensors are not used.
3. The MID Server checks the ECC queue, retrieves the discovery request, and runs the
identification trigger probe.
4. The identification probe accumulates identification data for each device and sends that data
back to the instance via the MID Server.
5. Discovery uses sensors for the identifier probe to process the information.
6. Discovery performs the analysis on the CMDB using CI identifiers. Discovery can update
existing CIs in the CMDB or create new ones.

The Exploration phase
1. Discovery looks at the Triggers Probes related list in the classifier to find exploration probes to
run.
2. Discovery puts the exploration trigger probe into the ECC queue.
3. The MID Server checks the ECC queue, retrieves the discovery request, and runs the
exploration trigger probes.
4. The probes send data back to the instance via the MID Server and sensors make updates to
the CMDB, just as in the identification phase.
Related topics
Patterns and horizontal discovery
Horizontal discovery process flow with patterns
Horizontal discovery with patterns has four phases, just as horizontal discovery with probes
does. However, for the last two phases, Discovery triggers operations from a pattern, rather than
additional sets of probes.

Scanning phase
1. Discovery first takes the Shazzam probe (and then port probes) and places it in a request in
the External Communication Channel (ECC) queue.
2. The MID Server checks the ECC queue, retrieves the discovery request, and runs the probes
against the host and discovers open ports.
3. The port probes scan common ports using several protocols, such as WMI, HTTP, SSH, and
SNMP.
4. If one or more ports respond, the Shazzam probe sends information about the port back to the
ECC queue through the MID Server.
5. Discovery checks the ECC queue to find out which ports responded, which identifies the type
of machine. For example, if Shazzam detects that the machine is listening on port 22, Discovery
treats the machine as a UNIX or Linux machine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
Classification phase
1. The Discovery application determines which classification probe to send to the newly
discovered device by using information in the record of the port probe that successfully
responded.
2. Discovery puts the classification probe into the ECC queue.
3. The MID Server checks the ECC queue, retrieves the discovery request, and runs the
classification probe.
4. The classification probe retrieves additional information, such as which version of the
operating system is running on a machine. This information determines the class of the CI that
Discovery found. There is only one classification probe per discovered device.
5. The classification probe sends information back to the instance ECC queue through the MID
Server.

The Identification and Exploration phases
Patterns unify the Identification and Exploration phases of discovery.
1. Discovery determines which classifier to use based on the class of the CI and the criteria
specified in all CI classifier records. The classifier specifies the Horizontal Pattern probe, which
in turn specifies which pattern to launch. The Horizontal pattern probe also contains a sensor
which does the actual work of updating the CMDB.

Note: Patterns need applicative credentials to find applications running on host
machines. Make sure you have applicative credentials configured along with the
credentials required to access the host machine itself.
2. The operations in the pattern specify the actions that Discovery needs to take for both the
identification and exploration phases. Discovery knows which identification rules
to use
based on the CI type in the pattern, and Discovery makes inserts or updates to the CMDB
based on these rules. Only the Horizontal Discovery Sensor is used. Other probes and sensors
are not used.
Discovery Admin Workspace
The Discovery Admin Workspace serves as a central location for monitoring, tracking, and
completing discovery-related tasks. Experience a streamlined discovery process and greater
efficiency with the integration of schedules, diagnostics, tuning, anomaly detection, and more
within this single workspace.

Prerequisites
To access Discovery Admin Workspace, make sure the Discovery plugin is installed and active.
You must also have the latest ServiceNow Store version of the following applications:
• Discovery Admin Workspace
• Visibility Content
• CMDB Workspace
• (optional) Discovery and Service Mapping Patterns

Roles
The following roles have access to the Discovery Admin Workspace:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


<!-- page 755 -->
• discovery_admin
• admin

Dependencies
For a list of Discovery Admin Workspace application dependencies, see Plugins or applications
installed with ITOM Visibility.
Discovery Admin Workspace Home
The Discovery Admin Workspace Home page features tools to help you identify and address the
most critical discovery tasks. Access critical information and applications to assess discovery,
manage the discovery process, and resolve any related errors.
To access the Discovery Admin Workspace, navigate to Workspaces > Discovery Admin
Workspace.

Quick overview
View the status of discovery using data counts and identify any irregularities that might impact
discovery. For detailed information, select the appropriate tile.
Select the More options icon (
in this section.

), then select Refresh to refresh the data for each visualization

The following data counts display in the Quick overview section:
Active schedules
Displays the number of active IP-based and Cloud Discovery schedules run to date.
Selecting this number redirects you to the Schedules page, where you can view all
the Discovery schedules that are configured and enabled to run.
Error tasks
Displays the active, including pending or in-progress, Discovery error tasks opened
in a certain time period. Selecting this visualization number redirects you to the
Case management page, where you can view all Discovery error tasks.

Note: You can configure the time scale reflected in the displayed count on
the Settings page. For more information, see Discovery Admin Workspace
Settings.
Schedules with anomalies
Displays the number of Discovery schedules with anomalies detected over a certain
time period. You can configure this time scale on the Settings page. For more
information, see Discovery Admin Workspace Settings.
Selecting this number redirects you to the Anomaly detection tab, where you can
view details about the type and severity of anomalies.

Important: This count only displays when anomaly detection is enabled. If
anomaly detection is inactive, select Turn on to be redirected to the Settings
page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
Discovery admin tasks
Review the three most critical Discovery error tasks. Select the Edit Task button to access the
details page where you can assign or update the error task, or add work notes. To view and
manage all discovery error tasks, select View all to access the Case management page.

Note: This section focuses solely on Discovery errors that have associated tasks and not
all Discovery errors.

Discovery tuning advice
Fine-tune Discovery and MID Server settings with automated suggestions derived from scans
of your instance. These findings identify potential issues, arranged in order of their criticality.
Selecting a finding directs you to the Tuning Check page for more details.

Quick Discovery
Discover devices in your network outside of a scheduled discovery. Enter a single IP address,
multiple comma-separated IP addresses, or an IP network as shown in this example:
• IP network address - 10.0.1.0/24
• IP address range - 10.0.2.1-10.0.2.15
• IP address list - 10.0.3.176,10.0.3.222,2001::100,2600:1bdc::fffe
Select a MID Server, a MID cluster, or enable Discovery to select the MID Server automatically.

ITOM Guided Setup
The ITOM Discovery Guided Setup leads you through a structured series of configuration
activities to promote accurate visibility in the CMDB and establish a strong foundation for
IT operations. If you're setting up Discovery for the first time, this is a good way to get your
environment up and running quickly. For more information, see Discovery Guided Setup.

ITOM Visibility apps
Enhance the functionality of the Discovery Admin Workspace by integrating additional ITOM
Visibility applications. When you select View all, you can view both the applications installed on
your instance and others that are available for installation.

Note: Updating applications requires you to have the admin role.
While you can access details about the apps installed on your instance, information regarding
pricing and packages isn’t provided, as it varies based on each contract. For a general overview
of licensing and subscription details, see ITOM/OT SU Licensing and subscriptions.

Learnings
Receive guidance on managing the Discovery process and resolving Discovery errors with the
ITOM Visibility Knowledge Base. Access relevant articles from the ServiceNow Knowledge Base,
explore blog posts, or watch instructional video tutorials for further information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
Important:
• To view the resources in this section, confirm that you have installed ITOM Content
Service version 1.2.8.
• If you encounter an Error 153: Video player configuration error message
when attempting to play a video on the Videos tab, update the system property
com.glide.security.referrerpolicy to origin-when-cross-origin. For more
information, see Enforce secure referrer policy [New in Security Center 1.3] .
Discovery Admin Workspace Schedules
The Schedules page provides a single place to monitor Discovery performance, efficiently
manage schedules and statuses, and set up new IP-based or Cloud Discovery schedules.
To access the Discovery Admin Workspace Schedules page, navigate to Workspaces >
Discovery Admin Workspace > Schedules.

Key features
Overview tab
Enables you to make data-driven decisions through powerful visualizations.

Note: You can configure the time scale on this page on the Settings page. For
more information, see Discovery Admin Workspace Settings.
Select the More options icon (
visualization in this section.

), then select Refresh to refresh the data for each

Data visualizations
Report title Type

Description

Active
Indicator Displays the total number of IP-based and Cloud Discovery
schedules
schedules that are configured and enabled to run on a
recurring basis.
Select the number to view all Discovery schedules.
Schedules Indicator Displays the number of IP-based and Cloud Discovery
completed
schedules that were completed without anomalies in a
without
certain time period.
anomalies
Important: This count only displays when anomaly
detection is turned on. If anomaly detection is turned
off, select Turn on to be redirected to the Settings
page.
X day
schedule
trends

Line
chart

Displays Discovery schedule trends over a certain time
period. Schedules that failed to run are marked as critical
anomalies. Schedules that have a low CI discovery rate are
marked as major anomalies. Schedules that have a long
run time or have a high error count are marked as minor
anomalies.
The timeline displays events that occurred during the
schedule. Use the magnifying glass icon (

) or scroll

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
Data visualizations (continued)
Report title Type

Description

to zoom in on the timeline and hover over the indicator to
expose event details. You can toggle event indicators on
and off using the Show legend feature.
Select View discovery status to view the status of all
scheduled IP-based and Cloud discoveries.
Select View anomalies to view anomalous schedules.
Schedules Map
by
location

Displays Discovery schedules by location.

Schedules Bar
with
chart
anomalies

Displays Discovery schedules with anomalies detected in
a certain time period, indicating the schedules that failed,
had a low CI discovery rate, had increased error counts, or
had long run times.

Select an area of the map to view Discovery schedules in
the region selected.

Select the number or View all to view the anomalous
schedules.

Important: This count only displays when anomaly
detection is turned on. For more information, see
Discovery Admin Workspace Settings.
Errors by
category

Donut
chart

Displays the count of all Discovery errors by category.
Select a category to add or remove it from the chart. Select
View details to view a list of all errors from all discoveries.

Discovery schedules tab
Gives you quick access to all of your Discovery schedules. The indicators at the top
of the page display a count for the Total discovery schedules, IP-based schedules,
and Cloud schedules. Selecting the number filters the table accordingly.
Use the Filter by options to view schedules based on their discovery type, Location,
and Provider.
Select a Discovery schedule from the table to view extensive details and update
schedule field parameters. For more information, see Discovery Admin Workspace
schedule details.
Discovery status tab
Shows the status of scheduled discoveries. You can select a Discovery status
number to view detailed information. For more details, see Discovery status.
Quick Discovery option
Enables you to perform an IP-based discovery in just a few steps. You can select
an IP range, choose the MID selection method, pick the MID Server, and run the
discovery all within one interface. This option is available from any tab on the
Schedules page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
New Discovery option
Enables you to choose how you want to discover your resources, either through IPbased discovery or Cloud discovery. This option is available from any tab on the
Schedules page.
Related topics
Create an IP-based Discovery schedule in Discovery Admin Workspace
Create an AWS Discovery schedule in Discovery Admin Workspace
Create an Azure Discovery schedule in Discovery Admin Workspace
Create a GCP Discovery schedule in Discovery Admin Workspace
Discovery Admin Workspace schedule details
Discovery Admin Workspace enables you to conveniently view, edit, and run both IP-based and
Cloud Discovery schedules conveniently within a single interface.
To access Discovery schedule details in Discovery Admin Workspace, navigate to Workspaces >
Discovery Admin Workspace > Schedules > Discovery schedules.
After selecting a schedule name from the table, the schedule header displays key information
such as Discovery details, MID Server details, and anomaly severity.

Important: Anomaly information only displays when anomaly detection is enabled. For
more information, see Discovery Admin Workspace Settings.

Key features
Overview
The Overview tab includes visualizations that provide detailed information about
the Discovery schedule. These visualizations offer a comprehensive view of
the schedule's performance and status, showing key metrics like the number of
discoveries completed, success rate, and any errors encountered. Additionally, the
visualizations highlight trends over time, enabling you to quickly identify patterns
and potential issues. For a full list of the visualizations available on this tab, see
Discovery Admin Workspace data visualizations.

Note: The time scale reflected on this page can be configured on the
Settings page. For more information, see Discovery Admin Workspace
Settings.
Select the More options icon (
visualization in this section.

), then select Refresh to refresh the data for each

Schedule Details
The Schedule Details tab provides in-depth information about the Discovery
schedule and enables you to update the information directly within the interface.
Select the More options icon (
managing the form interface.

), to access additional actions for customizing and

To create a range of IP addresses to discover, select Quick Ranges. Execute a
run by selecting Discover now. For more information about Discovery schedule
configuration, see Schedule a horizontal discovery.
Run History
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
The Run History tab displays the status of the last 10 scheduled discoveries,
including icons for anomaly detection, when enabled. Select a Discovery status
number to view detailed information. For more details, see Discovery Admin
Workspace status details.
Discovery Admin Workspace status details
The Discovery Status Details page offers a summary of a discovery initiated from a schedule,
detailing the devices identified, any errors encountered, and any anomalies found.
To access Discovery status details in Discovery Admin Workspace, navigate to Workspaces >
Discovery Admin Workspace > Schedules > Discovery status.
After selecting a discovery status from the table, the schedule header displays key information
such as Discovery details, MID Server details, and anomaly severity.
Discovery schedule and status headers

Note: Starting with v1.10.0, the schedule header displays 'Quick Discovery' when the
schedule is created using the Quick Discovery feature. Additionally, if the schedule
associated with a run is deleted, the header no longer displays the schedule name.
The status header shows run-related details, including start and end times, the number of
probes triggered and completed, and any anomalies detected.

Important: Anomaly information only displays when anomaly detection is enabled. For
more information, see Discovery Admin Workspace Settings.
If the status is Active or Starting, selecting the Refresh icon (
Completed values in the header in real time.

) updates the Started and

Key features
Details
The Details tab includes visualizations that provide detailed information about the
Discovery status. Depending on whether the status pertains to a discovery that
is IP-based or cloud-based, the visualizations provide a detailed overview of the
schedule’s performance and current status. They highlight key metrics such as the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
number of devices and IPs discovered, cloud resources identified, and any errors
encountered during the run.
Select the More options icon (
visualization in this section.

), then select Refresh to refresh the data for each

Details tab data visualizations
Report title

Discovery Type

Description

Errors

Both IP and cloud-based

Displays the number of
errors that were detected
during the run.

Total Devices

IP-based

Displays the number
of devices that were
discovered during the run.

New Devices

Displays the number of
new devices that were
discovered during the run.

Total IPs

Displays the number of
IP addresses that were
discovered during the run.

Duplicate IPs

Displays the number of
duplicate IP addresses
that were discovered
during the run.

Total Cloud Resources

Cloud-based

Displays the number of
cloud resources that were
discovered during the run.

Selecting an indicator reveals related information in a table. By default, detected
errors display, sorted by priority. Each error card includes details such as the Error
Code, Operating System, and, when available, a link to supporting documentation.
If a task has been created, task-related information is shown on the card, along with
the option to edit the task. For errors without an associated task, you can choose to
either create a task or ignore the error. Selecting the Total Errors hyperlink opens
the Error Stats Page, where you can view instructions and take action based on the
error.
For IP-based schedules, the Total Devices, New Devices, and Duplicate IPs tables
provide additional details such as the Source, Classification probe, and Scan status.
Selecting the Source hyperlink opens a page where you can view more information
about the device, apply tags, and access the Discovery Log and ECC Queue details.
Selecting the Total IPs indicator opens the Shazzam Summary table, where you can
access details such as IP addresses, IP Range, and Network Range. To learn more
about a specific item, simply select its hyperlink in the table.
For cloud-based schedules, selecting the Total Cloud Resources indicator reveals
a bar chart that categorizes each discovered cloud resource by its CI type. Select
the More options icon (

), to refresh or save the chart.

Debugging
The Debugging tab provides information about the Discovery Log and ECC Queue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
Select the More options icon (
section.

), to refresh the data for each visualization in this

By default, the Discovery Log table displays information such as classification
failures, CMDB updates, and authentication failures. A Discovery Log record is
created for each action associated with a discovery status.
Selecting the ECC Queue indicator displays entries in the ECC Queue provide
you with a connected flow of probe and sensor activity, as well as the actual XML
payload that is sent to or from an instance.
Discovery Admin Workspace Diagnostics
The Diagnostics page helps you prioritize and address errors and anomalies in IP-based and
Cloud Discovery schedules. Resolve issues by creating error tasks, tracking progress, and using
support tools and logs.
To access the Discovery Admin Workspace Diagnostics page, navigate to Workspaces >
Discovery Admin Workspace > Diagnostics.

Key features
Anomaly detection tab
Displays all the Discovery schedules with anomalies detected in a certain
time period. You can configure this time scale on the Settings page. For more
information, see Discovery Admin Workspace Settings.

Important: This tab only displays anomalies when anomaly detection
is enabled. Starting with version 1.11.0, anomaly detection requires a
minimum of five CIs to trigger. For more information, see the https://
support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB2601541
article in the Now Support Knowledge Base.
Select the More options icon (
visualization in this section.

), then select Refresh to refresh the data for each

Data visualizations
Report title

Type

Schedules with anomalies Indicator

Description

Number of Discovery
schedules with anomalies
detected over a certain
time period. Schedules
are categorized as the
following:
• Critical anomalies:
Failed to run.
• Major anomalies: Have
a low CI discovery rate.
• Minor anomalies: Have
a long run time or a high
error count.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
Data visualizations (continued)
Report title

Type

Description

Failed schedules

Indicator

Number of Discovery
schedules that failed to
run.

Low CI discovery rate

Indicator

Number of Discovery
schedules that have a low
CI discovery rate.

Note: The
threshold for the CI
discovery rate can
be configured on the
Settings page.
Increased error count

Indicator

Number of Discovery
schedules that have an
increased error count.

Note: The
threshold for the
error count can be
configured on the
Settings page.
Long run time

Indicator

Number of Discovery
schedules that had a long
run time.

Note: The
threshold for the
run time can be
configured on the
Settings page.
Selecting any of the indicators filters the table to reflect the schedules represented
in the data count. For each entry in the table, you can view details around the type
and severity of anomalies.
The Actions drop-down menu provides a direct shortcut to the Settings page
for configuring anomaly detection. Additionally, the menu includes a Clear all
anomalies option so that administrators can quickly remove records in the
Discovery Schedule Anomaly [discovery_schedule_anomaly] and Discovery
Schedule Anomaly Metrics [discovery_schedule_anomaly_metrics] tables.
Use the Filter by options to prioritize and address anomalies. Filter Discovery
schedules by name using the Schedules drop-down menu. Additionally, you can
prioritize the results with the Severity drop-down menu, which includes options
such as Critical, Major, and Minor. Use the Anomaly type drop-down menu to
quickly view schedules with the same anomaly. Available options include Failed
schedule, Low CI discovery rate, Increased error count, and Long run time.
Diagnostics tab
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
Displays all errors from every discovery. For each entry in the Discovery errors
table, you can either create an error task or ignore the error using the Create task
and Ignore buttons. If an entry already has an error task, it displays the Edit task
button along with the task's name and priority.
Use the Filter by options to prioritize and address errors. You can filter by Discovery
schedule with the Schedule drop-down menu, or search for the name of the error
with the Search bar. Use the Sort drop-down menu to organize the results by Code,
Priority, and Total Errors, in either ascending or descending order.
The error records can also be filtered with the Filter by and Has task drop-down
menus. In the Filter menu, you can choose to show only errors related to CMDB,
Configuration, Credentials, Internal, or Network. Multiple categories can be selected
at the same time. The Has task menu shows either all error records, error records
that have a task, or error records without a task.
For each entry in the Discovery errors table, the Total Errors number can be
selected to navigate to the Error Stats Page. This page displays information on the
error and provides Instructions, as well as an associated Knowledge Base article
when available. If the error has an associated task, the task number is displayed in
the header and can be accessed by selecting the button. The Action drop-down
menu provides suggested actions based on the type of error. In the Errors table, the
Action on selected drop-down menu can ignore errors for individual IP addresses,
retry their discovery, add them to the global exclusion list, or check their Shazzam
port status.
Case Management tab
Provides an overview of the statuses of error tasks. You can select each task to
navigate to its detailed record. New tasks can be created and associated with
existing errors using the Create Task button. You can filter by Discovery schedule
with the Schedule drop-down menu, or search for the name of the error task with
the Search bar. Use the Kanban Board View and List View to change the display
style.
Support tools
The Support tools tab provides tools to investigate and troubleshoot your instance.
For a full list of the tools available on this tab, see Discovery Admin Workspace
support tools.
Logs
The Logs tab enables you to access the ECC Queue and Discovery Logs.
Reviewing these logs can help diagnose and resolve errors. You can select an entry
in the log to view more details. Additionally, the tables can be filtered or exported
using the corresponding buttons.
Ignored Errors tab
Keeps a record of all errors ignored in the last 30 days. Errors older than 30 days are
deleted. You can add an error back to the Discovery errors table using the Undo
ignore button.

Virtual agent chat
Starting with version 1.8.0 of Discovery Admin Workspace, the Diagnostics page features a
virtual agent chatbot in each tab. This chatbot can help retrieve diagnostic information for
troubleshooting issues with Discovery. You can either enter a specific request or select Show me
everything to view all available options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
Important: The virtual agent only displays when the

sn_disco_workspace.visibility_diagnostic_utility.enabled property
is set to true.
Selecting the Discovery & MID Server Health Validation prompt provides the following
options:
• MID Server Pre-Upgrade Check: Enables you to run on-demand tests on the MID Server before
upgrading. It identifies issues that might stop the upgrade process and provides a log to help
resolve any issues found.
• MID Server Status Validation: Validates that the MID Server user is active and is part of the
mid_server group, and checks for basic user authentication errors.
• MID Server Mutual Authentication: Enables you to select a specific user and verify that the
user has an active, non-expired certificate.
• Pattern Synchronization Validation: Verifies that a pattern and its related libraries are
synchronized with the given MID Server and determines if they’re custom.
Selecting the MID Server Settings Retriever prompt enables you to retrieve settings from
the available MID Servers. If there’s more than one MID Server, the agent provides a list of
MID Servers to choose from. Then, you can download the configuration file and analyze the
configuration values for the selected MID Server.

Note: This option is available beginning with version 1.10.0 of Discovery Admin
Workspace.
Selecting the Discovery Performance Metrics prompt examines the ECC Queue to gather
performance metrics for a discovery status, providing the following information:
• Average wait times for processing ECC Queue inputs.
• Average wait times for the MID Server to process ECC Queue outputs.
• Information about the probes or sensors that took the longest time to complete their tasks.
Selecting the Retrieve Logs prompt enables you to access Pattern Logs, Discovery Logs, or Node
Logs. Pattern logs can be retrieved using the ECC Queue output ID or the Managed IP address
and pattern name. Discovery logs can be accessed by log status or ECC Queue input, and node
logs by transaction ID or ECC Queue input.
Discovery Admin Workspace Content 360
The Content 360 page enables you to discover applications and evaluate application
suggestions based on machine learning or crowd-sourced resources. Then, create configuration
items with a single click.
Content 360 uses data visualizations to offer extensive visibility of your infrastructure's
applications and the resources available to create application configuration items (CIs). It also
provides access to a list of classifiers to add to discovery. Refresh the page to view the most upto-date visualizations.
To access the Discovery Admin Workspace Content 360 page, navigate to Workspaces >
Discovery Admin Workspace > Content 360.

Key features
AI-suggested application fingerprints

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
View a list of suggested applications with fingerprints that you can add to the
discovery process through the AI-suggested application fingerprints feature. You
can then select a group name to view extensive details about an application.
• Modify certain details such as the discovery pattern name or suggested CMDB
class.
• View additional information about process samples and related servers.
• Choose to ignore viewed suggestions the next time Discovery runs.
• Add suggestions to the Configuration Management Database (CMDB) the next
time Discovery runs.
The AI-suggested application fingerprints widget doesn't refresh automatically. To
ensure you're viewing the most up-to-date information, refresh the page manually.
For more information about discovery based on application fingerprints, see
Discover applications based on fingerprints.
Application CIs discovered
Monitor information about application CIs discovered based on application
fingerprints or ITOM Content Service suggestions through the Discovery Admin
Workspace. A pie report illustrates the total number of user-defined application
CIs discovered, while a bar report presents the top five application CIs discovered,
created within the last two days, and grouped by class.
ITOM Content Service
ITOM Content Service collects unrecognized application fingerprints from different
environments. AI librarians analyze these fingerprints, creating dedicated classifiers
that are updated and shipped to you weekly. The latest version of Discovery Admin
Workspace enables you to refresh the content service suggestions manually before
reviewing them. As new IT products are rapidly released to the market, this feature
grants you rapidly updating visibility and provides the following benefits:
• It reviews the products that you’re currently using every week and delivers new
application fingerprints.
• It identifies irrelevant processes that aren’t suitable candidates for CIs.
• Based on AI, it helps you identify running processes fingerprints and Simple
Network Management Protocol (SNMP) Object Identifiers (OIDs) and create the
CIs you need for monitoring your infrastructure.
• Discovers a higher number of products by using AI capabilities that cluster and
classify running application processes.
On the latest version of Discovery Admin Workspace, starting from Xanadu
instances, the Content service suggestions widget refreshes automatically and
displays the most up-to-date information. This is indicated by the real time icon (
that appears next to the widget name.

)

To learn more about ITOM Content Service, see ITOM Content Service.
Sharing data on ITOM Content Service
®

The Continuance Delivery System (CDS), a ServiceNow technology, synchronizes
data between the Data Services instance—which stores and distributes data—and
the customer instances, using only the processes and SNMP OIDS data. Using the
ITOM Content Service feature through the CDS, you can opt in to share application
fingerprint process data. This data can be tagged and classified by AI librarians,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
enabling ITOM Content Service to deliver new CIs every week. Your data is shared
®
with your ServiceNow instance in a safe environment. You have the assurance
that no personal information is revealed, and all information is kept anonymous.
Participation is optional and you can opt out at any time.
Starting with ITOM Content Service version 1.6.2 and Discovery Admin Workspace
version 1.11.0, you can also opt in to share Service Info data of mapped candidates
For more information, see Share data on ITOM Content Service.

Prerequisites
Plugins required for ITOM Content Service:
• Discovery
• Normalization Data Services
Discovery Admin Workspace Insights
The Insights page provides access to specialized widgets, dashboards, and reports to leverage
your organization's IT operations management and infrastructure monitoring, taking advantage of
Discovery's capabilities for improved operational visibility and infrastructure health.

Information accessed through the Insights page
You can access the following information through the Insights page:
• Oracle Global License Advisory Services (GLAS) data collection using patterns
• Kubernetes Explorer
• Nutanix Dashboard
• MID Server dashboard
• Agent Health dashboard
• Discover missing compute resources
• Shazzam Insights
• Virtual Machine Explorer
Shazzam Insights dashboard
The Discovery Admin Workspace displays your port scanning information, IP address utilization,
and Discovery schedules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
Required ServiceNow AI Platform roles
• discovery_admin
• admin

Prerequisites
Verify that you have the required setup
• Discovery.
• Discovery Admin Workspace 1.3.1. (August 2024 Store release).
• CMDB Workspace
• Visibility Content
Enable the data collection
Role required: system_administrator.
Set the glide.discovery.shazzaminsights property to True.
Run a Discovery schedule. For more information, see: Running discoveries in your
network.

Access the Shazzam Insights dashboard
To open the dashboard, navigate to Workspaces > Discovery Admin Workspace > Insights >
Shazzam Insights.

Indicators
Total IP addresses
The total number and the trend of IP address data that Shazzam scanned since a
given date. The data is extracted from the Shazzam Summary [shazzam_summary]
table.
Alive IP addresses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
The number and the trend of responsive and pingable IP addresses that Shazzam
scanned since a given date. The data is extracted from the Shazzam Status
[shazzam_status] table.
Active IP addresses
The number and the trend of connected IP addresses that Shazzam scanned since
a given date. The data is extracted from the Shazzam Status [shazzam_status] table.
Not reachable IPs
The number and the trend of unresponsive IP addresses that Shazzam
scanned since a given date. The data is extracted from the Shazzam Summary
[shazzam_summary] table.
Open ports
• The score of SSH open ports
• The score of WMI open ports
• The score of WinRM SSL open ports
• The score of SNMP open ports
• The score of HTTP open ports
• The score of VmApp SSL open ports
• The score of SLP open ports

Filters
Name

Type

Description

IP addresses

Boolean

The filter enables you to select
all Discovery schedules you
want to review by category.
The available categories are:
• IP Range
• Alive
• Active

Virtual Machine Explorer dashboard
The Discovery Admin Workspace Virtual Machine Explorer dashboard displays information on
the activity and capacity of your virtual machine (VM) instances as revealed by the discovery
process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
To access the dashboard, navigate to Workspaces > Discovery Admin Workspace > Insights >
Virtual Machine Explorer.

Key features
The VM Explorer dashboard enables you to make data-driven decisions through powerful
visualizations.
Select the More options icon (
in this section.

), then select Refresh to refresh the data for each visualization

Data visualizations
Report title

Type

Description

Virtual machines with server
CI

Indicator and line chart

Displays the total number
and trend of VMs that have a
server configuration item (CI)
discovered since a given date.

Virtual machines with no deep Indicator and line chart
dive discovery

Displays the total number and
trend of the VMs that have
no created CI relationships
discovered since a given date.

Virtual machine by class

Displays the number of VMs in
your infrastructure sorted by
class.

Bar chart

Virtual Machine Instances
[cmdb_ci_vm_instance] is the
source table for this chart.
Virtual machines by state

Pie chart

Displays the percent of VMs
grouped by the following
states: on, off, or other.
Virtual Machine Instances
[cmdb_ci_vm_instance] is the
source table for this chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
Note: When you first access the VM Explorer dashboard after installing Discovery Admin
Workspace, the Virtual machines with server CI and Virtual Machines with no deep dive
discovery indicators might not display scores. For instructions on how to collect data for
these scores, see Run historical data collection for Virtual Machine Explorer.

Virtual Machine Instance
This section offers an overview of VM instances discovered, featuring key information such as
the Object ID, Class, and Network adapters. You can select an instance from the table to view
detailed information about it, or click the Edit form icon (

) to edit details and view activity. The

filter icon ( ) enables you to apply fixed filters or create custom filters that can be saved and
reused. To export the table, choose the Export option and select your preferred format: Excel,
CSV, JSON, or PDF.
Run historical data collection for Virtual Machine Explorer
After installing Discovery Admin Workspace, run historical data collection jobs to populate the
Virtual machines with server CI and Virtual machines with no deep dive discovery reports on the
Virtual Machine Explorer dashboard.

Before you begin

The application scope must be set to Global.
Role required: pa_data_collector or admin

Procedure
1. Navigate to All > Platform Analytics > Data Collector > Jobs.
2. Select the filter icon.
3. [Name][contains]historicAND [Name][contains]VM.
4. Run the filter by selecting Run.
5. Select [PA VMs with links] Historic Data Collection from the table.
6. Select Execute Now.
The historical data collection job collects data for the last 60 days.
7. Select the back icon to return to the previous table.
8. Select [PA VMs with NO links] Historic Data Collection from the table.
9. Select Execute Now.
The historical data collection job collects data for the last 60 days.

What to do next

Manually refresh the indicators on the Virtual Machine Explorer dashboard to populate the
Virtual machines with server CI and Virtual machines with no deep dive discovery reports,
enabling you to view relevant data and trends. For more information, see Virtual Machine
Explorer dashboard.
Discovery Admin Workspace Tuning
The Tuning page enables you to validate your existing configurations and resolve configuration
issues.

Discovery Admin Workspace Tuning Home page
The Discovery Admin Workspace Tuning Home page provides tools to assess instance health
through configured checks and displays failed checks by priority, category, and suite.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
Tuning check results
Use the tuning tools to interrogate your instance for configurations that indicate health issues
and identify opportunities to address best practices. Tuning checks your existing configurations
and helps you resolving issues. For more information on how to run checks, see Run Tuning
checks.
Discovery Admin Workspace Settings
The Settings page enables you to customize and manage high-level Discovery properties so
they’re tailored to meet your specific needs.
To access the Discovery Admin Workspace Diagnostics page, navigate to Workspaces >
Discovery Admin Workspace > Settings.

Discovery properties
Dashboard time scale
Enables you to see the health of your schedules over your preferred time span.
Use the Time scale drop-down list to choose between 7, 14, and 30-day time
periods. The default time period is 7 days. After you configure it, all relevant data
visualizations across the Home, Schedules, and Diagnostics pages update to
measure over this time period.

Important: After these settings are saved, you must refresh your browser to
update the data visualizations with the new time scale.
You can also configure this setting by navigating to All > System Properties >
All Properties > sn_disco_workspace.discovery_stats_time_scale. For more
information, see Discovery properties.
Anomaly detection
Identifies unusual behavior, like failed runs and significant deviations from the
thresholds for high error counts, longer discovery status duration, and fewer
discovered configuration items (CIs) or Cloud resources.
Anomalies are categorized into the following severity levels:
• Critical: Schedules that have failed to run
• Major: Schedules that have a low CI discovery rate
• Minor: Schedules that have a long run time or a high error count
The Enable anomaly detection toggle enables you to turn the feature on and off.
This feature is on by default.

Warning: Turning off this feature significantly impacts the Discovery
experience across multiple pages, charts, and tables.
You can also configure this setting by navigating
to All > System Properties > All Properties >
sn_disco_workspace.discovery_schedule_anomaly_detection_disabled. For more
information, see Discovery properties.
Detection method
Identifies anomalies in Discovery schedules with the following approaches:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
• ML-based: Leverages machine learning (ML) algorithms to analyze historical
schedule data, recognize complex patterns, and detect anomalies without
predefined rules.
• Stats-based: Relies on traditional mathematical techniques, such as calculating
standard deviations to identify outliers based on fixed numerical thresholds.
Select the Detection method drop-down list to choose an approach. The
ML-based approach is the default detection method. You can also configure
this setting by navigating to All > System Properties > All Properties >
sn_disco_workspace.discovery_schedule_anomaly_detection_method. For more
information, see Discovery properties.
You can also adjust the sensitivity of anomaly detection. Lower sensitivity reports
more anomalies, which might lead to more false positives, which means that normal
scans are flagged as anomalies. Higher sensitivity reports fewer anomalies, which
might result in more false negatives, which means that actual anomalies might not
be detected.
Use the Sensitivity drop-down list to choose your preferred detection
sensitivity. Choices include Lowest, Low, High, Highest. By default,
anomaly detection is set to Low sensitivity. You can also configure this
setting by navigating to All > System Properties > All Properties >
sn_disco_workspace.discovery_schedule_anomaly_ml_model_sensitivity. For
more information, see Discovery properties.
Adjust thresholds
Adjusting thresholds helps prevent false positives, making sure that normal scans
aren't mistakenly flagged as anomalies. When the anomaly detection method flags a
Discovery status as an anomaly, the status metrics are analyzed for deviations from
the average measurements based on the specified thresholds.
Scans are marked as anomalous when the run time, error count, or CI
measurements deviate from the average by a specified threshold. The default
threshold is 20%, but you can change the number that defines this threshold in the
relevant text box. Selecting Reset reverts the threshold back to the default 20%.
You can also configure this setting by navigating to All > System
Properties > All Properties. Threshold properties include:

sn_disco_workspace.discovery_schedule_runtime_anomaly_threshold,
sn_disco_workspace.discovery_schedule_cis_discovered_anomaly_threshold,
and

sn_disco_workspace.discovery_schedule_error_anomaly_threshold.
For more information, see Discovery properties.

Note: No changes are applied until you select Save.
Discovery for cloud environment
ITOM Visibility cloud discovery solutions enable you to collect detailed information about your
cloud-based infrastructure and your resources in major cloud service providers: Amazon Web
Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), IBM Cloud Platform, Oracle
Cloud Infrastructure (OCI), and Alibaba Cloud.
ITOM Visibility cloud discovery can be understood through the layers at which discovery
operates and the methods used to perform discovery. Different methods or combination of
methods at the different layers support various business outcomes, giving you the flexibility to
customize your discovery approach to your organization's specific needs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
Business outcomes
Effective cloud discovery is crucial for maintaining an accurate and up-to-date inventory of cloud
resources. This comprehensive visibility into the cloud infrastructure enables organizations
to drive several key business outcomes. It empowers informed decision-making, accelerates
innovation by optimizing resource allocation, and helps cloud investments align directly with
strategic business objectives.
Business outcomes supported by cloud discovery
Business
outcome

Cloud discovery role

Regulatory
compliance

Provides the necessary visibility and data to support regulatory compliance
mandates.

SAM
Enables more effective software asset management by providing
(software
comprehensive visibility into cloud software deployments.
asset
management)
FinOps
(financial
operations)

Provides comprehensive visibility into cloud resources and their usage,
enabling FinOps teams to optimize cloud spend across cloud providers,
organizations, and cost centers.

SecOps
(security
operations)

Offers continuous visibility into cloud resources and their configurations,
supporting the security and compliance of cloud environments.

Certificate
management

Discovers and tracks certificates, their expiry, and usage, enabling teams to
reduce the risk of certificate-related outages and assess potential business
impact.

AIOps
(artificial
intelligence
for IT
operations)

Identifies and maps cloud resources, their configurations, and
interdependencies. Cloud discovery provides the foundational data for
AIOps platforms to monitor proactively, analyze, and predict potential issues,
ultimately reducing outage risks and supporting business continuity.

For more information on which cloud discovery methods best support each business outcome,
see the Matching methods to business outcomes section.

Cloud discovery layers
To achieve these business outcomes, you need to understand how cloud discovery works.
Cloud discovery can be understood in two distinct layers: the cloud metadata (or topology) layer
and the operating system (OS) layer. Each layer provides a different level of visibility into cloud
infrastructure, from structural inventory to a detailed operational state. Think of it like mapping a
neighborhood versus inspecting individual buildings.
The cloud metadata layer provides a high-level view of cloud infrastructure by outlining its
structural components. This outline includes identifying resources like virtual machines,
networks, and subnets, effectively creating an inventory of what exists. It’s similar to mapping
all the buildings in a neighborhood, showing how everything is organized and interconnected.
This layer helps to understand the overall architecture and resource relationships within a cloud
environment.
The OS layer reveals the internal state of cloud resources, including installed software, active
services, running processes, and system configurations. It’s like stepping inside each building
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
in a neighborhood to inspect its internal setup. This deeper level of discovery helps monitor
operations, verify configurations, and maintain compliance and security across environments.
These layers can be discovered through the different cloud discovery methods and together,
the two layers enable comprehensive visibility from structural inventory to detailed operational
insights.

Cloud discovery methods
ITOM Visibility supports several methods for cloud discovery, depending on the layer. Different
discovery methods address different organizational needs and constraints.
• Cloud metadata layer: Pattern-based Cloud Discovery and Service Graph Connectors
• OS layer: IP-based Horizontal Discovery, Agent Client Collector for Visibility - Content, and
Service Graph Connectors

Note: The pattern-based Cloud Discovery and IP-based Horizontal Discovery methods
operate at different layers but both use the Discovery and Service Mapping Patterns
application.
Pattern-based Cloud Discovery/IP-based Horizontal Discovery
The Discovery and Service Mapping Patterns application supports both cloud
metadata and OS layer discovery. Patterns execute commands in a pull-based,
scheduled approach by targeting devices within specified IP ranges. Key
characteristics include:
• Requires OS and application credentials
• Needs firewall access from a MID Server
• Works with AWS, Azure, GCP, OCI, Alibaba Cloud, and IBM clouds
• Supports continuous visibility for AWS, Azure, and GCP
For more information, see Discovery patterns used by ITOM Visibility.
Agent Client Collector for Visibility - Content
An agent-based, push-based cloud discovery that provides near real-time discovery
and supports OS layer discovery. Key characteristics include:
• Supports deployment with or without a MID Server
• Doesn't require OS-level credentials
• Works on Windows, Linux, and macOS
• Uses system accounts, local service accounts, or Microsoft gMSA
• Supports OS layer discovery only
• Works with AWS, Azure, and GCP
For more information, see Agent Client Collector Discovery.
Service Graph Connectors
Third-party connectors that perform scheduled imports by pulling data directly from
cloud provider APIs. Service Graph Connectors support both cloud metadata and
limited OS layer discovery. Key characteristics include:
• Requires read access to the provider's system
• Doesn't require OS credentials or MID Server firewall access
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
• Works with AWS, Azure, and GCP
• Supports continuous visibility for AWS
For more information, see Integrating third-party data into CMDB

.

Each method has its own requirements and supports different use cases, depending on the
cloud provider. For more information, see:
• AWS: AWS cloud discovery methods and use cases
• Azure: Azure cloud discovery methods and use cases
• GCP: GCP cloud discovery methods and use cases
For a list of AWS, Azure, and GCP resources discovered by Discovery and Service Mapping
Patterns and Service Graph Connectors, see Cloud discovery solutions comparison.

Continuous visibility
Beyond choosing a cloud discovery method, you must also consider when and how often
discovery occurs. Cloud environments are highly dynamic, with resources constantly being
created, modified, or deleted. Traditional scheduled discovery often fails to keep up with these
rapid changes, leading to a stale and inaccurate CMDB. Continuous visibility addresses this
challenge by capturing changes as they happen in the cloud. There are two main types of
continuous visibility: pull-based and push-based.
In pull-based discovery, the ServiceNow instance connects to cloud providers at set intervals
to retrieve and update CMDB data. This approach promotes regular synchronization and offers
more frequent updates than traditional scheduled scans. The pattern-based Cloud Discovery
method supports this approach for both Azure and GCP.
In push-based discovery, the cloud environment itself is configured to send change events
directly to the ServiceNow instance. This approach enables near real-time updates to the CMDB.
Both Service Graph Connectors and the pattern-based Cloud Discovery method support pushbased discovery for AWS.

Note: Continuous visibility for Amazon AWS Cloud, Microsoft Azure Cloud, and Google
Cloud Platform doesn’t require Cloud Provisioning and Governance.
For more information, see:
• Azure: Microsoft Azure Alert driven discovery
• GCP: Configure the Google Cloud Logging service to auto-update the CMDB
• AWS: AWS events-driven discovery

Choosing methods for desired business outcomes
Choosing the right discovery methods at the cloud metadata and OS layers for your desired
business outcomes is essential for optimizing your configuration management strategy and
achieving operational goals.
Cloud metadata layer discovery methods support the following business outcomes:
Cloud metadata layer discovery
Business outcomes

Pattern-based Cloud Discovery

Service Graph Connectors

Regulatory compliance

Yes

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
Cloud metadata layer discovery (continued)
Business outcomes

Pattern-based Cloud Discovery

Service Graph Connectors

Basic AIOps

Yes

Yes

Continuous visibility

AWS, Azure, and GCP

AWS only

OS layer discovery methods support the following business outcomes:
OS layer discovery
Business outcomes

IP-based Horizontal
Discovery

Agent Client Collector for Service Graph
Visibility - Content
Connectors

Regulatory compliance

Full

Full

Limited

SAM

Enterprise

Enterprise

Basic

FinOps

Yes

Yes

No

SecOps

Yes, including filebased discovery

Yes, including filebased discovery

No

Certificate management

Yes

Yes

No

AIOps

Full

Full

Limited

Oracle GLAS (Global Licensing
Advisory Services) audits

Yes

Yes

No

Hibernating or autoscaling
resource visibility

No

Yes

No

Managing your cloud resources
Discovery Admin Workspace provides a centralized location for managing and monitoring
discovery operations, including performance monitoring, issue diagnosis, and maintaining
configuration accuracy. From tracking schedules and diagnosing errors to tuning configurations
and accessing insights, Discovery Admin Workspace integrates key tools to improve efficiency
and visibility. You can identify critical tasks, manage discovery processes, and resolve
issues with enhanced diagnostics and reporting. For more information, see Discovery Admin
Workspace.
If you have Cloud Account Management (CAM) within Cloud Workspace, you can use CAM to
access your cloud account and resource inventory through the Cloud Asset Explorer, Cloud
Compliance, and Cloud Accounts dashboards. Cloud Workspace provides comprehensive
visibility into cloud accounts and assets across providers, enabling you to track ownership,
monitor account trends, and promote regulatory compliance. For more information, see Cloud
Account Management.
Cloud discovery solutions comparison
Comparing cloud discovery solutions provides insights on the relative strengths of each solution.
The comparison showcases the number of resource types supported by the solutions across
AWS, Azure, and GCP. The comparison can help you understand the capabilities of each
solution and better manage your CMDB when using one or multiple methods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
Discovery and Service Mapping Patterns vs. Service Graph Connectors
ITOM Visibility offers two primary solutions for discovering cloud resources and mapping them
into the Configuration Management Database (CMDB): Cloud Discovery and Service Mapping
Patterns and Cloud Service Graph Connectors.
Patterns are the core of ITOM Visibility's native discovery capabilities. They provide a deeper,
more dynamic, and holistic view of your infrastructure. Patterns use a variety of discovery
methods: Agentless, agent-based, and cloud-native, to create a unified, business-aware
view of your services. By leveraging machine learning, patterns automatically map technical
components to their business context, creating rich relationships, and a comprehensive
knowledge graph.
Service Graph Connectors, on the other hand, provides fast, point-in-time data ingesting from
existing systems. They assist you quickly ingest data from specific sources like public cloud
providers (AWS, Azure, GCP), endpoint management systems, and security or network tools.
While Service Graph Connectors provides rapid data import, Patterns provide the foundation
for ongoing, automated service mapping and deeper operational insights based on regular
updates from the ServiceNow Store. This difference is crucial for solving complex challenges like
certificate management, firewall auditing, and a wide range of other service and operation use
cases.
The choice between patterns and connectors affects coverage, level of detail, the way data is
modeled in the CMDB and the frequency of update. While some resource types are supported
by both solutions, the data might be populated in different CMDB CI Classes. Understanding
these differences helps you plan a consistent and effective discovery strategy.
By reviewing the coverage tables for AWS, Azure, and GCP, you can
• Identify which resources are supported by patterns, by connectors, or both.
• Understand how the same resource type may be handled differently (for example, patterns
may bring in all zone data, while connectors may only bring in zones tied to an instance).
• Decide on a solution per provider, considering its CI coverage or data model. For example: Use
connectors to discover your GCP resources, but use patterns for AWS and Azure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
Discovery and Service Mapping Patterns and Service Graph Connectors
comparison

AWS discovery solutions comparison
ITOM Visibility applications discover a variety of AWS resources and populate the relevant
configuration item (CI) classes in the Configuration Management Database (CMDB) with their
attributes.

ITOM Visibility solutions
ITOM Visibility can offer you comprehensive visibility into your organization's cloud infrastructure.
Each application offers unique strengths and capabilities, and by comparing them you can gain
holistic insights on their capabilities and benefits.
ITOM Visibility solutions for discovering AWS
ITOM Visibility solution

Overview

Discovery and Service
Mapping Patterns and
Visibility Content

Discovery patterns used by
ITOM Visibility

Configuration

• You must update your store
apps to the latest release
version.
• You must provide ITOM
Visibility with access
permissions. For more
information, see Setting up
AWS service accounts

Service Graph Connector for
AWS

Service Graph Connector for
AWS

Configure Service Graph
Connector for AWS using the
guided setup

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
Note:
The CI class, in most cases, is applicable to both solutions. If it's not applicable to one of
the solutions, the solution is marked "N/A".
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS
Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

AWS::AppSync::API

Yes

No

cmdb_aws_appsync_api

AWS::Athena::Workgroup
Yes

No

cmdb_aws_athena_workgroup

AWS::Backup::BackupPlan
Yes

No

cmdb_aws_backup_backup_plan

AWS::Backup::BackupVault
Yes

No

cmdb_aws_backup_backup_vault

AWS::CloudFront::Distribution
Yes

N/A

cmdb_aws_cloudfront_distribution

AWS::CloudFront::Distribution
N/A

Yes

cmdb_ci_cmp_resource

AWS::CloudWatch::Log Yes

No

cmdb_aws_cloudwatch_log

AWS::CodeDeployment::Deployment
Yes

No

cmdb_aws_codedeploy_deployment

AWS::CodePipeline::Pipeline
Yes

N/A

cmdb_aws_codepipeline_pipeline

AWS::CodePipeline::Pipeline
N/A

Yes

cmdb_ci_cmp_resource

AWS::DMS::Endpoint

No

cmdb_aws_dms_endpoint

AWS::ElasticBeanstalk::Application
Yes

N/A

cmdb_aws_elastic_beanstalk_applicati

AWS::ElasticBeanstalk::Application
N/A

Yes

cmdb_ci_cmp_resource

AWS::EMR::Cluster

Yes

No

cmdb_aws_emr_cluster

AWS::EventBridge::EventBus
Yes

No

cmdb_aws_eventbridge_event_bus

AWS::FSx::Backup

Yes

No

cmdb_aws_fsx_backup

AWS::FSx::FileSystem

Yes

No

cmdb_aws_fsx_file_system

AWS::Glue::Database

Yes

No

cmdb_aws_glue_database

AWS::IAM::Policy

Yes

N/A

cmdb_aws_iam_policy

AWS::IAM::Policy

N/A

Yes

cmdb_ci_cmp_resource

AWS::IAM::Role

Yes

N/A

cmdb_aws_iam_role

AWS::IAM::Role

N/A

Yes

cmdb_ci_cmp_resource

AWS::IAM::User

Yes

N/A

cmdb_aws_iam_user

AWS::IAM::User

N/A

Yes

cmdb_ci_cmp_resource

AWS::KMS::Key

Yes

No

cmdb_aws_kms_key

AWS::MQ::Broker

Yes

No

cmdb_aws_mq_broker

AWS::MQ::ConfigurationYes

No

cmdb_aws_mq_configuration

AWS::S3::GlacierVault

No

cmdb_aws_s3_glacier_vault

No

cmdb_aws_sagemaker_notebook_insta

Yes

Yes

AWS::SageMaker::NotebookInstance
Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

AWS::SecretsManager::Secret
Yes

No

cmdb_aws_secrets_manager_secret

AWS::SimpleEmailService::Identity
Yes

No

cmdb_aws_simple_email_service_ident

AWS::SQS::Queue

No

cmdb_aws_sqs_queue

AWS::StepFunctions::StateMachine
Yes

No

cmdb_aws_step_functions_state_mach

AWS::StorageGateway::Gateway
Yes

No

cmdb_aws_storage_gateway_gateway

AWS::SystemsManager::Document
Yes

No

cmdb_aws_systems_manager_docume

AWS::SystemsManager::ParameterStore
Yes

No

cmdb_aws_systems_manager_paramet

AWS::TransferFamily::Server
Yes

No

cmdb_aws_transfer_family_server

AWS::VPC::FlowLog

No

cmdb_aws_vpc_flow_log

AWS::VPC::ManagedPrefixList
Yes

No

cmdb_aws_vpc_managed_prefix_list

AWS::XRay::SamplingRule
Yes

No

cmdb_aws_xray_sampling_rule

ec2:DescribeAvailabilityZones
Yes

Yes

cmdb_ci_availability_zone

ec2:DescribeRegions

Yes

Yes

cmdb_ci_aws_datacenter

AWS::Kinesis::Stream

Yes

No

cmdb_ci_aws_kinesis_data

AWS::KinesisAnalytics Yes

No

cmdb_ci_aws_kinesis_data_analytics

AWS::KinesisFirehose

Yes

No

cmdb_ci_aws_kinesis_firehose

AWS::KinesisVideo

Yes

No

cmdb_ci_aws_kinesis_video

AWS::Redshift::Cluster Yes

N/A

cmdb_ci_aws_redshift

AWS::Redshift::Cluster N/A

Yes

cmdb_ci_cmp_resource

AWS::CertificateManager::Certificate
Yes

No

cmdb_ci_certificate

AWS::Cognito::UserPoolYes

No

cmdb_ci_cloud_authentication

AWS::RDS::DBInstance Yes

Yes

cmdb_ci_cloud_database

AWS::ECS::Cluster

Yes

No

cmdb_ci_cloud_ecs_cluster

AWS::ECS::Service

Yes

No

cmdb_ci_cloud_ecs_service

AWS::ECS::TaskDefinition
Yes

No

cmdb_ci_cloud_ecs_task_definition

AWS::Lambda::FunctionYes

Yes

cmdb_ci_cloud_function

AWS::ApiGateway::RestApi
Yes

Yes

cmdb_ci_cloud_gateway

ec2:DescribeInstanceTypes
Yes

Yes

cmdb_ci_cloud_hardware_type

AWS::EC2::Host

Yes

No

cmdb_ci_cloud_host

AWS::EC2::KeyPair

Yes

No

cmdb_ci_cloud_key_pair

AWS::ElasticLoadBalancingV2::LoadBalancer
Yes

Yes

cmdb_ci_cloud_load_balancer

Amazon::S3::Bucket

Yes

cmdb_ci_cloud_object_storage

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Yes

Yes

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS (continued)
Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

Organizations

Yes

Yes

cmdb_ci_cloud_org or
cmdb_ci_cloud_service_account

Organizations::AWS
accounts

Yes

Yes

cmdb_ci_cloud_service_account

AWS::EC2::Subnet

Yes

Yes

cmdb_ci_cloud_subnet

AWS SSM agents

Yes

No

cmdb_ci_cloud_system_management_

AWS::EC2::Subnet

Yes

No

cmdb_ci_cloud_subnet

AWS::WAF::WebACL

N/A

Yes

cmdb_ci_cmp_resource

AWS::WAFRegional::WebACL
N/A

Yes

cmdb_ci_cmp_resource

AWS::ACM::Certificate N/A

Yes

cmdb_ci_cmp_resource

AWS::Redshift::EventSubscription
N/A

Yes

cmdb_ci_cmp_resource

AWS::RDS::DBSnapshotN/A

Yes

cmdb_ci_cmp_resource

AWS::Redshift::ClusterParameterGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::AutoScaling::LaunchConfiguration
N/A

Yes

cmdb_ci_cmp_resource

AWS::Redshift::ClusterSnapshot
N/A

Yes

cmdb_ci_cmp_resource

AWS::CloudFormation::Stack
N/A

Yes

cmdb_ci_cmp_resource

AWS::CodeBuild::ProjectN/A

Yes

cmdb_ci_cmp_resource

AWS::ElasticBeanstalk::ApplicationVersion
N/A

Yes

cmdb_ci_cmp_resource

AWS::Redshift::ClusterSecurityGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::CloudTrail::Trail

Yes

cmdb_ci_cmp_resource

AWS::CloudFront::StreamingDistribution
N/A

Yes

cmdb_ci_cmp_resource

AWS::WAF::RuleGroup N/A

Yes

cmdb_ci_cmp_resource

AWS::RDS::DBSecurityGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::RDS::EventSubscription
N/A

Yes

cmdb_ci_cmp_resource

AWS::WAF::Rule

Yes

cmdb_ci_cmp_resource

AWS::AutoScaling::ScheduledAction
N/A

Yes

cmdb_ci_cmp_resource

AWS::ElasticBeanstalk::Environment
N/A

Yes

cmdb_ci_cmp_resource

AWS::AutoScaling::ScalingPolicy
N/A

Yes

cmdb_ci_cmp_resource

AWS::Shield::Protection N/A

Yes

cmdb_ci_cmp_resource

AWS::CloudWatch::Alarm
N/A

Yes

cmdb_ci_cmp_resource

AWS::XRay::EncryptionConfig
N/A

Yes

cmdb_ci_cmp_resource

AWS::ShieldRegional::Protection
N/A

Yes

cmdb_ci_cmp_resource

AWS::Redshift::ClusterSubnetGroup
N/A

Yes

cmdb_ci_cmp_resource

N/A

N/A

CI Class

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS (continued)
Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

AWS::IAM::Group

N/A

Yes

cmdb_ci_cmp_resource

AWS::WAFRegional::RateBasedRule
N/A

Yes

cmdb_ci_cmp_resource

AWS::WAFRegional::RuleGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::WAF::RateBasedRule
N/A

Yes

cmdb_ci_cmp_resource

AWS::RDS::DBSubnetGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::SSM::AssociationCompliance
N/A

Yes

cmdb_ci_cmp_resource

AWS::EC2::SecurityGroup
Yes

Yes

cmdb_ci_compute_security_group

ec2:DescribeInstanceTypes
Yes

Yes

cmdb_ci_compute_template

AWS::ECR::Repository Yes

No

cmdb_ci_container_repository

AWS::EC2::CustomerGateway
Yes

No

cmdb_ci_customer_gateway

Docker container

Yes

Yes

cmdb_ci_docker_container

ecr:DescribeImages

Yes

No

cmdb_ci_docker_image

AWS::DynamoDB::GlobalTable
Yes

Yes

cmdb_ci_dynamodb_table

AWS::AutoScaling::AutoScalingGroup
Yes

N/A

cmdb_ci_instance_scale_set

AWS::AutoScaling::AutoScalingGroup
N/A

Yes

cmdb_ci_cmp_resource

AWS::EC2::InternetGateway
Yes

No

cmdb_ci_internet_gateway

AWS::EKS::Cluster

Yes

cmdb_ci_kubernetes_cluster

WS::ElasticLoadBalancingV2::TargetGroup
Yes

No

cmdb_ci_lb_pool

AWS::ElasticLoadBalancingV2::TargetGroup
Yes
TargetDescription

No

cmdb_ci_lb_pool_member

AWS::ElasticLoadBalancingV2::Listener
Yes

No

cmdb_ci_lb_service

AWS::EC2::NatGateway Yes

No

cmdb_ci_nat_gateway

AWS::EC2::VPC

Yes

Yes

cmdb_ci_network

AWS::EC2::NetworkAcl Yes

No

cmdb_ci_network_acl

AWS::EC2::NetworkInterface
Yes

Yes

cmdb_ci_nic

AWS::EC2::RouteTable Yes

No

cmdb_ci_route_table

AWS::EC2::VolumeAttachment
Yes

Yes

cmdb_ci_storage_mapping

AWS::EC2::Volume

Yes

Yes

cmdb_ci_storage_volume

AWS::EC2::VPNGatewayYes

No

cmdb_ci_virtual_pvt_gateway

AWS::EC2::VPNConnection
Yes

No

cmdb_ci_vpn_connection

AWS::WAFv2::WebACL Yes

N/A

cmdb_ci_web_acl

AWS::WAFv2::WebACL N/A

Yes

cmdb_ci_cmp_resource

Tags

Yes

cmdb_key_value

Yes

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS (continued)
Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

Kubernetes
DaemonSet

No

Yes

cmdb_ci_kubernetes_daemonset

Kubernetes
deployment

No

Yes

cmdb_ci_kubernetes_deployment

Kubernetes
namespace

No

Yes

cmdb_ci_kubernetes_namespace

Amazon EKS node

No

Yes

cmdb_ci_kubernetes_node

Amazon EKS pod

No

Yes

cmdb_ci_kubernetes_pod

Amazon EKS service

No

Yes

cmdb_ci_kubernetes_service

Kubernetes Volume

No

Yes

cmdb_ci_kubernetes_volume

AWS::SSM::ManagedInstanceInventory
No

Yes

cmdb_ci_spkg

AWS::EC2::VPCPeeringConnection
Yes

No

cmdb_aws_elastic_compute_cloud_vpc

AWS::Elastic Compute Yes
Cloud::VPC Endpoint
Service

No

cmdb_aws_elastic_cloud_compute_vpc

AWS::Elastic Compute Yes
Cloud::EBS Snapshot

No

cmdb_aws_elastic_cloud_compute_ebs

AWS::Elastic Compute Yes
Cloud::Reserved
Instance

No

cmdb_aws_elastic_cloud_compute_res

AWS::RDS::DBSnapshotYes

No

cmdb_aws_relational_database_service

AWS::SageMaker::Training
Yes
Job

No

cmdb_aws_sagemaker_training_job

AWS::Elastic File
System::File System

Yes

No

cmdb_aws_elastic_file_system_file_sys

AWS::Redshift
Yes
Serverless::Namespace

No

cmdb_aws_redshift_serverless_namesp

AWS::Redshift
Yes
Serverless::Workgroup

No

cmdb_aws_redshift_serverless_workgro

AWS::Redshift
Serverless::Snapshot

Yes

No

cmdb_aws_redshift_serverless_snapsh

AWS::ElastiCache::Snapshot
Yes

No

cmdb_aws_elasticache_snapshot

AWS::CloudTrail::Trail

No

cmdb_aws_cloudtrail_trail

AWS::Batch::ComputeEnvironment
Yes

No

cmdb_aws_batch_compute_environme

AWS::StorageGateway::FileShare
Yes

No

cmdb_aws_storage_gateway_file_share

AWS::DataSync::Task

No

cmdb_aws_datasync_task

Resource type

Yes

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for AWS (continued)
Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

AWS::API
Gateway::Domain
Name

Yes

No

cmdb_aws_api_gateway_domain_name

AWS DynamoDB
Cluster

Yes

No

cmdb_ci_cluster_node

AWS::GlobalAccelerator::Accelerator
Yes

No

cmdb_aws_global_accelerator_accelera

AWS::Timestream::InfluxDBInstance
Yes

No

cmdb_aws_timestream_for_influxdb_da

AWS::CloudHSM::HSM Yes

No

cmdb_aws_cloudhsm_hsm

AWS::MWAA::Environment
Yes

No

cmdb_aws_managed_workflows_for_ap

AWS::NetworkFirewall::Firewall
Yes

No

cmdb_aws_network_firewall_firewall

Resource type

Microsoft Azure discovery solutions comparison
ITOM Visibility applications discover a variety of Microsoft Azure resources and populate the
relevant configuration item (CI) classes in the Configuration Management Database (CMDB) with
their attributes.

ITOM Visibility solutions
ITOM Visibility can offer you comprehensive visibility into your organization's cloud infrastructure.
Each application offers unique strengths and capabilities, and by comparing them you can gain
holistic insights on their capabilities and benefits.
ITOM Visibility solutions for discovering Azure
ITOM Visibility solution

Overview

Discovery and Service
Mapping Patterns and
Visibility Content

Discovery patterns used by
ITOM Visibility

Configuration

• You must update your store
apps to the latest release
version.
• You must provide ITOM
Visibility with access
permissions. For more
information, see Set up
Azure service accounts

Service Graph Connector for
Microsoft Azure

Service Graph Connector for
Microsoft Azure

Configure Service Graph
Connector for Microsoft Azure
using the guided setup

Note:
The CI class, in most cases, is applicable to both solutions. If it's not applicable to one of
the solutions, the solution is marked "N/A".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for Microsoft Azure
Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

microsoft.compute/
availabilitysets

Yes

N/A

cmdb_ci_availability_set

microsoft.compute/
availabilitysets

Yes

Yes

cmdb_ci_availability_zone

Microsoft.Management/Yes
managementGroups

No

cmdb_ci_azure_management_group

microsoft.KeyVault/
vaults

Yes

No

cmdb_ci_certificate

Yes

No

cmdb_ci_cloud_database

Yes

cmdb_ci_cloud_database

Resource type

• Microsoft.Sql/
servers/databases

• Microsoft.DBforMySQL/
servers
• Microsoft.DocumentDB/
databaseAccounts
• Microsoft.Cache/
Redis

• Microsoft.Sql/
servers

Yes

• Microsoft.DBforPostgreSQL/
servers
microsoft.network/
expressroutecircuits

Yes

No

cmdb_ci_cloud_direct_connect

Microsoft.Storage/
storageAccounts/
fileServices

Yes

No

cmdb_ci_cloud_file_service

Microsoft.Storage/
storageAccounts/
fileServices/shares

Yes

No

cmdb_ci_cloud_file_share

Microsoft.Web/sites/
functions

Yes

Yes

cmdb_ci_cloud_function

VM Size

Yes

No

cmdb_ci_cloud_hardware_type

microsoft.compute/
hostgroups/hosts

Yes

No

cmdb_ci_cloud_host

microsoft.network/
applicationgateways

Yes

No

cmdb_ci_cloud_load_balancer

microsoft.network/
loadbalancers

Yes

Yes

cmdb_ci_cloud_load_balancer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for Microsoft Azure
(continued)
Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

Microsoft.Storage/
storageAccounts/
blobService

Yes

No

cmdb_ci_cloud_object_service

Tenant

Yes

No

cmdb_ci_cloud_org

microsoft.network/
publicipaddresses

Yes

Yes

cmdb_ci_cloud_public_ipaddress

Microsoft.Storage/
storageAccounts/
queueServices

Yes

No

cmdb_ci_cloud_queue_service

Microsoft.Resources/
subscriptions

Yes

Yes

cmdb_ci_cloud_service_account

Microsoft.Management/Yes
managementGroup

No

cmdb_ci_cloud_service_account

microsoft.storage/
storageaccounts

Yes

Yes

cmdb_ci_cloud_storage_account

Microsoft.Network/
virtualNetworks/
subnets

Yes

No

cmdb_ci_cloud_subnet

Microsoft.Storage/
storageAccounts/
tableServices

Yes

No

cmdb_ci_cloud_table_service

microsoft.web/sites

Yes

No

cmdb_ci_cloud_webserver

microsoft.network/
Yes
networksecuritygroups

Yes

cmdb_ci_compute_security_group

microsoft.network/
privatednszones

Yes

No

cmdb_ci_dns_zone

microsoft.compute/
Yes
virtualmachinescalesets

Yes

cmdb_ci_instance_scale_set

microsoft.containerservice/
Yes
managedclusters

Yes

cmdb_ci_kubernetes_cluster

Microsoft.Network/
Yes
loadBalancers/
backendAddressPools

No

cmdb_ci_lb_pool

Microsoft.Network/
loadBalancers/
inboundNatRules

Yes

No

cmdb_ci_lb_service

microsoft.network/
natgateways

Yes

No

cmdb_ci_nat_gateway

microsoft.network/
virtualnetworks

Yes

Yes

cmdb_ci_network

Resource type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for Microsoft Azure
(continued)
Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

microsoft.network/
networkinterfaces

Yes

Yes

cmdb_ci_nic

microsoft.compute/
images

Yes

No

cmdb_ci_os_template

Microsoft.Resources/
resourceGroups

Yes

Yes

cmdb_ci_resource_group

Microsoft.Network/
routeTables/routes

Yes

No

cmdb_ci_route_table

microsoft.network/
routetables

Yes

No

cmdb_ci_route_table

microsoft.compute/
disks

Yes

Yes

cmdb_ci_storage_volume

microsoft.network/
Yes
localnetworkgateways

No

cmdb_ci_virtual_pvt_gateway

microsoft.network/
Yes
virtualnetworkgateways

No

cmdb_ci_virtual_pvt_gateway

microsoft.compute/
virtualmachines

Yes

Yes

cmdb_ci_vm_instance

microsoft.sqlvirtualmachine/
Yes
sqlvirtualmachines

No

cmdb_ci_vm_instance

Microsoft.Network/
Yes
virtualNetworks/
virtualNetworkPeerings

No

cmdb_ci_vnet_peering

microsoft.network/
connections

Yes

No

cmdb_ci_vpc_gateway_connection

Microsoft.Resources/
tags

Yes

Yes

cmdb_key_value

Microsoft.Compute/
virtualMachines

No

Yes

cmdb_ci_server

Microsoft.Compute/
virtualMachines

No

Yes

cmdb_ci_win_server

Microsoft.Network/
networkInterfaces

No

Yes

cmdb_ci_hardware

Microsoft.Compute/
virtualMachines

No

Yes

cmdb_ci_linux_server

microsoft.containerservice/
Yes
managedclusters

Yes

cmdb_ci_kubernetes_cluster

Microsoft.Compute/
No
virtualmachinescalesets

Yes

cmdb_ci_vm_instance

Resource type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for Microsoft Azure
(continued)
Supported by Cloud
Service Graph
Connectors

CI Class

Microsoft.ServiceBus/ Yes
namespaces/queues

No

cmdb_azure_service_bus_queue

Microsoft.ServiceBus/ Yes
namespaces/topics

No

cmdb_azure_service_bus_topic

microsoft.appconfiguration/
Yes
configurationstores

No

cmdb_azure_app_configuration_configu

microsoft.automation/ Yes
automationaccounts

No

cmdb_azure_automation_automation_a

microsoft.compute/
diskencryptionsets

Yes

No

cmdb_azure_disk_encryption_set_disk_

microsoft.compute/
galleries/images

Yes

No

cmdb_azure_compute_gallery_image_d

microsoft.compute/
snapshots

Yes

No

cmdb_azure_compute_snapshot

microsoft.containerregistry/
Yes
registries

No

cmdb_azure_container_registry_registry

microsoft.databricks/
workspaces

Yes

No

cmdb_azure_databricks_workspace

microsoft.datafactory/
factories

Yes

No

cmdb_azure_data_factory_data_factory

microsoft.dataprotection/
Yes
backupvaults

No

cmdb_azure_data_protection_backup_v

microsoft.eventgrid/
systemtopics

Yes

No

cmdb_azure_event_grid_system_topic

microsoft.eventhub/
namespaces

Yes

No

cmdb_azure_event_hub_namespace

microsoft.insights/
components

Yes

No

cmdb_azure_application_insight_comp

microsoft.network/
Yes
No
applicationgatewaywebapplicationfirewallpolicies

cmdb_azure_web_application_firewall_

microsoft.operationalinsights/
Yes
workspaces

No

cmdb_azure_log_analytics_workspace

microsoft.network/
azurefirewalls

Yes

No

cmdb_azure_network_security_azure_fi

microsoft.devcenter/
devcenters

Yes

No

cmdb_azure_dev_centers_dev_center

microsoft.kusto/
clusters

Yes

No

cmdb_azure_data_explorer_clusters_da

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for Microsoft Azure
(continued)
Supported by Cloud
Service Graph
Connectors

CI Class

microsoft.recoveryservices/
Yes
vaults

No

cmdb_azure_recovery_services_vault

microsoft.recoveryservices/
Yes
vaults/backupfabrics/
protectioncontainers/
protecteditems

No

cmdb_azure_recovery_services_vault_b

microsoft.dbforpostgresql/
Yes
servergroupsv2

No

cmdb_azure_cosmos_db_for_postgresq

microsoft.insights/
datacollectionrules

Yes

No

cmdb_azure_application_insight_data_

microsoft.network/
Yes
serviceendpointpolicies

No

cmdb_azure_service_endpoint_policy_s

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

GCP discovery solutions comparison
ITOM Visibility applications discover a variety of Google Cloud Platform (GCP) resources and
populate the relevant configuration item (CI) classes in the Configuration Management Database
(CMDB) with their attributes.

ITOM Visibility solutions
ITOM Visibility can offer you comprehensive visibility into your organization's cloud infrastructure.
Each application offers unique strengths and capabilities, and by comparing them you can gain
holistic insights on their capabilities and benefits.
ITOM Visibility solutions for discovering GCP
ITOM Visibility solution

Overview

Discovery and Service
Mapping Patterns and
Visibility Content

Discovery patterns used by
ITOM Visibility

Configuration

• You must update your store
apps to the latest release
version.
• You must provide ITOM
Visibility with access
permissions. For more
information, see Set up
Google Cloud Platform
service accounts

Service Graph Connector for
GCP

Service Graph Connector for
GCP

Configure Service Graph
Connector for GCP using the
guided setup

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
Note:
The CI class, in most cases, is applicable to both solutions. If it's not applicable to one of
the solutions, the solution is marked "N/A".
If an entry is marked with one asterisk, the resource type is supported by Patterns only
by utilizing the Google Asset inventory pattern's inclusion list. For more information, see
Google Cloud Platform (GCP) resource inventory discovery with Patterns.
If an entry is marked with two asterisks, the resource type is
supported by Service Graph Connecters only by utilizing the
[sn_cmdb_int_util_service_graph_resource_inclusion_whitelist] table.
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP
Supported by Cloud
Service Graph
Connectors

CI Class

admissionregistration.k8s.io/
Yes*
mutatingwebhookconfiguration

Yes**

cmdb_ci_cmp_resource

admissionregistration.k8s.io/
Yes*
validatingwebhookconfiguration

Yes**

cmdb_ci_cmp_resource

alloydb.googleapis.com/Yes
Cluster

No

cmdb_ci_cloud_db_cluster

apigateway.googleapis.com/
Yes*
api

Yes**

cmdb_ci_cmp_resource

apigateway.googleapis.com/
Yes*
apiconfig

Yes**

cmdb_ci_cmp_resource

apigee.googleapis.com/Yes*
instance

Yes**

cmdb_ci_cmp_resource

apigee.googleapis.com/Yes*
organization

Yes**

cmdb_ci_cmp_resource

apikeys.googleapis.com/Yes*
key

Yes**

cmdb_ci_cmp_resource

appengine.googleapis.com/
Yes*
application

Yes**

cmdb_ci_cmp_resource

apps.k8s.io/
daemonset

Yes*

Yes**

cmdb_ci_cmp_resource

apps.k8s.io/
Deployment

Yes*

Yes

cmdb_ci_kubernetes_deployment

apps.k8s.io/
ReplicaSet

Yes*

Yes

cmdb_ci_kubernetes_replicaset

apps.k8s.io/
statefulset

Yes*

Yes**

cmdb_ci_cmp_resource

artifactregistry.googleapis.com/
Yes*
dockerimage

Yes**

cmdb_ci_cmp_resource

artifactregistry.googleapis.com/
Yes*
repository

Yes**

cmdb_ci_cmp_resource

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

bigquery.googleapis.com/
Yes
bigquery-public-data/
datasets

No

cmdb_ci_cloud_public_database

bigquery.googleapis.com/
Yes
bigquery-public-data/
datasets/tables

No

cmdb_ci_database

bigquery.googleapis.com/
Yes
Dataset

N/A

cmdb_ci_cloud_database

bigquery.googleapis.com/
N/A
Dataset

Yes**

cmdb_ci_cmp_resource

bigquery.googleapis.com/
Yes
Table

No

cmdb_ci_database

bigtableadmin.googleapis.com/
Yes
Instance

Yes

cmdb_ci_cloud_database

bigtableadmin.googleapis.com/
Yes
Table

No

cmdb_ci_database

cloudasset.googleapis.com/
Yes*
feed

Yes**

cmdb_ci_cmp_resource

cloudbilling.googleapis.com/
Yes*
billingaccount

Yes**

cmdb_ci_cmp_resource

cloudbilling.googleapis.com/
Yes*
projectbillinginfo

Yes**

cmdb_ci_cmp_resource

cloudfunctions.googleapis.com/
Yes*
CloudFunction

Yes

cmdb_ci_cloud_function

cloudresourcemanager.googleapis.com/
Yes
Folder

Yes

cmdb_ci_gcp_folder

cloudresourcemanager.googleapis.com/
Yes
Organization

Yes

cmdb_ci_cloud_org

cloudresourcemanager.googleapis.com/
Yes
Project

Yes

cmdb_ci_gcp_project

cloudresourcemanager.googleapis.com/
Yes*
tagkey

Yes

cmdb_ci_cmp_resource

cloudresourcemanager.googleapis.com/
Yes*
tagvalue

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
Address

No

cmdb_ci_cloud_public_ipaddress

compute.googleapis.com/
Yes*
autoscaler

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
N/A
BackendService

Yes

cmdb_ci_cloud_load_balancer

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

compute.googleapis.com/
Yes
BackendService

N/A

cmdb_ci_lb_service

compute.googleapis.com/
Yes
Disk

Yes

cmdb_ci_storage_volume

compute.googleapis.com/
Yes
DiskTypes

No

cmdb_ci_disk_type

compute.googleapis.com/
N/A
Firewall

Yes

cmdb_ci_compute_security_group

compute.googleapis.com/
Yes
Firewall

Yes

cmdb_ci_network_acl_rule

compute.googleapis.com/
Yes
ForwardingRule

Yes

cmdb_ci_lb_service

compute.googleapis.com/
Yes
HttpHealthCheck

Yes

cmdb_ci_lb_health_service

compute.googleapis.com/
Yes
Image

No

cmdb_ci_os_template

compute.googleapis.com/
Yes
Instance

N,A

cmdb_ci_lb_pool_member

compute.googleapis.com/
N/A
Instance

Yes

cmdb_ci_server

compute.googleapis.com/
Yes
Instance

Yes

cmdb_ci_vm_instance

compute.googleapis.com/
Yes
Instance/
networkInterfaces

No

cmdb_ci_endpoint_vnic

compute.googleapis.com/
Yes
Instance/
networkInterfaces

Yes

cmdb_ci_nic

compute.googleapis.com/
Yes
InstanceGroup

N/A

cmdb_ci_lb_pool

compute.googleapis.com/
N/A
InstanceGroup

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes*
Instancegroupmanager

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes*
Instancesettings

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
InstanceTemplate

No

cmdb_ci_instance_template

compute.googleapis.com/
No
Instancetemplate

Yes**

cmdb_ci_cmp_resource

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

compute.googleapis.com/
No
MachineImage

Yes

cmdb_ci_os_template

compute.googleapis.com/
Yes
MachineTypes

No

cmdb_ci_cloud_hardware_type

compute.googleapis.com/
Yes
MachineTypes

No

cmdb_ci_compute_template

compute.googleapis.com/
Yes
Network

Yes

cmdb_ci_network

compute.googleapis.com/
Yes*
Networkendpointgroup

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
Regions

No

cmdb_ci_google_datacenter

compute.googleapis.com/
Yes*
resourcepolicy

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes*
router

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
Snapshot

Yes

cmdb_ci_storage_vol_snapshot

compute.googleapis.com/
Yes
ssh

No

cmdb_ci_cloud_key_pair

compute.googleapis.com/
Yes*
sslcertificate

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
Subnetwork

Yes

cmdb_ci_cloud_subnet

compute.googleapis.com/
Yes
targetHttpProxy

N/A

cmdb_ci_lb_service

compute.googleapis.com/
Yes
targetHttpProxy

Yes**

cmdb_ci_cmp_resource

compute.googleapis.com/
Yes
TargetPool

N/A

cmdb_ci_cloud_load_balancer

compute.googleapis.com/
N/A
TargetPool

Yes

cmdb_ci_lb_pool

compute.googleapis.com/
Yes
targetSslProxy

No

cmdb_ci_lb_service

compute.googleapis.com/
Yes
targetTcpProxy

No

cmdb_ci_lb_service

compute.googleapis.com/
Yes
UrlMap

N/A

cmdb_ci_cloud_load_balancer

compute.googleapis.com/
N/A
UrlMap

Yes**

cmdb_ci_cmp_resource

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

compute.googleapis.com/
Yes
zones

No

cmdb_ci_availability_zone

container.googleapis.com/
Yes
Cluster

Yes

cmdb_ci_kubernetes_cluster

container.googleapis.com/
No
NodePool

Yes

cmdb_ci_kubernetes_node_pool

containerregistry.googleapis.com/
Yes*
image

Yes**

cmdb_ci_cmp_resource

dataplex.googleapis.com/
Yes*
entrygroup

Yes**

cmdb_ci_cmp_resource

firebase.googleapis.com/
Yes*
firebaseproject

Yes**

cmdb_ci_cmp_resource

firebasedatabase.googleapis.com/
Yes
instances

No

cmdb_ci_cloud_database

firebaserules.googleapis.com/
Yes*
release

Yes**

cmdb_ci_cmp_resource

firebaserules.googleapis.com/
Yes*
ruleset

Yes**

cmdb_ci_cmp_resource

firestore.googleapis.com/
Yes
Database

Yes

cmdb_ci_cloud_database

iam.googleapis.com/
role

Yes*

Yes**

cmdb_ci_cmp_resource

iam.googleapis.com/
serviceaccount

Yes*

Yes**

cmdb_ci_cmp_resource

iam.googleapis.com/
serviceaccountkey

Yes*

Yes**

cmdb_ci_cmp_resource

integrations.googleapis.com/
Yes*
integration

Yes**

cmdb_ci_cmp_resource

integrations.googleapis.com/
Yes*
integrationversion

Yes**

cmdb_ci_cmp_resource

K8s.io/endpoints

Yes*

Yes**

cmdb_ci_cmp_resource

K8s.io/Namespace

Yes*

Yes

cmdb_ci_kubernetes_namespace

k8s.io/Node

Yes*

Yes

cmdb_ci_kubernetes_node

K8s.io/
persistentvolume

Yes*

Yes**

cmdb_ci_cmp_resource

k8s.io/
Yes*
persistentvolumeclaim

Yes**

cmdb_ci_cmp_resource

K8s.io/Pod

Yes*

Yes

cmdb_ci_docker_container

K8s.io/Pod

N/A

Yes

cmdb_ci_docker_image

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Supported by Cloud
Service Graph
Connectors

CI Class

K8s.io/Pod

N/A

Yes

cmdb_ci_kubernetes_pod

K8s.io/Pod

N/A

Yes

cmdb_ci_kubernetes_volume

K8s.io/resourcequota

Yes*

Yes**

cmdb_ci_cmp_resource

k8s.io/Service

Yes*

Yes

cmdb_ci_kubernetes_service

K8s.io/serviceaccount Yes*

Yes**

cmdb_ci_cmp_resource

labels

No

cmdb_key_value

logging.googleapis.com/Yes*
logbucket

Yes**

cmdb_ci_cmp_resource

logging.googleapis.com/Yes*
logmetric

Yes**

cmdb_ci_cmp_resource

logging.googleapis.com/Yes*
logsink

Yes**

cmdb_ci_cmp_resource

logging.googleapis.com/Yes*
recentquery

Yes**

cmdb_ci_cmp_resource

memcache.googleapis.com/
Yes*
Instance

Yes

cmdb_ci_cloud_database

monitoring.googleapis.com/
Yes*
alertpolicy

Yes**

cmdb_ci_cmp_resource

monitoring.googleapis.com/
Yes*
dashboard

Yes**

cmdb_ci_cmp_resource

monitoring.googleapis.com/
Yes*
notificationchannel

Yes**

cmdb_ci_cmp_resource

networkmanagement.googleapis.com/
Yes*
connectivitytest

Yes**

cmdb_ci_cmp_resource

orgpolicy.googleapis.com/
Yes*
policy

Yes**

cmdb_ci_cmp_resource

policy.k8s.io/
poddisruptionbudget

Yes*

Yes**

cmdb_ci_cmp_resource

pubsub.googleapis.com/Yes*
subscription

Yes**

cmdb_ci_cmp_resource

pubsub.googleapis.com/Yes*
topic

Yes**

cmdb_ci_cmp_resource

rbac.authorization.k8s.io/
No
ClusterRole

Yes

cmdb_ci_kubernetes_cluster_role

rbac.authorization.k8s.io/
No
ClusterRoleBinding

Yes

cmdb_ci_kubernetes_cluster_role_bind

rbac.authorization.k8s.io/
Yes*
role

Yes**

cmdb_ci_cmp_resource

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
Discovery and Service Mapping Patterns vs Service Graph Connector for GCP (continued)
Supported by Cloud
Service Graph
Connectors

CI Class

rbac.authorization.k8s.io/
Yes*
rolebinding

Yes**

cmdb_ci_cmp_resource

redis.googleapis.com/ Yes
clusters

No

cmdb_ci_cloud_db_cluster

redis.googleapis.com/ No
Instance

Yes

cmdb_ci_cloud_database

run.googleapis.com/
revision

Yes*

Yes**

cmdb_ci_cmp_resource

run.googleapis.com/
service

Yes*

Yes**

cmdb_ci_cmp_resource

servicedirectory.googleapis.com/
Yes*
endpoint

Yes**

cmdb_ci_cmp_resource

servicedirectory.googleapis.com/
Yes*
namespace

Yes**

cmdb_ci_cmp_resource

servicedirectory.googleapis.com/
Yes*
service

Yes**

cmdb_ci_cmp_resource

servicemanagement.googleapis.com/
Yes*
managedservice

Yes**

cmdb_ci_cmp_resource

servicenetworking.googleapis.com/
Yes*
connection

Yes**

cmdb_ci_cmp_resource

serviceusage.googleapis.com/
Yes*
service

Yes**

cmdb_ci_cmp_resource

spanner.googleapis.com/
Yes
Database

No

cmdb_ci_database

spanner.googleapis.com/
Yes
Instance

Yes

cmdb_ci_cloud_database

sqladmin.googleapis.com/
Yes*
backup

Yes**

cmdb_ci_cmp_resource

sqladmin.googleapis.com/
Yes*
backuprun

Yes**

cmdb_ci_cmp_resource

sqladmin.googleapis.com/
Yes*
Instance

Yes

cmdb_ci_cloud_database

sqladmin.googleapis.com/
Yes*
Instances/databases

No

cmdb_ci_database

storage.googleapis.com/N/A
Bucket

Yes

cmdb_ci_cloud_object_storage

storage.googleapis.com/Yes
Bucket

N/A

cmdb_ci_cmp_resource

storage.k8s.io/
storageclass

Yes**

cmdb_ci_cmp_resource

Resource type

Supported by Cloud
Discovery and Service
Mapping Patterns

Yes*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
Cloud discovery setup using Discovery Home
Get started with Cloud Discovery by configuring credentials, service accounts, schedules, and
MID Servers.
Setting up Cloud Discovery is the first stage in performing cloud discovery and using Cloud
Provisioning and Governance for managing discovered cloud resources.
Cloud Discovery is part of the ServiceNow AI Platform and deploys some of its platform-wide
mechanisms and features. At the same time, there are some configurations that are specific to
Cloud Discovery only.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Perform the following tasks in the exact order they are listed below:
1. Evaluate your cloud deployment and plan how you are going to discover it.
2. Request Discovery.
3. Install and configure the MID Servers.
4. Set up service accounts and configure access to them.
◦ Setting up AWS service accounts
◦ Create Azure service accounts
◦ Create GCP service accounts
◦ Create VMware service accounts
◦ Set up Alibaba Cloud service accounts
5. For Amazon AWS Cloud and Microsoft Azure Cloud, configure notifications and alerts from the
Amazon AWS Cloud and Microsoft Azure Cloud to make the necessary updates to your CMDB
without additional scanning.
◦ Configure the AWS Config service to send event notifications to the ServiceNow instance
◦ Configure the Microsoft Azure Alert service to auto-update the CMDB
◦ Configure the Google Cloud Logging service to auto-update the CMDB
◦ Configure the VMware Events service to auto-update the CMDB

Note: Event-driven discovery does not require Cloud Provisioning and Governance.
6. Ensure that your ServiceNow instance has the relevant patterns and CI classes (types) for
cloud resources. You may need to deploy the latest version of the following applications from
the ServiceNow Store.
◦ Discovery and Service Mapping Patterns
◦ CMDB CI Class Models
7. Create discovery schedules for cloud resources.
Cloud discovery setup using Cloud Discovery Workspace
Perform the necessary procedures to prepare for discovering resource CIs on the cloud.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
Important: Starting with the Zurich release, Cloud Discovery Workspace is being
prepared for future deprecation. It will be hidden and no longer activated on new instances,
but will continue to be supported. Discovery Admin Workspace provides the latest
experience for this functionality. For details, see the Application/Plugin Deprecation
Process [KB0867184]
article in the Now Support knowledge base.
Setting up Cloud Discovery is the first stage in performing cloud discovery and using Cloud
Provisioning and Governance for managing discovered cloud resources.
Cloud Discovery is part of the ServiceNow AI Platform and deploys some of its platform-wide
mechanisms and features. At the same time, there are some configurations that are specific to
Cloud Discovery only.
Cloud Discovery Workspace present an enhanced way of creating discovery schedules. You can
also check prerequisites required for discovering cloud resources, like credentials and service
accounts.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Perform the following tasks in the exact order they are listed below:
1. Evaluate your cloud deployment and plan how you are going to discover it.
2. Request Discovery.
3. Install Cloud Discovery Workspace.
4. Install and configure the MID Servers.
5. (For Amazon AWS Cloud and Microsoft Azure Cloud) Configure notifications and alerts from
the Amazon AWS Cloud and Microsoft Azure Cloud to make the necessary updates to your
CMDB without additional scanning.
◦ Configure the AWS Config service to send event notifications to the ServiceNow instance
◦ Configure the Microsoft Azure Alert service to auto-update the CMDB
◦ Configure the Google Cloud Logging service to auto-update the CMDB
◦ Configure the VMware Events service to auto-update the CMDB

Note: Event-driven discovery does not require Cloud Provisioning and Governance.
6. Ensure that your ServiceNow instance has the relevant patterns and CI classes (types) for
cloud resources. You may need to deploy the latest version of the following applications from
the ServiceNow Store.
◦ Discovery and Service Mapping Patterns
◦ CMDB CI Class Models
7. Create a discovery schedule in Cloud Discovery Workspace.
Related topics
Cloud Discovery Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Create discovery schedules for cloud resources
Create schedules for discovering cloud resources based on the cloud discovery method you
choose; that is, service accounts or IP ranges.

Discovery Manager interface
Use the Cloud Discovery Schedule Configuration interface to input the information that you need
to access your service accounts and sub-accounts. You can specify the credentials to validate
the selected accounts. Test the connections to your accounts and then create schedules to
discover the cloud resources in your selected datacenters.

Note: The term "sub-accounts" is used generically in the Cloud Discovery Schedule
Configuration interface. Its meaning varies by cloud provider:
• In AWS, sub-accounts refer to member accounts under a management account.
• In Microsoft Azure, the equivalent is a subscription.
• In Google Cloud Platform (GCP), Cloud Discovery targets projects.
Progress indicator
As you complete each configuration phase, the tabs at the top of the Discovery Manager track
your progress. A check mark indicates a completed phase. A dark underline marks the current
phase. The tabs are interactive, t you can move to a phase by clicking that tab.

Discovery Manager label customization
The Service Account Field Options [service_account_field_options] table contains fields to
modify the labels in Discovery Manager. These fields enable you to customize the Discovery
Manager to handle new service providers or to alter existing labels to meet internal policies. For
example, the Microsoft Azure account ID label is Microsoft Azure Subscription GUID by default.
You can change it to Subscription ID, to Account ID, or to anything else based on your needs.
Select a service account and test your credentials
Specify your cloud provider and select the service account to discover. You can include one or all
available sub-accounts on a schedule. Provide the credentials for the cloud service account and
test the connection.

Before you begin

Before you attempt to configure Cloud Discovery, you must have at least one validated
MID Server with a status of Up. The MID Server must reach the IP ranges that you intend to
discover. You can install the MID Server by using Use MID Server guided setup
or by manually
downloading and running the installer. For details, see the MID Server installation instructions
for Linux
and Windows . The MID Server used for Cloud Discovery must be configured with the
Cloud Management capability.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
Role required: discovery_admin

About this task

®

The ServiceNow Cloud Discovery wizard begins with the account selection and testing phase.
To prevent long waits or unexpected timeouts, use the cdu.record.watcher.timeout
system property to define the maximum waiting period for these Cloud Discovery configuration
processes:
• Service account validation
• Member account discovery
• Discovery of logical datacenters
The default timeout value is 300000 milliseconds or 5 minutes.

Procedure
1. Navigate to All > Discovery > Home, and then click Discover Cloud Resources in the Welcome
screen.

Note: The Welcome screen contains a link to the Discovery Quick Start. This wizard
is designed to quickly set up a basic Discovery. You can use Quick Start to evaluate
Discovery or to explore new network devices, but the guide is not intended for
discovering cloud resources.
If the system cannot detect an appropriate MID Server, you are prompted to install and
configure a MID Server by using the MID Server Guided Setup . This notification is also
displayed if an existing MID Server is not available because it is upgrading.

2. In the Basic Info pane of the Discovery Manager, select the name of your cloud provider in the
Provider field, such as AWS or Azure.
The wizard displays a count of the validated and available MID Servers in the MID Servers
pane.
3. If you're using AWS, Azure, or GCP, you can specify the MID Server selection type in the MID
Selection Type field.

Note: AWS and Azure selection is only available after migration to pattern-based
Discovery. For more information, see Migrate from CAPI to Patterns.
The following options are available:
◦ Auto-Select MID Server: The wizard automatically uses an appropriate MID Server.
◦ Specific MID Server: The wizard uses the MID Server specified in the MID Server field. To
filter and view MID Servers that are configured to assume an IAM role for discovering cloud
resources, select the Credential-Less Discovery option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
4. If no MID Server has the Cloud Management capability, click Configure MID Servers and
configure one appropriately.
a. Navigate to MID Servers > Capabilities.
b. From the MID Server Capabilities list, select Cloud Management.
You can also select ALL, which includes Cloud Management by default.
c. In the MID Servers related list, click Edit and then add your MID Servers to the capability.
d. Click Save.
Your MID Servers are ready to communicate with your cloud service accounts.
5. In the Schedule Name field, enter a unique and descriptive name for the schedule.
6. In the Service Accounts pane, select an existing account for the newly named schedule.
If you select an existing account, the system auto-completes the form with the available
information. If you add an account, you must provide the account ID, credentials, and URL, if
applicable. For VMware, you must specify the URL.
◦ The AWS account ID is the account ID.
◦ The Azure account ID is the Azure Subscription GUID.
◦ The GCP account ID is the project ID.
◦ The VMware account ID is the virtual machine instance UUID.

Note: VMware discovery can run without a service account. To discover VMware
resources, configure the schedule to run on the IP address of the vCenter server.
7. Select the credentials for this cloud service account or add new credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
a. To add a credential, click the plus icon (+).
b. Select the appropriate cloud credential type from the list.
c. Complete the form and click Save.

Note: You can configure AWS to generate temporary credentials for service accounts.
This capability eliminates the need to define some credentials on the instance, and
it can increase security on your member accounts (sub-accounts). For details, see
Access setup for AWS service accounts.
8. To validate the account with the provided details, click Test Account.
Messages in the header bar notify you of the validation results. If you specified a management
account and the connection test was successful, then the wizard displays a selection screen
for any members accounts (sub-accounts) that are associated with the management account.
By default, all current member accounts are selected for the schedule and cannot be moved to
the Available list.

Note:
If the validation process does not return any sub-accounts or any sub-accounts that you
added recently, click Refresh Members or rerun the validation process. If validation times
out repeatedly, increase the timeout interval in the cdu.record.watcher.timeout
MID Server property.

9. To select specific sub-accounts for the schedule, deactivate the auto-select feature.
By default, all sub-accounts are selected. To disable the feature and to permit the selection of
specific datacenters to discover, slide the toggle switch to the left.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
10. To exclude a sub-account, drag the sub-account from the Selected list to the Available list.
11. Select Next.
Select a cloud provider datacenter to discover
Cloud Discovery displays the list of available datacenters when you validate the service account.
Specify which datacenters you want to discover through the schedule.

Before you begin

Role required: discovery_admin

Procedure
1. To select the datacenters to discover, click the Select Datacenters phase in the Discovery
Manager tab bar.
By default, all datacenters associated with the service account are selected for the Cloud
Discovery schedule.

Note:
◦ If no datacenters appear, select Refresh Datacenters or re-run the account
validation. If validation times-out repeatedly, increase the timeout interval in the
cdu.record.watcher.timeout MID Server property.
◦ You can configure Cloud Discovery to auto-refresh the list of sub-accounts and
datacenters before each scheduled discovery. For more information, see Enable autorefreshing of sub-accounts and datacenters.
2. To select specific datacenters for the schedule, deactivate the auto-select feature by moving
the Discover all datacenters listed below toggle switch to the left.
3. Move the datacenters you want to discover from the Available list to the Selected list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
4. Select the next phase in the tab bar.
If required, you can configure IP ranges to discover virtual machines (VM), or move to the
schedule phase and complete Cloud Discovery setup.
Enable discovery of virtual machines
You can discover virtual machines (VMs) during discovery of the cloud resources. Cloud
Discovery performs a deep discovery of the virtual machines identified by the cloud schedule,
using the IP addresses of the VMs.

Before you begin

All MID Servers you intend to use for Cloud Discovery must be validated, have a status of Up, and
they can access the IP ranges in the cloud provider account.

Important: The upgrade process from Madrid to New York deactivates the existing Cloud
Discovery schedules. Ensure to re-activate any schedules in the Discovery Manager that
might have been deactivated during an upgrade from Madrid . These schedules have a Run
status of undefined in the Discovery Schedule [discovery_schedule] table.
Role required: discovery_admin

About this task

You do not need to configure IP ranges for the MID Servers used with Cloud Discovery. Cloud
Discovery automatically selects the IP addresses of the virtual machines in the datacenters you
selected in the wizard.

Procedure
1. To discover the VMs that are part of the current schedule, click the Discover Virtual Machines
(optional) phase in the Discovery Manager tab bar.
By default, VM discover is active.

Note: To learn more about the working of Discover Virtual Machines (optional) in
Cloud Discovery, see the KB article How does the "Discover Virtual Machine" (optional)
work in Cloud Discovery .
2. Select the MID Server to use.
The following options are available:
◦ Auto-Select: Discovery selects an appropriate MID Server automatically.
◦ Specific MID Cluster: Discovery uses the named MID Server cluster.
◦ Specific MID Server: Discovery uses the named MID Server.

3. To disable VM discovery, move the Discover VMs by IP address toggle switch to the left.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
The MID Selection Type field disappears.
4. Select the Create Schedule phase in the tab bar.
Set the run time for a Cloud Discovery schedule
The final phase in the Discovery Manager wizard creates the schedule that triggers discovery of
the cloud resources.

Before you begin

Role required: discovery_admin

About this task

You can also access the schedule phase of the Discovery Manager from the Discovery Schedule
form. Navigate to Discovery > Discovery Schedules and click Cloud Discovery in the schedules
list.

Procedure
1. To configure the Cloud Discovery schedule, select Create Schedule in the Discovery Manager
tab bar.
By default, the schedule is active.
2. Configure when and how often the schedule should run and define a timeout threshold if you
want to restrict Cloud Discovery to a specific duration.

3. To deactivate the schedule, toggle the Active switch to the left.
4. Complete the Cloud Discovery scheduling process by selecting one of these options:
◦ Finish and Run: Runs Discovery immediately, using the current configuration. All subsequent
cloud discoveries run on the schedule you provided.
◦ Finish: Exits the wizard and runs Cloud Discovery on the schedule you provided.

What to do next

Open the Discovery Home page and view the results of your Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
Enable auto-refreshing of sub-accounts and datacenters
Configure the Cloud Discovery to auto-refresh the list of sub-accounts and datacenters before
each scheduled discovery. If Cloud Discovery identifies any new sub-accounts or datacenters,
it adds them to the Configuration Management Database (CMDB) and includes them in the
discovery schedule.

Before you begin

Role required: discovery_admin

About this task

Cloud Discovery can automatically refresh the list of sub-accounts and datacenters covered in a
discovery schedule, subject to the fulfilment of the following criteria:
• The cloud provider is Amazon Web Services (AWS), Microsoft Azure, or Google Cloud Platform
(GCP)
• The glide.discovery.cdu.auto_refresh_sub_accounts_and_ldcs property
to true.
• The Cloud Discovery schedule is created for a management account.
• The Cloud Discovery schedule is configured to discover the resources of all the sub-accounts
and datacenters of the management account.

Note: The term "sub-accounts" is used generically in the Cloud Discovery Schedule
Configuration interface. Its meaning varies by cloud provider:
• In AWS, sub-accounts refer to member accounts under a management account.
• In Azure, the equivalent is a subscription.
• In Google Cloud Platform (GCP), Cloud Discovery targets projects.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for the following system property record, and then open the record.

glide.discovery.cdu.auto_refresh_sub_accounts_and_ldcs
3. On the form, change the Value field to true.
4. Select Update.
Create a discovery schedule in Cloud Discovery Workspace
Create schedules for discovering cloud resources based on the discovery method that you
choose: service accounts or IP ranges. The discovery schedule defines the various settings for
the cloud discovery.

Before you begin

Important:

• Starting with the Zurich release, Cloud Discovery Workspace is being prepared for future
deprecation. It will be hidden and no longer activated on new instances, but will continue
to be supported. Discovery Admin Workspace provides the latest experience for this
functionality. For details, see the Application/Plugin Deprecation Process [KB0867184]
article in the Now Support knowledge base.
• Starting with version 1.11.0, you can create AWS, Azure, and GCP schedules in Discovery
Admin Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
• Verify that version 1.7.1 or later of the Cloud Discovery Workspace application is installed on the
ServiceNow AI Platform. For more information, see Install Cloud Discovery Workspace.
• Before you attempt to configure Cloud Discovery, you must have at least one validated
MID Server with a status of Up. The MID Server must reach the IP ranges that you intend
to discover. You can install the MID Server by using Use MID Server guided setup
or by
manually downloading and running the installer. For details, see the MID Server installation
instructions for Linux
and Windows . The MID Server used for Cloud Discovery must be
configured with the Cloud Management capability.
• Verify that suitable credentials are available in the ServiceNow AI Platform to connect with the
service accounts on which you want to perform the discovery.
• Pattern-based discovery runs by default. In scenarios where the latest patterns application
is not installed, discovery fails and you are prompted to install or migrate from CAPI-based
discovery. For more information, see Migrate from CAPI to Patterns.
Role required: discovery_admin

About this task

®

The ServiceNow Cloud Discovery wizard begins with the account selection and testing phase.
To prevent long waits or unexpected timeouts, use the cdu.record.watcher.timeout
system property to define the maximum waiting period for these Cloud Discovery configuration
processes:
• Service account validation
• Member account discovery
• Discovery of logical datacenters
The default timeout value is 300000 milliseconds or 5 minutes.
You can configure Cloud Discovery to auto-refresh the list of subaccounts and datacenters
before each scheduled discovery. For more information, see Create discovery schedules for
cloud resources.

Procedure
1. Navigate to Workspaces > Cloud Discovery Workspace > Cloud Discovery.
2. Select New discovery schedule.
3. Select the cloud provider.
a. Fill the values on the Choose the provider form.
For description of the form fields, see Create a new discovery schedule form reference.
b. Select Next.
4. Select service account for the Cloud Discovery schedule or create a service account.
For description of the service account form fields, see Cloud Discovery service account form
reference. If you select an existing account, the system auto-completes the form with the
available information.

Note: VMware discovery can run without a service account. To discover VMware
resources, configure the schedule to run on the IP address of the vCenter server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
a. Optional: To check the connection with the service account, select Test account.
b. Optional: If you're creating the discovery schedule for a management account, specify
whether you want to discover all the member accounts or only specific member accounts.
By default, all the existing member accounts are selected for the discovery schedule.
c. Optional: If you're creating the discovery schedule for a management account and the
validation process doesn't return the subaccounts, select Refresh or rerun the account
validation.
d. Select Next.
5. Select datacenters for the discovery schedule.
You can either select all the datacenters attached with the service account or select specific
datacenters.
a. Optional: If you want to discover specific datacenters, select the datacenters from the
Select the data centers drop-down list.
b. Optional: If the datacenters don't appear, select Refresh Datacenters or rerun the account
validation.
c. Select Next.
6. Optional: Specify whether you want to discover the Virtual Machines (VM) and their attributes.
a. Optional: Specify whether you want to perform VM discovery using AWS Systems Manager.

Note: This option displays only when the system property

glide.discovery.enable_ssm is enabled and AWS is selected as the cloud
provider in Step 3.
b. Select a MID Server or MID cluster that can discover the VMs.
If you're not sure about the MID selection, select Auto-Select MID Server.
c. Select Next.
7. Create a schedule to execute the Cloud Discovery.
a. Select an execution frequency for the Cloud Discovery schedule.
b. Specify a start time for executing the discovery.
c. Optional: Specify criteria to cancel the discovery.
d. Activate the discovery schedule.
8. Do any of the following actions.
Option

Description

Finish and run

Cloud Discovery saves the schedule and exe­
cutes it.

Finish

Cloud Discovery saves the schedule and exe­
cutes it as per the defined frequency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
Discovery for AWS
Amazon Web Services (AWS) cloud discovery enables visibility to your AWS cloud resources,
to populate and update the Configuration Management Database (CMDB). Visibility into
AWS supports business outcomes such as cloud transformation and optimizing efficiency for
operations (ITOM/ITSM/AIOps).

What is AWS cloud discovery
AWS cloud discovery is an automated process that continuously identifies and maps AWS
resources and populates the data in the Configuration Management Database (CMDB).
AWS discovery can be performed by a combination of approaches such as agent-based or
agentless, cloud APIs for metadata discovery, or IPs for OS-level discovery. The visibility can
be provided near real time (using event-based discovery for example) or by timed discovery
schedules.
The Discovery and Service Mapping apps perform discovery by methods refereed to as
horizontal discovery and top‑down mapping. Horizontal discovery identifies configuration
items (CIs) without dependency mapping. Top‑down service mapping identifies application
dependencies, connection paths, and service impact.

Key outcomes and business value
AWS discovery facilitates several vital business outcomes by populating the CMDB with
essential cloud data:
• Regulatory compliance enabled by the data support. Visibility can promote alignment
with compliance frameworks such as the Mutual Recognition Agreement (MRA) or Digital
Operational Resilience Act (DORA).
• Software asset management (SAM) enabled by visibility into cloud software deployments.
• Financial operations(FinOps) enabled by comprehensive visibility into AWS resources and
their usage,
• Security operations(SecOps) enabled by continuous visibility into cloud resources and their
configurations.
• Certificate management enabled by the discovery of certificates, their expiry, and usage.
• Artificial intelligence for IT operations (AIOps) enabled by Identifying and mapping all cloud
resources, and their configurations.

AWS discovery approaches
There are several approaches for discovering AWS environments.
1. Cloud metadata discovery: Provides a high-level view of the AWS cloud infrastructure.
2. Cloud OS-Level discovery: Provides a deeper level of discovery that indicates the state of the
AWS cloud resources, such as installed software, active services, running processes, and
system configurations.
3. Event‑driven cloud discovery: Tracks changes in the life-cycle state or the configuration of
AWS cloud resources. For more information, see AWS events-driven discovery
4. Collecting data with AWS Systems Manager: Provides a streamlined, agent-based approach
to discovering Amazon Elastic Compute Cloud (EC2). For more information, see AWS SSM
discovery
5. Collecting data with Agent Client Collector (ACC-VC): Performs horizontal IP-based discovery
for OS-related attributes such as system configurations, network interfaces, and running
process. For more information, see Agent Client Collector Discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
6. Collecting data with Service Graph Connectors: Imports and integrates AWS data into CMDB
and non-CMDB tables. Specializes in collecting the data for AWS Organizations. For more
information, see AWS discovery solutions comparison and Service Graph Connector for
AWS .
For comparison of AWS cloud discovery methods and requirements, see AWS cloud discovery
methods and use cases

How to perform AWS cloud discovery
Multiple ITOM Visibility apps can collect (or discover) your data, visualize it, and help you monitor
your AWS resources.
• Discovery Admin Workspace
• Discovery for Amazon Elastic Kubernetes Service (EKS)
• Service Mapping
• Discovery and Service Mapping Patterns
• Certificate Inventory and Management
Enabling Discovery or other Visibility solutions to access your AWS infrastructure depends on
roles and permissions configured both in AWS and in ServiceNow AI Platform. The discovery
process requires configuration within AWS, like setting up Identity and Access Management
roles.
AWS user discovery permissions
AWS Users

Discovery permissions

AWS Organizations with master and member
accounts

Access is based on the IAM roles defined for
the master and member accounts.

AWS account root user

Has complete access to all AWS services and
resources in the account.

IAM users/IAM user group

Has access to specific resources and services
based on IAM roles or temporary access
based on assumed roles.

For more information, see Access to cloud environments for ITOM products
In the ServiceNow AI Platform side, there are user configurations needed if you choose to use
Discovery.
• You must configure the discovery_admin role for a user, to be able to run the discovery. For
more information, see Managing roles
• Discovery runs commands and API queries to access and discover your AWS infrastructure.
Before starting to configure Discovery roles and permissions, review the Cloud discovery
spreadsheet and verify the REST API permissions.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
AWS cloud discovery methods and use cases
Comparison of use cases and requirements for cloud discovery methods in AWS.
ITOM Visibility offers several methods for AWS cloud discovery. Each method supports different
use cases and has its own requirements.

AWS cloud discovery use cases
Comparison of AWS cloud discovery methods and use cases
Horizontal
Cloud
discovery
Discovery with AWS
(Pattern- Systems
based)
Manager
(AWS SSM)

Agent Client
Collector
Service
for Visibility
Graph
- Content
Connectors
(without MID
Server)

Agent Client
Collector
for Visibility
- Content
(with MID
Server)

IP-based
Horizontal
Discovery
(Patternbased)

IT Service
Management
(ITSM) - basic
and generic
virtual CI
classes

Yes

Yes

Yes

No

No

No

ITSM extended
virtual CI
classes

Yes

Yes

No

No

No

No

ITSM hardware CI
classes

No

Yes

Yes

Yes

Yes

Yes

Pattern
discovery of
applications

No

Yes

No

No

Most

Yes

Tag-based
service
mapping

Yes

Yes

Yes

No

No

No

Machine
No
Learning (ML)based service
mapping

Some

Some

Yes

Yes

Yes

Top-down
service
mapping

No

No

No

No

Most

Yes

Software
Asset
Management
(SAM) package
manager

No

Yes

Yes

Yes

Yes

Yes

Use case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
Comparison of AWS cloud discovery methods and use cases (continued)
Horizontal
Cloud
discovery
Discovery with AWS
(Pattern- Systems
based)
Manager
(AWS SSM)

Agent Client
Collector
Service
for Visibility
Graph
- Content
Connectors
(without MID
Server)

Agent Client
Collector
for Visibility
- Content
(with MID
Server)

IP-based
Horizontal
Discovery
(Patternbased)

SAM - filebased

No

No

No

No

Yes

Yes

Oracle Global
License
Advisory
Services
(GLAS)

No

No

No

No

Yes

Yes

Certificate
discovery

No

No

No

No

Yes

Yes, without
host
relationships

Use case

AWS cloud discovery requirements
Comparison of AWS cloud discovery methods and requirements

Requirement

Agent Client
Cloud
Horizontal
Service
Collector for
Discovery discovery
Graph
Visibility (Pattern- with AWS
Connectors Content (without
based)
SSM
MID Server)

Agent Client
Collector for
Visibility Content (with
MID Server)

IP-based
Horizontal
Discovery
(Patternbased)

MID Server

Yes

Yes

No

No

Yes

Yes

Cloud
credential

No

No

Yes

No

No

No

OS
credential

No

No

No

No

No

Yes

ServiceNow
agent

No

No

No

Yes

Yes

No

AWS SSM
agent - on
all virtual
machines
(VMs)

No

Yes

Yes

No

No

No

AWS S3
bucket

No

Yes

Yes

No

No

No

No

No

No

No

Yes

No

Network
Connectivity
Target VM to
MID Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
Comparison of AWS cloud discovery methods and requirements (continued)

Requirement

Network
Connectivity
MID Server
to Target VM

Agent Client
Cloud
Horizontal
Service
Collector for
Discovery discovery
Graph
Visibility (Pattern- with AWS
Connectors Content (without
based)
SSM
MID Server)

Agent Client
Collector for
Visibility Content (with
MID Server)

IP-based
Horizontal
Discovery
(Patternbased)

No

No

Yes

No

No

No

AWS events-driven discovery
The Amazon Web Services (AWS) Config service can raise events for any changes in the life®
cycle state or the configuration of a cloud resource. The ServiceNow event-driven discovery
uses the events to auto-update the latest resource information in the Configuration Management
Database (CMDB).
Overview of the AWS events-driven discovery

Configure the AWS Config service to send Simple Notification Service (SNS) notifications to the
ServiceNow instance. For more information, see Configure the AWS Config service to send event
notifications to the ServiceNow instance. After you configure the service, it starts sending event
notifications to the ServiceNow Cloud Events REST API. When an event meets any one of the
following criteria, the API writes it to the Cloud Events [sn_cmp_cloud_event] table:
• The Type of the event is SubscriptionConfirmation.
• The Type of the event is Notification and messageType is
ConfigurationItemChangeNotification.
• Amazon CloudWatch has raised the event for a change in the tag associated with the
Configuration Item (CI).
The Cloud Event Scheduler then picks the events in the Ready state for batch
processing. During event processing, the event-driven discovery uses response
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
mappings or patterns to update the details of the affected resource in the CMDB. The
sn_cmp.cloud_event.use_response_mapping_aws property determines the CMDB
update method. To understand the status of an event, review its state in the Cloud Events
[sn_cmp_cloud_event] table.
Starting with the Zurich release, the

sn_cmp.cloud_event.use_response_mapping_aws property is set to True by default.
When this property is set to True, and suitable response mappings are available, the event-driven
discovery uses the response mappings to create or update the CI in the CMDB. Otherwise, the
event-driven discovery triggers the appropriate patterns to discover the affected resource and
create or update the CI in the CMDB.
Starting with the Zurich release, use the

sn_cmp.cloud_event.parallel_scheduler_count property to scale the Cloud
Event Scheduler per the event inflow rate. Running multiple cloud event schedulers in parallel
helps to improve the event processing rate of the instance. For more information on scaling the
Cloud Event Schedulers, see Scale the AWS cloud event schedulers.
During event processing, the Cloud Event Scheduler identifies the domain of the service account
and assigns to the event. If an error occurs in identifying the domain before processing, the
event can sometimes stay unassigned and become visible to all domains. To prevent the failed
events visibility to all domains, you can set the sn_cmp.error_events.default_domain
property to sys_id of the service-provider domain so that the failed events appears only to the
service-provider domain administrator.
Configure the AWS Config service to send event notifications to the ServiceNow instance
Configure the Amazon Web Services (AWS) Config service to send event notifications to the
ServiceNow instance for any changes in the lifecycle state of a resource.

Before you begin
• Ensure that the Discovery (com.snc.discovery) plugin is installed and activated in the instance.
• Ensure that you have valid AWS subscriptions (service accounts) and its associated logical
datacenters are discovered.
• Ensure that the user account password used to subscribe the instance to the Simple
Notification Service (SNS) does not contain the @ or characters.
Roles required:
• Ensure that an AWS role is available that can access the following services and resources:
◦ SNS
◦ AWS Config service
◦ Resource types for which you want to track the configuration change
• ServiceNow roles:
◦ discovery_admin
◦ sn_cmp.cloud_event_integration: The access credentials of a ServiceNow user with the
sn_cmp.cloud_event_integration role is required to subscribe the instance to the SNS
notifications. For more information, see Create a user
and Assign a role to a user .

About this task

®

The ServiceNow event-driven discovery uses the events to update the latest resource
information in the Configuration Management Database (CMDB). For more information, see AWS
events-driven discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
Many of the steps in the topic are performed in the AWS portal. For more information, see the
following AWS documents:
• Set Up Amazon SNS Notifications
• Viewing the AWS Config dashboard

Note:
If you're using domain separation for Cloud Discovery, the events are also domainseparated. Therefore, you can view the details of a processed event only if it belongs to
your domain. If an event isn’t associated with any service account, then it’s associated with
the global domain.
During event processing, the Cloud Event Scheduler identifies the domain of the service account
and assigns to the event. If an error occurs in identifying the domain before processing, the
event can sometimes stay unassigned and become visible to all domains. To prevent the failed
events visibility to all domains, you can set the sn_cmp.error_events.default_domain
property to sys_id of the service-provider domain so that the failed events appears only to the
service-provider domain administrator.

Procedure
1. Log in to the AWS account.
2. On the Services page, navigate to AWS Services > Find Services > Simple Notification
Service.
3. Create an Amazon SNS topic.
The AWS Config service uses the SNS topic to publish the event notifications.
a. On the SNS dashboard, navigate to Topics > Create topic.
b. On the form, fill in the fields.
Create topic form
Field

Description

Type

Notification topic type.
Select the Standard topic type.

Name

Name of the SNS topic.

Display name - optional

Display name of the SNS topic.

c. Select Create topic.
4. Subscribe the instance to the SNS topic.
After subscribing to the SNS topic, the instance can receive the event notifications from the
AWS cloud.
a. On the Topic Details page, select Create subscription.
b. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
Create subscriptions form
Field

Description

Protocol

Communication protocols to use.
For the subscription that auto-updates the CMDB, select HTTPS.

Note: After creating the HTTPS subscription, you can create a separate
subscription that sends emails to a specified person.
Endpoint URL of the ServiceNow Cloud Events REST API.
Ensure that the URL adheres to the following syntax:
https://<username>:<user_password>@<instance_URL>/a
pi/now/cloud_event
c. Select Create subscription.
5. Enable AWS event recording.
a. Navigate to Config > Settings.
b. On the Settings page, select Edit.
c. Select the Turn on check box.
d. On the Start recording dialog box, select Confirm.
e. Fill the values on the Edit settings form.
For a description of the form fields, see Edit settings form reference.
f. Select Save.

What to do next

After some events are generated, navigate to the Cloud User Portal to view the events.
Scale the AWS cloud event schedulers
Scale the cloud event schedulers to improve the Amazon Web Services (AWS) event processing
rate of the ServiceNow instance.

Before you begin

Role required: cloud_admin

About this task

If the instance receives a huge number of events and it doesn’t process them within a
reasonable time, create additional Cloud Event Schedulers. Running multiple cloud event
schedulers in parallel helps to improve the event processing rate of the instance. When the
event inflow rate reduces, you can deactivate some of the Cloud Event Schedulers. For more
information, see AWS events-driven discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
Procedure
1. Configure the number of Cloud Event Schedulers that you want to use.
a. Navigate to All > System Properties > All Properties.
b. In the Name column, search for

sn_cmp.cloud_event.parallel_scheduler_count.

c. On the sn_cmp.cloud_event.parallel_scheduler_count property form, set
the Value field to an appropriate value.

Important:
▪ Make sure that the value of the

sn_cmp.cloud_event.parallel_scheduler_count property doesn’t
exceed the count of available worker nodes.

▪ If you have multiple domains where cloud events are configured, use the
sn_cmp.cloud_event.parallel_scheduler_count property with caution
because each cloud event scheduler has multiple iterations for each domain in
which cloud events are active.
d. Select Update.
2. Execute the Cloud Event Scheduler Count Monitor scheduled job.
The Cloud Event Scheduler Count Monitor scheduled job manages
the count of Cloud Event Schedulers per the value specified in the
sn_cmp.cloud_event.parallel_scheduler_count property.
a. Navigate to All > System Definition > Scheduled Jobs.
b. Open the Cloud Event Scheduler Count Monitor scheduled job.
c. Select Execute Now.
Create a database index for the Cloud Events table
Create a database index from the specified columns of the Cloud Events [sn_cmp_cloud_event]
table to improve the AWS cloud event processing performance.

Before you begin

Ensure that the scope is set to Cloud Provisioning and Governance.
Role required: admin

About this task

After upgrading Cloud Provisioning and Governance to the Utah release, create a database
index from the specified columns of the Cloud Events [sn_cmp_cloud_event] table. The database
index helps to improve the Amazon Web Services (AWS) event processing performance of the
instance. If you've started using Cloud Provisioning and Governance with the Utah release, the
database index is automatically created on application installation.
Instead of manually creating the database index, you can use a scheduled job to create it. For
®

more information, see ServiceNow events-driven discovery: Create a database index for the
Cloud Events table (KB1207069).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
You can also Scale the cloud event schedulers to improve the Amazon Web Services (AWS)
event processing rate of the ServiceNow instance. For more information, see Scale the AWS
cloud event schedulers.

Procedure
1. Navigate to https://<instance name>.service-now.com/
sn_cmp_cloud_event_list.do
2. Select Column options > Configure > Table.
3. Select the Database Indexes related list.
4. Select New.
5. From the available columns list, select the following columns in the stated order.
a. State
b. Process Id
c. Resource ID
6. Select Create Index.
7. Optional: Select an option to specify whether you want to receive a notification on index
creation.
8. Select OK.
9. Rename the new index for easy identification.
AWS SSM discovery
AWS Systems Manager (SSM) Agent discovery introduces a streamlined, agent-based
approach to discovering Amazon Elastic Compute Cloud (EC2) using AWS SSM. This integration
enhances Discovery by leveraging SSM agents to reduce dependency on traditional MID Server
configurations, simplify credential management, and improve scalability across multi-region
environments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


<!-- page 820 -->
Workflow
AWS SSM discovery workflow

The overall process from a high level is as follows:
®

1. The ServiceNow AI Platform sends discovery commands to the MID Server.
2. The MID interacts with AWS services (SSM, Simple Storage Service (S3), Parameter Store) to
execute commands on target devices.
3. The SSM agents run the commands and return results to S3.
4. The MID retrieves and processes results.
®

5. The MID sends the results back to the ServiceNow AI Platform via the ecc_queue, which
updates the CMDB.

Benefits and usage
The following examples highlight the primary advantages and practical uses of AWS SSM Agent
discovery:
• Execute discovery without needing additional credentials local to the operating system.
• Simplify deployment without the need of Agent Client Collector (ACC) or Virtual Private Cloud
(VPC) access.
• Minimize the need for multiple MID Servers and direct network access to target devices.
• Securely manage credentials and command execution using AWS services.

Requirements
Confirm that you have the required versions of the following applications and plugins:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
• Discovery
• Cloud Discovery Workspace version 1.7.1 or later.
• CMDB CI Class Models version 1.74.0 or later.
• Discovery and Service Mapping Patterns version 1.27.0 or later.
Install the MID Server. For more information, see Install and configure the MID Servers.
Verify that you have an AWS user account with administrative access.
®

Verify that you have a ServiceNow AI Platform user account with the discovery_admin role.

Unsupported features
Currently, the following features don’t support AWS SSM discovery:
• File-based discovery
• Certificate-based discovery
• Top-down discovery
• Enhanced ADM
• Change/Unchange user step in patterns

Note: SSM supports only sudo for privileged command execution and defaults to the sh
shell, with no support for alternate command or shell types.

AWS environment configuration
Create IAM roles and permissions
Define Identity and Access Management (IAM) roles to support AWS SSM
operations, specifying the required permissions for executing Read, Write, and List
commands. For more information, see IAM Policies
Configure EC2 roles and instances
Create EC2 roles and assign the necessary permissions for these roles to interact
with SSM. For more information about setting up an EC2 instance, see EC2
Instances .
Create S3 Buckets
Create S3 buckets to support large data transfers and configure appropriate bucket
policies and life cycle rules. To overcome SSM's 24,000-character output limit,
command output is redirected to S3, enabling full payload capture. Additionally, S3
facilitates file transfers to EC2 instances. For more information about creating S3
buckets, see Setting up an S3 Bucket .
(Optional) Configure KMS keys
Create a custom AWS Key Management Service (KMS) key to encrypt sensitive
credentials stored as SecureString parameters in the AWS Systems Manager
Parameter Store. Using a dedicated key enhances security by verifying that
credentials are encrypted and securely retrieved at runtime, without exposing them
in plain text. For more information about creating KMS keys, see Create a Customer
Managed AWS KMS Key .

Important: If you’re using applicative credentials in Discovery, you must
create a custom KMS key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
Import custom SSM documents
SSM command execution depends on the availability of required documents.
Before initiating SSM-based discovery, please verify that all YAML files provided
by ServiceNow have been successfully deployed to each AWS region where the
discovery process will run. For more information on this process, see Import Custom
AWS Documents . You can download the YAML files directly from this article.
For more information on AWS Management Console configuration, see the Amazon SSM
Discovery - AWS Environment Setup Instructions
article in the Now Support Knowledge Base.
®

ServiceNow AI Platform instance configuration
Configure System Properties
Enable the following Discovery system properties:
• glide.discovery.enable_ssm
• glide.discovery.ssm.enable_windows
The AWS SSM Agent runs with root (Linux) or SYSTEM (Windows) privileges,
meaning any command sent through it can execute with full system access. Due to
this high level of access, SSM is turned off by default for security reasons. For more
information, see Enable AWS SSM-based discovery.
Define root and non-root credentials
The MID Server property

mid.discovery.aws_ssm.linux.fallback_root_user enables EC2
instances to default to the root user. By default, this setting is false, but if you don’t
want to set up alternate user credentials, you can enable it to run commands as
root. If you leave this setting turned off, you must create a credential record in
the AWS SSM Instance Users [aws_ssm_instance_user_credentials] table, where
you simply provide the user name that should be used to run commands on the
instance. For more information, Enable root fallback and Configure custom user
credentials.
Configure MID Server properties
After you set up KMS keys or S3 buckets in the AWS Management Console,
configure the following MID Server system properties on the ServiceNow AI
®
Platform :
• mid.discovery.aws_ssm.kms_key_name
• mid.discovery.aws_ssm.kms_key_region
• mid.discovery.aws_ssm.s3_bucket_name
• mid.discovery.aws_ssm.s3_bucket_region
For more information, see Configure MID Server for AWS S3 access and Configure
MID Server for AWS KMS access.
Enable MID Server capability
You must enable the new MID Server capability for AWS SSM so the MID Server
can support running SSM discovery. By default, this capability is included if you're
using the ALL capability. However, if you're using individual capabilities, you must
manually add the new AWS SSM capability to your MID Servers. For information
about adding a capability, see Configure MID Server capabilities .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
Cloud Discovery schedule configuration
Create a Cloud Discovery schedule
SSM discovery can be deployed within an AWS-based Cloud Discovery schedule
in the Discovery Admin Workspace. To do this, go to the Deep discovery step,
enable the Create an IP-based discovery schedule toggle, and select Discover
servers though AWS Systems Manager (SSM) Agent as the Discovery method.
For more information, see Create an AWS Discovery schedule in Discovery Admin
Workspace.
Enable AWS SSM-based discovery
Configure Discovery to use AWS Systems Manager (SSM) Agent.

Before you begin

Role required: discovery_admin

About this task

The AWS SSM Agent runs with root (Linux) or SYSTEM (Windows) privileges, meaning
any command sent through it can execute with full system access. Due to this high level
of access, SSM is turned off by default for security reasons. On Linux, you can configure
non-root credentials to run Discovery commands more securely. On Windows, Discovery
commands require SYSTEM-level access, so you must decide whether to enable this capability
based on your security requirements. Enabling glide.discovery.enable_ssm
doesn't automatically activate SSM discovery on Windows. Unlike Linux, Windows lacks
support for using a non-SYSTEM user, so for security reasons, you must explicitly enable the
glide.discovery.ssm.enable_windows property to use AWS SSM discovery on
Windows devices.

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the Name field, enter glide.discovery.enable_ssm.
3. Double-click the Value field to perform inline editing.
4. Enter true.
5. Select the check mark (

) icon.

6. Optional: To enable AWS SSM-based discovery on Windows machines, repeat steps 2-5 for
the glide.discovery.ssm.enable_windows property.

What to do next

Define fallback root behavior using the

mid.discovery.aws_ssm.linux.fallback_root_user property or create
non-root credentials to execute Discovery commands using the AWS SSM Instance Users
[aws_ssm_instance_user_credentials] table. For more information, see Enable root fallback and
Configure custom user credentials.
Configure MID Server for AWS S3 access
Configure MID Server properties to enable Simple Storage Service (S3) access from the
®
ServiceNow AI Platform when performing Systems Manager (SSM) Agent discovery.

Before you begin

Confirm the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
• You have at least one MID Server installed and in the Up state. For more information, see Install
and configure MID Servers to access cloud environments.
• You have an AWS credential that allows the MID Server to access and make API calls into the
AWS environment. For more information, see AWS Access for MID Server .
• You created a custom S3 bucket with necessary access enabled for the IAM roles. For more
information, see Setting up an S3 Bucket
and Setting up a Policy for accessing the S3
Bucket .
Role required: discovery_admin

About this task

Because the SSM Run Command console has a 24,000-character limit, results that exceed
this limit must be stored in and retrieved from an S3 bucket. For Put File commands, the S3
bucket also serves as a transfer point between the MID Server and the AWS environment,
enabling file delivery to target devices via SSM. To configure the MID Server to support these S3based operations, set the mid.discovery.aws_ssm.s3_bucket_name property to the
name of the S3 bucket used for SSM Agent discovery. Then, specify the bucket’s region in the
mid.discovery.aws_ssm.s3_bucket_region property.

Procedure
1. Navigate to All > MID Server > Properties.
2. In the Name field, enter mid.discovery.aws_ssm.s3_bucket_name.
3. Double-click the Value field to perform inline editing.
4. Enter the name of the S3 bucket.
5. Select the check mark (

) icon.

6. In the Name field, enter mid.discovery.aws_ssm.s3_bucket_region.
7. Double-click the Value field to perform inline editing.
8. Enter the name of the region where the S3 bucket is located.
9. Select the check mark (

) icon.

Configure MID Server for AWS KMS access
Configure MID Server properties to enable Key Management Service (KMS) key access from the
®
ServiceNow AI Platform when performing Systems Manager (SSM) Agent discovery.

Before you begin

Confirm the following:
• You have at least one MID Server installed and in the Up state. For more information, see Install
and configure MID Servers to access cloud environments.
• You have an AWS credential that allows the MID Server to access and make API calls into the
AWS environment. For more information, see AWS Access for MID Server .
• You created a custom AWS KMS key to encrypt sensitive credentials. For more information, see
Create a Customer Managed AWS KMS Key .
Role required: discovery_admin

About this task

Using a dedicated key enhances security by verifying that applicative credentials are encrypted
and securely retrieved at runtime, without being exposed in plain text. This step is optional
and only necessary if you plan to use applicative credentials during discovery. To configure
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
the MID Server to support secure credential handling during SSM Agent discovery, set the
mid.discovery.aws_ssm.kms_key_name property to the name of the AWS KMS key.
Then, set the mid.discovery.aws_ssm.kms_key_region property to the region where
the key is located.

Procedure
1. Navigate to All > MID Server > Properties.
2. In the Name field, enter mid.discovery.aws_ssm.kms_key_name.
3. Double-click the Value field to perform inline editing.
4. Enter the name of the KMS key.
5. Select the check mark (

) icon.

6. In the Name field, enter mid.discovery.aws_ssm.kms_key_region.
7. Double-click the Value field to perform inline editing.
8. Enter the name of the region where the KMS key is located.
9. Select the check mark (

) icon.

Enable root fallback
Enable the fallback root user property to allow AWS SSM discovery to run commands as root on
Linux systems when alternate user credentials aren’t configured.

Before you begin

Confirm that AWS SSM Agent discovery is enabled. For more information, see Enable AWS SSMbased discovery.
Role required: discovery_admin

About this task
When the glide.discovery.enable_ssm property is enabled, AWS SSM
Discovery on Linux defaults to using the root user for command execution. If you prefer
not to configure alternate user credentials on your EC2 instances, you must enable the
mid.discovery.aws_ssm.linux.fallback_root_user MID Server property to
allow fallback to root execution. When enabled, it automatically creates a record in the AWS SSM
Instance Users [aws_ssm_instance_user_credentials] table with the user name root. However,
if you leave this property set to false, you must configure non-root credentials to run Discovery
commands. For more information, see Configure custom user credentials.

Procedure
1. Navigate to All > MID Server > All Properties.
2. In the Name field, enter mid.discovery.aws_ssm.linux.fallback_root_user.
3. Double-click the Value field to perform inline editing.
4. Enter true.
5. Select the check mark (

) icon.

Result

A new record is added to the AWS SSM Instance Users [aws_ssm_instance_user_credentials]
table with the user name "root".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


<!-- page 826 -->
Configure custom user credentials
Define a non-root user for AWS SSM discovery by creating a credential record that specifies a
user name with sufficient privileges to execute discovery commands on Linux targets.

Before you begin

Confirm the following:
• The system property glide.discovery.enable_ssm is turned on. For more information,
see Enable AWS SSM-based discovery.
• The user you're assigning as the non-root user has access to run all the necessary commands
on the target server. This user requires the same access as credentials used for regular Linux
discovery, including the necessary root-level access for privileged commands. For more
information, see Credentials required for host discovery and SSH credentials
Role required: discovery_admin

About this task

Instead of relying on root, you can define a custom user with sufficient privileges to execute the
required Discovery commands. Only a user name is needed—no password or key—provided that
the user has the same level of access as traditional Linux Discovery credentials. This approach
promotes restricted access and better alignment with enterprise security policies.

Note: Currently, SSM supports only sudo for privileged command execution and defaults
to the sh shell, with no support for alternate command or shell types.

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. Select AWS SSM instance User.
4. Enter a unique name for the user.
5. Enter the user name from the alternate user credential that you created on your EC2 instance
in the AWS Management Console.
For more information, see the Amazon SSM Discovery - AWS Environment Setup Instructions
article in the Now Support Knowledge Base.
6. Select Submit.

Result

A new record is added to the AWS SSM Instance Users [aws_ssm_instance_user_credentials]
table.
Create an AWS Discovery schedule in Discovery Admin Workspace
Use the Discovery Admin Workspace dashboard to create an Amazon Web Services (AWS)
Discovery schedule.

Before you begin

Verify the following:
• You have at least one validated MID Server with a status of Up. The MID Server must reach the
IP ranges that you intend to discover. You can install the MID Server by using Use MID Server
guided setup
or by manually downloading and running the installer. For details, see the MID
Server installation instructions for Linux
and Windows .
• The MID Server used for Cloud Discovery is configured with the Cloud Management capability.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
• Suitable credentials are available in the ServiceNow AI Platform to connect with the service
accounts on which you want to perform the discovery.
• Cloud Discovery has adequate permission to discover the resources of the target cloud. For
more information on Amazon Web Services (AWS) cloud permissions, see Control AWS access
and permissions using policies.
• Discovery Admin Workspace is using version 1.11.0
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Schedules.
2. Select New Discovery from the header of any tab on the Schedules page.
3. Select Cloud-based discovery and select Continue.
4. Enter a unique and descriptive name for the Discovery schedule.
5. Select AWS as the cloud provider.
6. Choose a MID Server.
Option

Description

Use a cluster of MID servers

Select an existing MID Server. Clusters pro­
vide failover protection and load balancing be­
tween MID Servers. See Configure a MID Serv­
for more information.

Automatically select a MID server

An available MID Server with an Identity and
Access Management (IAM) role is automati­
cally selected when the Discovery schedule
runs. See Automatic MID Server selection for
more information.
Choose a MID Server to run the Discovery
schedule. Only MID Servers that are validat­
ed, up, and have the Cloud Management ca­
pability are displayed.

Search for a MID server

Note: If you select this option, you can
restrict the search to MID Servers with
credential-less Discovery enabled by
checking the corresponding box.

7. Select Next.
8. Select a cloud account.
Option

Description

Existing cloud account

Select an existing cloud account on your in­
stance. Once an account is selected, the Ac­
count name and Account ID fields auto-popu­
late.

New cloud account

Add a new cloud account to your instance by
entering an account name and ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
9. Choose whether you want to Assume an IAM role or Use permanent credentials.
Option

Description

The MID Server temporarily assumes an IAM
role using a trust relationship. After selecting,
provide the Access Role Name and account
for access.

Note: Before entering the Access Role
Name and account, verify the following:
Assume an IAM role

◦ The IAM role exists on the target ac­
count, with the required permissions
and policies for Cloud Discovery.
◦ The IAM role must trust the MID Serv­
er's account so it can assume the role.
If these prerequisites aren't met, verifi­
cation fails. It's best to confirm with your
cloud admin that the role and trust rela­
tionship are properly configured before
proceeding.

Use permanent credentials

The MID Server uses static access keys tied
to an IAM user.

Even if the service account was previously verified, you can reverify if policies or permissions
may have changed by selecting Verify information.
10. Select Discover all member accounts or Discover specific member accounts.

Note: This option displays only when the target cloud account is an AWS management
account.
a. If discovering specific subscriptions, select Add member accounts.
The Discoverable Accounts dialog displays.
b. Select the check box next to one or more corresponding names and then select Add.
11. Select Next.
12. Select data centers for the discovery schedule.
You can choose to include all data centers linked to the cloud account or select specific data
centers. There’s no restriction on the number of data centers that you can add.
a. Optional: To discover specific data centers, select the data centers from the Select the data
centers drop-down list.
b. Optional: If the data centers don't appear, select Refresh data centers.
13. Select Next.
14. Optional: To complement your cloud schedule with an IP-based Discovery schedule, enable
the Create an IP-based discovery schedule toggle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
a. Optional: Select a method from the Discovery method drop-down list.
Discover servers with credentials uses operating system (OS)-level credentials to perform
deep discovery on EC2 instances. Discover servers with AWS Systems Manager (SSM)
uses AWS SSM Agent to perform deep discovery on EC2 instances. The system property
glide.discovery.enable_ssm must be enabled to use SSM discovery. For more
information, see Enable AWS SSM-based discovery.
b. Optional: Select a MID Server or cluster that can discover the Virtual Machines (VM) and
their attributes.
15. Select Next.
16. Configure the Discovery schedule.
Option

Description

Run at a scheduled time

The schedule runs at a scheduled date and
time. Use the fields to define when the sched­
ule runs.

Run on demand

The schedule only runs when triggered manu­
ally. Trigger the schedule by selecting Finish
and run at the end of this setup, or by navigat­
ing to the schedule in the Discovery Sched­
ules [discovery_schedule] table and select­
ing Discover Now.

Run after series

The schedule runs after another existing Dis­
covery schedule completes, staggering or
chaining them together. Selecting an existing
schedule displays a relationship map of all
the other associated schedules.

Set discovery time out

If the schedule exceeds the maximum run­
time, it's canceled. After toggling, configure
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
created, and you're redirected to its entry in
the Discovery Schedules [discovery_sched­
ule] table. You can edit the schedule informa­
tion or run it by selecting Discover Now.

Discovery for Microsoft Azure Cloud
If your cloud resources are in an Azure cloud, you must create a user identity called a service
principal that grants permissions to the MID Server to access selected resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


<!-- page 830 -->
Azure management groups and subscriptions
An Azure management group contains other management groups and subscriptions. The
management groups in an Azure Cloud environment form a hierarchy, but don’t contain volumes
or virtual machines. Subscriptions contain cloud resources, such as virtual machines. The
subscriptions that belong to management groups are called sub-accounts.
The advantages of using management groups are:
Easy population of sub-accounts
After you configure the management group and supply the necessary credentials, you can test
the account. If the test succeeds, Discovery returns a list of subscriptions in that management
group. From this list, you can choose one or more subscription sub-accounts to include in the
Discovery schedule using the management group. For more information on the hierarchy of
management groups and subscriptions, see Organize your resources with Azure management
groups
Discovery of sub-account resources using dynamically acquired credentials
When you run Discovery on your subscriptions, you do not need separate credentials for each
sub-account. Discovery finds the credentials for the management group and maps them to all of
the subscription sub-accounts. The Cloud Discovery process handles credentials automatically
by acquiring a temporary credential for each sub-account via an Azure API. You can elect to
use the default configuration or customize the MID Server to assume other roles for additional
controls and security. In addition, Discovery can automatically refresh the list of sub-accounts
and datacenters covered in a discovery schedule. For more information, see the KB article
Retrieve newer accounts/sub-accounts automatically via Cloud Discovery.
A service principal for Azure cloud services is similar to a Microsoft Windows service account
that enables Windows processes to communicate with each other within an Active Directory
domain.
To create the Azure service principal in your ServiceNow instance, copy the service principal
credential values from the Azure portal into a text editor, and then transfer those values into the
instance.
The text file that you generate during this procedure

This table shows you the Azure Service Principal value and the location in Azure where you can
find the values you need for the credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
Cloud Provisioning and
Governance setting

Azure Service Principal value

Location of the Azure value

Tenant ID

Azure Directory ID value from
the text file.

Azure Active Directory >
Properties > Directory ID

Client ID

Azure Application ID value
from the text file.

Azure Active Directory > App
registrations > Registered
App.Application ID

Secret Key

Azure Application key value
from the text file.

Azure Active Directory > App
registrations > Registered
App > Settings > Keys
(hidden)

Account ID

Azure Subscription ID
associated with the Tenant ID.

Azure Active Directory >
Subscriptions > Subscription
ID

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Service Mapping during top-down discovery
To include discovered components into service instances, enable CI relationships used in tagbased discovery by Service Mapping. These CI relationships are available from the 1.0.68 release
on the ServiceNow Store. For operational steps, see Tag-based discovery configuration.
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.

CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Azure Cloud Discovery API list
Logical Datacenter (cmdb_ci_logical_datacenter)
CI Attributes

Azure Attributes

object_id

response.name

name

response.name

region

response.displayName

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
Logical Datacenter (cmdb_ci_logical_datacenter) (continued)
status

Installed

Availability Zone (cmdb_ci_availability_zone)
CI Attributes

Azure Attributes

object_id

response.id

name

response.name

status

Installed/ Retired

state

Resource Group (cmdb_ci_resource_group)
CI Attributes

Azure Attributes

object_id

id

name

name

state

available

status

Installed/ Retired

Network (cmdb_ci_network)
CI Attributes

Azure Attributes

object_id

id

state
name

name

cidr

properties.addressSpace.addressPrefixes

Subnet (cmdb_ci_cloud_subnet)
CI Attributes

Azure Attributes

subnetName

response.name

subnetId

response.id

resourceGroup

response.properties.resourceGuid

networkId

response.id.split('/subnets/')

networkName

getNetwork(networkId)

cidrBlock

response.properties.addressSpace.addressPrefixes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Storage Volume (cmdb_ci_storage_volume)
CI Attributes

Azure Attributes

state

properties.provisioningState

storage_type

properties.BlobType

volume_id

id

name

name

size_bytes

properties.diskSizeGB * 1024 * 1024 * 1024

object_id

id

size

response.properties.diskSizeGB

"volume_container"

containerName

status

Installed/ Retired

Security Groups (cmdb_ci_compute_security_group)
CI Attributes

Azure Attributes

object_id

id

name

name

state

properties.provisioningState

Virtual Server (cmdb_ci_vm_instance)
CI Attributes

Azure Attributes

memory

properties.hardwareProfile.vmSize

state

The instance statuses:
• succeeded: on
• running: succeeded/stopping
• deallocating: stopping/stopped
• deallocated: off
• terminated: error

object_id

id

cpus

properties.hardwareProfile.vmSize

disks

properties.storageProfile.dataDisks

nics

properties.networkProfile.networkInterfaces[].size

vm_inst_id

properties.vmId

name

name

status

Installed/ Retired

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
Hardware Template (cmdb_ci_compute_template)
CI Attributes

Azure Attributes

name

name

object_id

name

vcpus

numberOfCores

memory_mb

memoryInMB

local_storage_gb

resourceDiskSizeInMB

cores

numberOfCores

Cloud Public IP Address (cmdb_ci_cloud_public_ipaddress)
CI Attributes

Azure Attributes

object_id

response.id

name

response.name

public_dns

properties.dnsSettings.fqdn

public_ip_address

properties.ipAddress

Cloud LB IP Address (cmdb_ci_cloud_lb_ipaddress)
CI Attributes

Azure Attributes

object_id

"properties.frontendIPConfigurations.properties.privateIPAddress OR
properties.frontendIPConfigurations.properties.publicIPAddress, then call
Public IP Address API"

name

"properties.frontendIPConfigurations.properties.privateIPAddress OR
properties.frontendIPConfigurations.properties.publicIPAddress, then call
Public IP Address API"

ipaddress_type "properties.frontendIPConfigurations.properties.privateIPAddress ==> Private
IP Address OR
properties.frontendIPConfigurations.properties.publicIPAddress ==> Public IP
Address"
status

Installed

"Cloud Network Interfaces cmdb_ci_nic"
CI Attributes

Azure Attributes

object_id

id

name

name

private_ip

properties.ipConfigurations

public_dns

call public ip address api - properties.dnsSettings.fqdn

state

properties.provisioningState

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
"Cloud Network Interfaces cmdb_ci_nic" (continued)
is_static

properties.ipConfigurations

mac_address

properties.macAddress

public_ip

call public ip address api -

Image (cmdb_ci_os_template)
CI Attributes

Azure Attributes

name

response.id

object_id

response.name

guest_os

properties.storageProfile.osDisk.osType

image_source

id

status

Installed/ Retired

Cloud Storage Account cmdb_ci_cloud_storage_account
CI Attributes

Azure Attributes

name

name

object_id

id

sku_name

sku.name

state

properties.provisioningState

Load Balancer (cmdb_ci_cloud_load_balancer)
CI Attributes

Azure Attributes

object_id

response.id

name

response.name

state
dns_name

properties.

fqdn
canonical_hosted_zone_name
Azure cloud discovery methods and use cases
Comparison of use cases and requirements for cloud discovery methods in Azure.
ITOM Visibility offers several methods for Azure cloud discovery. Each method supports different
use cases and has its own requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
Azure cloud discovery use cases
Comparison of Azure cloud discovery methods and use cases
Agent Client
Cloud
Service
Collector for
Discovery
Graph
Visibility - Content
(PatternConnectors (without MID
based)
Server)

Agent Client
Collector for
Visibility Content (with
MID Server)

IP-based
Horizontal
Discovery
(Patternbased)

IT Service
Management
(ITSM) - basic and
generic virtual CI
classes

Yes

Yes

No

No

No

ITSM - extended
virtual CI classes

Yes

No

No

No

No

ITSM - hardware CI
classes

No

Yes

Yes

Yes

Yes

Pattern discovery of No
applications

No

No

Most

Yes

Tag-based service
mapping

Yes

No

No

No

Machine Learning
No
(ML)-based service
mapping

Some

Yes

Yes

Yes

Top-down service
mapping

No

No

No

Most

Yes

Software Asset
Management
(SAM) - package
manager

No

Yes

Yes

Yes

Yes

SAM - file-based

No

No

No

Yes

Yes

Oracle Global
License Advisory
Services (GLAS)

No

No

No

Yes

Yes

Certificate
discovery

No

No

No

Yes

Yes, without
host
relationships

Use case

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


<!-- page 837 -->
Azure cloud discovery requirements
Comparison of Azure cloud discovery methods and requirements

Requirement

Agent Client
Cloud
Service
Collector for
Discovery
Graph
Visibility - Content
(PatternConnectors (without MID
based)
Server)

Agent Client
Collector for
Visibility Content (with MID
Server)

IP-based
Horizontal
Discovery
(Patternbased)

MID Server

Yes

No

No

Yes

Yes

Cloud credential

Yes

Yes

No

No

No

OS credential

No

No

No

No

Yes

ServiceNow agent

No

No

Yes

Yes

No

Azure Monitor
Agent/change
tracking - on all
virtual machines
(VMs)

No

Yes

No

No

No

Azure Log Analytics No
workspace

Yes

No

No

No

Azure storage
account

No

Yes

No

No

No

No

No

No

Yes

No

No

No

No

No

Yes

Network
Connectivity Target
VM to MID Server
Network
Connectivity MID
Server to Target VM

Create Azure cloud credentials
If your cloud resources are in an Azure cloud, create credentials that can access the Azure
account. This procedure requires configuration in your Azure account.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Before you begin
Roles required:

• discovery_admin, service_mapping_admin, sn_cmp.cloud_admin roles in Cloud Provisioning
and Governance or sn_cloud_ops_ws.cloud_ops_admin role in Cloud Discovery Workspace.
• Operations on the Microsoft Azure portal require one of the following roles:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


<!-- page 838 -->
◦ Azure or Azure AD (Active Directory) Administrator
◦ Application Administrator
◦ Application Developer
◦ Cloud Application Administrator
and the Resource Policy Contributor role to create or modify resource policies.
• Enable internal network connection between the MID Servers and the Azure Cloud API
endpoints: management.azure.com

Procedure
1. Log in to the Azure portal and navigate to Azure Active Directory.
2. Navigate to the App registrations section and select New application registration.
Enter the following information for your application:

Field

Description

Name

Unique name for the application and
its integration credentials. For example,
ServiceNow Integration.

Supported account types

Specify who can use the application.

Redirect URI (Optional)

URL that will access Azure. Typically the URL
of the ServiceNow instance.

3. Select Register to complete the app registration.
4. When registration completes, copy the Application (client) ID and Directory (tenant) ID values,
and paste them in the text editor.
5. Label the values Application ID and Directory ID respectively.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
6. In the Azure portal, navigate to the Certificates & secrets section and New client secret then
specify the following values:

Field

Description

Key description

Description for the key.

Duration

Expiration for the key.

Note: Your organization may apply
policies to restrict key durability. Select
the appropriate duration.

7. Select Add.
8. Copy and paste the key value into the text editor and label the value Application key.
9. To enable the service principal to work with various Azure subscriptions, navigate to
Subscriptions.
To manage multiple subscriptions, you must perform the following procedure for each
subscription:
a. Paste the subscription ID into the text editor and label it Subscription ID.
The text file that you generate during this procedure might look something like this:

b. Navigate to the subscription and select Access Control (IAM) from the menu.
c. Select + Add at the top of the screen then Add role assignment.
d. Select the value reader from the Role field.
Let the default value User, group, or service principal remain as is in the Assign access to
field.

Note: The Resource policy contributor role is only required for provisioning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
e. Select the name you created in step 2 in the Select field and select Save.

10. Select the Azure Service Principal type credential.
a. Navigate to All > Connections & Credentials > Credentials.
b. Select New.
c. Select Azure Service Principal.
11. Specify the following values on the Azure Service Principal form:

Field

Value

Name

Name of the service principal to register with the instance. For example,
Azure service principal credentials.

Authentication Select Client secret.
Method
The Secret key field appears when you select Client secret.

Note: Client assertion is not supported.
12. Copy and paste values from the temporary text file into the remaining fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
Credentials form field

Azure Service Principal value

Tenant ID

Azure Directory ID value from the text file.

Client ID

Azure Application ID value from the text file.

Secret key

Azure Application key value from the text file.

13. Select Save to create the Azure service principal.
14. Select the Discover Subscriptions related link to find all subscriptions for the Azure service
principal.
The instance creates a service account for each discovered subscription. The Azure
Subscriptions related list displays all subscriptions for the Azure service principal.
15. Select a subscription to view the service account created for the subscription.
16. Select a Discovery status entry in the Credential Discovery Status list to view the Discovery
log.
Each time you select Discover Subscription, the instance generates a new Discovery status
and displays it in the Credential Discovery Status list.
Run Azure Cloud Discovery using Service Principal with SSH Certificates
Discover Linux virtual machines on Azure using Service Principal (SP) with short-lived SSH
certificates. Using these certificates circumvents the need for passwords or public and private
key-pairs.

Before you begin

Before creating a Cloud Discovery credentials, Service Principles must be set up on the Azure
Portal. See the Microsoft Azure
documentation site for more information. After creating a Linux
VM with Azure AD login enabled, be sure to verify the requirements for login with Azure AD using
OpenSSH certificate-based authentication for Linux VMs. Configure suitable role assignments
for the Service Principle and Resource Group.
Before creating credentials, the External Credential Storage plugin is required to connect Azure
VM using OpenSSH certificates.
Role required: admin

Procedure
1. On the instance, navigate to Discovery > Credentials and select New.
2. For the type of credential, select Azure Service Principal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
3. Fill in the form with the required info and submit.

4. Navigate to Discovery > Credentials and select New.
5. For this type of credential, select Azure SSH Certificate Credential.
6. Fill in the form with the necessary information, including linking the Service Principle credential
you created.
The Azure Service Provider and SSH Certificate credentials have been created and linked.
Continue the procedure to create the Cloud Discovery schedule.
7. Navigate to the Cloud Discovery Workspace home page and select Cloud discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
8. Select New discovery schedule.
9. Provide a name for the schedule and select Azure as the cloud provider.
10. Create a new cloud account using your Azure Service Principal credential.
For more information, see Set up Azure service accounts.
11. Select data centers.
12. Enable the option to discover virtual machines.
13. Complete the schedule creation by selecting Finish and run.

Result

The discovery schedule should start, and the Cloud Operations homepage should show the
running status for the newly created schedule. After some time, the scheduled discovery should
be completed and a new schedule for the VM discovery is then created and run. The new VM
discovery schedule utilizes the SP we created for the generation of SSH certs to authenticate
with the VMs. You can observe this in the Discovery IP Affinity section for the credential.
Create an Azure Discovery schedule in Discovery Admin Workspace
Use the Discovery Admin Workspace dashboard to create an Azure Discovery schedule.

Before you begin

Verify the following:
• You have at least one validated MID Server with a status of Up. The MID Server must reach the
IP ranges that you intend to discover. You can install the MID Server by using Use MID Server
guided setup
or by manually downloading and running the installer. For details, see the MID
Server installation instructions for Linux
and Windows .
• The MID Server used for Cloud Discovery is configured with the Cloud Management capability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
• You have configured a service principal in the Azure Active Directory that has the necessary
permissions so that the MID Server can access the selected resources for discovery. For more
information, see Discovery for Microsoft Azure Cloud.
• Suitable credentials are available in the ServiceNow AI Platform to connect with the service
accounts on which you want to perform the discovery. For more information, see Create Azure
cloud credentials.
• Discovery Admin Workspace is using version 1.11.0
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Schedules.
2. Select New Discovery from the header of any tab on the Schedules page.
3. Select Cloud-based discovery and select Continue.
4. Enter a unique and descriptive name for the Discovery schedule.
5. Select Azure as the cloud provider.
6. Choose a MID Server.
Option

Description

Use a cluster of MID servers

Select an existing MID Server. Clusters pro­
vide failover protection and load balancing be­
tween MID Servers. See Configure a MID Serv­
for more information.

Automatically select a MID server

An available MID Server is automatically se­
lected when the Discovery schedule runs.
See Automatic MID Server selection for more
information.

Search for a MID server

Choose a MID Server to run the Discovery
schedule. Only MID Servers that are validat­
ed, up, and have the Cloud Management ca­
pability are displayed.

7. Select Next.
8. Select a cloud account.
Option

Description

Existing cloud account

Select an existing cloud account on your in­
stance. Once an account is selected, the Ac­
count name and Subscription ID/Manage­
ment Group ID fields auto-populate.

New cloud account

Add a new cloud account to your instance by
entering a name and subscription ID or man­
agement group ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
Option

Description

Note: You can access the Subscrip­
tion or Group ID in the Azure portal, un­
der the Subscriptions or Management
Groups section, respectively.
Even if the service account was previously verified, you can reverify if policies or permissions
may have changed by selecting Verify information.
9. Select Discover all Subscriptions or Discover specific Subscriptions.

Note: This option displays only when the target cloud account is an Azure management
account.
a. If discovering specific subscriptions, select Add subscriptions.
The Discoverable Subscriptions dialog displays.
b. Select the check box next to one or more corresponding names and then select Add.
10. Select Next.
11. Select data centers for the discovery schedule.
You can choose to include all data centers linked to the cloud account or select specific data
centers. There’s no restriction on the number of data centers that you can add.
a. Optional: To discover specific data centers, select the data centers from the Select the data
centers drop-down list.
b. Optional: If the data centers don't appear, select Refresh data centers.
12. Select Next.
13. Optional: To complement your cloud schedule with an IP-based Discovery schedule, enable
the Create an IP-based discovery schedule toggle.
a. Optional: Select a MID Server or cluster that can discover the Virtual Machines (VM) and
their attributes.
14. Select Next.
15. Configure the Discovery schedule.
Option

Description

Run at a scheduled time

The schedule runs at a scheduled date and
time. Use the fields to define when the sched­
ule runs.

Run on demand

The schedule only runs when triggered manu­
ally. The schedule can be triggered by select­
ing Finish and run at the end of this setup, or
by navigating to the schedule in the Discov­
ery Schedules [discovery_schedule] table
and selecting Discover Now.

Run after series

The schedule runs after another existing Dis­
covery schedule completes, staggering or
chaining them together. Selecting an existing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Option

Description

schedule displays a relationship map of all
the other associated schedules.
Set discovery time out

If the schedule exceeds the maximum run­
time, it's canceled. After toggling, configure
the runtime threshold.

Enable event-driven discovery

If Azure sends resource change events,
the Configuration Management Database
(CMDB) is updated without running the full
discovery schedule. Only the affected re­
sources are processed. For more information,
see Azure change processing.

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
created, and you're redirected to its entry in
the Discovery Schedules [discovery_sched­
ule] table. You can edit the schedule informa­
tion or run it by selecting Discover Now.

Microsoft Azure Alert driven discovery
The Microsoft Azure Alert service can raise alerts for any changes in the life-cycle state or
the configuration of a cloud resource. You can configure the service to auto-update the latest
resource information in the Configuration Management Database (CMDB) without waiting for the
next scheduled Cloud Discovery to run.

Important: The Azure change processing offers an optimal performance when compared
to the Microsoft Azure alert-driven discovery that uses a legacy form of authentication
and should no longer be used. Starting with the Discovery and Service Mapping Patterns
app version 1.1.0, the Azure change processing has replaced the Microsoft Azure alertdriven discovery. Use the new secure webhook or migrate to Azure change processing
for additional performance gains. For more information, see on the secure webhook, see
the knowledge base article Azure Alert service to auto-update the CMDB has webhook url
without credentials in the azure portal .
During event processing, the Cloud Event Scheduler identifies the domain of the
service account and assigns to the event. If an error occurs in identifying the domain
before processing, the event can sometimes stay unassigned and become visible
to all domains. To prevent the failed events visibility to all domains, you can set the
sn_cmp.error_events.default_domain property to sys_id of the service-provider
domain so that the failed events appears only to the service-provider domain administrator.
You can configure the Cloud Event Scripted REST API to receive alerts from the Microsoft
Azure Alert service. For each alert—also called an event—the API creates a record in the Cloud
Events [sn_cmp_cloud_event] table. The Cloud Event Scheduler reads the events from the
[sn_cmp_cloud_event] table for batch processing. The scheduler invokes the pattern to process
the events that are in ready state. The patterns discover the affected resource and add or update
its details in the CMDB. This method helps to update the CMDB Configuration Item (CI) data and
view the latest data in the Cloud User portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
Important: If you're using domain separation for Cloud Discovery, the events are also
domain-separated. Therefore, you can view the details of a processed event only if it
belongs to your domain. If an event is not associated with any service account, then it is
associated with the global domain.
For each event, the Cloud Event Scripted REST API stores the following information
[sn_cmp_cloud_event] table:
• Source: This field is always set to azure activity log.
• Event Name: Name of the event received from the Microsoft Azure console.
• Resource ID: ID of the affected resource. If there are VM events, Cloud Discovery uses this
information to identify the VM.
• Resource Type: Resource type of the affected resource.
Configure the Microsoft Azure Alert service to auto-update the CMDB
Configure the Microsoft Azure Alert service to auto-update the Configuration Management
Database (CMDB) without waiting for the next scheduled Cloud Discovery to run.

Before you begin
• Ensure that either Discovery or Cloud Provisioning and Governance is activated in the
instance.
•◦ An active MID Server with Microsoft Azure discovery capability is available.

Note: The alert configuration continues to ping alerts even when the MID Server
is down. Which in turn leads to a high number of errors in the ECC queue. If no MID
Server is available, you must manually deactivate the Microsoft Azure alert rule. The
Azure Alert Rules [azure_alert_rule] table contains all the Microsoft Azure alert rules.
Role required:
• ServiceNow role: sn_cmp.cloud_event_integration
• Microsoft Azure roles:
◦ Microsoft Azure credentials with the Reader role
◦ Microsoft Azure custom role with the following permissions:
"permissions": [
{
"actions": [
"Microsoft.Insights/ActionGroups/Write",
"Microsoft.Insights/ActionGroups/Delete",
"Microsoft.Insights/ActionGroups/Read",
"Microsoft.Insights/ActivityLogAlerts/Write",
"Microsoft.Insights/ActivityLogAlerts/Delete",
"Microsoft.Insights/ActivityLogAlerts/Read",
"Microsoft.Insights/ActivityLogAlerts/Activated/Action",
"Microsoft.Insights/AlertRules/Write",
"Microsoft.Insights/AlertRules/Delete",
"Microsoft.Insights/AlertRules/Read",
"Microsoft.Resources/deployments/write",
"Microsoft.Resources/deployments/delete",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
"Microsoft.Resources/deployments/read"
],

Note: To set up the alert-driven discovery, you can use a Microsoft Azure service
principal with the reader role only. For more information, see the community article Azure
alert driven discovery with reader privileges .

About this task

After you configure the alert service, it facilitates tracking of the life-cycle state and configuration
of the Microsoft Azure cloud resources.

Important: You can use a secure webhook to forward the Microsoft Azure alerts to the
ServiceNow AI Platform. For more information, see Use a secure webhook to forward the
Microsoft Azure alerts to the ServiceNow AI Platform [KB1208357] .

Procedure
1. Disable authentication for the Cloud Event Scripted REST API, because the Microsoft Azure
Alert doesn't support basic authentication.
a. As an administrator, navigate to Scripted Web Services > Scripted REST APIs.
b. Open the Cloud Event record.
c. From the Resources tab, open the Cloud Config Event Post record.
d. Set the application scope to Global.
e. On the Security tab, clear the Requires Authentication check box.

Important: The ServiceNow instance uses a webhook URL for the alert-driven
discovery. However, the Microsoft Azure alert configuration of the ServiceNow
instance doesn't support authentication for creating the webhook. You can enable
authentication by providing the user name and password in the webhook URL. For
more information, see KB0963526 .
2. Navigate to Discovery > Cloud Alerts > Azure Alert Configurations.

Note: If you have Discovery activated in the instance, you can navigate directly to Alert
Configurations using your instance URL. For example,

https://{instancename}.service-now.com/sn_cmp_azure_alert_c
onfiguration_list.do
3. On the Azure tab, select New.
4. On the form, fill in the fields.
Azure Alert Configuration form
Field

Description

Service
Account

Microsoft Azure service account for which you want to create the Azure alert
configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
Field

Description

Make sure that Cloud Discovery has discovered all the Logical Datacenters (LDC)
associated with the cloud account.
Resource Resource group that contains the alert rules.
Group
Select the Microsoft Azure service account. For more information on adding a
Microsoft Azure service account, see Add an Azure service account.
The instance creates the alert rules for all the resources that are available in the
service account.
Activate

Option to indicate the status of the alert configuration.
This option is selected by default.

User

User name of a ServiceNow user having the sn_cmp.cloud_event_integration role.

Password ServiceNow user account password.
5. Select Submit.
On successfully configuring the Microsoft Azure Alert service, the status of the alert
configuration changes from None to Activated.
Add a Microsoft Azure alert rule
Enable alert-driven discovery for a new Microsoft Azure alert type by adding it to the Azure Alert
Rules [azure_alert_rule] table.

Before you begin

Role required: admin

About this task

The Azure Alert Rules [azure_alert_rule] table contains all the supported alert types. For more
information, see Supported Microsoft Azure alert types. The Microsoft Azure Alert service uses
the information stored in the Azure Alert Rules [azure_alert_rule] table to raise the alerts. Cloud
Discovery also supports all the alerts generated for the members of the resource group specified
in the Microsoft Azure alert configuration.

Procedure
1. Navigate to the Azure Alert Rules [azure_alert_rule] table by entering the following URL in the
navigation bar of the browser:
https://<instance name>.service-now.com/azure_alert_rule_list.do
2. Select New.
3. On the form, fill in the fields.
Azure Alert Rule form
Field

Description

Rule
name

Name of the Microsoft Azure alert type.

Action Microsoft Azure resource operation API path.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
Field

Description

For more information on the Microsoft Azure resources for which you can raise
alerts, go to the Microsoft Azure
documentation and see "Azure resource provider
operations".
Active Option to indicate the status of the Microsoft Azure alert type.
This option is selected by default.
4. Select Submit.
Supported Microsoft Azure alert types
The base system Cloud Discovery supports alert driven discovery for several Microsoft Azure
alert types. The Azure Alert Rules [azure_alert_rule] table contains the supported alert types.
The base system Cloud Discovery supports the following Microsoft Azure alert types:
Microsoft.Compute/virtualMachines/deallocate/action
Microsoft.Network/privateDnsZones/delete
Microsoft.Compute/availabilitySets/write
Microsoft.Network/loadBalancers/write
Microsoft.Network/connections/delete
Microsoft.Network/publicIPAddresses/delete
Microsoft.Storage/storageAccounts/write
Microsoft.Network/virtualNetworks/delete
Microsoft.Sql/servers/databases/delete
Microsoft.Network/expressRouteCircuits/write
Microsoft.Network/localnetworkgateways/delete
Microsoft.Network/networkInterfaces/delete
Microsoft.Compute/virtualmachines/write
Microsoft.Network/expressRouteCircuits/delete
Microsoft.Network/natGateways/write
Microsoft.Network/loadBalancers/delete
Microsoft.Compute/virtualMachineScaleSets/delete
Microsoft.Network/virtualNetworks/virtualNetworkPeerings/delete
Microsoft.Storage/storageAccounts/delete
Microsoft.Compute/availabilitySets/delete
Microsoft.Network/connections/write
Microsoft.Compute/virtualMachines/start/action
Microsoft.Compute/virtualMachines/restart/action
Microsoft.Sql/servers/databases/write
Microsoft.Compute/virtualMachines/delete
Microsoft.Network/networkInterfaces/write
Microsoft.Network/privateDnsZones/write
Microsoft.Network/localnetworkgateways/write
Microsoft.Network/natGateways/delete
Microsoft.Compute/virtualMachines/stop/action
Microsoft.Network/publicIPAddresses/write
Microsoft.Compute/virtualMachineScaleSets/write
Microsoft.Network/virtualNetworks/virtualNetworkPeerings/write
Microsoft.Network/virtualNetworks/write
Microsoft.Sql/servers/delete
Microsoft.Sql/servers/write

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
Azure change processing
The Azure change processing feature collects information about Microsoft Azure resources that
have undergone a life-cycle state change or configuration change near real time. Then, it uses
the collected information to update the Configuration Management Database (CMDB).
The Azure Change Processing scheduled jobs query the Azure API and collect the resource
change information. During each execution cycle, the scheduled job collects information
about all the resources that have changed after the last Azure Change Processing cycle. After
collecting the change information, the Azure Change Processing uses response mappings to
update the change information in the CMDB. During the next discovery, Cloud Discovery triggers
appropriate patterns, if available, and populates detailed resource information in the CMDB.
By default, the Azure change processing scheduled jobs run in every 5 minutes. If necessary,
update the execution frequency of the schedule according to your needs. Set the execution
frequency within the minimum value of one minute.
When you execute the Azure change processing for the first time, it may run a few hours due to
processing resource changes that occurred in the last four hours. If you want to increase the
default schedule execution period, ensure that enough worker nodes are available to execute
the schedule.
During event processing, the Cloud Event Scheduler identifies the domain of the service account
and assigns to the event. If an error occurs in identifying the domain before processing, the
event can sometimes stay unassigned and become visible to all domains. To prevent the failed
events visibility to all domains, you can set the sn_cmp.error_events.default_domain
property to sys_id of the service-provider domain so that the failed events appears only to the
service-provider domain administrator.

Note:
Azure change processing can fetch resource change information only from the service
accounts created by the discovery_admin or sn_cmp.cloud_admin.
Update your Discovery and Service Mapping Patterns plugin on ServiceNow Store to have at
least 1.21.0 version of Azure Change Processing. See the upgrade scenario in KB1705862
Starting in the Discovery and Service Mapping Patterns 1.21.0 version, the scheduled jobs were
enhanced and renamed:
• The Azure Process Changes scheduled job was renamed as ACP Pull Changes.
• The CPG Build Azure Changes IRE Payload scheduled job was renamed as ACP
Process Changes.

ACP tables
Starting the Discovery and Service Mapping Patterns 1.21.0 version, Azure change processing
enhancement introduces four tables.
ACP Resource Type [sn_itom_pattern_acp_supported_resource_types]
You can use this table to review all supported resource types, add a resource type
for change processing, and disable or enable the processing for a certain resource.
For more information on adding support for an Azure resource type, see Add
change processing support for an Azure resource type.
Key fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
• Resource Type.
• Query: The resource graph query that retrieves changes from Azure.
• Active: Indicates if the resource type is actively being queried.
ACP Order Status [sn_itom_pattern_acp_order_status]
This table tracks the status of the Azure Resource Graph query for each resource
type, based on the associated credentials that are used for querying Azure. You can
use this table to review the processing status. For more information about the query,
see KB1705862 .
Key fields:
• Resource Type.
• Credential: the specific credential used for pulling changes.
• Last Processed time.
• Status: Tracks the success or failure of the event pull process. After the next ACP
Pull Changes scheduled job, this status will be updated based on the CMP Order
status.
• CMP Order: Reference to the CMP Order [sn_cmp_order] field, which provides
details about the current order progress and outcome.
ACP Resource Change [sn_itom_pattern_acp_resource_change]
This table records changes detected in Azure resources. The
[sn_cmp_resource_changes_payload_info] table that used to store this info before
the 1.21.0 version is no longer available.
Key fields:
• Resource ID: the unique identifier for the changed resource in Azure.
• Change Payload: a snapshot of the attributes of interest for the resource.
• Order: A reference to the CMP Order [sn_cmp_order] field that pulled the change.
• Resource Status: A reference to the ACP Resource Status table to track the
processing status of the change.
• State: the current processing state of the change. If the state is marked as 'Error',
review the associated Resource Status record for further details.
ACP Resource Status [sn_itom_pattern_acp_resource_status]
This table tracks the overall status of resource processing.
Key fields:
• Resource ID: the identifier for the resource being processed.
• Status: the processing state. The states are: Ready, In Progress, Failure, and
Success.
• Error Message: If the processing failed, this field contains details about the error.

Supported Azure resource types and changes
Azure Change Processing tracks a set of resource properties for each supported resource type.
When a change is detected in one of these properties, Azure Change Processing retrieves
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
an updated snapshot of the resource from Azure, and processes it in the CMDB to reflect the
change.

Resource type

Resource Property

Microsoft.Compute/
virtualMachine

• CreateOrDeleteVm : properties.changeType in

('Create','Delete')

• ChangeStatus:

(properties.extended.instanceView.powerState.code)
in ('PowerState/running', 'PowerState/stopped',
'PowerState/deallocated'))

• ChangeDisk: properties.storageProfile
• ChangeTag: tags.*
• ChangeNetworkInterface :

properties.networkProfile.networkInterfaces

Microsoft.Compute/
disks

• CreateOrDeleteDisk : properties.changeType in

('Create','Delete')

• ChangeState : properties.diskState
• ChangeSize : properties.storageProfile
• ChangeTag : tags.*
Microsoft.Network/
networkSecurityGroups

• CreateOrDeleteNsg : properties.changeType in

('Create','Delete')

• ChangeTag : tags.*
Microsoft.Network/
networkinterfaces

• CreateOrDeleteNic : properties.changeType in

('Create','Delete'),

• changePrimary : properties. properties.primary
• ChangeIp : properties.ipConfigurations[0]'
• ChangeTag : tags.*
Microsoft.Network/
publicIPAddresses

• CreateOrDeleteIp : properties.changeType in

('Create','Delete'),

• ChangeIpAddress : 'properties.ipaddress',
• ChangeFqdn : properties.dnsSettings.fqdn
• ChangeIpConfig : properties.ipConfiguration
• ChangeTag : tags.*

Advantages of the Azure change processing
The Azure change processing offers the following advantages over the Microsoft Azure alertdriven discovery:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
• Improved performance and reduced probability of Azure API throttling
• Simple setup
Improved performance and reduced probability of Azure API throttling
The Microsoft Azure alert-driven discovery triggers a targeted discovery for each
affected resource. Therefore, when the ServiceNow AI Platform receives a huge
number of alerts, the targeted discovery may cause the Azure APIs to throttle.
As a result, the alert processing performance of the ServiceNow AI Platform may
decline. In contrast, the Azure change processing doesn’t trigger targeted discovery
for each affected resource. Instead, it uses response mappings to update the
CMDB per the available change information. During the next discovery, Cloud
Discovery triggers appropriate patterns, if available, and populates detailed
resource information in the CMDB. Therefore, Azure change processing improves
the change handling performance of the ServiceNow AI Platform and reduces the
probability of Azure API throttling.
Simple setup
The Microsoft Azure alert-driven discovery uses a webhook to send the alerts to
the ServiceNow AI Platform. As the Azure cloud generates alerts at the subscription
level, the Microsoft Azure alert-driven discovery needs a webhook for each
subscription you want to monitor. In contrast, Azure change processing uses
CAPI and MID Server to interact with the Azure resource changes API. The API
can provide change information at the management group level. Therefore, Azure
change processing removes the need for webhooks and simplifies the setup.
You can configure Azure change processing to get resource change information from the
Microsoft Azure cloud and use it to update the CMDB.
If you’re using the Microsoft Azure alert-driven discovery, then you can migrate to Azure change
processing to improve the change processing performance of the ServiceNow AI Platform and
take advantage of the simplified setup.
Related topics
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1705862
Microsoft Azure Cloud discovery using patterns
Enable Azure change processing
Configure the Azure change processing to collect resource change information from the
Microsoft Azure cloud and use it to update the Configuration Management Database (CMDB).

Before you begin
• Ensure that the latest version of Discovery and Service Mapping Patterns store app is installed
on the ServiceNow AI Platform.
• Ensure that Microsoft Azure alert-driven discovery isn’t configured on the ServiceNow AI
Platform.
Role required: discovery_admin or sn_cmp.cloud_admin

About this task

For information about the resources which are supported by Azure change processing, see
Azure change processing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
Procedure
1. Navigate to All > Pattern Designer > Configure Azure Change Processing.
2. Select the accounts which you want to sync Azure change processing for.
a. Select the accounts from the Service Accounts without ‘pull-based’ change processing list.
b. Add the selected accounts to the Service Accounts with ‘pull-based’ change processing
list.

Note: When you enable Azure change processing for an Azure management group, it
is also enabled for all the subscriptions in the management group.
3. Select OK.
Related topics
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1705862
Migrate to Azure change processing
Migrate to Azure change processing to improve the change processing performance of the
ServiceNow AI Platform and take advantage of the simplified setup.

Before you begin
• Ensure that the latest version of Discovery and Service Mapping Patterns store app is installed
on the ServiceNow AI Platform.
• Ensure that Microsoft Azure alert-driven discovery is configured on the ServiceNow AI Platform.
• Ensure that the Cloud Events [sn_cmp_cloud_event] table doesn’t contain any event in ready
state.
• Ensure that the scope is set to Global.
• Ensure that at least one active MID Server is available.
Role required: discovery_admin or sn_cmp.cloud_admin

About this task

If you are using the Microsoft Azure alert-driven discovery and the ServiceNow AI Platform
receives a huge number of alerts from the Azure cloud, it may take a significant amount of time
to process the alerts and update the Configuration Management Database (CMDB). Migrate to
the Azure change processing to overcome the performance issues. For more information on the
Azure change processing, see Azure change processing.

Procedure
1. Navigate to All > Pattern Designer > Configure Azure Change Processing.
2. Select Retrieve Azure alert configurations to retrieve the list of all the active Azure alert
configurations.
3. Select Disable Azure alert configurations.
The ServiceNow AI Platform deactivates the Azure alert configurations and removes the
webhooks from the Azure portal.
4. Select the accounts for which you want to configure Azure change processing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
a. From the Service Accounts without ‘pull-based’ change processing list, select the
accounts for which you want to configure Azure change processing.
b. Add the selected accounts to the Service Accounts with ‘pull-based’ change processing
list.

Note: When you enable Azure change processing for an Azure management group, it
is also enabled for all the subscriptions in the management group.
5. Select OK.

Result

The migration script marks the Azure configurations module as deprecated. In the Cloud
Discovery. The Azure Alert Configurations page is hidden in the Cloud Discovery Workspace.
Related topics
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1705862
Add change processing support for an Azure resource type
Add Azure change processing support for an Azure resource type per the needs of your
organization.

Before you begin

Role required: discovery_admin or cloud_root_admin

About this task

This procedure is applicable only for Discovery and Service Mapping Patterns
store versions that are older than 1.21.0. Starting the 1.21.0 version, all supported
resource types are listed in the [sn_itom_pattern_acp_supported_resource_types]
table. All the resource types are activated by default. The MID Server property
mid.cmp.azure.event.supported_resource_types is no longer available. You can
use the [sn_itom_pattern_acp_supported_resource_types] table to add an entry for a resource
type and to add a query. For information on adding a query see the "Example VM Query" section
in KB1705862 .
To add change processing supports for an Azure resource type in legacy versions, add the
resource types to the mid.cmp.azure.event.supported_resource_types property.
As a comma-separated value. Then, create response mappings between the change fields and
the Configuration Item (CI) fields. Response mappings define a one-on-one mapping between
the source data fields and the CI fields. Azure change processing uses the mapping information
to update resource change data in the appropriate CI class fields.

Procedure
1. Navigate to All > MID Server > Properties.
2. Open the mid.cmp.azure.event.supported_resource_types property.
3. In the Value field, add the Azure resource type as a comma-separated value.
4. Select Update.
5. Create response mappings for the change fields that you want to update in the Configuration
Management Database (CMDB).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
a. Navigate to the Response Mapping [sn_cmp_response_mapping] table.
https://<instance name>.service-now.com/
sn_cmp_response_mapping_list.do
b. Select New.
c. On the form, fill in the fields.
Response Mapping form
Field

Description

CI class

Name of the CI class that represents the Azure resource in the CMDB.

Datasource

Name of the input datasource.
Set the Datasource field to Azure Resource Changes.

CI class
fields

Name of the CI class field that is the logical equivalent of the source field.

Source field

Name of the source field that you want to update in the specified CI class
field.

For more information on response mapping, see Using response mapping
ServiceNow Community.

topic in the

d. Select Submit.
e. Repeat steps 5.b to 5.d for all the change fields that you want to update in the CMDB.
Discovery for Google Cloud Platform
Discovery finds Google Cloud Platform and its components. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Data discovered for the Google Cloud Platform components offers visibility for multiple
ServiceNow products, including Cloud Provisioning and Governance.
Discovery uses multiple patterns to find GCP components.
You can discover global and regional resources.
Discoverable global and regional GCP resources
Global

Regional

Global static external IP addresses

Regional static external IP addresses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
Discoverable global and regional GCP resources (continued)
Global

Regional

Global Load Balancers (Global Http Load
Balancers)

Regional Load Balancers (Regional HTTP Load
Balancers, TCP/UDP Load Balancers)

Images

Subnets

Snapshots

Regional managed instance groups

Instance Templates

Regional persistent disks

VPC Network
Firewalls

Requirements for GCP discovery
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns starting version 1.8.0 (September 2023)
• CMDB CI Class Models starting version 1.49.0 (September 2023)
• Visibility Content starting version 6.13.0 (September 2023)
Verify the MID Server requirements
• Use a dedicated MID Server for cloud discovery. The MID Server must have
16 Cores, 8 GB with 4 GB Java Memory Model (JVM) memory allocation. For
information on verifying MID Server specifications, see KB article KB2156327

.

• Deploy and connect the dedicated MID Server with internet access.
• For more information on the MID Server configurations, see Install and configure
MID Servers to access cloud environments.
Verify Google Cloud BigQuery and Google Cloud Bigtable requirements
To discover Google Cloud BigQuery and Google Cloud Bigtable, navigate
to All > Discovery > MID Server > Properties and ensure that the
sn_itom_pattern.google_dbservice_table_collection property is
set to True.
Verify user role settings
Set the user permission for the Google Cloud Platform member to Viewer:
1. In the Google Cloud Platform console, navigate to IAM.
2. Select the relevant member from the list and click the Edit icon.
3. In the Edit permissions window, select Viewer from the Role list.
4. Click Save.
Configure Google API Credentials
For more information, see Configure the Google API credentials for Cloud
Discovery.
Create a Google Cloud Platform service account
For more information, see Create GCP service accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
Enable collecting cloud logging events
The Google Cloud Platform patterns can collect cloud logging events generated by
the native Google Cloud APIs. Configure the Google Cloud Logging service to autoupdate the CMDB.
Activate the cloud-related CI relationships
To include discovered components into service instances, enable CI relationships
used in tag-based discovery by Service Mapping. These CI relationships are
available from the 1.0.68 release on the ServiceNow Store. For operational steps,
see Tag-based discovery configuration.
Verify that a Discovery schedule is configured
For more information, see Create a discovery schedule in Cloud Discovery
Workspace.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Service Mapping during tag-based discovery
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.

CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Related topics
Google Cloud Platform (GCP) Cloud discovery using Patterns
GCP cloud discovery methods and use cases
Comparison of use cases and requirements for cloud discovery methods in GCP.
ITOM Visibility offers several methods for GCP cloud discovery. Each method supports different
use cases and has its own requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
GCP cloud discovery use cases
Comparison of GCP cloud discovery methods and use cases
Agent Client
Cloud
Service
Collector for
Discovery
Graph
Visibility - Content
(PatternConnectors (without MID
based)
Server)

Agent Client
Collector for
Visibility Content (with
MID Server)

IP-based
Horizontal
Discovery
(Patternbased)

IT Service
Management
(ITSM) - basic and
generic virtual CI
classes

Yes

Yes

No

No

No

ITSM - extended
virtual CI classes

No

No

No

No

No

ITSM - hardware CI
classes

No

Yes

Yes

Yes

Yes

Pattern discovery of No
applications

No

No

Most

Yes

Tag-based service
mapping

Yes

No

No

No

Machine Learning
No
(ML)-based service
mapping

Some

Yes

Yes

Yes

Top-down service
mapping

No

No

No

Most

Yes

Software Asset
Management
(SAM) - package
manager

No

Yes

Yes

Yes

Yes

SAM - file-based

No

No

No

Yes

Yes

Oracle Global
License Advisory
Services (GLAS)

No

No

No

Yes

Yes

Certificate
discovery

No

No

No

Yes

Yes, without
host
relationships

Use case

Yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
GCP cloud discovery requirements
Comparison of GCP cloud discovery methods and requirements

Requirement

Agent Client
Cloud
Service
Collector for
Discovery
Graph
Visibility - Content
(PatternConnectors (without MID
based)
Server)

Agent Client
Collector for
Visibility Content (with
MID Server)

IP-based
Horizontal
Discovery
(Patternbased)

MID Server

Yes

No

No

Yes

Yes

Cloud credential

Yes

Yes

No

No

No

OS credential

No

No

No

No

Yes

ServiceNow agent

No

No

Yes

Yes

No

Google Cloud
Software
Development Kit
(SDK) - all virtual
machines (VMs)

No

Yes

No

No

No

Google OS Config
agent - all VMs

No

Yes

No

No

No

Google Cloud
Storage buckets

No

Yes

No

No

No

No

No

No

Yes

No

No

No

No

No

Yes

Network
Connectivity Target
VM to MID Server
Network
Connectivity MID
Server to Target VM

Configure the Google Cloud Logging service to auto-update the CMDB
You can activate the Google Cloud Logging (formerly Stackdriver Logging) service to auto-update
Configuration Management Database (CMDB) configuration items (CI) data whenever Google
Cloud Connector or your Google account makes a life-cycle state or configuration change to a
Google Cloud Platform (GCP) resource. As a result, the CI data in the CMDB is updated without
having to wait for Discovery to run.

Before you begin
• Activate Discovery and Service Mapping Patterns. For more information, see Google Cloud
Platform Discovery.
• Verify that Discovery has successfully discovered logical datacenters of the Google Cloud
project. For more information, see Set up a cloud account and service account for Google
Cloud Platform.

Note: Verify that you have selected the Should pull events check box in the Google
Service Account page before you execute datacenter discovery.
Role required:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
• discovery_admin for Cloud Discovery and sn_cmp.cloud_event_integration if
authentication to cloud event endpoint is required. This role is required to set up an Alert Rule
in the instance.
• Google Cloud Platform administrator for configuration steps in the GCP console.
• Logging Role for the Google Cloud Platform integration user that would allow OAuth scopes for
the following
◦ https://www.googleapis.com/auth/logging.admin
◦ https://www.googleapis.com/auth/cloud-platform.read-only
◦ https://www.googleapis.com/auth/cloud-platform
◦ https://www.googleapis.com/auth/logging.read

About this task

Discovery integrates with Google Cloud's Cloud Logging API to collect log data from resources
in your Google Cloud projects. This integration enables Discovery to automatically update the
CMDB based on log entries that reflect changes in your environment. The Cloud Logging service
provides:
• Centralized log collection for Google Cloud resources.
• APIs to query and export logs for operational workflows.
When configured, Discovery pulls the Cloud Logging API at regular intervals to detect updates
and synchronize them with the CMDB.

Procedure
1. Log in to your Google Cloud Platform account.
For your project, navigate to APIs & Services > Library.
2. Enable the Cloud Logging API.
a. In the library, search for Cloud Logging.
b. Select the Cloud Logging API card.
c. On the Cloud Logging API page, select Enable.
3. To modify the schedule, navigate to System Scheduler > Scheduled Jobs and then select
GCP-Events-job and then update the Repeat setting as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
4. Select Update.

Result
• Once the Google Cloud Platform generates an event and Discovery receives the event
information, the 'GCP-Events-job' scheduled jobs execute in the background.
• The scheduled job passes the event payload to the Identification and Reconciliation Engine
(IRE). The IRE then takes the necessary actions to modify the state of the resources based on
the event.
Create a GCP Discovery schedule in Discovery Admin Workspace
Use the Discovery Admin Workspace dashboard to create a Google Cloud Platform (GCP)
Discovery schedule.

Before you begin

Verify the following:
• You have at least one validated MID Server with a status of Up. The MID Server must reach the
IP ranges that you intend to discover. You can install the MID Server by using Use MID Server
guided setup
or by manually downloading and running the installer. For details, see the MID
Server installation instructions for Linux
and Windows .
• The MID Server used for Cloud Discovery is configured with the Cloud Management capability.
• You have configured a service account in the Google Cloud Console that has the necessary
permissions so that the MID Server can access the selected resources for discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
• Suitable credentials are available in the ServiceNow AI Platform to connect with the service
accounts on which you want to perform the discovery. For more information, see Set up a cloud
account and service account for Google Cloud Platform.
• Discovery Admin Workspace is using version 1.11.0
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Schedules.
2. Select New Discovery from the header of any tab on the Schedules page.
3. Select Cloud-based discovery and select Continue.
4. Enter a unique and descriptive name for the Discovery schedule.
5. Select Google as the cloud provider.
6. Choose a MID Server.
Option

Description

Use a cluster of MID servers

Select an existing MID Server. Clusters pro­
vide failover protection and load balancing be­
tween MID Servers. See Configure a MID Serv­
for more information.

Automatically select a MID server

An available MID Server with an Identity and
Access Management (IAM) role is automati­
cally selected when the Discovery schedule
runs. See Automatic MID Server selection for
more information.

Search for a MID server

Choose a MID Server to run the Discovery
schedule. Only MID Servers that are validat­
ed, up, and have the Cloud Management ca­
pability are displayed.

7. Select Next.
8. Select a cloud account.
Option

Description

Existing cloud account

Select an existing cloud account on your in­
stance. Once an account is selected, the Ac­
count name and Project ID/Folder ID fields
auto-populate.
Add a new cloud account to your instance by
entering a name and subscription ID or man­
agement group ID.

New cloud account

Note: You can access the Project or

Folder ID in the Google portal via IAM
& Admin > Settings or IAM & Admin >
Folders, respectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Even if the service account was previously verified, you can reverify if policies or permissions
may have changed by selecting Verify information.
9. Select Discover all Projects or Discover specific Projects.

Note: This option displays only when the target cloud account is a Google management
account.
a. If discovering specific projects, select Add projects.
The Discoverable Projects dialog displays.
b. Select the check box next to one or more corresponding names and then select Add.
10. Select Next.
11. Select data centers for the discovery schedule.
You can choose to include all data centers linked to the cloud account or select specific data
centers. There’s no restriction on the number of data centers that you can add.
a. Optional: To discover specific data centers, select the data centers from the Select the data
centers drop-down list.
b. Optional: If the data centers don't appear, select Refresh data centers.
12. Select Next.
13. Optional: To complement your cloud schedule with an IP-based Discovery schedule, enable
the Create an IP-based discovery schedule toggle.
a. Optional: Select a MID Server or cluster that can discover the Virtual Machines (VM) and
their attributes.
14. Select Next.
15. Configure the Discovery schedule.
Option

Description

Run at a scheduled time

The schedule runs at a scheduled date and
time. Use the fields to define when the sched­
ule runs.

Run on demand

The schedule only runs when triggered manu­
ally. The schedule can be triggered by select­
ing Finish and run at the end of this setup, or
by navigating to the schedule in the Discov­
ery Schedules [discovery_schedule] table
and selecting Discover Now.

Run after series

The schedule runs after another existing Dis­
covery schedule completes, staggering or
chaining them together. Selecting an existing
schedule displays a relationship map of all
the other associated schedules.

Set discovery time out

If the schedule exceeds the maximum run­
time, it's canceled. After toggling, configure
the runtime threshold.

Enable event-driven discovery

If Google Cloud Connector or your Google
account makes a life-cycle state or configu­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
Option

Description

ration change to a GCP resource, the Con­
figuration Management Database (CMDB) is
updated without running the full discovery
schedule. Only the affected resources are
processed. For more information, see Config­
ure the Google Cloud Logging service to au­
to-update the CMDB.

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
created, and you're redirected to its entry in
the Discovery Schedules [discovery_sched­
ule] table. You can edit the schedule informa­
tion or run it by selecting Discover Now.

Discovery for IBM Cloud Platform
If your cloud resources are in an IBM cloud, create credentials that can access your IBM account.
IBM credentials form
Field

Value

Name

Unique name of the IBM credentials to register with the instance.

Order

Order (sequence) in which Discovery tries this credential as it attempts to log on
to devices. The smaller the number, the higher in the list this credential appears.
Establish credential order when using large numbers of credentials or when security
locks out users after three failed login attempts. If all the credentials have the same
order number (or none), the instance tries the credentials in a random order.

Softlayer Softlayer cloud user name.
API User
Softlayer Softlayer API key.
API Key
Bluemix
API Key

Bluemix API key.

Data collected by Service Mapping during top-down discovery
To include discovered components into service instances, enable CI relationships used in tagbased discovery by Service Mapping. These CI relationships are available from the 1.0.68 release
on the ServiceNow Store. For operational steps, see Tag-based discovery configuration.
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

IBM Cloud Discovery API list
Region
CI Attributes

IBM Constraints

object_id

name

dns_domain

domain

name

alias

short_description

display_name

region

name

cmdb_ci_availability_zone
CI Attributes

IBM Constraints

object_id

id

short_description

longName

name

name

install_status

statusId

Location Group (cmdb_ci_cloud_location_group)
CI Attributes

IBM Constraints

object_id

id

short_description

description

location_group_type_id

locationGroupTypeId

name

name

location_group_type

locationGroupType.name

Virtual Server (cmdb_ci_vm_instance)
CI Attributes

IBM Constraints

object_id

id

cpus

maxCpu/startCpus

memory

maxMemory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Virtual Server (cmdb_ci_vm_instance) (continued)
CI Attributes

IBM Constraints

disks

<not mapped>

disks_size

<not mapped>

nics

<not mapped>

terminated_on

<not mapped>

state

statusId

termination_protection

<not mapped>

short_description

notes

name

hostname

dns_domain

domain

fqdn

fullyQualifiedDomainName

Image (cmdb_ci_os_template)
CI Attributes

IBM Constraints

cmdb_ci_os_template
image_type
guest_os
version
offer
OS Status
root_device_type
image_source
credentials
infuse_key
update_host_name
name

name

object_id

id

short_description

description

Add public key (cmdb_ci_cloud_key_pair)
CI Attributes

IBM Constraints

object_id

id

finger_print

fingerprint

created_date

createDate

key

key

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
Add public key (cmdb_ci_cloud_key_pair) (continued)
CI Attributes

IBM Constraints

name

label

modify_date

modifyDate

short_description

notes

Storage Volume (cmdb_ci_storage_volume)
CI Attributes

IBM Constraints

volume_id

id

size

capacityGb

size_bytes

capacityGb

free_space

<not mapped>

free_space_bytes

<not mapped>

media_type

<not mapped>

file_system

<not mapped>

label

serviceResourceName

lun ( Logical Unit Number )

<not mapped>

volume_container

<not mapped>

state

?

storage_type

storageTypeId

protected_by

<not mapped>

share_count

<not mapped>

sharable

FALSE

device

guestId

delete_on_termination

<not mapped>

mapping_type

<not mapped>

object_id

id

vdisk_id

<not mapped>

storage_type

nasType

name

serviceResourceName

Storage Volume Snapshot (cmdb_ci_storage_vol_snapshot)
CI Attributes

IBM Constraints

object_id

id

capacity

capacityGb

is_encrypted
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Storage Volume Snapshot (cmdb_ci_storage_vol_snapshot) (continued)
CI Attributes

IBM Constraints

volume_name

serviceResourceName

storage_server
start_time
state
snapshotSizeBytes

snapshotSizeBytes

Network (cmdb_ci_network)
CI Attributes

IBM Constraints

state
cidr

<not_mapped>

is_external

true/false

netmask

<not_mapped>

broadcast_address

<not_mapped>

default_gateway

<not_mapped>

is_shared

<not_mapped>

is_dhcp_enabled

<not_mapped>

scope

<not_mapped>

max_ports

<not_mapped>

terminated_on

<not_mapped>

provided_contracts

<not_mapped>

object_id

id

access_port_vlan

vlanNumber

<not_mapped>

primarySubnetId

name

vlanNumber

<not_mapped>

accountId

Subnet (cmdb_ci_cloud_subnet)
CI Attributes

IBM Constraints

subnet_mask

netmask

cidr

networkIdentifier +'/' + cidr

available_ip_count

usableIpAddressCount

broadcast_address

broadcastAddress

primary_dns

<not mapped>

secondary_dns

<not mapped>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
Subnet (cmdb_ci_cloud_subnet) (continued)
CI Attributes

IBM Constraints

tertiary_dns

<not mapped>

is_dhcp_enabled

<not mapped>

ipam_provider

<not mapped>

domain_name

<not mapped>

parent_domain_name

<not mapped>

gateway

gateway

route_table_association_id

<not mapped>

state

<not mapped>

<not mapped>

modifyDate

<not mapped>

version

<not mapped>

networkVlanId

<not mapped>

isCustomerRoutable

object_id

id

<not mapped>

broadcastAddress

<not mapped>

isCustomerOwned

<not mapped>

sortOrder

<not mapped>

networkIdentifier

<not mapped>

totalIpAddresses

<not mapped>

addressSpace

category

subnetType

name

networkIdentifier +'/' + cidr

Compute Security Group (cmdb_ci_compute_security_group)
CI Attributes

IBM Constraints

region

<not_mapped>

object_id

id

intld

<not_mapped>

tenant_name

<not_mapped>

state

<not_mapped>

<not_mapped>

port

<not_mapped>

description

<not_mapped>

createDate

<not_mapped>

modifyDate

name

name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Compute Security Group (cmdb_ci_compute_security_group) (continued)
CI Attributes

IBM Constraints

short_description

description

New CI (cmdb_ci_compute_security_group_rule)
CI Attributes

IBM Constraints

created

createDate

direction

direction

ethertype

ethertype

object_id

id

updated

modifyDate

portRangeMax

portRangeMax

portRangeMin

portRangeMin

protocol

protocol

remoteGroupId

remoteGroupId

securityGroupId

securityGroupId

Load Balancer (cmdb_ci_cloud_load_balancer)
CI Attributes

IBM Constraints

state

"operatingStatus"

canonical_hosted_zone_id
canonical_hosted_zone_name
dns_name

address

snat_ip_address
vlan
app_code
component_code
env_code
ip_address_pool
"accountId"
"address"
"createDate"
"description"
object_id

"id"
isPublic
"locationId"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Load Balancer (cmdb_ci_cloud_load_balancer) (continued)
CI Attributes

IBM Constraints

"modifyDate"
name

"name"
"provisioningStatus"
"useSystemPublicIpPool"
"uuid"

Load Balancer Service (cmdb_ci_lb_service)
CI Attributes

IBM Constraints

cmdb_ci_lb_service
pool
port

protocolPort

last_port
input_url
host_name
back_end_port
front_end_port

protocolPort

listener_protocol

protocol

server_port
server_protocol
traffic_domain
ssl_certificate_id
object_id

id

hit_count
LB Health Service (cmdb_ci_lb_health_service exntends cmdb_ci_vm_object )
CI Attributes

IBM Constraints

check_interval_sec

interval

max_retries

maxRetries

monitor_type

monitorType

provisioning_status

provisioningStatus

timeout_sec

timeout

object_id

id

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
LB Pool (cmdb_ci_lb_pool)
CI Attributes

IBM Constraints

createDate
load_balancing_method

loadBalancingAlgorithm
modifyDate
protocol
protocolPort

pool_status

provisioningStatus

object_id

uuid

LB Pool Member (cmdb_ci_lb_pool_member)
CI Attributes

IBM Constraints

server_id

address

object_id

id
createDate
modifyDate
provisioningStatus
uuid
weight

Resource Group (cmdb_ci_resource_group)
CI Attributes

IBM Constraints

name

name

need to see what is this?

quota_id
tags

object_id

id

Org (cmdb_ci_cloud_org)
CI Attributes

IBM Constraints

name

name

url

url

billing_enabled

billing_enabled

quota_definition_url

quota_definition_url

spaces_url

spaces_url

guid

guid

status

status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
Org (cmdb_ci_cloud_org) (continued)
CI Attributes

IBM Constraints

object_id

metadata.guid

Org (cmdb_ci_cloud_space)
CI Attributes

IBM Constraints

name

name

url

url

object_id

metadata.guid

allow_ssh

allow_ssh

guid

metadata.guid

Discovery for Alibaba Cloud
Alibaba Cloud discovery is one of the overall Cloud discovery offerings within the IT Operations
Management (ITOM) Visibility framework. It’s an automated process used to scan and identify
Alibaba Cloud resources within your organization's cloud infrastructure. This discovery process
is critical for maintaining an accurate and trustworthy data foundation—the Configuration
Management Database (CMDB).

Pattern-based cloud discovery
Using Discovery and Service Mapping Patterns to perform horizontal discovery enables you
to find and map your organization's Alibaba Cloud resources. You can discover Alibaba Cloud
metadata including: Cloud service accounts, datacenters, availability zones, and hardware types.
Patterns also support OS level discovery, for example OS images.
Discovery and Service Mapping Patterns create configuration items (CIs) for your Alibaba Cloud
resources. Additionally, patterns discover the relationships between your organization's Alibaba
Cloud resources, such as Hosted On :: Hosts.
See Alibaba Cloud discovery using patterns to learn about all Alibaba Cloud resources you can
discover using Patterns.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Alibaba Cloud discovery configuration
The basic steps to configure pattern-based discovery for Alibaba Cloud involve preparation
on the ServiceNow side like installing necessary plugins and setting up credentials. The
discovery_admin role in ServiceNow is required for creating Alibaba Cloud API credentials and
service accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
The discovery process requires configuration within Alibaba Cloud, like setting up Identity and
Access Management roles. The discovery permissions of Alibaba Cloud users are determined by
their access levels within Alibaba Cloud.
To promote proper discovery, the Alibaba Cloud user must have at least read-only access to the
necessary Alibaba Cloud services.
Alibaba Cloud user discovery permissions
Alibaba Cloud User

Discovery permissions

Root Account (Master Account)

Full access to all Alibaba Cloud resources and
services, including ECS, OSS, RDS, and RAM.
Can create and manage RAM users, assign
permissions, and perform billing operations.

RAM user

Access to specific Alibaba Cloud resources
and services based on assigned policies. Can
be granted read-only access for discovery
purposes.

RAM Role (AssumedRoleUser)

Temporary access to Alibaba Cloud resources
and services based on assumed role policies.
Useful for cross-account access, temporary
access, or access by ECS instances.

Alibaba Cloud discovery users and tasks
Typical persona

Roles and permissions

Responsibility

ServiceNow
administrator or
IT Implementation
Specialist

admin

Install the store
applications and
update them on every
store release:

Link to detailed
documentation

ITOM Store upgrades

• Discovery
• Discovery and
Service Mapping
Patterns
• Visibility content.
• CMDB CI Class
Models
• Discovery Admin
Workspace
ServiceNow
administrator

admin

Create the MID Server
• Create a MID Server
user and grant the
user.
role
• Assign the MID
Server role to the
user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
Alibaba Cloud discovery users and tasks (continued)
Typical persona

Roles and permissions

Responsibility

ServiceNow
administrator

admin, mid_server

Install a MID Server.

Link to detailed
documentation

• Install a MID Server
on Linux
• Install a MID Server
on Windows
• Install and configure
MID Servers to
access cloud
environments

ServiceNow
administrator

admin

Validate that the MID
Server is installed
correctly.

Validate the MID
Server

ServiceNow
administrator

admin

Assigning users with
discovery_admin
roles and giving
them permission for
discovery.

Managing roles

Cloud administrator
or Discovery
administrator

discovery_admin

Creating Alibaba
Cloud service
accounts

Set up Alibaba Cloud
service accounts

Cloud administrator
or Discovery
administrator

The person
Configuring Alibaba
configuring the API
Cloud API credentials
credentials must have
the discovery_admin
role in ServiceNow
and must have access
to the Alibaba Cloud

Create Alibaba Cloud
API Credentials

Access Key ID
and Access Key
Secret.
Discovery
administrator

discovery_admin

Use Discovery and
Service Mapping
Patterns

Alibaba Cloud
discovery using
patterns

Discovery
administrator

discovery_admin

Set up a discovery
schedule for Alibaba
Cloud

Create a Discovery
Schedule for Alibaba
Cloud

Create Alibaba Cloud API Credentials
Create Alibaba Cloud API credentials on the ServiceNow AI Platform to enable access to your
Alibaba Cloud resources during Alibaba Cloud discovery.

Before you begin

Verify that your Alibaba Cloud user has at least read-only access to all Alibaba Cloud services.
For information on access permissions, consult your system administrator.
Retrieve the following properties from the Alibaba Cloud Console:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
• AccessKey ID
• AccessKey secret
Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. Select Alibaba Cloud API Credentials.
4. On the form, fill in the fields.
Alibaba Cloud API Credentials form
Field

Value

Name

Unique and descriptive name for the Alibaba
Cloud credentials.

Active

Option that makes the credential active.

AccessKey ID

The AccessKey ID for your Alibaba Cloud
account.

AccessKey secret

The AccessKey secret used to authenticate
and securely sign API requests for your
Alibaba Cloud account.

5. Select Submit.

What to do next

Set up Alibaba Cloud service accounts
Set up Alibaba Cloud service accounts
Create Alibaba Cloud infrastructure service accounts on the ServiceNow AI Platform to access
your Alibaba Cloud account during Alibaba Cloud discovery.

Before you begin

Verify that Alibaba Cloud API credentials have been created. For more information, see Create
Alibaba Cloud API Credentials.
Retrieve the Account ID, which can be found under Root Account or RAM User in the
Alibaba Cloud Console. For more information, see the Alibaba Cloud documentation .
Role required: discovery_admin

Procedure
1. In the navigation filter, enter cmdb_ci_cloud_service_account.list.
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
Cloud service account new record form
Field

Description

Name

A unique name for the Alibaba Cloud service
account.

Account Id

Compartment ID, which is the Alibaba Cloud
Account Identifier of the compartment
associated with this service account.

Discovery Credentials

Name of credentials created for an Alibaba
Cloud.

Datacenter URL

URL of the datacenter.

Datacenter Type

The Alibaba Cloud datacenter
[cmdb_ci_Alibaba_datacenter].

Accessor account

Account name associated to the discovery
credentials.

4. Select Submit.

What to do next

Create a Discovery Schedule for Alibaba Cloud.
Create a Discovery Schedule for Alibaba Cloud
Create a Discovery Schedule to run Alibaba Cloud discovery.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to Discovery > Discovery Schedules.
2. Select the Cloud Discovery button.
3. In the Provider field, select Alibaba.
4. Provide a name in the Schedule Name field.
5. Choose the method of selecting the MID Server from the MID Selection Type drop-down list.
◦ Auto-Select MID Server: Automatically chooses the most appropriate MID Server.
◦ Specific MID Server: A specific MID Server that you choose from the MID Server drop-down
list.
◦ Specific MID Cluster: A MID Server cluster that you choose from the MID Cluster dropdown list.
6. Either create a new account or select an existing one.
Existing or new account

Actions

a. Select Add Account.
Add account

b. Provide a name in the Name field.
c. Enter the ID in the Account ID field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
Existing or new account

Actions

d. In the Credentials field, select existing cre­
dentials or create new credentials.
▪ To use existing credentials, select the cre­
dential from the drop-down list.
▪ To create new credentials, select the plus
button and fill in the fields.
For more information, see Create Alibaba
Cloud API Credentials.
e. Enter the URL of a datacenter in theData­
center URL field.
a. Select Select Account.
Select Account

b. Select the account from the drop-down list.
The form fields are populated with the infor­
mation from the selected account.

7. Optional: Validate the account by selecting Test Account.
8. Select Next.
9. On the Select Datacenters page, determine whether to select specific datacenters to be
discovered or to discover all datacenters.
◦ Manually select the datacenters to be discovered by moving them into the Selected column.
◦ Discover all available datacenters by turning on the Discover all datacenters listed below
option.
10. Select Next.
11. Optional: On the Discover Virtual Machines page, set up the running of VM OS Discovery.
a. Retain the Discover VMs by IP address option.
b. Choose the method of selecting the MID Server from the MID Selection Type drop-down list.
12. Select Next.
13. On the Create Schedule page, determine when and how often to run your discovery.
a. Activate the discovery schedule by turning the Active option on.
b. Choose the discovery frequency from the Frequency drop-down list.
c. Set the Start time for the discovery schedule.
d. Optional: Automatically cancel discovery if it exceeds a specified time limit by selecting the
Cancel discovery if longer than: check box and setting the time limit.
14. Determine whether to create the schedule or to create the schedule and run discovery.
◦ To create the schedule but not run discovery, select Finish from the Finish and Run dropdown list.
◦ To create the schedule and run discovery, select Finish and Run.
Discovery for VMware Cloud
Applications that access VMware cloud resources need access to VMware credentials.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
For example, the VMware credential type enables Discovery to explore VMware's vCenter
running on a Windows machine to discover ESX machines, virtual machines, and resource pools.
The VMware Discovery and automation API (vCenter API) now provides the globally unique serial
number for computer CIs. CIM credentials aren’t needed to enable access to each VMware host.

Note: Windows credentials aren’t necessary for vCenter Discovery, when valid VMware
credentials are used.
VMWare credentials form
Field

Description

Name

Enter a unique and descriptive name for the VMware credentials.

Active

Enable or disable these credentials for use.

User
name

Enter the user name that you use for your VMware account. Avoid leading or trailing
spaces in user names. A warning appears if the platform detects leading or trailing
spaces in the user name.
The VMware credentials must have the read-only role in vCenter.

Password Enter the password for the VMware account.
Applies
to

Order

Select one or more MID Servers from the list of available MID Servers. The
credentials configured in this record are available to the MID Servers in this list. This
field is available only when you select Specific MID servers from the Applies to
field.
Order (sequence) in which Discovery tries this credential as it attempts to log on
to devices. The smaller the number, the higher in the list this credential appears.
Establish credential order when using large numbers of credentials or when
security locks out users after three failed login attempts. If all the credentials have
the same order number (or none), the instance tries the credentials in a random
order.

Configure the VMware Events service to auto-update the CMDB
Configure events from the cloud environment to make the necessary updates to your CMDB
without additional scanning. The VMware Events service can auto-update CI data in the CMDB
whenever Cloud Provisioning and Governance makes a life-cycle state or configuration change
to a VMware resource. As a result, the CI data in the CMDB is updated without having to wait for
Discovery to run.

Before you begin

Important: You can configure the VMware event service to auto-update the CMDB for
event-based discovery or configuration changes even if you haven't subscribed to and
activated the Cloud Provisioning and Governance plugins.

• You must have a cloud account with VMware, service accounts and associated logical
datacenters.
• The following Cloud Provisioning and Governance plugins must be activated (Not mandatory
for Cloud Discovery):
◦ Cloud Provisioning and Governance (com.snc.cloud.mgmt)
◦ Cloud Provisioning and Governance Core (com.snc.cloud.core)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


<!-- page 882 -->
◦ Cloud API (com.snc.cloud.api)
◦ Cloud Config Management (com.snc.config.mgmt)
• A MID Server must be available with All or VMware capabilities.
• The vCenter datacenters are successfully discovery and associated data is populated.
Role required: sn_cmp.cloud_event_integration

About this task

When VMware Events sends an update, the instance processes the event and creates or
updates the CI entry in the CMDB and the CI information in the Cloud User Portal. Each event is
saved as a record in the Events table on your instance. Configure all event/alert rules from the
vCenter.
To connect to a different MID Server or vCenter: Update the settings and then click the Start
related link. The Status value changes to Updating and then to Started.

Important:
If you are on a domain separated instance, only those events that are updated to the CMDB
and belong to your domain are visible. Events create configuration items (CI) in the same
domain as the cloud service account they are mapped to. Events that are not associated to
a service account are visible to all domains.
During event processing, the Cloud Event Scheduler identifies the domain of the
service account and assigns to the event. If an error occurs in identifying the domain
before processing, the event can sometimes stay unassigned and become visible
to all domains. To prevent the failed events visibility to all domains, you can set the
sn_cmp.error_events.default_domain property to sys_id of the service-provider
domain so that the failed events appears only to the service-provider domain administrator.

Procedure
1. Navigate to the VMware Alert Configuration in one of the following ways:
◦ Use the https://baseURL/ecc_agent_ext_context_vcenter to navigate
directly using the URL.
◦ On the Cloud Admin Portal, navigate to Manage > Alert Configurations.
2. On the VMware tab, click New.
3. On the form, fill in the fields.
vCenter Event Collector Context
Field

Description

Name

A unique name for the Event Collector record.

Short description

A brief description of the record.

Execute on

Select Specific MID Server

MID Server

Select a MID Server.

vCenter

Select the vCenter to monitor.

Extension [read only]

The MID Server extension of this context.
Updated when data collection starts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


<!-- page 883 -->
Field

Description

Status [read only]

The status of the data collection process, for
example, Starting, Started, and so on.

Executing on [read only]

The MID Server that is executing the event
collector

4. Right-click in the header and select Save.
5. Test the connection between the vCenter and the MID Server: Click Test parameters.
A pop-up displays Parameters verified for success. The Status field does not change. To
update a parameter (for example, to change the MID Server or vCenter), change the setting
and then click Update parameters.
6. Click the Start related link to start collecting events for vCenter.
◦ To confirm that the instance is receiving events, verify that the Status field displays Started.
◦ Click Stop to stop collecting events for a particular vCenter.
◦ Click Restart to restart event collection.
vCenter events are being populated in sn_cmp_cloud_event table.

Result
• If the vCenter has events in the Event Manager and the same events are configured, Cloud
Provisioning and Governance gathers the events and take action on the CIs accordingly.
• Identification and Reconciliation Engine (IRE) changes the CI state based on event payload
received and the IRE cannot be customized.

Discovery for containerized resources
Container discovery enables IT departments of companies to collect detailed information about
their container management tools in the infrastructure. Discovery finds resources in major
container management services providers.
Related topics
Amazon ECS resource discovery with Patterns
Pivotal Cloud Foundry discovery
Docker virtualization
Kubernetes discovery using patterns
The ServiceNow ITOM Visibility finds Kubernetes and OpenShift components using patterns
and creates application services containing them. Discovery also finds Kubernetes events and
frequently updates the CMDB to reflect the dynamic Kubernetes environment.
Discovery uses the Kubernetes pattern and its extension sections to discover Kubernetes
components for Kubernetes version 1.21:
• The Collect OpenShift info extension section of the Kubernetes pattern discovers
the OpenShift components of the Kubernetes deployment. The OpenShift Build Config
extension section is available from Store version 1.0.53.
• The Service Mesh extension discovers service mesh details. This information enables
the pattern to create service-to-service relations, shown as Connects to::Connected. Service
mesh discovery requires deploying Istio on your K8s (Kubernetes) cluster. The Service Mesh

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


<!-- page 884 -->
extension section is available from Kubernetes extension classes
ServiceNow AI Platform using the Madrid release or later.

. It’s supported on the

• The Collect Container Repository and extension section finds container registries
and images in these registries.
In addition, Discovery uses the Kubernetes Event pattern to discover events for Kubernetes
components for versions Kubernetes version 1.21.
From the 1.0.68 release on ServiceNow Store, Service Mapping can use CI relationships to add
the Kubernetes components to application services during tag-based discovery.
Discovery uses the following patterns to discover the entire Kubernetes infrastructure deployed
on GCP, AWS, and Azure:
• Google Cloud Platform (GCP) – Get Kubernetes Clusters.
• Amazon AWS - Get Kubernetes Clusters.
• Azure - Get Kubernetes Clusters.
These patterns query the Cloud, collect data on all Kubernetes clusters, and create a serverless
schedule for each cluster. When the cluster is deleted, the schedule is marked as inactive. This
feature eliminates the overhead of creating and managing multiple credentials and serverless
discovery schedules per cluster. The Cloud infrastructure patterns are triggered through
standard Cloud discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites

Note: For prerequisites for Kubernetes Cloud infrastructure discovery, see below.
Note: Running automatic serverless Kubernetes schedules fetches the Bearer token.
Adding credentials is unnecessary.
Perform the following steps to ensure that Discovery can use the pattern to successfully find
Kubernetes.
1. Deploy the latest Discovery and Service Mapping Patterns application from ServiceNow Store.
2. On the Kubernetes platform, find the parameters to set up Kubernetes discovery:
◦ Find the URL of the kubeapi server:
a. On the Kubernetes platform, run the following command:
kubectl cluster-info
b. In the output, find the line that states the URL of the kubeapi server. For example,
Kubernetes control plane is running at
https://10.154.144.146:443
◦ Find the namespaces of the kubeapi server:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
a. On the Kubernetes platform, run this command:
kubectl get namespaces
b. In the output, find the line that states the namespaces. For example, kube-system.
◦ Find the Kubernetes username and password:
a. On the Kubernetes platform, run this command:
kubectl config view
b. In the output, find the username and

password.

Note: If in a certain environment, kubectl config view command is not
showing the expected details, use the supported command from the Kubernetes
admin to fetch the user name and password details.
◦ Find the valid Bearer token with the proper permissions:
▪ If you know the default token name, use the command in the following format: kubectl
describe secret <default-token-token name>.
For example: kubectl describe secret default-token-g6pwc.
▪ If you don't know the default token name, use the command: kubectl describe
secret.
3. Ensure that the API Server is reachable from the MID Server for successful Kubernetes
discovery.
4. Ensure that the user configured on the Kubernetes platform has GET permissions to run the
following /api/v1 elements:
◦ https://<url>/api/v1/namespaces/
◦ https://<url>/api/v1/namespaces/<namespace>
◦ https://<url>/api/v1/namespaces/kube-system/endpoints/kube-controller-manager
◦ https://<url>/api/v1/services
◦ https://<url>/api/v1/pods
◦ https://<url>/api/v1/nodes
◦ https://<url>/api/v1/replicationcontrollers
◦ https://<url>/apis/networking.k8s.io/v1/ingresses
◦ https://<url>/apis/apps/v1/deployments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
◦ https://<url>/apis/apps/v1/statefulsets
◦ https://<url>/apis/apps/v1/daemonsets
◦ https://<url>/apis/apps/v1/replicasets
◦ https://<url>/apis/batch/v1/cronjobs
◦ https://<url>/apis/batch/v1/jobs
5. To discover the OpenShift components of the Kubernetes deployment, ensure that the user
configured on the Kubernetes platform has GET permissions to run the following /api/v1
elements:
◦ /apis/apps.openshift.io/v1/deploymentconfigs
◦ /apis/build.openshift.io/v1/buildconfigs​
◦ /apis/route.openshift.io/v1/routes​
◦ /apis/user.openshift.io/v1/groups​
◦ /apis/user.openshift.io/v1/users​
◦ /apis/project.openshift.io/v1/projects​
◦ /apis/image.openshift.io/v1/images​
◦ /apis/image.openshift.io/v1/imagestreams
To discover service mesh information:
◦ Deploy Istio on your K8s cluster.
◦ Provide the Prometheus URL.
◦ Configure Prometheus to scrape metrics from Istio.
6. Activate Get Kubernetes Config Files extension to:
◦ Discover configuration files.
◦ Create tracked configuration files.
◦ Map the configuration files workloads and services with a relationship.

Note: Tracked files content is in the JSON format from version 1.0.92. Tracked files
content is in YAML format in version 1.0.91 and earlier.
7. Create the Kubernetes credentials on the ServiceNow platform:
a. On the ServiceNow AI Platform, navigate to All > Discovery > Credentials.
b. Select New.
c. Select Kubernetes Credentials.
d. On the form, fill in the fields.

Field

Description

Name

Unique and descriptive name for this
credential.

User name

User name associated with this credential.
Leading or trailing spaces should be
avoided; if any are detected, a warning will
appear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
Field

Description

Only one authentication method should be
used: either a user name and password or a
Bearer token. Don't use both.
Password

Password associated with this credential.
Only one authentication method should be
used: either a user name and password or a
Bearer token. Don't use both.

Bearer Token Authentication

This option enables advanced
authentication using a Bearer token.
When the check box is selected, the Bearer
Token field is displayed.

Bearer Token

Discovery uses the Bearer token for
advanced authentication when accessing
Kubernetes.
The Bearer token should be in BASE64
encoded format, using the character
sequence as the token. For example:
31ada4fd-adec-460c-809a-9e56ceb75269.
Only one authentication method should be
used: either a user name and password or a
Bearer token. Don't use both.

Credential alias

An alias is configured to use the Kubernetes
credential for devices and applications
other than Kubernetes. This alias is also
used when defining a serverless discovery
schedule for discovering the Kubernetes
deployment.
i. Select the padlock icon, and then select
the search icon.
ii. On the Connection & Credential Aliases
form, select New.
iii. Specify a name for the credential alias
record.
iv. Define attributes for the alias. Set the
Type to Credential.
v. Right-click the form header and select
Save, then select Update.
vi. On the Connection & Credential Aliases
form, select the newly added alias.
The alias appears in the Credential alias
field.

e. On the Kubernetes credentials form, select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
8. Create a serverless discovery schedule for the Kubernetes pattern.
Create and define the serverless execution pattern as described in the product
documentation. Configure the parameters required by the Kubernetes pattern as follows:
Configuring execution pattern attributes
Field

Description

url

The identifier for the hostname, IP, or
FQDN and the port of the Kubernetes
apiserver. Use the following format:
example_hostname:example_port or
xample_ip:example_port. Provide the correct
protocol (HTTP or HTTPS) in the URL.

namespace

The namespaces that the system passes
in the Kubernetes Discovery Configuration.
Enter one of the following values:
◦ Individual namespace: enter the
namespace and then "kube-system". For
example: dev,kube-system
◦ The default value: enter default,
kube-system
◦ Multipile namespaces: enter the
namespaces, use a comma (,)
to separate the values, and then
enter "kube-system". For example:
automation,application,test,kubesystem
◦ All namespaces: Use an asterisk (*) to enter
all namespaces

credentials alias

The alias associated with the previously
created Kubernetes credentials.

cluster name

The name of the Kubernetes
cluster, in the following format:
<serviceaccountid><space><clustername>.

provider

The cloud provider: GCP or AWS or Azure.

cluster_resource_id

Cluster resource ID example:
◦ Azure Kubernetes clusters- Resource ID.
◦ AWS- cluster ARN.
◦ GCP- cluster global name.

9. Create a serverless discovery schedule for the Kubernetes Event pattern. Configure the
schedule to run every 5 or 10 minutes.

Note: When the pattern is run for the first time, it stores an event_timestamp. Later on it
collects only the delta events based on the timestamp. The more often the pattern is run,
the fewer updates to the CMDB IRE are needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


<!-- page 889 -->
Create a serverless execution pattern for the discovery schedule and assign it to the
Kubernetes Events pattern. Configure the parameters required by the Kubernetes pattern as
described in Configuring execution pattern attributes.
10. To include discovered components into service instances, enable CI relationships used
in tag-based discovery by Service Mapping. These CI relationships are available from the
1.0.68 release on the ServiceNow Store. For operational steps, see Tag-based discovery
configuration.

Prerequisites for Kubernetes Cloud infrastructure discovery
For the Google Cloud Platform (GCP) – Get Kubernetes Clusters pattern, perform the following:
1. In the ServiceNow instance, set up a Google Cloud Platform (GCP) service account with valid
credentials and permissions.
2. On the GCP infrastructure, set up the MID Server with full access to all Cloud APIs: Set Cloud
API access scopes to "Allow full access to all Cloud APIs". The MID Server instance can access
only the Clusters specific to the project.
3. Navigate to sys_properties.list and configure the following properties:
◦ sn_itom_pattern.k8s_midserver: Specify a valid MID Server name.
◦ sn_itom_pattern.k8s_create_schedule_enabled: Set the value to true.

Note: Enabling the sn_itom_pattern.k8s_create_schedule_enabled
property automatically creates a serverless schedule for your cloud clusters,
eliminating the need for manual scheduling. If you have an existing manual schedule
and want to convert it to an automatic one, enable the property. Your manual schedule
will be updated; no additional schedule will be created.
4. Create and run Google Cloud Discovery

Note:
To fetch the Bearer token, while running GKE Kubernetes schedule, use the gcloud
command:
gcloud config config-helper -format="value(credential.access_token)"
Configuring gcloud in the MID Server instance grants access to the GKE cluster to fetch
the token.
For the Amazon Elastic Kubernetes Service (EKS) cluster discovery, perform the following:
1. In the ServiceNow instance, set an AWS service account with valid management account
credentials and permissions.
a. Ensure that the Amazon Elastic Kubernetes Service (EKS) Cluster has a cluster role with the
read-only access to all resources.
b. Create cluster role binding between the cluster role and a Kubernetes user. For example,
read-onlyuser.
c. Create an AWS IAM role with the policy EKSReadOnly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
d. Associate the IAM role with the Kubernetes user in one of the following ways:
▪ In the cluster, edit the aws-auth ConfigMap.
▪ Run the command:
eksctl create iamidentitymapping --cluster yourClusterName -arnarn:aws:iam::yourAccountID:role/yourIAMRoleName --username
read-only-user
2. Run Amazon Elastic Kubernetes Service (EKS) cluster discovery in one of two ways: Using
the AWS Command Line Interface (CLI) or without using the AWS CLI. First, set the system
property sn_itom_pattern.k8s_aws_cli_to_generate_token to use the model
you choose. This system property is set to true by default.
◦ Set this system property to true to use AWS CLI to generate a token.
◦ Set this system property to false to use Assume Roles to generate a token.
a. Run Amazon Elastic Kubernetes Service (EKS) cluster discovery using AWS CLI:
i. Set up the MID Server with the AWS CLI configured. Configuring AWS CLI credentials
grants access to the Amazon Elastic Kubernetes Service (EKS) cluster.

Note: The user logged in to the system must be the same as the MID Server user.
ii. To generate the Bearer token, While running the Amazon Elastic Kubernetes Service (EKS)
schedule, use the AWS CLI command:aws eks get-token --cluster-name
<cluster_name>.
Configuring the AWS CLI user/role in the MID Server instance grants access to the
Amazon Elastic Kubernetes Service (EKS) cluster to generate the token.
b. Run Amazon Elastic Kubernetes Service (EKS) cluster discovery without using AWS CLI:

Note:
This feature is supported from Discovery and Service Mapping Patterns version 1.0.96 December 2022.
Refer to the following KB for detailed instructions: KB1182188: EKS cluster discovery using
STS AssumeRoles (Without AWS CLI)
3. Navigate to sys_properties.list and configure the following properties:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
◦ sn_itom_pattern.k8s_midserver: Specify a valid MID Server name.
◦ sn_itom_pattern.k8s_create_schedule_enabled: Set the value to true.

Note: Enabling the sn_itom_pattern.k8s_create_schedule_enabled
property automatically creates a serverless schedule for your cloud clusters,
eliminating the need for manual scheduling. If you have an existing manual schedule
and want to convert it to an automatic one, enable the property. Your manual schedule
will be updated; no additional schedule will be created.

4. Create and run an AWS Cloud Discovery schedule.
For Microsoft Azure Kubernetes Services (AKS)- Kubernetes cluster discovery, perform the
following:
1. Update to the latest Discovery and Service Mapping Patterns version.
2. In the ServiceNow instance, configure the Azure Service Account with valid Azure credentials
and permission.
3. Navigate to sys_properties.list and configure the following properties:
◦ sn_itom_pattern.k8s_midserver: Specify a valid MID Server name.
◦ sn_itom_pattern.k8s_create_schedule_enabled: Set the value to true.

Note: Enabling the sn_itom_pattern.k8s_create_schedule_enabled
property automatically creates a serverless schedule for your cloud clusters,
eliminating the need for manual scheduling. If you have an existing manual schedule
and want to convert it to an automatic one, enable the property. Your manual schedule
will be updated; no additional schedule will be created.
.
4. If you don't have local accounts with Kubernetes RBAC and want to
improve pattern efficiency, navigate to MID Server > Properties and set the
sn_itom_pattern.aks_fetch_local_ad_token property to false.
5. Run an Azure cloud discovery schedule.
6. Configure the MID Server in the Discovery schedules according to the cluster account type. If
you don't have Local accounts with RBAC, you can ignore this step.

Cluster account type

Discovery schedule MID Server

MS Entra ID auth with Kubernetes RBAC.

Any MID Server.

MS Entra ID authentication with Azure RBAC.

Any MID Server.

Local accounts with Kubernetes RBAC.

Select the MID Server with the Azure
Command Line Interface (CLI) configured.
Configuring the Azure CLI credentials grants
access to the AKS cluster.
To fetch the Bearer token while running the
AKS Kubernetes schedule, use the Azure CLI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

891


<!-- page 892 -->
Cluster account type

Discovery schedule MID Server

command: az aks get-credentials
--name <cluster_name> -overwrite-existing --resourcegroup <resourceGroup_name> -file -.

Note:
◦ The user logged in to the system must be the same as the MID Server user.
◦ For detailed information about AKS Cluster Discovery configuration, see the AKS
Cluster Discovery Configuration Details [KB1220553]
article in the Now Support
Knowledge Base.
Other Supported System configuration
Property name

Property
description

Type

Boolean
sn_itom_pattern.manifest_digest_image_id

Default value

false

Note:
Before
setting this
property to
true and
running
discovery:
prevent
duplicate
records
from being
created by
deleting
all Docker
image
records.
Boolean
sn_itom_pattern.k8s_create_schedule_enabled
The feature
flag that can
be enabled/
disabled under
the system
properties, which
is responsible
to control
the pattern
execution. When
enabled, it
creates discovery
schedules
despite the new
property value.

false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
Other Supported System configuration (continued)
Property name

Property
description

sn_itom_k8s_run_cloud_discovery
When enabled,
this property
executes cloud
k8s patterns,
discovering k8s
clusters without
creating auto
schedules.
Mid Server

sn_itom_pattern.k8s_midserver
[Default]

Type

Default value

Boolean

false

String

Example- Valid
MID Server name
String
sn_itom_pattern.k8s_<service_account_id>_midserver
[Based on
Service Account
Level]
Example- Valid
MID Server name
String
sn_itom_pattern.k8s_<service_account_id>_<clustername>_midserver
[Based on
Cluster name]
Example- Valid
MID Server name
String
sn_itom_pattern.kubernetes_collect_volume
When the
property is set
to True, the data
for Kubernetes
Volume
[cmdb_ci_kubernetes_volume]
gets populated.
Credential Alias

sn_itom_pattern.k8s_
[Default]
cred_alias
Examplecredential alias
name

false

String

String
sn_itom_pattern.k8s_<service_account_id>_alias
[Based on
Service Account
Level]
Example- Valid
credential alias
name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


<!-- page 894 -->
Other Supported System configuration (continued)
Property name

Property
description

Type

Default value

String
sn_itom_pattern.k8s_<service_account_id>_<clustername>_alias
[Based on
Cluster name]
Example- Valid
credential alias
name.
Prometheus Url

sn_itom_pattern.k8s_
[Default]
prometheusUrl
Example- Valid
Prometheus Url

String

String
sn_itom_pattern.k8s_<service_account_id>_prometheusUrl
[Based on
Service Account
Level]
Example- Valid
Prometheus Url
String
sn_itom_pattern.k8s_<service_account_id>_<clustername>_prometheusUrl
[Based on
Cluster name]
Example- Valid
Prometheus URL
sn_itom_pattern.k8s_
[Supported
run
Discovery
Schedule
run- Daily,
On Demand,
Weekdays,
Weekends,
Month Last Day,
Calendar Quarter
End]

String

Example- Daily
sn_itom_pattern.k8s_batch_count
[Refers how
many schedules
to run in batch –
default set to 5]

Integer

5

Example- 5
(Number of
schedules to run
in on batch)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


<!-- page 895 -->
Other Supported System configuration (continued)
Property name

Property
description

Type

Default value

Integer
sn_itom_pattern.k8s_schedule_batch_delay
[keeps tracks
of the time
difference
between two
batches value
contains in sec]
Example- 300 (in
seconds)
sn_itom_pattern.k8s_run_time
[keeps tracks of
the current time
for a batch]

String

If this property
is set, then you
can use the same
or you can use
our dynamic
timing, which
will be 5 min
after the system
current timing.
Values contains
in HH:MM:SS
format
Example- 10:11:12
(HH:MM:SS )

Note: <service_account_id> is the account ID name under Cloud Service
Accounts. For more information, see: Create discovery schedules for cloud resources

Kubernetes Credential-less or mid-in-cluster discovery
Prerequisites for Kubernetes Credentials-less discovery:
Deploy the containerized MID Server to the Kubernetes cluster. Configuring Kubernetes
credentials is unnecessary since the MID Server in Kubernetes cluster automatically discovers
the API server and authenticate.
Configuring execution pattern attributes for Credentials-less discovery
Field

URL

Description

Enter any one the of following value in URL
field:
https://cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
Configuring execution pattern attributes for Credentials-less discovery (continued)
Field

Description

Or
https://kubernetes.default.svc
namespace

The namespaces that the system passes in
the Kubernetes Discovery Configuration. Enter
one of the following values:
• Individual namespace: enter the
namespace and then "kube-system". For
example: dev,kube-system
• The default value. Enter:default,kubesystem
• Multipile namespaces: enter the
namespaces, use a comma (,)
to separate the values, and then
enter "kube-system". For example:
automation,application,test,kubesystem
• All namespaces: Use an asterisk (*) to enter
all namespaces.

cluster_name

Enter Unique name.

Data collected by Discovery during horizontal discovery
Table and field

Description

Kubernetes Cluster [cmdb_ci_kubernetes_cluster]
Name

The name of the kube-controller-manager
leader.

K8s_uid

The kube-system namespace UID [supported
versions: 1.0.92 and later]

ip_address

The identifier for the host_ip of the Kubernetes
apiserver.

port

The identifier for the Kubernetes apiserver
port.

namespace

This value shows the namespaces the
system passed in the Kubernetes Discovery
Configuration.

event_timestamp

The timestamp of the latest event created
on this Kubernetes cluster at the time of the
discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
Table and field

Description

Kubernetes Node [cmdb_ci_kubernetes_node] The virtual aspect of the Kubernetes node.
Data relating to the physical aspect of the
Kubernetes node is stored under Linux server.
name

The name of the Kubernetes node. The format
can be only the name of the machine or the
full name consisting of the name and the
hostname: <name>.<hostname> .

k8s_uid

The identifier for the Kubernetes node UUID.

cluster

The name of the cluster that contains this
resource.

operational_status

The operational status of the Kubernetes
node.

Kubernetes Service [cmdb_ci_kubernetes_service]
name

The name of the Kubernetes service.

selector

A comma delimited list of the label selectors
specified in the Kubernetes configuration that
are used to select target pods.

namespace

The Kubernetes namespace to which this
Kubernetes service belongs.

k8s_uid

The Kubernetes service UUID.

cluster

The name of the cluster that contains this
resource.

Kubernetes Pod [cmdb_ci_kubernetes_pod]
name

The name of the Kubernetes pod.

k8s_uid

The Kubernetes pod UUID.

resourceVersion

The resource version of the Kubernetes pod.

namespace

The Kubernetes namespace to which this
Kubernetes pod belongs.

cluster

The name of the cluster that contains this
resource.

state

The Kubernetes pod status: Pending, Running,
Succeeded, Failed, and Unknown.

Kubernetes Cronjob [cmdb_ci_kubernetes_cronjob]
name

The name of the Kubernetes cronjob

namespace

The Kubernetes namespace to which this
Kubernetes pod belongs.

k8s_uid

The Kubernetes cronjob UUID.

cluster

The name of the cluster that contains this
resource.

Kubernetes Job [cmdb_ci_kubernetes_job]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


