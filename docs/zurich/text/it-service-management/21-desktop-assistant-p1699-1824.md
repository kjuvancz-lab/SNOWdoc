# Zurich IT Service Management — Desktop Assistant

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1699–1824 of 3857

Sections: Desktop Assistant (p1699); Reference (p1708)

---

<!-- page 1699 -->
Important:
To access the DEX issue diagnosis and resolution agentic workflow, make sure that you
install the following applications:
• Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
• Digital End-User Experience application. For more information, see Install Digital EndUser Experience and Configuring Digital End-User Experience.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM agentic AI applications, see Use agentic AI in Now Assist for IT
Service Management (ITSM).
The DEX issue diagnosis and resolution agentic workflow enables service desk agents to
diagnose common issues based on real-time insights into device and application health and
resolve these issues by providing targeted resolution plans that can be implemented directly
from the workspace. It helps to reduce the resolution time for incidents and enhance overall
service desk agent experience.
The DEX issue diagnosis and resolution agentic workflow uses two AI agents to conduct root
cause analysis for incidents and provide issue resolution plans.
• DEX diagnosis AI agent
• DEX resolution plan AI agent
For more information, see DEX issue diagnosis and resolution agentic workflow.

Use DEX Desktop Assistant
Use DEX Desktop Assistant to get quick access to self-service and diagnostic tools, notifications
about outages and announcements, and support resources.
The DEX Desktop Assistant provides a dedicated communication interface for employees,
enabling access to self-service options, IT notifications, and support resources.
Desktop Assistant facilitates streamlined workflows by enabling employees to perform network
®
diagnostics, access IT catalogs, use the ServiceNow Employee Center, and interact with
virtual agents for assistance. IT teams can use the tool to issue outage notifications or critical
announcements, promoting timely communication and efficient support delivery.
Desktop Assistant home page components
Components

Header

Description

The header includes the application name, the notification icon,
and, the user icon.
The notification bell icon (
) displays a red dot with a number
to indicate the number of new notifications.
Use the user profile icon (

) to log out of Desktop Assistant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1699


<!-- page 1700 -->
Desktop Assistant home page components (continued)
Components

Sections

Description

Sections help you search for items by arranging them
sequentially and in logical groups. By default, ServiceNow
provides the My resources and Quick links sections.
Desktop Assistant administrators can configure additional
sections for the home page. For more information, see Add a
section in the Desktop Assistant home page.

Cards

Desktop Assistant provides the following cards with the base
system:
• Device health check: Monitor and self-resolve common
device health issues. For more information, see Check device
health using Desktop Assistant.
• Network test: Run network diagnostic tests. For more
information, see Test network connectivity of your device.
• Employee Center: Access the Employee Center portal. For
more information, see Open Employee Center from Desktop
Assistant.
• Outages: View outages on Employee Center. For more
information, see View outages from Desktop Assistant.
By default, the Device health check and Network test cards are
mapped to the My resources section and the Employee Center
and Outages cards are mapped to the Quick links section.
Desktop Assistant administrators can map or remove cards
from any section on the home page. For more information, see
Map a card to a section and Delete a card from the Desktop
Assistant home page.

Note: If you experience issues with Desktop Assistant, troubleshoot them by accessing
the logs at these locations:
• macOS: Users/[username]/Library/Application Support/
desktop_assistant_app/logs
• Windows: Users\[username]\AppData\Roaming
\desktop_assistant_app\logs

Open and log in to Desktop Assistant
Open and log in to Desktop Assistant to get quick access to self-service tools, network tests,
important notifications, and support resources.

Before you begin
• Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
• Confirm that the OAuth registry record for Desktop Assistant is active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1700


<!-- page 1701 -->
Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. From your system tray, select and hold or select and hold (or right-click) the Desktop Assistant
icon (

), and then select Open to open the login page.

2. Optional: Update the instance URL.
a. On the login page, select the Change URL link.
b. In the Instance URL field on the Change instance URL page, enter the ServiceNow instance
URL.
c. Select the Go back to login link.

3. On the login page, select Sign in.
4. Log in to Desktop Assistant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1701


<!-- page 1702 -->
◦ When Single Sign-On (SSO) is not enabled:
a. Enter the user name and password for the instance in the User name and Password field.
If you can't remember your login details, select Forgot password to reset your password.
b. Select Log in.
c. Select Allow to grant Desktop Assistant permission to connect to your ServiceNow
account.

Note: To enable SSO login, set up the SSO provider and configure SSO in the
instance. For more information, see Configure Open Authorization details.
◦ When SSO is enabled:
a. Select the Login with SSO link.
b. Enter your user ID in the User ID field.
c. Select Submit.
You’re redirected to the SSO login screen.
d. Enter your login credentials and sign in.
e. Select Allow to grant Desktop Assistant permission to connect to your ServiceNow
account.
Trouble?
• If you see an application version incompatibility error when opening Desktop Assistant,
contact your administrator.
• If you get an unintended page when logging in, quit the application and reopen it.
Related topics
Resolve Desktop Assistant screen loading issue

Desktop Assistant notifications
Desktop Assistant notifications enable your organization to communicate important updates
to end users instantly, regardless of their device activity. This feature enables delivering critical
information, supporting Major Incident Management and Proactive Engagement.
Desktop Assistant notifications provide a reliable way to inform end users of critical updates with
minimal effort. These notifications provide updates for awareness but aren’t directly actionable.
Desktop Assistant supports an optimum number of 400,000 notifications per day, with a
maximum rate of 10,000 notifications per minute.

Accessing notifications
Access Desktop Assistant notifications as system push notifications on Windows and macOS
devices, or from the Desktop Assistant notifications list. For more information, see View Desktop
Assistant notifications.
Notifications should appear on end users’ devices within two minutes of generation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1702


<!-- page 1703 -->
Supported applications
Desktop Assistant supports notifications from Major Incident Management and Proactive
Engagement.
• Major Incident Management: Major Incident Management sends real-time updates about
critical incidents to recipients in the following base system recipient lists.
◦ All users in affected locations: Updates are sent to all configured recipients in affected
locations. For example, a Major Incident Management notification informs all employees in
an affected location of a sudden network outage, ensuring they’re aware of the issue.
◦ Impacted application users in affected locations: Updates are sent only to impacted
recipients in affected locations. To make sure only relevant users receive updates,
the recipient list includes users with application usage above zero during a specified
aggregation period and frequency. The aggregation period and frequency can be configured
to one of the following options:
▪ Daily: 1–7 days
▪ Weekly: 1–4 weeks
▪ Monthly: 1–12 months
By default, the aggregation frequency is set to Daily, and the aggregation period is 7 days.
For example, if the aggregation frequency is set to daily and the aggregation period is
seven days, notifications are sent to users in affected locations who have application
usage above 0 over the last seven days. Similarly, if the frequency is set to weekly and the
aggregation period is four weeks, notifications are sent to users in affected locations who
have application usage above 0 over the last four weeks.
Each notification is delivered once to every logged-in device.
You can customize the Impacted application users in affected location(s) recipient list
or create a notification for an incident using this list. For more information, see Customize
recipient list for Major Incident Management updates and Compose communications for
incidents and major incidents.
• Proactive Engagement: Proactive Engagement uses Desktop Assistant to notify users about
the following device-related events:
◦ Actions that users must take to maintain device health.
◦ Issues detected on devices
◦ Steps to remediate issues by following the self-help instructions or using the linked
resources.
For example, end users receive alerts to restart their devices if they haven’t done so in the
recommended duration.

Configuring notifications
As a DEX administrator, you can configure and manage Desktop Assistant notifications.
You can configure API parameters to enable Desktop Assistant to send notifications for any
update or activity. For more information, see API parameters to customize Desktop Assistant
notifications.
You can define how long the system attempts to deliver
notifications by configuring the time-to-live (TTL) value using the

sn_dex_desktop.sn_desktop_assistant.notification_time_to_live
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1703


<!-- page 1704 -->
property. The TTL can be set to a maximum of seven days. Older notifications exceeding the TTL
are automatically discarded.
You can also enable and disable Desktop Assistant notifications. For more information, see
Enable or disable notifications.
Customize recipient list for Major Incident Management updates
Customize the base system recipient list for Major Incident Management updates based on
application usage.

Before you begin
• Install the DEX Score application.
• Confirm that data is available in the DEX Score installed or web application tables.
This data is tracked and used to filter the recipient list.
• Verify that the DEX Score Orchestrate generator aggregation scheduled job is executed. This
job runs daily to collect data.
Role required: admin

Procedure
1. Navigate to All > Targeted Communications > Recipients Lists.
2. Open the Impacted application users in affected location(s) recipient list.
3. Edit the following details in the script:

Parameter list

Description

Aggregation
Frequency

Enter the aggregation frequency:
◦ Daily
◦ Weekly
◦ Monthly
By default, aggregation frequency is set to Daily.

Aggregation
Period

Enter the aggregation period:
◦ 1–7 days
◦ 1–4 weeks
◦ 1–12 months
By default, aggregation period is set to 7 days.

Application type Enter application type as either installed or web, based on which users are
filtered.
Application

Enter the sys_id of an application.
For example, sys_id of the Microsoft PowerPoint application.

Metric

Enter a metric name.
For example, Application Usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1704


<!-- page 1705 -->
Parameter list

Description

Metric value

Enter a metric value.
The API checks if the selected metric is greater than the metric value,
based on which it filters the users.

Location id

Enter the sys_id of the location.

4. Select Update.

Chat using Now Assist in Virtual Agent
Use Digital End-User Experience (DEX) Virtual Agent to access a convenient chat-based support
powered by Now Assist to find answers and guidance.

Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. On the Desktop Assistant home page, select the Virtual Agent or chat icon (
on the Desktop Assistant header.

) that appears

2. In the chat window, enter your question in the Please type your request field and press Enter.
3. Use the prompts from Now Assist to create a ticket, check the status of an existing ticket, or
resolve other issues you might have.

Note:
◦ To customize the topics that must be displayed and available on the Show me
everything window, see Getting started with Virtual Agent Designer
◦ To monitor and improve your device performance using Now Assist in Virtual Agent, see
Check device health using Now Assist for ITSM Virtual Agent

View Desktop Assistant notifications
View notifications to stay up to date with important information and events in real time.

Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. Log in to Desktop Assistant.
For more information, see Open and log in to Desktop Assistant.
2. On the Desktop Assistant home page, select the notifications bell icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1705


<!-- page 1706 -->
The notifications are displayed in a drop-down list.

Note: With the DEX Washington DC release, if a user logs in to Desktop Assistant on a
new device, any existing unexpired notifications don't appear in the notifications list.

Test network connectivity of your device
Test your device's network connectivity to evaluate its performance. If the performance is below
average, running a speed test helps diagnose if the issue is with your device or your Internet
service provider.

Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. Log in to Desktop Assistant.
For more information, see Open and log in to Desktop Assistant.
2. On the Desktop Assistant home page, select Network test.
3. On the Network Test page, select Test my network.
Desktop Assistant runs a network test, displays the download and upload speeds, rates
network performance, and suggests steps to improve bandwidth if performance is below
average.
4. Optional: Select the Network Details accordion to view the device and server names.

Open Employee Center from Desktop Assistant
Open Employee Center from Desktop Assistant to access a unified portal for finding information,
getting help, and requesting services.

Before you begin
• Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
• Map the Employee Center card to the Employee Center portal of your organization.
Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. Log in to Desktop Assistant.
For more information, see Open and log in to Desktop Assistant.
2. On the Desktop Assistant home page, select Employee Center to open the Employee Center
portal.

View outages from Desktop Assistant
View outages to identify potential task hazards and plan your work accordingly. Outages can be
planned, unplanned, or related to service degradation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1706


<!-- page 1707 -->
Before you begin

Role required: sn_dex_desktop.user or sn_dex_desktop.admin

Procedure
1. Log in to Desktop Assistant.
For more information, see Open and log in to Desktop Assistant.
2. On the Desktop Assistant home page, select Outages.
You are directed to the System Status page on the Employee Center portal.
3. In the Current Status section of the System Status page, view the list of active outages.
4. Select an outage to view more details on the outage details page.

View Desktop Assistant usage metrics
As a DEX administrator, view Desktop Assistant usage metrics of end users.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Under Desktop Assistant, select Usage metrics.
You can view the Desktop Assistant users who are logged in, their connection status, and the
Desktop Assistant versions.

For more details on the usage metrics, see Desktop Assistant usage metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1707


<!-- page 1708 -->
Digital End-User Experience reference
These reference sections provide more information about monitoring and managing your
devices and apps with Digital End-User Experience and its components.

DEX Application and Device Health reference
Reference topics provide additional information about the cards, lists, and forms that helps you
to configure and use DEX Application and Device Health.
Installed with DEX
Several types of components are installed with activation of the DEX application [sn_dex] plugin,
including user roles and tables.

Roles installed
Users and responsibilities
Role title [name]

Description

DEX administrator

Responsible for managing user
access to DEX, managing the
applications that are being
monitored, and handling
onboarding/offboarding-related
tasks. They also troubleshoot
any issues that arise within the
application.

[sn_dex.admin]

DEX engineer
[sn_dex.engineer]
DEX user
[sn_dex.user]

Responsible for accessing and
executing the remedial actions.
Responsible for accessing and
using the features provided by
DEX.

Contains roles

• agent_client_collector_admin
• report_admin
• sn_dex.user
• sn_dex.engineer
• sn_cmdb_editor
sn_dex.user

• agent_client_collector_user
• cmdb_read
• dependency_views
• mbplus_reader
• sam_user
• sn_cmdb_editor
• sn_incident_read
• sn_sow.sow_home
• sn_sow.sow_list
• sn_sow.sow_user

DEX Service Desk agent

Responsible for L1 or L2 support
representatives accessing DEX
[sn_dex.service_desk_user] from the incident platform to
explore and investigate the
details of the devices linked to
the incident.

Not applicable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1708


<!-- page 1709 -->
Tables installed
Table

Description

DEX Application

Parent table that stores a list of all the applications configured for
monitoring on the Administration > Applications page.

[dex_application]

The table extends the parent table sn_acc_vis_content_application in
the Agent Client Collector for Visibility - Content scoped app.
Metric Rules

Table that stores all the DEX metric rules.

[dex_metric_rules]
Alert Metadata

Table that stores data about incoming events from the metric rules.

[dex_alert_metadata]
Alert Impacted Users

Table that stores data about users or devices, which are impacted for a
given metric rule.
[dex_alert_impacted_users]
Alert Locations
[dex_alert_location]

Table that stores data about locations, which are impacted for a given
metric rule.

Action App Config

Table that stores applications, which support the clear app cache
action.
[dex_action_app_config]
CI Device
Configuration

Table that stores the device configuration data including the logged-in
user information.

[dex_ci_device_config] For information on the related policies and check definitions, see DEX
Content Playbook reference.
Landing page cards
The landing page cards provide a visual summary of active and impacted devices, and alerts for
monitored applications, facilitating efficient data analysis across various categories.

Note: The graphs display the latest data from the last two hours.
Home page cards
Cards

Description

Active
alerts

Total number of active alerts.

Note: The active alerts details page also shares the details of the impacted
users and impacted devices.

Impacted Displays the count of impacted users based on the alerts of both the devices and
devices the applications running on that device.
Active
devices

Total number of active devices in the last 5 minutes. The graph indicates the trend
of last 2 hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1709


<!-- page 1710 -->
Home page cards (continued)
Cards

Description

Devices

The devices world map shows device counts by location, enables you to drill down
into specific regions, and redirects to the Devices page for detailed insights.

To return to the main page, see Landing page.
DEX Insights reports
The Digital End-User Experience (DEX) Insights tab provides reports on the user device battery
health, system compliance, system performance, and system time, which enables efficient
monitoring and issue identification.

Battery health
Field

Description

Device

Name of the monitored digital device, like a laptop or a desktop.

User

Owner of the device.

Operating
system

OS that manages and controls the device hardware, as well as enables the
execution of applications such as Windows or macOS.

Battery health

State of the battery health.
Battery states include the following: Good, Moderate, Poor, Unknown

Battery
condition

Battery condition values vary by OS.
Each OS has the following values:
• Windows: Degraded, Error, Lost Comm, No Contact, NonRecover, OK, Pred
Fail, Service, Starting, Stopping, Stressed, Unknown.
• macOS: Normal, Service Needed, Permanent Failure, Check Battery.

Full charge
capacity (mWh)

Capacity of the battery when fully charged.

Percent of
designed
capacity

Current capacity divided by the designed capacity.

Cycle count

Cycle count before replacement.

Battery serial
number

Serial number of the battery.

Last refresh time Last time the record was updated.

File management

Note: The data appears on this page only after File management has been set up.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1710


<!-- page 1711 -->
Field

Description

File
name

Name of the file set up for monitoring.

Category One of the following categories assigned to the file: Application, Malicious, Security,
Development tools, System, Others, Installers, Potentially Unwanted Programs.
Device
count

Number of devices that have the file.
You can select the number to see all devices where the file was detected.

System compliance
Field

Description

Device

Name of the monitored digital device, like a laptop or a desktop.

User

Owner of the device.

Compliance
rating (%)

Device's adherence to tracked applications and policy metrics, measured in
percentage.
The score is calculated by dividing the number of compliant applications and
policy metrics by the total number of applications monitored.

Noncompliant
applications

Applications monitored for compliance but not currently running on this
device.

Noncompliant
policy metrics

System policy metrics that don't return the expected or compliant values as
required by your organization's compliance standards.

Alert

Alert triggered by a noncompliance event.

Operating
system

OS that manages and controls the device hardware, as well as enables the
execution of applications such as Windows or macOS.

Location

Physical location of the device.

System performance
Field

Description

Device

Name of the monitored digital device, like a laptop or a desktop.

User

Owner of the device.

CPU
usage
(%)

Amount of processing power consumed by an application, measured in percentage.
High CPU usage might result in degraded application performance, slower response
times, and decreased user satisfaction. Identifying performance bottlenecks can
help optimize application performance.

Memory Amount of memory or RAM consumed by an application, measured in percentage.
usage
High memory usage might result in degraded application performance, slower
(%)
response times, crashes, and system instability. Monitoring memory usage can help
optimize resource allocation and capacity planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1711


<!-- page 1712 -->
Field

Description

Disk
usage
(%)

Proportion of storage capacity consumed by data and applications on a disk drive,
measured in percentage.

IO
usage
read
(kbps)

Process of reading data from storage devices, such as hard drives or solid-state
drives, within a computer system.

Elevated disk usage might lead to slower system performance, increased loading
times, and potential storage-related issues. Monitoring disk usage can help optimize
storage resources, avoid data bottlenecks, and promote efficient data management.

This field appears only for installed applications.
Excessive I/O read operations might lead to performance bottlenecks, increased
latency, and slower system response times. Monitoring I/O read activities can verify
that the data retrieval processes don't limit application performance.

IO
usage
write
(kbps)

Process within a computer system of writing data to storage devices like hard drives
or solid-state drives.
This field appears only for installed applications.
Excessive I/O write operations might lead to performance bottlenecks, increased
latency, and slower system response times. Monitoring I/O write activities can verify
that the data storage processes don't limit application performance.

System time
Field

Description

Device

Monitored digital devices, like laptops and desktops.

User

Owner of the device.

Boot time

Time when the device last rebooted.

Up time

Amount of time that the device has been running.

Time since provisioning

Amount of time that has passed since the device was provisioned.

Last refresh time

Last time the device record was updated.

Windows registry

Note: The data on the devices with Windows keys issues appears on this page only after
the Windows registry has been set up and after the policy has run.

Field

Description

Path

Full Windows registry key path.

Device Number of devices that have issues with the registry key.
count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1712


<!-- page 1713 -->
Field

Description

Note: The number of devices shown in the report for each registry key identifies
the devices where the reported registry key value is different from the expected
value. You can select the number to see all devices where the key issue was
detected.
The error No value (check the configuration) appears when the
path is incomplete or the key path configured for monitoring isn’t present on the
device.
Applications list
It provides details about an application, including its Name and classification as either an
installed or Web-based application, counts of alerts and incidents, and Impacted devices.
Applications list
Fields

Description

Name

Name of the application.

Type

The category of the application - whether it's Web or installed.

Alerts

Total count of alerts in either the Open, Reopen, or Flapping state for an
application with source as DEX.
Selecting any alert number directs you to the Express list, where you can view
detailed information about that alert.

Impacted
devices

Devices that are impacted by service or performance failure, resulting in the
creation of an incident.

Incidents

Total count of active incidents for an application.

To return to the Application page, see Applications.
Web application — Overview page
The overview page for a Web application provides information on the active alerts, active
devices, incidents, impacted devices, and the average-to-resolve time for the incidents.
Web application Overview page
Field

Description

Active devices

Total count of active devices for the application.

Active alerts

Total count of active alerts for the application.

Active incidents

Total count of active incidents for the application.

Current impacted
devices

Total number of devices impacted due to the application service or
performance failure with open alert created.

Active alerts and
incidents (last 7 days)

Number of open alerts (P1-P5) and incidents (P1-P5) created for the
application in the last 7 days.

Average MTTR
incidents (all time)

Mean time to resolve (MTTR) incidents created due to this
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1713


<!-- page 1714 -->
Web application — Performance page
Monitor the application performance to enable proactive detection and resolution of issues,
maintain optimal performance, improve user experience, troubleshoot the performance issues,
and confirm that the application meets its intended purpose.
Web application performance - Engagement
Field

Description

Started
Sessions

Total number of active user sessions for the application over the last 2 hours,
specifically the latest 5 minutes.

Note: Active user sessions information is vital for determining the server
load. It also helps you to determine the perfect time for server maintenance.
Average
session
duration

Average amount of time spent according to user in the application over the last 2
hours, specifically the latest 5 minutes.

Page views

Frequency with which the users access or view a specific page within the
application.

It’s calculated by dividing total time spent across sessions by the total number of
users.

Each visit to a page is recorded as one page view, whether it is by a first-time
visitor or a returning user.

Web application performance - Metrics
Field

Description

Average
response
time

Total time taken to respond during the selected time period.

Average
page load
time

Average amount of time it takes to load the page, from initiation to load
completion during the selected time period.

Average DNS Average amount of time it takes for a Domain Name System (DNS) lookup to be
lookup
completed during the selected time period.
A lower average DNS lookup time is desirable, as it contributes to faster web
page loading and improved overall internet performance.
Failed web
requests

Set of all requests that either return an Error Code or an HTTP 408 status code
or fail to return a Success Code during the selected time period.

Successful
Number of times the HTTP requests made by the client (such as a web browser)
web requests to a server that result in a positive and expected response.
Availability

Measure of the system's operational performance and its ability to be
accessible and usable when needed.
It’s typically expressed as a percentage, representing the proportion of time the
application is functional and available for use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1714


<!-- page 1715 -->
Note: If you set up a page-level monitoring for specific application pages, you can see

the collected metrics in the Metrics analyzer. Select one or more pages under Pages and
narrow down your data by location, OS, or date range.
Web application — Devices page
The Active and Impacted devices list captures data about the devices, latest logged-in user,
last logged in location, and time when the application was last accessed on the device. This
information helps with security, access control, and provides insights into user behavior and
application usage.
Active and impacted devices
Field

Description

Name

Active or Impacted device that is connected to DEX.

Last
Last logged-in user that accessed the device.
logged-in
user
Last
The geographical position or physical location of the device where the application
logged in was recently accessed.
location
Note: The device location is important in an outage or emergency situation
when it’s important to be able to locate impacted devices and users to assist.
Device location data can be used to identify the extent and severity of the
outage, prioritize restoration efforts, and direct resources to the affected areas.
App last Date and time when the application was last accessed on the device.
accessed
Only Active devices page has this field.

Note:
• The Active devices list displays the Agent Client Collector (ACC) installed on their
devices.
• By default, sorting is available only on the Impacted devices page and displays all
devices on with ACC is installed for the latest 1000 records.
• The list displays active devices and refreshes every five minutes, a maximum of 1000
devices listed. If no new data is available, the last available data is displayed.
• Only device name filter is available on web applications.
Web application — Trends page
The trends page captures metrics such as alert trends, average page load time, average
response time, metrics for failed web requests, total usage, and mean time to resolve
incidents. This information is essential for evaluating system performance, identifying areas for
improvement, and making data-driven decisions.
Trends
Cards

Description

Alert trends

Patterns or changes in the frequency and severity of alerts generated by a
monitoring application over the last 11 months.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1715


<!-- page 1716 -->
Trends (continued)
Cards

Description

Mean time to
resolve incidents

Average time taken to resolve an incident.

Metrics (For last 11 months)
Average page
load time

Option to view the trend of average amount of time it takes to load the
page, from initiation to load completion.

Average response Option to view the trend of the average response time for the application.
time
Failed web
requests

Option to view the trend of total number of requests that have failed.

Total usage

Option to view the total amount of time spent on the application by all
users.

Installed application — Overview page
The overview page for an installed application provides information on the active alerts,
incidents, impacted devices, and the average-time-to-resolve for the incidents. Tracking the total
active incidents can help you to monitor and manage the overall health of the application.
Installed application Overview page
Field

Description

Active alerts Number of ongoing notifications or warnings related to the performance of DEX.
These alerts might include issues with system availability, network connectivity,
security threats, or other potential disruptions to business operations.
Active
incidents

Number of ongoing issues or problems reported by users. These incidents might
include issues with hardware or software, slow system performance, or other
technical problems that are affecting their ability to work efficiently.

Current
impacted
devices

Total number of devices impacted due to the application service or performance
failure with open alert created.

Active
alerts and
incidents
last 7 days

Patterns in the type of incidents and alerts that are reported in a particular
context over the last 7 days.

Average
MTTR
incidents,
all time

Mean time to resolve (MTTR) incidents created for this application.

Installed application — Performance page
The installed application performance section presents details on the location and app version,
number of crashes and freezes, as well as the CPU, memory, and I/O performance information.

Note: Access application performance data spanning the past 2 hours, 24 hours, or 30
days by choosing your preferred time frame from the provided drop-down list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1716


<!-- page 1717 -->
Installed application performance - Number of crashes and freezes
Field

Description

Current
number
of
crashes

Current number of crashes by version.

Number
of
crashes
- Last 2
hours

Number of application crashes over the last 2 hours by version.

Current
number
of
freezes

Current number of freezes by version.

Number
of
freezes
- Last 2
hours

Number of application freezes over the last 2 hours by version.

Note: The number of crashes pertains to applications that emit a window
app crash event (event id = 1000) on crashing such as Microsoft OneDrive,
Microsoft Teams, Microsoft Excel, Microsoft OneNote, Microsoft PowerPoint,
Microsoft Outlook, and Microsoft Word.

Installed application performance - CPU, Memory, and I/O performance
Field

Description

Current CPU
usage

Amount of processing power consumed by an application in percentage.

CPU usage - Last
2 hours

Amount of application's processing power consumed by an application
over the last 2 hours in percentage.

Current memory
usage

Amount of memory or RAM (Random Access Memory) consumed by an
application in percentage.

Memory usage Last 2 hours

Amount of memory or RAM (Random Access Memory) consumed by an
application over the last 2 hours in percentage.

Current I/O read

Process of reading data from storage devices, such as hard drives or solidstate drives, within a computer system.

I/O read - Last 2
hours

Process of reading data from storage devices over the last 2 hours.

Current I/O write

Process of storing or writing data to storage devices like hard drives or
solid-state drives, within a computer system.

I/O write - Last 2
hours

Process of storing or writing data to storage devices over the last 2 hours.

Note: You can filter the performance metrics by either searching by location of the device
or by app version running on the device in a selected time period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1717


<!-- page 1718 -->
Installed application — Client health page
The installed application Client health section presents details on the devices on which the
Microsoft Configuration Manager (MCM) policy has run.

Installed application client health page — MCM
Field

Description

Operating system

OS that manages and controls the device hardware and
enables the execution of applications, such as Windows or
macOS.

Client version

Version of the MCM client installed on the device.

Metrics by device count
MCM client not installed

Number of devices where the MCM client isn’t installed.

MCM client not running

Number of devices where the MCM client isn’t running.

More than 24 hours since
last check

Number of devices where the last check ran more than 24 hours
ago.

Metric name

Name of one of the following actions that run on the device.
• Unassigned site codes
• More than one client crashes
• Log level is not 1
• Provisioning mode state is true
• Unhealthy client status
• Pending management point updates

Device count

Number of devices where a specific metric ran.

MCM app versions

Graph of the MCM versions installed on your organization
devices.

Devices where MCM action
Name of one of the following actions that run on the device.
didn't run in the last 24 hours
• Discovery data collection cycle
• File collection cycle
• Hardware inventory cycle
• Software inventory cycle
Device count

Number of devices where a specific metric ran.

Installed application — Devices page
The devices lists capture data regarding the active devices, impacted devices, the last loggedin user, and the last logged-in location, and the date and time when the application was last
accessed on the device. This information helps with security and access control, as well as
providing insights into user behavior and application usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1718


<!-- page 1719 -->
Active and impacted devices
Field

Description

Name

Active or Impacted device that is connected to DEX.

Last
Last logged-in user that accessed the device.
logged-in
user
Last
Location of the device that the user most recently used.
logged in
Note: The device location is important in an outage or emergency situation
location
when it’s important to be able to locate impacted devices and users to assist.
Device location data can be used to identify the extent and severity of the
outage, prioritize restoration efforts, and direct resources to the affected areas.
App last Date and time when the application was last accessed by the device.
accessed
Only Active devices page has this field.

Note: The App last accessed field displays the date and time when the
application was last accessed on the device.

Note:
• The Active devices list displays the Agent Client Collector (ACC) installed on their
devices.
• By default, sorting is available only on the Impacted devices page and displays all
devices on with ACC is installed for the latest 1000 records.
• The list displays active devices and refreshes every 5 minutes, a maximum of 1000
devices are listed. If no new data is available, the last available data is displayed.
• Both device name filter and app version filter are available on installed applications.
Selecting the user name takes you to the details page of that user. For detailed information on a
user and associated applications, see Device details.
Application and Device Health usage monitoring
You can monitor how your end users are using application health and device health.
You can check the health of an application or device from an alert or incident or access the
application health details to view usage information. The DEX ADH UI log table captures
both the application and the device health.
DEX Application and Device Health UI log
Field name

Description

Source ID

Stores the context on why the application
health or device health (Alert ID, Incident ID)
was viewed.

User persona

Registers who (user persona: DEX user, DEX
engineer) viewed the application health or
device health.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1719


<!-- page 1720 -->
DEX Application and Device Health UI log (continued)
Field name

Description

App or Device ID

Tracks the app or device health or
performance.

User

Tracks the number of users.

Devices list
The Devices page provides information on your organization devices, the device assigned user,
last login, matching assignments, status, active alerts, and incidents.

Field

Description

Device

Actual physical or virtual hardware, such as a laptop or mobile device.

Assigned
to

Name of the person to whom the device is assigned.
When the device owner isn’t a ServiceNow user, the name appears as "-".

Note: When you select the user’s link, it redirects to the Users page in
Service Operations Workspace.
Last
logged in
name

Name of the person who had last logged in to the device.
When the user isn’t a ServiceNow user, the name appears as "-".

Note: When you select the user’s link, it redirects to the Users page in
Service Operations Workspace.
Last
logged in
user ID

User ID of the person who had last logged in to the device.
When the user isn’t a ServiceNow user, the name appears as "-".

Note: When you select the user’s link, it redirects to the Users page in
Service Operations Workspace.
Matches
assigned
to

Indicates whether the device that the user is using to connect to DEX is assigned to
the user's name.

Note: The field displays Yes when the user is the owner of the device. For

shared devices, Yes is displayed as the value only when the user is the owner
of the device.
Status

Status of the device such as Up, Down, or Unknown.

Note: This field appears only in Devices by ACC status tab.
Host data Status of data collection from the device.
collection
Note: This field appears only in Devices by ACC status tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1720


<!-- page 1721 -->
Field

Description

Last
logged in
location

Location where the device was last logged in.

Alerts

Total count of active alerts for the device.

Incidents

Total count of active incidents for the device.

To return to the main devices page, see Devices.
Device details pages
The device details provide a comprehensive view of device health, including alerts, incidents,
battery status, and hardware details. It also tracks applications, running processes, app and
device performance, battery, and Wi-Fi data. Network monitoring offers connection details,
performance metrics, device metrics, network experience, and access. Additionally, you can
access custom queries for more detailed insights.
Device health page
The health of a device includes critical device specifics like type, name, OS, model, location,
and CPU. Additionally, it includes metrics like device and battery health, events from the last 24
hours, OS details, pending updates, incident, and alert specifics.

Device health — Overview
Monitoring and managing the following aspects promotes optimal device performance and
enables timely resolution of any issues.
Device summary
Field

Description

Device info
Type

Category of the device, such as laptop or desktop computer.

Name

Unique name of the device.

Model ID

Unique identifier assigned to a specific model of a device for internal tracking,
system recognition, or management purposes.

Operating
system

OS that manages and controls the device hardware and enables the
execution of applications, such as Windows or macOS.

OS version

Current operating system version of the device, essential for compatibility,
security, and verifying optimal performance.

RAM

RAM capacity of the device.

Location

Physical place where the device is located, indicating its position or network
address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1721


<!-- page 1722 -->
Device summary (continued)
Field

Description

Note: To identify and determine the number of impacted devices
based on the location, define a custom logic. The available options to
determine the location of the device are:
• Consider the device assigned to location or logged-in user location
(sn_dex.location_determination).
• Consider the default gateway (router) IP of the device to determine
whether it’s connected from office location or connected remotely
(sn_dex.remote_location_config).
CPU processor
ID

Unique identifier assigned to a specific CPU processor.
This field appears on Windows machines only.

Computer details
This tab appears on Windows machines only.
Computer
Asset Details

Name of the device.

Computer
Asset Tag

Unique identifier for tracking and asset management

Computer DNS/ Fully Qualified Domain Name for network identification.
FQDN
Computer
domain

Identifies the network domain to which the computer belongs.

UUID Serial
Number

Globally unique ID assigned to the system by the manufacturer for
identification.

BIOS Serial
Number

Unique identifier assigned to system firmware for tracking and support.

System Serial
Number

Unique serial number for the entire system used for warranty and service.

BaseBoard
Serial Number

Serial number of the motherboard used for hardware identification.

Chassis Serial
Number

Serial number of the system physical case or enclosure.

Memory
This tab appears on Windows machines only.
Name

Unique name of the physical memory unit to track the specific modules for
troubleshooting or upgrades.
For example, Physical Memory 0, Physical Memory 1.

Device locator

Physical location of the memory module.
For example, Motherboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1722


<!-- page 1723 -->
Device summary (continued)
Field

Description

Capacity(MB)

Capacity of each memory module in MBs.

Speed(MHz)

Memory module speed in MHz to confirm compatibility with other hardware
components and optimize performance.

Form factor

Physical size, shape, and pin layout of a RAM module.
For example, Dual In-Line Memory Module (DIMM) and Small Outline Dual Inline Memory Module (SO-DIMM).

Type

Type of the memory module.
For example, DIMMs (Dual In-line Memory Module) for desktops and
SODIMMs (Small Outline DIMM) for laptops.

Type details

Additional details on the memory module type.
For example, Synchronous.

CPU
This tab appears on Windows machines only.
Name

Unique name of the Computer Processing Unit (CPU).

Architecture

Design and organization of the CPU that defines how it interacts with other
components to run instructions and process data.
For example, x86, x64.

Cores

Number of processing units within the CPU responsible for running
instructions and performing calculations.

Processors

Number of physical processors installed on the device.

Device ID

Unique name assigned to a specific CPU processor.

Manufacturer

CPU manufacturer.
For example, GenuineIntel or AMD.

Current Clock
Speed

Rate measured in gigahertz (GHz), at which the CPU executes instructions.

Max Clock
Speed

Maximum achievable clock speed for the CPU.

Stability
Battery health

State of the battery health.
The battery states include the following:
• Good
• Moderate
• Poor
• Unknown

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1723


<!-- page 1724 -->
Device summary (continued)
Field

Description

This field appears on macOS machines only.
Firewall

Indication of whether your organization's firewall software is enabled.

Uptime

Amount of time the computer has been continuously running since it was last
restarted.

Stability index

Value that indicates how consistently a device performs over time, indicating
its reliability and resistance to crashes and unexpected behavior.
This field appears on Windows machines only.

Anti-virus

Indication of whether your organization's anti-virus software is enabled.
This field appears on Windows machines only.

BSOD cause

Cause of the blue/black screen of death (BSOD) event.
This field appears on Windows machines only.

Last BSOD
Last time that the BSOD event happened.
- Blue/black
screen of death
Last access
time

Last time the device was accessed.

Power plan

Settings that control how the device uses power.
Monitor and manage power plans to optimize energy use and reduce costs.
Confirm that the devices are set to an appropriate power plan. The available
options are:
• Balanced: Adjusts CPU speed and system components dynamically based
on workload, balancing performance, and energy consumption.
• Power Saver: Reduces performance and energy consumption by lowering
CPU speed and dimming the display. Useful for extending battery life on
laptops.
• High Performance: Maximizes system performance by keeping the CPU at a
higher speed for longer periods, increasing power consumption.
This field appears on Windows machines only.

BIOS
This tab appears on Windows machines only.
SMBIOS BIOS
Version

Version of the BIOS installed, enabling IT to track whether the device is up to
date with the latest firmware.

Manufacturer

Name of the BIOS manufacturer, useful for identifying compatible firmware
updates.
For example, "Dell Inc."

Name

A quick reference to the BIOS name and version for easier identification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1724


<!-- page 1725 -->
Device summary (continued)
Field

Description

Serial Number

Unique identifier for the device, supporting asset tracking and inventory
management.

Version

String indicating version details, useful for maintenance records.
For example, "DELL - 2."

Computer
Status

Health indicator for the overall system status, which helps IT proactively
monitor device functionality.

Device events
Field

Description

Timeline Illustration of events generated by devices within the past 24 hours according to your
chart
local time zone.
You can view the following device events on the timeline chart:
• System events such as software installation and updates, new user addition, user
login, password reset, and last system reboot. Selecting the icon for a system
event displays a pop-up window with details such as the event name and the date
and time of the event.

Note: System events data isn’t updated on the timeline chart in real time. To
see the latest data, select the Refresh icon (

).

• Service management events such as alerts, change requests, and incidents
impacting a device. Data for these events is updated real time on the timeline
chart.
Selecting the icon for a service management event displays a pop-up window that
provides information such as the event record link, state, priority, and the time
when the event was created. Select the record link to open the event record and
view more details.
Selecting the Show events drop-down displays the device event icons and the event
names that they represent.
You can measure device events using metrics such as event frequency, event
duration, event occurrence patterns, event reliability, and event impact on the system
performance.

Pending system updates
Field

Description

Windows OS updates
Title

Name or description of the pending system update.

KB

Related knowledge base article for the update.

Mandatory

Indicates whether the update is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1725


<!-- page 1726 -->
Pending system updates (continued)
Field

Description

Uninstallable

Indicates whether the update can be uninstalled after installation.

Max download

Maximum download size of the update.

Reboot
required

Indicates whether a system restart is necessary to complete the update
installation.

macOS updates
Title

Name or description of the pending system update.

Label

Label for the update.

Version

Version of the update.

Size

Size of the update.

Recommended Indication of whether the update is recommended.
Action

Recommended action to be taken for the pending system update, such as
Install or Restart.

Device health — Operating system
Field

Description

Name

Name of the operating system installed on the device, such as Windows 10 or
macOS.

Architecture System architecture of the operating system, such as 32-bit/64-bit or arm64.
Version

Specific version of the operating system, including major and minor release
numbers.

Install date

Date when the operating system was installed on the device.

Platform

Underlying platform on which the operating system runs, such as Windows or
Darwin.

Locale

Represents the regional and language settings configured for the operating
system.
This field appears on Windows machines only.

Free
physical
memory

Amount of unused physical RAM available on the device.

Total virtual
memory

Combined amount of physical RAM and the space allocated on your hard drive
that the operating system can use as temporary storage when the physical RAM
is full.

This field appears on Windows machines only.

This field appears on Windows machines only.
Free virtual
memory

Amount of virtual memory that is available for use.

Status

Current operational status of the operating system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1726


<!-- page 1727 -->
Field

Description

For example, OK.
This field appears on Windows machines only.
Code set

Character encoding used by the operating system, which specifies how text is
represented.
For example, Windows-1252, UTF-8, ANSI.
This field appears on Windows machines only.

Country
code

Numeric or alphanumeric code representing the country or region configured in
the operating system settings.
This field appears on Windows machines only.

System
device

Primary hardware device where the operating system is installed, such as the
system drive.
This field appears on Windows machines only.

System
directory

Directory where the core operating system files are located.
For example, C:\Windows\System32.
This field appears on Windows machines only.

Build
number

Specific build identifier of the operating system, which denotes updates or
patches applied.
This field appears on Windows machines only.

Build type

Type of operating system build.
This field appears on Windows machines only.

Service
pack major
version

Major version number of the service pack installed on the operating system.

Service
pack minor
version

Minor version number of the service pack installed on the operating system.

Serial
number

Unique identifier assigned to the operating system instance, which is used for
licensing and registration purposes.

This field appears on Windows machines only.

This field appears on Windows machines only.

This field appears on Windows machines only.

Device health — System compliance

Note: The data appears on this page only after the System compliance functionality has
been configured. For more information, see Manage your system compliance report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1727


<!-- page 1728 -->
Field

Description

Compliance
rating

Adherence of the device to tracked applications and policy metrics,
measured in percentage.
The rating is calculated by dividing the number of compliant applications
and policy metrics by the total number of applications monitored.

Compliance
rating - past 7
days

Compliance rating during the last seven days.

Noncompliant
applications

Applications monitored for compliance but not currently running on this
device.

Noncompliant
policy metrics

System policies that don't return the expected or compliant values as
required by your organization's compliance standards.

Device health — Alerts
View alerts for both your device and its applications in the Alerts section.

Field

Description

Alert

Unique identifier assigned to an alert for reference purposes.

Note: The data appears on this page only after System compliance has
been configured.
Type

Categorize the alert based on whether it’s generated for a web app, installed
app, or device.

Configuration
item

Displays the name of the configuration item, such as SAP, Zoom, Figma, and
others.

Description

Summary of the alert, providing details about the nature of the issue.

Severity

Severity of the alert.

Impacted user Displays the users affected by this alert.

Device health — Incidents
Field

Description

Number

Number of an incident.

Short description Summary of the incident.
Priority

Incident priority, from the highest priority of one to the lowest priority of five.

Opened

Date and time when the incident was opened.

Device health — Security
The Security section is exclusive to the Windows OS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1728


<!-- page 1729 -->
Field

Description

Volume type

Type of volume that the BitLocker can protect, such as Data or Operating
System.

Protection status

Indication of whether BitLocker currently uses a key protector to encrypt
the volume encryption key.
The Protection status can be On or Off, indicating whether the volume is
protected or not.

Mount point

Drive letter or volume path assigned to the BitLocker-protected volume
after it has been unlocked.
The mount point specifies the location where you can access
the decrypted contents of the encrypted volume. For example, a
mount point might be something like C: or a volume path like C:
\EncryptedVolumes\SecretDrive.

Capacity

Storage size of the volume or the drive.

Volume status

Indication of whether BitLocker currently protects some, all, or none of the
data on the volume.
The possible values are FullyEncrypted, FullyDecrypted,
EncryptionInProgress, DecryptionInProgress, and EncryptionSuspended.

Encryption
percentage

Percent of the volume protected by BitLocker.

EncryptionMethod Indicates the algorithm used by BitLocker to encrypt the disk.
For example, XtsAes128 – Uses XTS-AES encryption with a 128-bit key
(secure and standard for devices).
KeyProtector

Lists the methods used to protect the BitLocker encryption key.
Multiple protectors can be applied to a volume:
• RecoveryPassword: 48-digit password generated for recovery
• TPM: Trusted Platform Module is hardware-based protection to unlock
the drive automatically when booting securely

Device health — Battery
Field

Description

Metric Name of the metric used to evaluate the battery health of a device.
Battery health of a device is typically measured using metrics such as battery capacity,
cycle count, and impedance.
Value

Data associated with a given metric.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1729


<!-- page 1730 -->
Device health — Hardware
Field

Description

Hard drive
Name

Identification label for the hard drive.
For example, \\\\.\\PHYSICALDRIVE2.

Status

Current state of the hard drive.
For example, OK or Error.

Description

Additional details or notes about the hard drive.

Model

Manufacturer model number of the disk drive.

Manufacturer Company that manufactured the hard drive.
Serial
number

Serial number of the hard drive assigned by the manufacturer.

Media
Loaded

Indication of whether the device has the disk drive media loaded.

Size

Total storage capacity available on the hard drive.

Partitions

Number of partitions on this physical disk drive that are recognized by the
operating system.

If TRUE, the media for a disk drive is loaded, which means that the device has
a readable file system and is accessible. For fixed disk drives, this property is
TRUE.

Hard drive partitions
Name

Identification label for the partition.

Partition
number

Numerical identifier for the partition on the physical disk.

Drive letter

Assigned letter used by the operating system to access the partition.
For example, "C:" or "D:"

Partition size

Total storage capacity of the partition.

Partition type Type or format of the partition, such as NTFS, FAT32, or EFI System Partition.
Peripheral devices
Name

Identification label for the peripheral device.

Status

Current state of the peripheral device.
For example, OK or Error.

Manufacturer Company that manufactured the peripheral device.
Description

Additional details or notes about the device, such as model or type.

Service

Name of the service associated with the device, if applicable.

Class

Device classification type, such as Printer, USB, or Network Adapter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1730


<!-- page 1731 -->
Device health — File management
Field

Description

File
name

Name of the file set up for monitoring.

Category One of the following categories assigned to the file:
• Application
• Malicious
• Security
• Development tools
• System
• Others
• Installers
• Potentially Unwanted Programs

Note: The data appears on this page only after File management has been
set up. For more information, see Set up file management.

Device health — Windows registry

Registry key lookup
Registry
key path

Field to enter a full Windows registry key path to look up.

Note: If the path is incomplete, you receive the error message No results
found. Make sure your registry key path is valid.

Registry Result of the search for a registry key containing the following items:
key value
• Path: Windows registry key path entered for lookup.
• Value: Value that is reported for the entered Windows registry path.
Monitored registry keys
Path

Windows registry key path set up for monitoring on the user devices.

Expected Registry path value that is configured for the monitored Windows registry path by
value
the admin.
Reported Registry path value that is reported for the monitored Windows registry path for this
value
device

Note: The error message No value (check the configuration)
appears in this field when the path is incomplete or the key path configured for
monitoring isn’t present on the device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1731


<!-- page 1732 -->
Applications page
View essential details for managing applications such as application name, version, type,
number of incidents, alerts, and impacted devices.
Applications
Field

Description

Name

Name of the application.

Type

Type of the application such as installed or Web.

Alerts

Number of alerts for the application.

Impacted devices

Number of devices impacted by the application issues.

Incidents

Number of incidents for the application.

To return to the device details page, see Device details and to return to the application page, see
Applications.
Running processes page
Observe running process metrics to gain insights into how running processes are performing
and identify performance bottlenecks or issues that might be impacting the digital experience.
Usage metrics
Card

Description

CPU
usage

Percentage of current CPU utilization indicates the proportion of the CPU's total
processing capacity that is currently in use

Idle CPU

Percentage of the CPU's capacity that is not being actively used or is in an idle state

Memory
usage

Amount of computer memory (RAM) currently being used by running processes
and applications

Processes
Field

Description

Name

Name for the process

CPU
usage % Amount of processing power consumed in percentage for a specific program or
process

Note: High CPU usage can result in degraded application performance,
slower response times, and decreased user satisfaction. Identify performance
bottlenecks and take proactive steps to optimize application performance.
CPU
Exact amount of time that the CPU spends for processing data for a specific program
time in
or process
seconds
Note: By tracking CPU usage over time, your organization can identify
potential performance issues and take steps to optimize system resources and
improve the overall digital end-user experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1732


<!-- page 1733 -->
Processes (continued)
Field

Description

Memory
Amount of memory (RAM) consumed in kilobytes (KB) for a specific program or
in KB
process

Note: High memory usage can result in degraded application performance,
slower response times, and potentially lead to crashes or system instability.
Monitor memory usage to optimize resource allocation and capacity planning,
verifying that applications have sufficient resources to meet user demands.
PID

Process ID (PID) is a unique numerical identifier assigned to each running process

Note: The PID can be used to monitor and manage the running processes.
The PID can also be used to terminate or kill a specific process if necessary.
PPID

Parent Process ID (PPID) is the unique numerical identifier assigned to the parent
process of a running process

Note: The PPID is useful for process management because it enables
administrators to identify the processes that spawned child processes and
track the flow of processes in the system. The PPID is also used to manage the
resources allocated to a process and confirm that child processes have access
to the necessary resources.
Service
name

Name of the service associated with the process

Service
type

Type of the service, for example system or user

To return to the device details page, see Device details.
Application performance pages
Access performance and usage data for a specific application to evaluate its efficiency, identify
bottlenecks, and make informed optimization decisions.

Application performance — Installed apps
Field

Description

Application Installed application that you want to track the performance.
Start date

Start date and time within 7 days from current date and time.

End date

End date and time that can’t exceed the current date and time.

Top memory and CPU usage tab
Memory
usage

Amount of memory or RAM (Random Access Memory) consumed by the top 10
applications in MB

CPU usage Amount of processing power consumed by the top 10 applications in percentage
App performance tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1733


<!-- page 1734 -->
Field

CPU usage

Description

Amount of processing power consumed by an application in percentage

Note: High CPU usage can result in degraded application performance,
slower response times, and decreased user satisfaction. Therefore, identify
performance bottlenecks and take proactive steps to optimize application
performance.
Memory
usage

Amount of memory or RAM (Random Access Memory) consumed by an
application in percentage

Note: High memory usage can result in degraded application performance,
slower response times, and potentially lead to crashes or system instability.
Therefore, monitor memory usage to optimize resource allocation and
capacity planning, verifying that applications have sufficient resources to
meet user demands.
I/O read

Process of reading data from storage devices, such as hard drives or solid-state
drives, within a computer system

Note: Excessive I/O read operations can lead to performance bottlenecks,
increased latency, and result in slower system response times. Therefore,
monitor I/O read activities to verify that the data retrieval processes aren't a
limiting factor for application performance.
I/O write

Process of storing or writing data to storage devices like hard drives or solid-state
drives, within a computer system

Note: Excessive I/O write operations can also lead to performance
bottlenecks, increased latency, and potentially result in slower system
response times. Therefore, monitor I/O write activities to verify that data
storage processes don't hinder application performance.
Number of
crashes

Trend of the application's crashes on the device over the last 2 hours

Note: Analyzing this graph enables you to identify potential issues,
pinpoint trends, and take proactive measures to enhance the application's
reliability and user experience.

Application performance — Web apps
Field

Description

Application Installed application that you want to track the performance.
Start date

Start date and time within 7 days from current date and time.

End date

End date and time that can’t exceed the current date and time.

Response
time

Time it takes for the application to respond to a user request in milliseconds

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1734


<!-- page 1735 -->
Field

Description

Note: A slow response time can result in frustrated users, decreased
engagement, and lower productivity, while a fast response time can lead
to improved user satisfaction and increased engagement. Therefore,
it's essential to track response time as a key application metric and
continuously monitor and optimize it to promote optimal user experience.
DNS
lookup

Time (in milliseconds) it takes for a user's device to resolve a domain name into an
IP address

Note: If Domain Name System (DNS) lookup identifies an error in the
mapping of DNS entries on a user's system, the user can’t access the
internet or the intended website.
Page load
time

Time taken for a web page to display its content fully and get interactive on a
user's request

Failed web Instances where requested web content or resources couldn't be successfully
requests
retrieved or loaded by the server

Note: The failed web requests result provides insights into potential issues
affecting web performance. It helps in identifying problems such as server
errors, broken links, or network issues that could hinder user experience.
Identifying the frequency, type, and reasons behind failed requests helps in
troubleshooting, optimizing web infrastructure, and promoting a smoother
browsing experience for users.
Availability

Percentage of time that a service is operational and accessible to users

Advanced app metrics page
Access the advanced app metrics for the Microsoft Configuration Manager (MCM).

Advanced app metrics — MCM
Field

Description

MCM installed

Indicates whether the MCM client is installed on the device.
Value True or False

General
MCM running

Indicates whether the MCM client service is active.

Site code

Assigned Configuration Manager site the client belongs to.

Free cache size

Unused space available in the client cache.

MCM version

Installed version of the MCM client.

Total cache size

Full capacity allocated for MCM caching.

Provisioning mode state

Shows if the client is in provisioning mode during setup.

MCM eval

Timestamp of the most recent client health evaluation.

Client health status

Overall status of the client’s health.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1735


<!-- page 1736 -->
Field

Description

Number of client crashes

Count of crashes related to the MCM client.

Management points
Pending management point
update

Indicates if there are any pending updates for the client from the
management point.

Current management point

Main server the client communicates with.

Internet management point
FQDN

Cloud-based server endpoint (fully qualified domain name) for
internet-managed devices.

DP management point

Distribution point server used for content downloads.

Log related
Log max history

Number of log versions retained.

Log max size (KB)

Maximum log file size before rollover.

Log level

Detail level of the logs being captured.

Is log enabled

Indicates if logging is turned on.

Inventory actions
Data Discovery Record cycle

Gathers system and user discovery data for the CM database.

Software Inventory cycle

Collects details about installed software.

Hardware Inventory cycle

Gathers information about hardware specs.

File Collection cycle

Copies designated files from the client to the server.

Scheduled task details
Configuration Manager Idle
Detection

Identifies idle times for running background tasks.

Configuration Manager
Health Evaluation

Validates client health and auto-fixes known issues.

Device metrics page
Access real-time metrics like CPU, memory, disk usage, I/O operations, battery, and energy
consumption for insights into system resource utilization, performance, and improvement areas.

Device metrics — Performance
Memory tab
Cards

Description

Memory
usage

Trend over a selected duration in the amount of memory or RAM consumed by the
device.

Note: High memory usage might lead degraded application performance,
slower response times, and crashes or system instability. You can monitor
memory usage to optimize resource allocation and capacity planning,
verifying that applications have enough resources to meet user needs.
Virtual
memory

Trend over a selected duration in the total amount of memory used, including
physical memory and the space allocated on the disk as virtual memory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1736


<!-- page 1737 -->
Memory tab (continued)
Cards

Description

This field appears on Windows machines only.
Pages /
sec

Trend over a selected duration in the rate at which pages are read from or written
to the disk to resolve page faults.
This field appears on Windows machines only.
High values might indicate excessive paging, which can happen when the system
runs low on available physical memory.

Page
Trend over the selected duration in the proportion of the page file (disk-based
usage
virtual memory) used.
percentage
This field appears on Windows machines only.
A consistently high percentage might suggest that the system is relying heavily on
virtual memory due to insufficient physical RAM.
Page file
size

Trend over a selected duration in the total size of the system page file used to
store data that exceeds the capacity of physical memory.
This field appears on Windows machines only.
Configurable by the operating system, this size influences the system's ability to
handle memory-intensive applications.

CPU tab
Cards

Description

CPU usage

Trend over the selected duration in the amount of processing power consumed
by the device in percentage.

Note: High CPU usage can result in degraded application performance,
slower response times, and decreased user satisfaction. Therefore,
identify performance bottlenecks and take proactive steps to improve the
device performance.
User
Trend over the selected duration in the user application CPU consumption.
application
This field appears on Windows machines only.
CPU
consumption
This metric shows how much of the CPU capacity is dedicated to running
applications and user-initiated tasks. A consistently high percentage might
reflect resource-intensive applications, while low percentages mean minimal
user activity or a focus on system processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1737


<!-- page 1738 -->
Disk tab
Cards

Description

Disk usage Trend over a selected duration in the proportion of the disk storage capacity
consumed by data and applications.
Elevated disk usage might lead to slower system performance, increased loading
times, and potential storage-related issues. Monitoring disk usage is important
for using storage resources better, avoiding data problems, and managing data
efficiently.
I/O read &
write

Trend in the rate of data read from or written to a storage device over the selected
duration.
This metric provides insights into the data transfer speed and efficiency of the
storage system.

Reads &
writes /
sec

Trend over a selected duration in the number of read and write operations
performed by the disk per second.
This field appears on Windows machines only.
High values might indicate heavy disk activity, which could be caused by dataintensive applications or insufficient memory, leading to frequent paging.

Avg. disk
Trend over a selected duration in the average time in seconds that it takes the disk
sec / read, to complete a read, write, or transfer operation.
write &
This field appears on Windows machines only.
transfer
Longer times might indicate disk latency issues or bottlenecks in accessing data.
Avg. disk
queue
length

Trend over a selected duration in the average number of I/O requests waiting in
the queue for the disk to process.
This field appears on Windows machines only.
A consistently high queue length might mean that the disk is overloaded or unable
to keep up with the volume of requests.

Disk time
%

Trend over a selected duration in the percentage of time that the disk is actively
processing read or write requests.
This field appears on Windows machines only.
High values mean that the disk is at or almost at its full capacity, which might make
applications that use disk I/O slower.

Device metrics — Battery
Field

Description

Battery
percentage

Trend over a selected duration in the remaining charge percentage of the
battery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1738


<!-- page 1739 -->
Device metrics — Energy
Field

Description

Total energy Overall energy usage over a selected duration.
consumption
Energy loss

Wasted energy over a selected duration.
This field appears on Windows machines only.

CPU energy CPU energy consumption for a selected duration.
consumption
GPU energy Amount of the electrical energy used by the Graphics Processing Unit (GPU)
consumption over a selected duration.
This field appears on macOS machines only.
Monitoring GPU energy consumption helps improve energy efficiency
and understand how GPU performance affects the overall device power
consumption. Prolonged high GPU energy usage can also contribute to heat
generation, which can reduce battery life on portable devices.
ANE energy Apple neural engine (ANE) energy consumption over a selected duration.
consumption
This field appears on macOS machines only.
Disk energy Energy consumed by disk operations over a selected duration.
consumption
This field appears on Windows machines only.
Network
Energy usage by network activities over a selected duration.
energy
consumption This field appears on Windows machines only.
Display
Energy usage by the display over a selected duration.
energy
consumption This field appears on Windows machines only.
SOC energy Energy consumed by the system-on-chip (SOC) over a selected duration.
consumption
This field appears on Windows machines only.
MBB energy Energy used by mobile broadband (MBB) over a selected duration.
consumption
This field appears on Windows machines only.
EMI energy
Energy used by electromagnetic interference (EMI) over a selected duration.
consumption
This field appears on Windows machines only.
Power
Real-time device power consumption in milliwatt, showing the immediate rate
consumption that it uses electrical power and gives insight into the device's power draw over
a selected duration.
Other
Other energy usage, not covered by specific categories, over a selected
energy
duration.
consumption
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1739


<!-- page 1740 -->
Field

Description

This field appears on Windows machines only.

Device metrics — Wi-Fi
Field

Description

Transmit and Receive rates

Wi-Fi transmit and receive rates over a selected duration.
This field appears on Windows machines only.

Transmit rates

Wi-Fi transmit rates over a selected duration.
This field appears on macOS machines only.

To return to the main device metrics page, see Device details.
Network experience pages
The Network experience pages display information about multiple facets of the network
configuration. This information includes connection details, stability metrics, path metrics, and
live application hops.

Connection details page
Field

Description

Wi-Fi
details

Wi-Fi connection details, including network name, signal strength, Wi-Fi protocol,
transmit rate, and Basic Service Set Identifier (BSSID).

Wired
connection
details

Wired connection information, including network name, status, speed, and driver
version

VPN connection details
Last data
fetched

Timestamp indicating how recently the VPN data was collected from the device.

Name

Name of the network connection profile.
For example, VPN or network profile name.

Interface
alias

User-friendly alias given to the network interface.

Interface
index

Unique identifier or index number for the network interface on the system.

Network
category

Indicates the network type.

For example, Wi-Fi, Ethernet.

For example, Public, Private, DomainAuthenticated.
For installed VPNs (for example, Zscaler), the DomainAuthenticated value
indicates that VPN is connected. However, for cloud VPNs (for example,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1740


<!-- page 1741 -->
Field

Description

GlobalProtect), you can only infer if VPN is connected by confirming that the
Interface description matches your VPN name.

Note: DomainAuthenticated means that user is connected to installed
VPN.
Domain
auth type

Specifies the type of domain authentication used for the network.
For example, Ldap.

IPv4
IPv4 connection status.
connectivity
For example, internet, NoTraffic, Disconnected.
IPv6
IPv6 connection status (similar to IPv4 status).
connectivity
Interface
description

Descriptive name of the hardware or virtual interface.
For example, network adapter name like Intel(R) 82574L Gigabit Network
Connection or PANGP Virtual Ethernet Adapter.

App connection stability page
Applicable to Windows OS only, information about the network stability is expressed graphically
by latency, packet loss, and jitter.

Field

Description

Application List of monitored applications to select from to see the connection performance of
a specific application
The list contains applications with atleast one domain and only if they were used
in the last seven days.
Domains

List of related domains to select
You can select up to two domains related to a specific application.

Select start Start date and time of the range for which the connection stability data is
date
displayed
You can select any time duration within the last seven days.
Select end
date

End date and time of the range for which the connection stability data is displayed

Latency

Delay between sending and receiving data

If you select a duration that is more than two days, then select View network
path, the time range is set to selectedEndTime - two days.

High latency results in noticeable delays and slower application response times,
impacting overall performance.
Packet loss Loss that occurs when data packets fail to reach their destination, leading to
missing information
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1741


<!-- page 1742 -->
Field

Description

High packet loss causes communication disruptions like dropped calls, distorted
audio, or incomplete videos and files.
Jitter

Variation in time between data packet arrivals. In stable networks, packets arrive
at regular intervals
High jitter causes inconsistent delivery, leading to choppy audio, video, or
performance.

App connection path page
The app connection path is a route that consists of several hops between an end user’s device
and a destination. The data packets travel through various networking devices such as routers,
switches, and gateways.

Field

Description

Filters
Application List of monitored applications to select from to see the connection performance of
a specific application
If you selected any filters on the App connection stability page and then select
View connection path, the selected filters persist on the App connection path
page.
Domains

List of related domains to select
If you selected any filters on the App connection stability page and then select
View connection path, the selected filters persist on the App connection path
page.

Select start Start date and time of the range for which the connection stability data is
date
displayed
You can select any time duration within the last seven days.
Select end
date

End date and time of the range for which the connection stability data is displayed
The selected end date and time are used to limit the connection path duration to 2
days or 48 hours.

Time frame Time at which the network path details are fetched
Connection hops
Domain

Domains selected for the application

Gateway

IP address of the gateway

Number of
hops

Number of stops that data packets take when they travel from one network node
or router to another on their way to a destination

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1742


<!-- page 1743 -->
Live application hops page
Field

Description

Hop

Specific stop that data packets take when they travel from one network node or
router to another on their way to a destination

Domain
Name

Name that identifies the network domain on the internet

Address

IP address assigned to the specific router

RTT1

Duration in milliseconds (ms) that it takes for the first packet to get to a hop and back

RTT2

Duration in milliseconds (ms) that it takes for the second packet to get to a hop and
back

RTT3

Duration in milliseconds (ms) that it takes for the third packet to get to a hop and
back

Access page
View essential user login details, including the user name, user type, login type, the timestamp
of the last login, and the host. By displaying these crucial pieces of information, users can easily
identify themselves, understand their assigned user type and login method, and effectively
manage their login information.
Some of the crucial information that the Access page offers are:
User — Access page
Field

Description

Logins
User
name

Unique identifier used by a user to access the application.

User
type

Role assigned to a user based on their level of access or privileges within a system.

Login
type

Authentication mechanism used by a user to log in to a system, such as passwordbased, multi-factor authentication, or single sign-on.

Last
login

Date and time indicating the most recent instance when a user successfully accessed
the device.

User profiles (only for Windows)
Local
path

Path to the device onboard storage or filesystem.

Last
used

Date and time when the device was last actively used or accessed for any operation
or activity.

SID

Unique alphanumeric identifier used to identify devices.

Loaded Indicates whether the device's operating system or software is successfully initialized
or started.
To return to the main access page, see Device details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1743


<!-- page 1744 -->
Administration cards
The administration cards provide you with the capability to monitor and manage applications,
where you can add, enable, or disable as necessary. You can get insights into the policies
applied for compliance, view the list of DEX users and DEX administrators, manage the metric
rules and devices with Agent Client Collector installed for data analysis.
Administration page cards
Cards

Description

Roles and Access
User roles

View and configure different DEX user roles based on their
respective access requirements.

Application and Device Health
Agent deployment on
Windows devices

Install Agent Client Collector (ACC) to monitor and collect data
in a centralized and organized manner, provide insights into
system performance, identify issues, and enable proactive
maintenance.

Agent deployment on macOS
devices

Install ACC to monitor and collect data in a centralized and
organized manner, provide insights into system performance,
identify issues, and enable proactive maintenance.

Applications management

Look up and configure web and installed applications that are
currently being monitored

Desktop Assistant
deployment

Deploy Desktop Assistant (DA) using guided steps on the enduser devices.
DA is an interface for employees, enabling access to selfservice options, IT notifications, and support resources.

Deploy browser extension

Activate the DEX Google ChromeOS or Microsoft Edge
extension on your device to collect different operational or
performance-based metrics for the web or SaaS applications.

Digital End-user Experience
Self-service configuration

Configure and customize Digital End-user Experience Selfservice experience to enable employees to check the
performance of their device and self-solve issues.

System compliance

Configure compliance system policies, manage applications,
and set up metric rules for compliance-related thresholds.
For more information, see Manage your system compliance
report.

File management

Configure and manage the executable files available on the
end-user devices.
For more information, see Set up file management.

Windows registry
configuration

Configure the Windows registry keys to identify and manage
any mismatch in end-user devices.

Note: Select the registry key path to edit the key by
modifying the path or expected value. You can also
delete the key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1744


<!-- page 1745 -->
Administration page cards (continued)
Cards

Description

For more information, see Set up Windows registry keys.
Agent policies

Manage which DEX metrics are collected based on the device
criteria defined.

Metric rules

Create and manage DEX metric rules to establish criteria and
thresholds for metrics.
Configuring metric rules enables timely alerts and proactive
system management.

Create Remedial Actions

Create your custom remedial actions from check definitions to
resolve end-point related issues using the Playbook.

Usage and Health Monitoring
Agent health

Review and manage user devices on which ACC is installed.
Agent health also displays the number of agents that are up
and the number that are down.

Proactive Engagement
workbench

View Proactive Engagement resolutions available to you in the
base system.
Get an overview of all the PE resolutions and notifications
active in your instance.

Desktop Assistant usage

Get an insight of Desktop Assistant usage across all your
organization's employees.
For more information, see View Desktop Assistant usage
metrics.

To return to the administration details page, see DEX Administration.
Application management card
The Application management card shows the list of the used applications, application type, enduser OS, and whether an application is included in the metrics or compliance monitoring.
Application management
Field

Description

Name

Name of the application.

Metrics
monitoring

Indication whether application monitoring is turned on.
You can turn the application monitoring on or off, as well as delete an application
from the list, by selecting the check box next to an application and selecting an
appropriate option under the Actions drop-down list.

Compliance Indication whether application compliance monitoring is turned on.
monitoring

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1745


<!-- page 1746 -->
Application management (continued)
Field

Description

You can turn the compliance monitoring on or off, as well as delete the
application from the list, by selecting the check box next to an application and
selecting an appropriate option under the Actions drop-down list.
Type

Category that shows whether the application is accessed through a web browser
or installed.

Domains

Web address that is used to launch the application and access its features and
functions.

Windows/macOS
Operating system associated with the application.
process
To learn more about adding an application, see Add an application for monitoring.
New web or installed application form
Using a custom form, you can add an application to be monitored for compliance or performance
metrics.

Field

Description

Select an
application
service

List of application services that references the Service (cmdb_ci_service) table
to select an application service added for monitoring.
You can open the list of available services by selecting the magnifying glass
icon (

What
domains
should be
monitored?

).

Web address that is used to launch the application and access its features and
functions.
You can add a domain by selecting + Add. Add one or more domains, separated
by a comma. You can enable metrics monitoring on each domain name you add.
This field appears only if you select Web application under the New drop-down
list.

What
processes
should be
monitored?

Processes that you want to monitor.
This field has the following subfields:
• Windows: Enter the process name (ex. process.exe): A unique identifier for
the primary running instance of the Windows application.
• Windows: Secondary processes separated by a comma: A unique identifier
for the secondary running instance of the Windows application.
• Mac: Enter the process name (ex. process.dmg): A unique identifier for the
primary running instance of the macOS application.
• Mac: Secondary processes separated by a comma: A unique identifier for
the secondary or more running instance of the macOS application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1746


<!-- page 1747 -->
Field

Description

• Web Endpoint Connection: A comma-separated list of domains used for
measuring network latency. Example: company-name.zoom.us, companyname.outlook.com.

Note: Typically, you fill in this field for the applications you have
installed that connect to the cloud.
This field appears only if you select Installed application under the New dropdown list.
Enable
page-level
monitoring

Specific pages to monitor within the domain.
You can add a specific page to monitor after adding and saving the application
to monitored applications. In the Application management table, select
the added application to set up one or more pages. See Set up page-level
monitoring for more details.
This field appears only if you select Web application under the New drop-down
list.

Monitoring

Toggle switch to enable or disable monitoring for the application performance
and system compliance.
This field has the following options:
• Compliance: Enables reporting on whether this application is running on your
organization's devices.
• Metrics: Enables performance reporting for this application.
Move the monitoring toggle switch (

) to turn the reporting on or off.

Note: You can also enable monitoring for multiple applications
simultaneously. From the Application management page, use the bulk
check box to select multiple applications, and adjust your selection as
needed with the individual check boxes for each app.
This field appears only if you're editing an installed application.
This field doesn't appear when you're onboarding Application and Device
Health.
Advanced
monitoring

Option available for the Microsoft Configuration Manager (MCM) application.
Select the MCM app from the drop-down list to enable advanced monitoring.
This field appears only if you select Installed application under the New dropdown list.

Enable
usage
tracking
(optional):
SAM product

Option to add a Software Asset Management (SAM) product to enable tracking
of the usage and last access time.
When the SAM plugin (com.snc.samp) is installed, the SAM product field
changes into a drop-down list that references the samp_sw_product table. If you
can't find an application in the drop-down list, you can add it by selecting the +
New SAM product button.
This field appears only when you're editing a web application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1747


<!-- page 1748 -->
Field

Description

For more information, see Using DEX or SAM for application monitoring.
Edit web or installed application form
Using a custom form, you can edit an application to be monitored for compliance or performance
metrics.

Field

Description

Select an
application
service

Application service associated with the application added for monitoring.

What
domains
should be
monitored

Web address that is used to launch the application and access its features and
functions.

What
processes
should be
monitored?

Processes that you want to monitor.

This field appears only if you're editing a web application.

This field has the following subfields:
• Windows: Enter the process name (ex. process.exe): A unique identifier for
the primary running instance of the Windows application.
• Windows: Secondary processes separated by a comma: A unique identifier
for the secondary running instance of the Windows application.
• Mac: Enter the process name (ex. process.dmg): A unique identifier for the
primary running instance of the macOS application.
• Mac: Secondary processes separated by a comma: A unique identifier for
the secondary or more running instance of the macOS application.
• Web Endpoint Connection: A comma-separated list of domains used for
measuring network latency. Example: company-name.zoom.us, companyname.outlook.com.

Note: Typically, you fill in this field for the applications you have
installed that connect to the cloud.
This field appears only if you're editing an installed application. The primary
and secondary processes might be automatically populated for the selected
application.
Enable
page-level
monitoring

Specific pages to monitor within the domain.
You can add a specific page to monitor by selecting Configure. See Set up
page-level monitoring for more details.
This field appears only if you select a web application to edit.

Upload a
logo

Link to upload or edit the logo of an application.

Monitoring

Toggle switch to enable or disable monitoring for the application performance
and system compliance.
This field has the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1748


<!-- page 1749 -->
Field

Description

• Compliance: Enables reporting on whether this application is running on your
organization's devices.
• Metrics: Enables performance reporting for this application.
Move the monitoring toggle switch (

) to turn the reporting on or off.

Note: You can also enable monitoring for multiple applications
simultaneously. From the Application management page, use the bulk
check box to select multiple applications, and adjust your selection as
needed with the individual check boxes for each app.
This field appears only if you select an installed application to edit.
This field doesn't appear when you're onboarding Application and Device
Health.
Enable
usage
tracking
(optional):
SAM product

Option to add a Software Asset Management (SAM) product to enable tracking
of the usage and last access time.
When the SAM plugin (com.snc.samp) is installed, the SAM product field
changes into a drop-down list that references the samp_sw_product table. If you
can't find an application in the drop-down list, you can add it by selecting the +
New SAM product button.
This field appears only when you're editing a web application.
For more information, see Using DEX or SAM for application monitoring.

Metric rules page
The metric rules page shows information about a specific rule, including its name, CI type,
application name, alert severity, and alert status.
Metric rules — Fields and Descriptions
Field

Description

Name

Name of the metric rule.

Type

CI type, such as Saas/web, installed, or device, to which the metric rule is
applied.

Application

Application name to which the metric rule is applied.
If the CI type is Device, then the application name is marked as N/A.

Alert
severities

Level of urgency or importance assigned to the alert.

Status

Current state of the alert rule, indicating whether it's active or inactive.

Action

Alert action for the metric rule that triggers the remedial action for the alert.

Updated

Date and time when the metric rule is last updated.

To return to the metric rules page, see Using metric rules for Digital End-User Experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1749


<!-- page 1750 -->
Agent policies list
The agent policies list shows information about each agent policy including its name, status, cron
expressions, and updated time.
Agent policies fields and descriptions
Field

Description

Name

Name of the policy.

Hierarchy

Policy hierarchical state.
When the policy is part of a hierarchy, the values are Parent or Child. Otherwise,
the value is None.

Active

Option to indicate that the policy is in use.
The values are True or False.

Publish status Publish status of the policy.
The values are Draft, Ready to publish, Queued, and Published.
Interval(sec)

The frequency in seconds according to which the policy checks are executed.
This field applies only to checks with an empty cron expression value.

Cron
expressions

Expressions according to which the policy checks are executed.

Updated

Last time the policy was updated.

This field applies only to checks with an empty interval value.

Digital End-User Experience Remedial Actions
®

ServiceNow Digital End-User Experience (DEX) provides base system remedial actions to
resolve issues on DEX-monitored devices.
Remedial Actions
Remedial Action name

Supported OS

Description

Battery replacement catalog
request

Windows/macOS

Catalog request for battery
replacement to solve poor
battery performance due to
deteriorated battery. A catalog
request would be raised for
you based on your device and
battery details.

Clear application cache

Windows/macOS

Performing this action
removes the app cache for the
selected application on this
device. This helps the device
run faster and frees up storage
space. Supported applications
include Microsoft Teams
Classic (macOS), Google
Chrome (macOS), Zoom

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1750


<!-- page 1751 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

(macOS and Windows), Slack
(macOS), Outlook (Windows),
and Teams (Windows).

Note: To clear
application cache, you
need to have the admin
access to the device.
Clear browser cache

Windows/macOS

Clearing your browser cache
removes temporary data
stored on your laptop, such as
cookies and website files.

Note: To clear browser
cache, you need to have
the admin access to the
device.
End process

Windows/macOS

Performing this action on an
end user's device forcefully
stops a running process.

Execute Jamf policy

Windows/macOS

Performing this action
executes a Jamf policy with
the policy ID.

Restart service

Windows/macOS

Performing this action on a
end-user's laptop involves
restarting the service or
application running on their
device.

Note: To restart service,
you need to have the
admin access to the
device.
Windows disk cleanup for low
disk space

Windows

Performing Windows disk
clean up to solve slow
system performance due to
insufficient disk space. Files
such as temporary internet
files, recycle bin, thumbnails,
temporary files, etc would be
deleted to free up your disk
space.

Perform disk cleanup

Windows/macOS

Performing this action deletes
temporary internet, memory,
log, and cache files to free
up the hard drive space

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1751


<!-- page 1752 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

and optimize the device
performance.
Clear DNS cache

Windows/macOS

Performing this action on an
end-user's device will clear
the DNS cache.

Reset Google Chrome
browser settings

Windows/macOS

Performing this action resets
the Google Chrome browser
settings to default on all
devices.

Note: This action would
reset the configuration
established by default
by your organization's IT
department. This is not
the same as performing
a factory reset.
• Only the extensions
that are synced with
the user account are
restored.
• Preferences and
Secure preferences
files will be removed.
Clear Google Chrome
browsing data

Windows/macOS

Deleting Google Chrome
browsing data enhances its
speed, resolves page loading
issues, and safeguards the
user's privacy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1752


<!-- page 1753 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note:
• Clearing web data
will sign you out of
your Google account
and remove all saved
addresses, payment
methods, and auto-fill
data. To stay signed
in and keep this data,
do not clear your web
data.
• You need these
minimum permissions
on Windows to clear
browsing data.
◦ List folder / read
data
◦ Write attributes
◦ Delete sub-folders
and files
Configure device power
scheme

macOS

Performing this action
on the end-user's device
configures the power scheme
settings and optimizes
the performance, energy
efficiency and battery life of
the device.

Clear recycle bin

Windows/macOS

Performing this action on an
end-user's device will clear
the recycle bin on the device.

Note:
• To clear recycle bin,
you need to have the
admin access to the
device.
• For Windows devices,
only C: drive recycle
bin is targeted as part
of the remedial action.
Elevate temporary admin
access

Windows/macOS

Performing this action on the
end-user's device provides
temporary administrative
privileges for a period of time
to perform specific tasks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1753


<!-- page 1754 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

without compromising on
security.

Note:
• To elevate the
temporary
administrative
privileges, you need to
have the admin access
to the device.
• The task scheduler
must be enabled to get
the admin rights.
Remediate Zscaler
connectivity

Windows/macOS

Performing this action on
the end-user's device will fix
any connectivity issues with
Zscaler Private Access.

Note:
• Enable the Zscaler
Command Line
interface feature on
the device.
• It is applicable only
if version 4.4 and
later for Windows
and Zscaler Client
Connector version 4.3
and later for macOS is
installed on the device.
Restart Microsoft OneDrive

Windows/macOS

Performing this action on the
end-user's device will restart
OneDrive to resolve any sync
issues and update all recent
changes as long as you are
signed in to OneDrive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1754


<!-- page 1755 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note:
• For macOS users, you
need to stay logged in
on OneDrive in order
to restart OneDrive.
• For Windows users,
you need admin
access to restart
OneDrive if it is
installed in the user's
folder.
Repair corrupt Outlook files

Windows/macOS

Performing this action
on an end-user's device
detects and repairs both
OST and PST file types in
Microsoft Classic Outlook.
This helps in enhancing
Outlook performance and
synchronization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1755


<!-- page 1756 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note: OST/PST files
upto 2 GB size can
be fixed using the
SCANPST.exe and
beyond 2 GB, the
behaviour is as follows:
• 2-20 GB: The
performance
degrades, success
depends on the
corruption severity.
• 20-50 GB: Significantly
reduced effectiveness,
frequent failures are
reported.
• Over 50 GB: Very
low success rate,
tool struggles or fails
completely.
• In order to Fix outlook
data file Remedial
Action to work, you
need permissions for
the following folders
where the OST/PST
files reside.
◦ List folder / read
data
◦ Write attributes
◦ modify or delete
subfolders and files
Uninstall the application

Windows

• Performing this action on an
end-user's device uninstalls
the selected application
from the action library.
• Only applications installed
through .exe or .msi files
will be uninstalled. Core OS
and system applications do
not get uninstalled, even
if the action is executed
successfully.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1756


<!-- page 1757 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note: In order to
uninstall an application,
you need to have the
admin access to the
device.
Map Network Drive

Windows

Performing this action maps
a network drive using a
specified drive letter and
network path. This action
allows users to connect to
shared resources on the
network.

Note:
• The drive_letter
parameter specifies
the drive letter to
which the network
location will be
mapped, and the
network_path
parameter specifies
the path of the shared
network location that is
to be mapped.
• The network_path
should not require
authentication, or
it should be preauthenticated, for
this check to run
successfully.
Delete Network Drive

Windows

Restart Audio Services

Windows

Performing this action
removes a mapped network
drive using the drive letter.
This helps in cleaning up
unused or outdated network
connections.
Performing this action
restarts audio services
AudioEndpointBuilder and
Audiosrv to restore sound
and microphone functionality.
This fixes common playback
and recording issues on your
device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1757


<!-- page 1758 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Modify USB storage access:
Execute

Windows

Performing this action adjusts
the Execute permission,
which controls whether
programs or scripts can run
directly from a removable
USB storage device. Use this
action to prevent unauthorized
execution of files from USB
devices.

Note:
• This action is effective
only if removable USB
storage access is not
already controlled by
other mechanisms,
such as Group
Policies, third-party
endpoint protection
tools, or device control
software.
• In order to perform this
action, you need to
have the admin access
to the device.
• After you perform this
action, restart the
device for the access
changes to take effect.
Modify USB storage access:
Read

Windows

Performing this action adjusts
the Read permission, allowing
or blocking the ability to read
data from a Removable USB
storage device. Use this action
to restrict data exfiltration or
unauthorized data access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1758


<!-- page 1759 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note:
• This action is effective
only if removable USB
storage access is not
already controlled by
other mechanisms,
such as Group
Policies, third-party
endpoint protection
tools, or device control
software.
• In order to perform this
action, you need to
have the admin access
to the device.
• After you perform this
action, restart the
device for the access
changes to take effect.
Modify USB storage access:
Write

Windows

Performing this action adjusts
the Write permission, allowing
or blocking the ability to write
data to a Removable USB
storage device. Use this action
to prevent data leakage or
unauthorized file transfers to
USB devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1759


<!-- page 1760 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note:
• This action is effective
only if removable USB
storage access is not
already controlled by
other mechanisms,
such as Group
Policies, third-party
endpoint protection
tools, or device control
software.
• In order to perform this
action, you need to
have the admin access
to the device.
• After you perform this
action, restart the
device for the access
changes to take effect.
Restart Microsoft Outlook

Windows

Add a Registry Key

Windows

Performing this action restarts
Microsoft Outlook on the
user's device.
Performing this action adds
a registry key to this device
using a fully qualified path (for
example, HKCU\Control
Panel\TestColors
\WindowText. ), value
(for example,2222), and type
(for example, String, DWord).
Windows registry key stores
settings or configuration data
for the device Operating
system and Windows
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1760


<!-- page 1761 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Note:
• The following types are
supported:
◦ String – A nullterminated string. It
can be Unicode or
ANSI, depending on
the function used.
◦ ExpandString –
A null-terminated
string with
unexpanded
environment
variable references
(for example,
%PATH%).Use the
ExpandEnvironmentStrings
function to expand
these references.
◦ DWord – A 32-bit
number.
◦ QWord – A 64-bit
number. Binary –
Binary data in any
form.
◦ Binary – Binary data
in any form.
◦ MultiString – A
sequence of nullterminated strings,
terminated by
an empty string
(\0). Example:
String1\0String2\0String3\0LastString
\0\0. The final
terminator must
be included in the
length.
• To add a registry key
value, you need to
have the admin access
to the device.
Modify a registry key value

Windows

Performing this action updates
the registry key value using
a fully qualified path (for
example, HKCU\Control

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1761


<!-- page 1762 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Panel\TestColors
\WindowText. ), value (for
example, 2222), and type (for
example, String, DWord).

Note:
• The following types are
supported:
◦ String – A nullterminated string. It
can be Unicode or
ANSI, depending on
the function used.
◦ ExpandString –
A null-terminated
string with
unexpanded
environment
variable references
(for example,
%PATH%).Use the
ExpandEnvironmentStrings
function to expand
these references.
◦ DWord – A 32-bit
number.
◦ QWord – A 64-bit
number. Binary –
Binary data in any
form.
◦ Binary – Binary data
in any form.
◦ MultiString – A
sequence of nullterminated strings,
terminated by
an empty string
(\0). Example:
String1\0String2\0String3\0LastString
\0\0. The final
terminator must
be included in the
length.
• To modify a registry
key value, you need to
have the admin access
to the device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1762


<!-- page 1763 -->
Remedial Actions (continued)
Remedial Action name

Supported OS

Description

Delete a file

Windows

Performing this action will
permanently delete the
entered file (full file name or
absolute file path) from the
user’s device. Proceed with
caution when deleting critical
system files.

Note: Only one file can
be entered at a time. The
file name must include
a valid extension (for
example, .log, .txt).
Modify Device Battery Power
Plan

Windows

Performing this action on the
end-user’s device will adjust
device power plan settings
using PowerShell scripts to
optimize performance, energy
efficiency, and battery life.

Metrics analyzer form
DEX Metrics analyzer provides you with an ability to look up metrics collected for specific
devices and applications.

Field

Description

Device or
application dropdown menu

Drop-down list to select a device or application.

Explore

List of available metrics.

Metrics list

Metrics available for a specific application or device.
• Web application metrics
• Installed application metrics
• Device metrics
This list appears only for devices.

Pages

Names of specific Web app pages set up for monitoring.
This field appears only for a Web application.

Location

List of locations where the application is used.
This field appears only for an application.

OS

Operating system that manages and controls the device hardware and
enables the execution of applications, such as Windows or macOS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1763


<!-- page 1764 -->
Field

Description

This field appears only for an application.
Date range

List of time period options.
• Last 2 hours
• Last 8 hours
• Last 24 hours
• Last 7 days
• Last 30 days
This option is only available for an application.
• Last year
This option is only available or an application.
• Custom date range

Metrics monitored by DEX
Find out what endpoint performance and compliance metrics are monitored by DEX, as well as
the frequency of data collection and the related check definitions and policies.

macOS metrics

Metric Name

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

Key

Unit

Application
version

appVersion

N/A

os.mac.checkapp-version

Gets the version of
the application.

CPU Usage

cpu_usage

%

os.mac.check- os.mac.check- 5
app-cpuappusage
historical

Checks the CPU
usage of the
application.

Crashes

crashes

count os.mac.checkapp-crashes

Fetches number
of the application
crashes and crash
details.

Freezes

freezes

count os.mac.checkapp-freezes

Gets umber of the
applications freezes.

IO Usage
(Read)

io_usage_read Bps

os.mac.check- os.mac.check- 5
app-ioappusage-read
historical

Checks the Read
IO usage of the
application.

IO Usage
(Write)

io_usage_writeBps

os.mac.check- os.mac.check- 5
app-ioappusage-write historical

Checks the Write
IO usage of the
application.

Application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1764


<!-- page 1765 -->
Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

Metric Name

Key

Unit

Is Installed

is_installed

N/A

Is Running

is_running

Booleanos.mac.check- os.mac.check- 5
app-isapprunning
historical

Last access
time

last_access_time
msec os.mac.check- os.mac.check- 1,440 Gets the last time
app-lastsystemthat the application
access-time metricswas running.
latest
Note: Data is
available only
for the past 7
days.

os.mac.checkapp-isinstalled

Checks whether
the application is
installed.
Checks whether
the application is
running.

Last updated last_updated N/A

os.mac.checkapp-lastupdated

Fetches the
time that the last
application update
was installed.

Listening
ports

listening_portsN/A

os.mac.checkapplisteningports

Gets the port
numbers that are
open and listening
for this app.

Zscaler
service
status

zscaler_service_status
Booleanos.mac.check- os.mac.check- 5
app-zscaler- appservicehistorical
status

Fetches the Zscaler
service status
information for ZPA,
ZIA, and ZDX, with
the type parameter
set to latest.
Additionally, returns
whether the ZPA
service status is
connected for the
type set to historical.

Network
Latency

network_latency
msec os.mac.check- os.mac.check- 1,440 Gets the application
app-domain- systemdomain network
networkmetricslatency.
latency
latest

Uptime

uptime

msec os.mac.check- os.mac.check- 5
app-uptime
apphistorical

Checks the
application uptime.

Device
Battery
Charge
Percentage

battery_charge_percentage
%
os.mac.check- os.mac.check- 5
systemsystembatterymetricshistorical

Gets the device
battery charge
percentage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1765


<!-- page 1766 -->
Metric Name

Key

Unit

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

chargepercentage
Battery
Details

battery_detailsN/A

os.mac.check- os.mac.check- 1,440 Gets the device
systemsystembattery details.
batterymetricsdetails
latest

Battery
utilization

battery_status N/A

os.mac.check- os.mac.check- 5
systemsystembatterymetricsstatus
historical

Shows the percent
of battery that is
available on the
device.

Clear cache

clear_app_cache
N/A

os.mac.actionclear-appcache

Deletes the
path passed as
parameter for the
check def.

CPU Details

cpu_details

N/A

os.mac.check- os.mac.check- 1,440 Gets the device CPU
system-cpu- systemmodel, processors,
details
metricsand architecture.
latest

CPU Usage

cpu_usage

%

os.mac.check- os.mac.check- 5
system-cpu- appusage
historical

Checks the CPU
usage.

Device
Crashes

crashes

count os.mac.check- os.mac.check- 5
systemsystemcrashes
metricshistorical

Gets the device
crashes details.

Device
Details

device_details N/A

os.mac.check- os.mac.check- 1,440 Gets the model,
systemsystemserial number, and a
devicemetricstype of the device.
details
latest

Device
Events

device_events N/A

os.mac.check- os.mac.check- 1,440
systemsystemdevicemetricsevents
latest

Disk Details

disk_details

os.mac.check- os.mac.check- 1,440 Gets the details of
system-disk- systemthe device disk.
details
metricslatest

Disk IO
Usage
(Read)

io_usage_read Bps

N/A

os.mac.check- os.mac.check- 5
system-disk- systemio-usagemetricsread
historical

Fetches the details
of events that
occurred on the
device during
the specified
time interval.
(last_boot,logged_in_users,softwares

Checks the disk
bytes read per
second.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1766


<!-- page 1767 -->
Unit

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

Metric Name

Key

Disk IO
Usage
(Write)

io_usage_writeBps

os.mac.check- os.mac.check- 5
system-disk- systemio-usagemetricswrite
historical

Checks the disk
bytes written per
second.

Disk Usage

disk_usage

os.mac.check- os.mac.check- 5
system-disk- systemusage
metricshistorical

Gets the disk used
space percentage.

%

Energy
energy_consumption
mWh os.mac.checkConsumption
systemenergyconsumption

Gets energy
consumed by
the device in the
following 5 mins.

Execute
Jamf policy

policy_id

Executes the Jamf
policy on the enduser device.

Firewall
enabled

firewall_enabled
N/A

os.mac.check- os.mac.check- 1,440 Indicates whether
systemsystemthe OS firewall is
firewallmetricsenabled and active.
enabled
latest

Get all
services

services

N/A

os.mac.checkservicesdata

Retrieves the
services in the
devices, included
with the category of
user and service.

Incoming
network
bytes

incoming_bytes
Bps

os.mac.checksystemnet-bytesincoming

Counts the network
bytes incoming
across all network
devices.

Last access
time

last_access_time
msec os.mac.checksystem-lastaccess-time

Fetches the last time
that the device was
accessed.

N/A

os.mac.actionexecutejamf-policy

Note: Works
with the
display on or
off.
Logged-in
Users

logged_in

N/A

os.mac.check- os.mac.check- 1,440 Fetches the details
systemsystemof the logged-in
logged-inmetricsusers.
users
latest

Network
Connectivity
Details

network_detailsN/A

os.mac.check- os.mac.check- 1,440 Gets the system
systemsystemnetwork details like
networkmetricsWi-Fi and Ethernet.
details
latest

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1767


<!-- page 1768 -->
Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

Metric Name

Key

Unit

OS Details

os_details

N/A

OS Setup
Details

os_setup_details
N/A

os.mac.check- os.mac.check- 1,440 Shows the
system-ossystemapproximate OS age
setup-details metricsfor the device.
latest

Outgoing
network
bytes

outgoing_bytesBps

os.mac.checksystemnet-bytesoutgoing

Pending
System
Updates

pending_updates
N/A

os.mac.check- os.mac.check- 1,440 Checks for available
systemsystempending updates on
pendingmetricsthe device.
updates
latest

os.mac.check- os.mac.check- 1,440
system-ossystemdetails
metricslatest

Shows the name,
version, platform,
architecture, and
install date for the
OS.

Counts the network
bytes outgoing from
this device.

Power
power_consumption
mW
os.mac.checkConsumption
systempowerconsumption

Gets power
consumption for the
device.

RAM Usage

memory_usage%

os.mac.check- os.mac.check- 5
appappmemoryhistorical
usage

Checks the RAM
usage on the device.

RAM Usage

memory_usage%

os.mac.check- os.mac.check- 5
systemappmemoryhistorical
usage

Checks system
memory utilization.

Reboot
Details

reboot_details N/A

os.mac.check- os.mac.check- 1,440 Gets the reboot
systemsystemdetails for your
rebootmetricsdevice.
details
latest

Session
Details

tes

os.mac.check- os.mac.check- 1,440
systemsystemsessionmetricsdetails
latest

System
Compliance

system_compliance_details
%
os.mac.checksystemcompliancedetails

min

Shows the total
session time of the
logged-in users, in
minutes.
Retrieves the
system compliance
details.
Also, provides the
list of all configured
apps and metric
values that are
non-compliant,
and calculates a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1768


<!-- page 1769 -->
Metric Name

Key

Unit

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
min)

compliance rating
based on these
metrics.
System Time time

sec

Uptime

uptime

msec os.mac.checksystemuptime

Checks the time
passed since the
last boot.

VPN Details

vpn_details

Booleanos.mac.checksystem-vpndetails

Gets the VPN details
for the device.

Wi-Fi RSSI

wifi_rssi

mW

os.mac.check- os.mac.check- 5
system-wifi- systemrssi
metricshistorical

Gets the Wi-Fi
RSSI value for your
device.

wifi_transmit_rate
Mbps os.mac.check- os.mac.check- 5
system-wifi- systemtransmit-rate metricshistorical

Gets the Wi-Fi
transmit rate for the
device.

Wi-Fi
transmit rate

os.mac.checksystem-time

Checks the current
time of the system in
UTC.

Received Signal
Strength (RSSI)

Windows metrics

Metric Name

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

Key

Unit

Application
version

version

N/A

os.win.checkapp-version

Gets the application
version.

CPU Usage

cpu_usage

%

os.win.check- os.win.check- 5
app-cpuappusage
historical

Checks the
application CPU
usage.

Crashes

crashes

count os.win.check- os.win.check- 5
app-crashes apphistorical

Domain
Network
Details

domain_network_details
—
os.win.check- os.win.check- 10
app-domain- web-appnetworkdom-netdetails
historical

Application

Shows the number
of times the app
crashed.
Gets network
latency, packet
loss, and jitter for
the installed app
domain.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1769


<!-- page 1770 -->
Unit

Check
Definition
Name

Metric Name

Key

Domain
Network
Details

domain_network_details
msec os.win.checkweb-appdomainnetworkdetails

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

Gets network
latency, packet loss,
and jitter for the web
app domain.

Domain
source_details N/A
os.win.check- os.win.check- 30
Network
app-domain- app-domRoute Details domain_network_route_details
networknetworkroute-details latest

Gets the complete
network route
details for the
installed app
domain.

Domain
source_details msec os.win.checkNetwork
web-appdomain_network_route_details
Route Details
domainnetworkroute-details

Gets the complete
network route
details for the web
app domain.

Freezes

freezes

count os.win.checkapp-freezes

Shows the number
of the application
freezes.

Incoming
network
bytes

incoming_network_bytes
Bps
os.win.checkappincomingnetworkbytes

Gets incoming
network bytes of the
application for IPv4
and IPv6 networks.

IO Usage
(Read)

io_usage_read Bps

os.win.check- os.win.check- 5
app-ioappusage-read
historical

Checks the
application Read IO
usage.

IO Usage
(Write)

io_usage_writeBps

os.win.check- os.win.check- 5
app-ioappusage-write historical

Checks the
application Write IO
usage.

Is Installed

is_installed

Booleanos.win.checkapp-isinstalled

Checks whether
the application is
installed.

Is Running

is_running

Booleanos.win.check- os.win.check- 5
app-isapprunning
historical

Checks whether
the application is
running.

Last access
time

last_access_time
msec os.win.check- os.win.check- 5
app-lastappaccess-time historical

Gets the last time
that the application
was running.

Last updated last_updated sec

os.win.checkapp-lastupdated

Shows the time
the last application
update was
installed.

Listening
ports

os.win.checkapp-

Gets the port
numbers that are

listening_portsN/A

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1770


<!-- page 1771 -->
Metric Name

Key

Unit

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

listeningports

open and listening
for the application.

Network
Latency

network_latency
msec os.win.checkapp-domainnetworklatency

Gets the network
latency of
application domain.

Outgoing
network
bytes

outgoing_network_bytes
Bps
os.win.checkappoutgoingnetworkbytes

Gets outgoing
network bytes of the
application for IPv4
and IPv6 networks.

RAM Usage

memory_usage%

os.win.check- os.win.check- 5
appappmemoryhistorical
usage

Checks the
application RAM
usage.

SCCM

sccm_metrics N/A

os.win.checkapp-sccm

Fetches applicationspecific metrics
for Microsoft
Configuration
Manager (MCM).

Uptime

uptime

os.win.check- os.win.check- 5
app-uptime
apphistorical

Checks the
application uptime.

Zscaler
service
status

zscaler_service_status
Booleanos.win.check- os.win.check- 5
app-zscaler- appservicehistorical
status

Fetches the Zscaler
service status
information for ZPA,
ZIA, and ZDX, with
the type parameter
set to latest.

%

Additionally, returns
whether the ZPA
service status is
connected for the
type set to historical.
Device
Admin Users admin_users N/A

os.win.checksystemadmin-users

Gets local user
accounts with admin
privileges.

Antimalware
Details

antimalware_details
N/A

os.win.check- os.win.check- 1,440
systemsystemantimalware- metricsdetails
latest

Gets the details
of antimalware
software on the
computer.

Antivirus
enabled

antivirus_enabled
N/A

os.win.check- os.win.check- 1,440 Indicates whether
systemsystemantivirus is enabled
and active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1771


<!-- page 1772 -->
Metric Name

Key

Unit

Check
Definition
Name

Policy: Check
Instance

antivirusenabled

metricslatest

Policy:
Interval
Description
(in
mins)

Battery
Charge
Percentage

battery_charge_percentage
%
os.win.check- os.win.check- 1,440 Gets the battery
systemsystemcharge percentage
batterymetricson the device.
chargelatest
percentage

Battery
Details

battery_detailsN/A

os.win.check- os.win.check- 1,440
systemsystembatterymetricsdetails
latest

The percent of
the battery that is
available on the
device.

Bios Details

bios_details

os.win.checksystem-biosdetails

Shows the system
bios details.

Bitlocker
Details

bitlocker_details
N/A

os.win.check- os.win.check- 1,440
systemsystembitlockermetricsdetails
latest

Gets information
about the volumes
that BitLocker can
protect.

BSOD
(Count) &
Cause

bsod_details count os.win.check- os.win.check- 1,440
system-bsod systemmetricslatest

Provides the
count of the blue
screens of death
(BSOD) in the last
30 days, and the
corresponding
cause, id, level, and
time created.

CPU Details

cpu_details

Gets the CPU
name, architecture,
number of cores,
number of logical
processors, and
device id.

N/A

N/A

os.win.check- os.win.check- 1,440
system-cpu- systemdetails
metricslatest

CPU
cpu_performance_details
%
os.win.checkPerformance
system-cpuDetails
performancedetails

Gets the CPU
performance details
like user time.

CPU Usage

cpu_usage

Checks the CPU
usage.

Device
Crashes

device_crashescount os.win.check- os.win.check- 5
systemsystemcrashes
metricshistorical

Device
Details

device_details N/A

%

os.win.checksystem-cpuusage

Gets the details of
different crashes on
the device.

os.win.check- os.win.check- 1,440 Gets the device
systemsystemchassis type,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1772


<!-- page 1773 -->
Metric Name

Key

Unit

Check
Definition
Name

Policy: Check
Instance

devicedetails

metricslatest

Policy:
Interval
Description
(in
mins)

description, model,
and serial number.

Device
Events

device_events N/A

os.win.check- os.win.check- 1,440
systemsystemdevicemetricsevents
latest

Disk Details

disk_details

os.win.check- os.win.check- 1,440 Gets the total, free,
system-disk- systemand used space of
details
metricsall disks, in bytes.
latest

Disk IO
Usage
(Read)

io_usage_read Bps

os.win.check- os.win.check- 5
system-disk- systemio-usagemetricsread
historical

Gets the disk IO
read usage, in bytes
per second.

Disk IO
Usage
(Write)

io_usage_writeBps

os.win.check- os.win.check- 5
system-disk- systemio-usagemetricswrite
historical

Gets the disk IO
write usage, in bytes
per second.

Disk Usage

disk_usage

os.win.check- os.win.check- 5
system-disk- systemusage
metricshistorical

Gets the disk used
space percentage.

Energy
energy_consumption
mWh os.win.check- os.win.check- 5
Consumption
systemsystemenergymetricsconsumption historical

Gets the energy
consumption value
of the device, in
milliwatt per hour.

N/A

%

Fetches the details
of events that
occurred on the
device during
the specified
time interval.
(last_boot,logged_in_users)

Firewall
enabled

firewall_enabled
N/A

os.win.check- os.win.check- 1,440 Indicates whether
systemsystemthe OS firewall is
firewallmetricsenabled and active.
enabled
latest

Get all
services

services

os.win.checkservicesdata

Hard drive
status

hard_drive_status
N/A

os.win.check- os.win.check- 1,440 Gets the status of
system-hard- systemthe hard drives on
drive-status metricsthe device.
latest

Incoming
network
bytes

incoming_bytes
Bps

os.win.check- os.win.check- 1,440
systemsystemnet-bytesmetricsincoming
latest

N/A

Retrieves the
services in the
devices, included
with the category of
user and service.

Shows the count
of network bytes
incoming across all
network devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1773


<!-- page 1774 -->
Metric Name

Key

Unit

Last access
time

last_access_time
N/A

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

os.win.checksystem-lastaccess-time

Shows the last time
that the device was
accessed.

Note: Works
whether the
device is
locked or
unlocked.
Capturing of
these events
happens the
first time that
the check def
is run. Initially
there’s an
error message
because
there’s no data.
List
Executables

list_executables
N/A

os.win.checksystemexecutables

Logged-in
users

logged_in

os.win.check- os.win.check- 1,440 Gets the details of
systemsystemlogged-in users.
logged-inmetricsusers
latest

Memory
details

memory_details%

os.win.checksystemmemorydetails

Gets the system
memory details like
total, available, and
used.

Memory
modules

memory_modules
N/A

os.win.checksystemmemorymodules

Gets the memory
modules details on
the device.

Network
Adapter
Details

network_adapter_details
N/A
os.win.checksystemnetworkadapterdetails

Gets the network
adapter details for
the device.

Network
Connection
Profiles

network_connection_profiles
Booleanos.win.check- os.win.check- 30
systemsystemnetworkmetricsconnection- historical
profiles

Gets the network
connection profile
details for the
device.

N/A

Fetches all the
executables (*.exe)
present on the
device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1774


<!-- page 1775 -->
Unit

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

Metric Name

Key

Network
Connectivity
Details

network_detailsN/A

os.win.check- os.win.check- 1,440
systemsystemnetworkmetricsdetails
latest

Gets the complete
details for the
system network
details like Wi-Fi and
Ethernet.

OS Details

os_details

os.win.check- os.win.check- 1,440
system-ossystemdetails
metricslatest

Gets name,
version, platform,
architecture, and
install date for the
Windows OS.

OS Setup
Details

os_setup_details
N/A

os.win.check- os.win.check- 1,440 Gets the
system-ossystemapproximate OS age
setup-details metricsfor the device.
latest

Outgoing
network
bytes

outgoing_bytesBps

os.win.check- os.win.check- 1,440
systemsystemnet-bytesmetricsoutgoing
latest

Pending
System
Updates

pending_updates
N/A

os.win.check- os.win.check- 1,440 Provides a list of
systemsystempending updates on
pendingmetricsthe device.
updates
latest

Peripheral
device
details

peripheral_devices_details
N/A
os.win.check- os.win.check- 1,440
peripheralsystemdevicesmetricsdetails
latest

N/A

Shows the count
of network bytes
outgoing from this
device.

Gets the details of
peripheral devices
connected to the
device.

Power
power_consumption
mW
os.win.check- os.win.check- 5
Consumption
systemsystempowermetricsconsumption historical

Gets the power
consumption of the
device, in milliwatts.

Reboot
Details

reboot_details sec

Gets the reboot
duration and last
reboot timestamp of
the device.

System
Compliance

system_compliance_details
%
os.win.check- os.win.check- 1,440 Retrieves the
systemsystemsystem compliance
compliance- metricsdetails.
details
latest
Provides a list of all
configured apps and
metric values that
are non-compliant,
and calculates
compliance.

os.win.check- os.win.check- 1,440
systemsystemrebootmetricsdetails
latest

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1775


<!-- page 1776 -->
Metric Name

Check
Definition
Name

Policy: Check
Instance

Policy:
Interval
Description
(in
mins)

Key

Unit

System Time time

sec

Uptime

uptime

msec os.win.check- os.win.check- 5
systemappuptime
historical

User Profiles

user_profiles N/A

os.win.checksystem-time

Checks the current
time of the system in
UTC.
Checks the time
passed since the
last boot.

os.win.check- os.win.check- 1,440 Get the user profiles
system-user- systemon the device.
profiles
metricslatest

Wi-Fi receive wifi_receive_rate
Mbps os.win.check- os.win.check- 5
rate
system-wifi- systemreceive-rate metricshistorical

Gets the Wi-Fi
receive rate for the
device.

Wi-Fi signal
strength

wifi_signal_strength
Mbps os.win.check- os.win.check- 5
systemsystemwifi-signalmetricsstrength
historical

Gets the Wi-Fi signal
strength for the
device.

Wi-Fi
transmit rate

wifi_transmit_rate
Mbps os.win.check- os.win.check- 5
system-wifi- systemtransmit-rate metricshistorical

Gets the Wi-Fi
transmit rate for the
device.

Windows
Power Plan

power_plan

Windows
registry keys

windows_registry
N/A

Windows
Stability
Index

stability_index numberos.win.check- os.win.check- 1,440
systemsystemstabilitymetricsindex
latest

N/A

os.win.check- os.win.check- 1,440 Gets power plan for
systemsystemthe device.
power-plan
metricslatest
os.win.checksystemwindowsregistry

Gets Windows
registry data.

Provides a
numerical rating
that represents the
overall stability of
the system. (Value:
1–10).

Metrics monitored by DEX for Zoom
View the zoom metrics that appear in Summary and call quality metrics tabs.

Summary tab metrics
Metric name

Description

Call quality

The pie chart displays the proportion of
calls categorized as Good, Fair, Bad, Poor,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1776


<!-- page 1777 -->
Metric name

Description

or Unclassified, based on a quality scoring
formula using network metrics.
Call quality is determined by evaluating both
incoming and outgoing media channels
(audio, video, and screen share). Each channel
is assessed independently, and the worst
score among them is used as the overall call
quality.
The calculation uses the Mean Opinion Score
(MOS), which is using the key network metrics,
including latency, jitter, and packet loss. MOS
provides a numerical score that maps to a
quality rating based on standard ranges:
• Good (MOS ≥ 4.0 to ≤ 5.0): Clear audio and
video reception.
• Fair (MOS ≥ 3.0 to < 4.0): Mostly clear
reception with occasional drops in quality.
• Poor (MOS ≥ 2.0 to < 3.0): Loss of video
frames, reduced frame rate, and periodic
audio issues.
• Bad (MOS ≥ 1.0 to < 2.0): Consistent loss
of audio and video, with low resolution and
frame rate.
When you select a category in the pie chart,
the Details page opens and displays call
quality information filtered by the selected
category. For example, if you select Bad
meetings, the page shows details for Bad
meetings only.

Note: For field descriptions on the
Details page, see Zoom call quality
metrics on the Details page.
Call issues

The pie chart shows the distribution of
detected issues, labeled as Unstable video,
Call reconnection problems, Poor screenshare
quality, Unstable audio quality, and High CPU
usage.
When you select an issue in the pie chart,
the Details page opens which displays
calls affected by that issue. For example,
if you select High CPU Usage, the page
lists meetings where high CPU usage was
detected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1777


<!-- page 1778 -->
Metric name

Description

Note: For field descriptions on the
Details page, see Zoom call quality
metrics on the Details page.
Calls over time

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor within
the selected date range.

Jitter

The line graph represents the variation in
network packet delay during calls; higher jitter
can impact audio or video quality.

Latency

The line graph indicates the time delay
between sending and receiving audio or video
data in a call. Lower latency means more
responsive communication.

Packet loss

The line graph shows the percentage of data
packets lost during transmission; lower packet
loss results in better call quality and reliability.

Note: If no data is available for any channel, the call is marked as Unclassified.
Call quality metrics
The following call quality breakdown appears:

Metric name

Description

Audio quality

The pie chart displays the proportion of
calls categorized as Good, Fair, Bad, Poor, or
Unclassified (calls without audio on) based on
audio quality metrics.
When you select a category in the pie chart,
the Details page opens and displays calls with
the selected video quality. For example, if you
select Bad, the page lists the calls with bad
audio quality.

Video quality

The pie chart displays the proportion of
calls categorized as Good, Fair, Bad, Poor, or
Unclassified based on video quality metrics.
When you select a category in the pie chart,
the Details page opens and displays calls with
the selected video quality. For example, if you
select Bad, the page lists calls with Bad video
quality.

Screenshare quality

The pie chart displays the proportion of
calls categorized as Good, Fair, Bad, Poor,
or Unclassified based on the screen share
quality metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1778


<!-- page 1779 -->
Metric name

Description

When you select a category in the pie chart,
the Details page opens and displays calls
with the selected screen share quality. For
example, if you select Fair, the page lists calls
with Fair screen share quality.
Version

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based
on overall call quality for each application
version within the selected date range.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that version. For example, if you select Bad
under version v12311, the page lists calls with
Bad quality on that version.

Operating System

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based
on overall quality, grouped by operating
system, such as Windows, macOS, and
Android. It shows how call quality varies
across platforms.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that operating system. For example, if you
select Bad under Windows, the page lists calls
with Bad quality on Windows.

Location

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based
on overall call quality for each location within
the selected date range.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that location. For example, if you select Bad
under Location 2, the page lists details for Bad
calls from Location 2.

Connection Type

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based
on overall call quality for each connection type
(Wi-Fi, Ethernet, Unknown) within the selected
date range.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that connection type. For example, if you
select Fair under Wi-Fi, the page lists details
for Fair calls using Wi-Fi.

Device Type

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1779


<!-- page 1780 -->
Metric name

Description

on overall call quality for each device type
within the selected date range.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that device type. For example, if you select
Poor under Device type 3, the page lists
details for Poor calls on Device type 3.
Camera

The bar chart displays the number of calls
categorized as Good, Fair, Bad, or Poor based
on overall call quality, grouped by whether the
camera was on or off during the call.
When you select a bar, the Details page opens
and displays calls of the chosen quality for
that camera state. For example, if you select
Bad under Camera on, the page lists details
for Bad calls where the camera was on.

Screenshare

The bar chart displays the number of calls
categorized as Good, Fair, Bad, Poor, or
Unclassified based on overall call quality,
grouped by whether the screen share was on
or off.
When you select a bar, the Details page opens
and displays of the chosen quality for that
screen share state. For example, if you select
Poor under Screenshare on, the page lists
details for Poor calls where screen sharing
was active.

Note: For field descriptions on Details page, see Zoom call quality metrics on the Details
page.
Zoom call quality metrics on the Details page
View the granular call quality metrics for on the Details page.

Display name

Category

Meeting ID

Unique identifier for the meeting.

Call ID

Unique identifier for the call session.

Join time

Date and time when the participant joined the call.

Leave time

Date and time when the participant left the call.

Call issues

Detected issues during the call (for example, CPU).

Device type

Type of device used for the call (for example, Windows, macOS).

Health

Indicates the participant's zoom health. (for example, Good, Warning).

Overall quality

Overall call quality rating (Good, Fair, Bad, Poor).

Audio quality

Quality rating for audio during the call (Good, Fair, Bad, Poor).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1780


<!-- page 1781 -->
Display name

Category

Video quality

Quality rating for video during the call (Good, Fair, Bad, Poor).

Screenshare
quality

Quality rating of call while screen sharing (Good, Fair, Bad, Poor).

Connection type

Type of network used during the call (for example, Wi-Fi, Ethernet,
Cellular).

Average latency

Average latency measured during the call in milliseconds.

Average packet
loss

Average percentage of packet loss during the call.

Average jitter

Average jitter measured during the call in milliseconds.

Average bitrate

Average bitrate during the call in kilobits per second (Kbps).

Video resolution

Resolution of the video stream during the call (for example, 320×180).

Screenshare
resolution

Resolution of the screen share during the call (for example, 1728×1118).

Average frame rate Average frame rate for video during the call in frames per second (fps).
Zoom average
CPU usage

Average CPU usage by Zoom during the call, shown as a percentage.

Location

Geographic location of the participant (for example, Hyderabad (IN)).

Operating system

Operating system used during the call (for example, Windows, macOS).

Version

Application version used during the call (for example, 6.4.5.64357).

Microphone

Name and type of microphone device used during the call (for example,
MacBook Pro Microphone).

Speaker

Name and type of speaker device used during the call (for example,
MacBook Pro Speakers).

Camera

Indicates whether the camera was on or off during the call (true or false).

Screenshare

Indicates whether screen sharing was active during the call (true or false).

DEX Content Playbook reference
Reference topics provide additional information about policies and check definitions provided by
DEX Content Playbook.
DEX policies for macOS
Policies for macOS are guidelines and rules to promote that the application is used in a
consistent, secure, and conforming manner. DEX policies your organization to reduce the risk of
data breaches, improve data quality and accuracy, and optimize application performance and
availability.
For macOS systems, to retrieve the entire data, include the subsequent content to /private/etc/
sudoers.d/_servicenow.
Cmnd_Alias SN_ALLOWED
= /usr/bin/powermetrics, /usr/bin/mdls, /usr/bin/log, /
bin/kill, /usr/bin/defaults, /usr/local/bin/jamf, /bin/rm, /
bin/ls, /usr/bin/pgrep, /usr/bin/find, /usr/bin/pmset, /
usr/bin/open, /Library/Application\
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1781


<!-- page 1782 -->
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/app_freeze.sh, /Library/Application\
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/zscaler_zpa_reconnect.sh, /
Library/Application\
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/clear_google_chrome_browsing_data.sh, /
bin/sh /Library/Application\
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/services.sh, /bin/sh /Library/Application\
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/restart_service.sh
*, /Applications/Zscaler/Zscaler.app/Contents/PlugIns/zscli, /
Library/Application\
Support/servicenow/agent-client-collector/cache/acc-dex-modul
es/bin/scripts/sudo/elevate_temporary_admin.sh
_servicenow ALL=NOPASSWD: SETENV: /Library/Application\
Support/servicenow/agent-client-collector/cache/osquery/bin/osq
ueryi *, SN_ALLOWED
Defaults:_servicenow !requiretty
Defaults timestamp_timeout=0
Defaults log_allowed

Note: The historical data for an application or device is the information that is kept in the
MetricBase database for the past 7 days, while the latest data pertains to the most recent
information available.

Policies for Mac — Application
DEX provides the following policies for applications.

Policy
name

DEX
Mac
Apps
Metrics

Description

Collects the
application metrics
in the Mac device
and sends metric
data to Metric Base.

Check
instances

Frequency

os.mac.check- 5 mins
app-historical

Historical
Check instance parameters
or latest

Historical cpu_usage,
memory_usage,
uptime, io_usage_read,
io_usage_write,
is_running,
last_access_time,
crashes

Policies for Mac — Device
DEX provides the following policies for devices.

Policy name

Description

Check instances

Frequency

Historical
Check instance parameters
or latest

DEX Mac
Device
Metrics

Collects
macOS
device
metrics
and sends

os.mac.check-systemmetrics-latest

24 hours

Latest

uptime, logged_in,
firewall_enabled,
session_details,
disk_details,
os_details, cpu_details,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1782


<!-- page 1783 -->
Policy name

Description

Check instances

Frequency

Historical
Check instance parameters
or latest

the metric
data to the
ServiceNow
instance.

battery_details,
device_details,
network_details,
pending_updates,
device_events, cpu_usage,
memory_details,
os_setup_details,
last_access_time,
reboot_details

DEX Mac
Device
Metrics

Collects
os.mac.check-systemmacOS
metrics-historical
device
metrics and
sends the
metric data to
MetricBase.

5 mins

Historical disk_usage,
io_usage_write,
io_usage_read,
power_consumption,
cpu_usage,
memory_details,
uptime, crashes,
battery_charge_percentage,
wifi_transmit_rate, wifi_rssi

DEX Mac
Device
Metrics

Collects data
for running
macOS
processes
and sends
the data
to the
ServiceNow
instance.

24 hours

N/A

DEX Mac
Device
Metrics

Collects
macOS
device
metrics
and sends
the metric
data to the
ServiceNow
instance.

5
minutes

Historical N/A

DEX Mac
Device
Metrics

Collects
macOS
device
metrics
and sends
the metric
data to the
ServiceNow
instance.

24 Hours

Latest

5
minutes

Historical N/A

DEX Mac
Device
Metrics

Collects
macOS
device
metrics
and sends

os.mac.check-processdata

os.mac.check-syscompliance-historical

os.mac.check-syscompliance-latest

os.mac.check-energyconsum-historical

N/A

N/A

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1783


<!-- page 1784 -->
Policy name

Description

Historical
Check instance parameters
or latest

Check instances

Frequency

os.mac.check-systemmetrics-historical

30
minutes

Historical vpn_details

the metric
data to the
ServiceNow
instance.

Note:
If the
previous
check
runs for
more
than five
minutes,
the
current
check
gets
skipped.
DEX Mac
Device
Metrics

Collects
macOS
device
metrics
and sends
the metric
data to the
ServiceNow
instance.

DEX Get
online
macOS user
on change

Gets a
logged-in
user's data
on a macOS
device
whenever
there’s a
change.

os.mac.check-systemcustom-query-on-chan

60 secs

Latest

query,query_sys_id,
query_type

DEX Get
device
configuration
on change

Gets a
logged-in
user's device
configuration
whenever
there’s a
change.

os.all.check.internal.get- 60 secs
device-configu

Latest

N/A

Note: If you upgrade the Content Playbook plugin on an instance and encounter
unexpected policy update issues, see the Troubleshooting: Policy update issues post DEX
plugin upgrade [KB1586917]
article in the Now Support knowledge base.
DEX policies for Windows
Use policies for Windows are guidelines and rules to confirm that the application is used
consistently, securely, and in compliance. DEX policies help organizations to reduce the risk of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1784


<!-- page 1785 -->
data breaches, improve data quality and accuracy, and optimize application performance and
availability.
To fetch the complete playbook data for a Windows device, the Agent Client Collector (ACC)
must run as a local system account. For more details on how to set up the ACC service as a local
system account, see Run ACC as a local system account user.

Note: The historical data for an application or device is the information that is kept in the
MetricBase database for the past 7 days, while the latest data pertains to the most recent
information available.

Policies for Windows — Application
DEX provides the following policies for applications.

Policy
name

DEX
Windows
Apps
Metrics

DEX
Windows
Apps
Metrics

Description

Collects the
application
metrics in
the Windows
device and
sends the
metric data to
Metric Base.

Check
instance

Frequency

os.win.check- 5 mins
apphistorical

Collect
os.win.check- 24 hours
applicationapp-sccmspecific
latest
metrics for
the Microsoft
System Center
Configuration
Manager
app on
theWindows
device.

Historical
Check instance parameters*
or latest

Historical cpu_usage, memory_usage,
uptime, last_access_time,
crashes, io_usage_read,
io_usage_write, is_running,
,freezes,zscaler_service_status

Latest

N/A

Important: * DEX Windows Apps Metrics with the uptime check instance parameter
only runs with the Local System account.

Policies for Windows — Application Network Experience
Before configuring the following policies, make sure that the Agent Client Collector is version 4.2
or higher to display the network path for applications. Additionally, the DEX browser extension
plugin must be installed and should be version 2.5.0 or higher to fetch network metrics for web
applications.

Note: These policies have the following limitations:
• A tracert command is used to get the network path.
• ANE doesn't work for path in the domain URL. Example: <domain>/<path>
DEX provides the following policies for applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1785


<!-- page 1786 -->
Policy
name

Description

Check
instance

Frequency

Historical
Check instance parameters
or latest

DEX
Windows
Apps
Domain
Network
Monitoring
Metrics

Collects
os.win.check- 10 mins
Windows
app-dominstalled
networkapps
historical
network
monitoring
metrics like
latency,
packet loss,
and jitter
and sends
monitoring
data to
Metric Base
and the
®
ServiceNow
instance.

Historical domain_network_details

DEX
Windows
Apps
Domain
Network
Monitoring
Metrics

Collects
Windows
Web apps
network
monitoring
metrics like
latency,
packet loss,
and jitter
and sends
monitoring
data to
Metric Base
and the
ServiceNow
instance.

os.win.check- 10 mins
web-appdom-nethistorical

Historical domain_network_details

DEX
Windows
Apps
Domain
Network
Monitoring
Metrics

Collects
Windows
Web apps
network
monitoring
metrics like
latency,
packet loss,
and jitter
and sends
monitoring
data to
Metric Base
and the
ServiceNow
instance.

os.win.check- 30 mins
app-domnetworklatest

Latest

source_details,
domain_network_route_details

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1786


<!-- page 1787 -->
Policies for Windows — Device
DEX provides the following policies for devices.

Policy name

Description

DEX Windows Device Collects
Metrics
Windows
device metrics
and sends the
metric data to
the ServiceNow
instance.

Check
instance

Frequency

os.win.check- 24 hours
systemmetricslatest

Historical
or latest

Check instance
parameters*

Latest

uptime,
logged_in,
antivirus_enabled,
firewall_enabled,
disk_details,
device_details,
battery_details,
bsod_details,
cpu_details,
os_details,
power_plan,
stability_index,
pending_updates,
network_details,
bitlocker_details,
user_profiles,
antimalware_details,
hard_drive_status,
peripheral_devices_details,
cpu_usage,
memory_details,
device_events,
last_access_time,
os_setup_details,
reboot_details,
Add
bios_details,
network_connection_profiles,
network_adapter_details

Important: * DEX Windows Device Metrics with the following check instance
parameters runs only with a Local System account:
• energy_consumption
• bitlocker_details
• last_access_time
• pending_updates
• user_profiles
DEX Windows Device Collects
Metrics
Windows
device metrics
and sends the
metric data to
MetricBase.

os.win.check- 30 mins
systemmetricshistorical

Historical

network_connection_profiles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1787


<!-- page 1788 -->
Policy name

Description

Check
instance

Frequency

Historical
or latest

Check instance
parameters*

DEX Windows Device Collects
Metrics
Windows
device metrics
and sends the
metric data to
MetricBase.

os.win.check- 5 mins
systemmetricshistorical

Historical

disk_usage,
io_usage_write,
io_usage_read,
cpu_usage,
battery_charge_percentage,
energy_consumption,
memory_details,
uptime,
disk_details,
cpu_performance_details,
crashes,
power_consumption,
wifi_transmit_rate,
wifi_receive_rate,
wifi_signal_strength

DEX Windows Device Collects data
Metrics
for running
Windows
processes
and sends the
data to the
ServiceNow
instance.

os.win.check- 24 hours
processdata

N/A

N/A

DEX Windows Device Collects
Metrics
Windows
device metrics
and sends the
metric data to
the ServiceNow
instance.

os.win.check- 5 mins
syscompliancehistorical

Historical

N/A

DEX Windows Device Collects
Metrics
Windows
device metrics
and sends the
metric data to
the ServiceNow
instance.

os.win.check- 24 hours
syscompliancelatest

Latest

N/A

DEX Get online
Windows user on
change

Gets a loggedin user's data
on a Windows
device
whenever
there’s a
change.

os.win.check- 60 secs
systemcustomquery-onchan

Latest

query,query_sys_id,
query_type

DEX Get device
configuration on
change

Gets a logged- os.all.check.internal.get60 secs
in user's device deviceconfiguration
configu
whenever
there’s a
change.

Latest

N/A

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1788


<!-- page 1789 -->
Policy name

Description

Check
instance

Frequency

Historical
or latest

Check instance
parameters*

DEX Windows Device Collects all the
Metrics
executables
present on
all volumes
of a Windows
device.

os.win.check- 24 hours
systemexecutableslatest

Latest

config_file_read

DEX Windows Device Gets registry
Metrics
data on
Windows
device.

os.win.check- 24 hours
systemregistrylatest

Latest

config_file_read

Note: If you upgrade the DEX Content Playbook plugin on an instance and encounter
unexpected policy update issues, see the Troubleshooting: Policy update issues post DEX
plugin upgrade [KB1586917]
article in the Now Support knowledge base.
DEX check definitions for macOS
Check definitions for macOS are predetermined sets of rules and criteria that assess the
performance, security, and conformance of macOS devices. These checks can cover various
aspects such as CPU usage, memory usage, battery details, and firewall status.

Note: You can configure the check definitions and associated retrievable data. Some
of the listed check definitions might retrieve data that contains or is considered personal
information.

Check definitions — Application (Metrics)
DEX provides the following check definitions, available while the application is running, except
these listed below, which remain accessible even when the application isn’t running:
• os.mac.check-app-version
• os.mac.check-app-is-installed
• os.mac.check-app-last-access-time
• os.mac.check-app-last-updated
In the check definition parameters:
• appName = application name. For example, Webex.
• appSysId = sys_id of the application.
• primaryProcess = list of primary processes for the application separated by a pipe symbol ( | ).
The first process that exists on the endpoint device is given priority. For example: Webex.app
or Microsoft Teams.app | Microsoft Teams Classic.app.

Note: When determining priority based on process availability on an endpoint device,
follow this logic: If the primary process for the Teams application is Microsoft Teams.app
on one end-point device and it’s Microsoft Teams classic.app on another end-point
device, then the process that is present on the endpoint device first is given precedence.
• secondaryProcesses = list of secondary processes for the application separated by a pipe
symbol ( | ). For example: Cisco WebEx Start.app | webexmtaV2.app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1789


<!-- page 1790 -->
Check definition
Check definition parameters
name

os.mac.checkapp-cpu-usage

• --appName=<application
name>
• --primaryProcess=<primary
process name>

Description

Checks the amount of CPU resources being
used by the primary process and secondary
process of the application.
.

• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-memoryusage

• --appName=<application
name>
• --primaryProcess=<primary
process name>

Checks the amount of memory resources
being used by the primary process and
secondary process of the application.

• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-listeningports

• --appName=<application
name>
• --primaryProcess=<primary
process name>

Retrieves the port numbers that are open
and through which incoming network traffic
can reach the application.

• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-lastupdated

• --appName=<application
name>
• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>

Checks the time and date of the latest
application update installation.

Note: This check definition doesn’t
require the application to be in a
running state.

• --appSysId=<sys id of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1790


<!-- page 1791 -->
Check definition
Check definition parameters
name

Description

os.mac.checkapp-version

Retrieves the version number of the
application.

• --appName=<application
name>
• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>

os.mac.checkapp-is-installed

• --appName=<application
name>
• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>

Note:
• This check definition doesn't require
the application to be in a running
state.
• If an application doesn’t have a
version, the check definition returns
the string "unversioned" for that
application.
Checks if the application is installed or not
on the device.

Note: This check definition doesn’t
require the application to be in a
running state.

• --appSysId=<sys id of the
application>
os.mac.checkapp-is-running

• --appName=<application
name>

Checks whether the application is in a
running state or not.

• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-uptime

• --appName=<application
name>

Checks the uptime of the given application.

• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1791


<!-- page 1792 -->
Check definition
Check definition parameters
name

os.mac.checkapp-lastaccess-time

• --appName=<application
name>
• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>

os.mac.checkapp-io-usageread

• --appName=<application
name>
• --primaryProcess=<primary
process name>

Description

Checks the most recent time when the
application was executed or run.

Note:
• This check definition doesn’t require
the application to be in a running
state.
• If the application hasn’t been run by
the user within the last 7 days, the
last access time is empty.

Checks the Read I/O (Input/Output)
operations performed by the application's
primary and secondary processes.

• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-io-usagewrite

• --appName=<application
name>
• --primaryProcess=<primary
process name>

Checks the Write I/O (Input/Output)
operations performed by the application's
primary and secondary processes.

• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-domainnetworklatency

• --appName=<application
name>

Fetches network latency of the application
domain.

• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
• --domain=<domain of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1792


<!-- page 1793 -->
Check definition
Check definition parameters
name

Description

os.mac.checkapp-crashes

Fetches number of crashes and crash
details of the application.

• --appName=<application
name>
• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>

os.mac.checkapp-freezes

• --appName=<application
name>

Fetches number of app freezes in the last 5
minutes and freeze details of the application.

• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>
os.mac.checkapp-zscalerservice-status

• --appName=<application
name>

Retrieves the Zscaler service status
information.

• --primaryProcess=<primary
process name>
• --secondaryProcesses=<list
of secondary processes
separated by a pipe symbol>
• --appSysId=<sys id of the
application>

Check definitions — Device (Metrics)
DEX provides the following types of check definitions for device.

Check definition name

Description

os.mac.check-systemcpu-usage

Checks the CPU utilization.

os.mac.check-systemcpu-details

Retrieves the CPU name, number of physical and logical cores, and
architecture information.

os.mac.check-systemmemory-usage

Checks system memory utilization.

os.mac.check-systemlast-access-time

Checks the last time that the current device was accessed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1793


<!-- page 1794 -->
Check definition name

Description

Note: This check definition works on locked and unlocked
devices.
os.mac.check-systemuptime

Checks the amount of time elapsed since the system was last
booted.

os.mac.check-systemtime

Checks the current time in Coordinated Universal Time (UTC) using
UNIX timestamp.

os.mac.check-systemdevice-crashes

Retrieves details of different crashes on your device.

Note: This check fetches Kernel Panics present in the device
logs in the last five minutes.

os.mac.check-systemdevice-details

Retrieves the type, model, and serial number of the chassis.

os.mac.check-systemdevice-events

Retrieves the details of events that occurred on the device during the
specified time interval. Events for macOS include: Last boot, loggedin users, installed software, updated software, added users, and reset
passwords.

os.mac.check-systemdisk-details

Retrieves disk details such as total space, used space, and free
space in bytes.

os.mac.check-systemdisk-io-usage-read

Retrieves disk bytes read per second.

os.mac.check-systemdisk-io-usage-write

Retrieves disk bytes written per second.

os.mac.check-systemdisk-usage

Retrieves the disk used space as a percentage of the total space.

os.mac.check-systemos-details

Retrieves the name, version, platform, architecture, and installation
date of the operating system.

os.mac.check-systemnet-bytes-incoming

Retrieves the incoming network bytes per second across all network
devices.

os.mac.check-systemnet-bytes-outgoing

Retrieves the outgoing network bytes per second across all network
devices.

os.mac.check-systemlogged-in-users

Retrieves the detail of users currently logged in to the device.

os.mac.check-systemsession-details

Retrieves the session time of currently logged-in users in minutes.

os.mac.check-systemnetwork-details

Retrieves the network details, including Ethernet, Wi-Fi, and other
relevant information.

os.mac.check-systembattery-details

Retrieves battery-related data, including the remaining battery
percentage, the designed voltage, the estimated run time, and the
battery's maximum capacity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1794


<!-- page 1795 -->
Check definition name

Description

Note:
• This check definition doesn't apply to virtual machines (VMs)
or desktops because they don't have batteries.
• If current capacity is greater than designed capacity, the
battery is rounded off to 100%.
os.mac.check-systembattery-chargepercentage

Retrieves the charge percentage of batteries present on the device.

Note:
• This check definition doesn't apply to virtual machines (VMs)
or desktops because they don't have batteries.
• If current capacity is greater than designed capacity, the
battery is rounded off to 100%.

os.mac.check-systemfirewall-enabled

Checks if the operating system firewall is active and enabled.

os.mac.check-systempending-updates

Checks the status of pending software updates.

os.mac.check-systemadmin-users

Retrieves all user accounts with local administrative privileges.

os.mac.check-systemreboot-details

Retrieves the reboot details for the device.

os.mac.check-systemos-setup-details

Retrieves the approximate OS age for the device.

os.mac.check-systemcompliance-details

Retrieves the system’s compliance details. This includes the list of
all configured apps and metric values that are non-compliant, and
calculates a compliance rating based on that.

Note:
• This check definition provides the following details:
◦ Condition for app to be said as compliant: Every process
mentioned in primary process should be running.
◦ Condition for metric value to be said as compliant: Value
should be matching with the configured expected value.
• The score is then calculated using this formula: Score =
( Complaint Application + Compliant metric value) / (Total
Applications and metric value - Failed Ones) *100
os.mac.check-systemvpn-details

Get the VPN details for your device.

os.mac.check-systemenergy-consumption

Gets Energy consumed by Mac machine in coming 5 minutes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1795


<!-- page 1796 -->
Check definition name

Description

Note: It's important to consider the following:
• /usr/bin/powermetrics must be added to sudo Permissions.
• The check takes approximately five minutes to get completed
as it’s calculating energy consumed in the coming five
minutes
• This check definition doesn't work if agent is installed with
rosetta enabled on M1, M2, M3 machines.
os.mac.check-systempower-consumption

Gets Power consumption for mac device.

os.mac.check-systemcustom-query-onchange

Executes the custom query provided in the parameters. Returns
value only when changed.

os.all.check.internal.get- Gets the configurations of a device. For example: sudo configured,
device-configurationdebug on, agent user, and so on. Runs only if value changes.
on-change

Check definitions — Diagnostic Actions
DEX provides the following types of check definitions for Diagnostic actions.

Check
definition
name

Check definition
parameters

Description

os.mac.check- -Retrieves the Process IDs (PIDs) of both the parent
app-process- process_name=<process and all the child processes associated with the
ids
name>
application.
os.mac.check- None
process-cpu

Retrieves a list of all running processes along with
their CPU usage percentage, CPU time, Process ID
(PID), Parent Process ID (PPID), and name.

os.mac.check- None
processmemory

Retrieves a list of all running processes along with
their memory usage in kilobytes (KB), Process ID
(PID), Parent Process ID (PPID), and name.

os.mac.check- None
process-data

Retrieves the CPU usage, memory usage, and disk
usage of all currently running processes.

os.mac.check- None
process-disk

Retrieves a list of all running processes along with
their disk usage in Bytes, Process ID (PID), Parent
Process ID (PPID), and name.

os.mac.check- --url=<url>
traceroute
--max_hops = <default
value is 65>

Retrieves the IP address, domain name, and roundtrip time (RTT) for each network hop.

--timeout = <default
value is 5>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1796


<!-- page 1797 -->
Check
definition
name

Check definition
parameters

Description

os.mac.check- --url=<url>
ping-test

Sends a ping request to the provided URL and
returns the connectivity status, indicating whether
the URL is reachable or not.

os.mac.check- service_type =<Type
services-data of service(one of user,
system or all)

Retrieves the list of all services with PID, Service
Name, Status, Service Type.

Check definitions — Remedial Actions
DEX provides the following types of check definitions for Remedial actions.

Check
Check definition parameters
definition name

Description

os.mac.action- --pid=<process id>
kill-process
OR

Terminates a running process or multiple
processes specified by their Process ID (PID) or
executable (.app) file name.

-process_name=<executable
file name>

Note: The process ID
takes priority over the
application name.
os.mac.action- --service_name=<service
restart-service name>

Restarts logged user services that take a service
name as input to the system.

os.mac.action- --Policy ID - policy_id
execute-jamfpolicy

Execute the Jamf policy either with a policy ID
or with a predefined action. Predefined actions
are set by the DEX admins in dex_jamf_policy
table. The service desk agents are able to
select and run the predefined actions as they
might not have access to Jamf policy IDs. Jamf
policy has information about the application
name, package version information, action to
be performed (for example, install or uninstall),
information on enabled on self service, defined
in the Jamf server.

Note: Jamf client must be installed on the
device to execute the Jamf policy.
os.mac.action- auto_close = <True/False
clear-appwhether you want the
cache

Clears the application cache.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1797


<!-- page 1798 -->
Check
Check definition parameters
definition name

process to be closed before
clearing the cache>
process_name = <Process
name>
app_name = <Application
name>

Description

Note: Cache path is supported for Zoom,
Microsoft Outlook, and Microsoft Teams.
Enter cache path without the path to the
user. For example, if the cache is at path
C:\User\<UserName>\AppData\Roaming
\Zoom\data enter AppData\Roaming\Zoom
\data.

cache_path = <Path to the
cache folder>
os.mac.action- None
zscaler-zpareconnect

Resolves Zscaler connectivity issues.

os.mac.action- None
restart-onedrive

Restarts one drive on the end-user's machine.

os.mac.action- remove_web_data = <True/
clear-google- False whether you want to
chromeremove the web data>
browsing-data

Removes all the browsing data on Google
Chrome from all the Google Chrome profiles.

os.mac.action- None
purge-recyclebin

Purging Recycle Bin will clear all the files in the
recycle bin.

os.mac.action- None
reset-googlechromesettings

This action clears the settings and removes all
the installed Google Chrome extensions on all
the Google Chrome profiles.

os.mac.action- power_mode - Automatic,
toggle-power- High power, Low power.
mode

This action toggles through different power
modes in a user mac device.

os.mac.actionduration
elevatetemporaryuser_id = ID of the user
admin

Elevates temporary admin access to users for a
period of time to perform specific tasks without
compromising on security.

DEX check definitions for Windows
Check definitions for Windows are predetermined sets of rules and criteria that assess the
performance, security, and conformance of Windows devices. These checks can cover various
aspects such as CPU usage, memory usage, network tests, network bytes, and logged-in users.
To fetch the complete playbook data for a Windows device, the Agent Client Collector (ACC)
must run as a local system account. For more details on how to set up the ACC service as a local
system account, see Run ACC as a local system account user.

Note: You can configure the check definitions and associated retrievable data. Some
of the listed check definitions might retrieve data that contains or is considered personal
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1798


<!-- page 1799 -->
Check definitions — Application (Metrics)
DEX offers the following check definitions that are accessible solely when the application is
running, except for the os.win.check-app-crash-rate and os.win.check-app-last-access-time
check definitions, which are accessible even when the application isn't running. In the check
definition parameters:
• appName = application name. Example, Zoom.
• appSysId= sys_id of the application.
• primaryProcess = list of primary processes for the application separated by a pipe symbol (|).
The first process that exists on the endpoint device is given priority. Example 1: chrome.exe.
Example 2: teams.exe|msteams.exe.

Note: If the primary process for the Microsoft Teams application in Windows 10 is
teams.exe and in Windows 11 it's msteams.exe, then when determining priority based on
process availability on the endpoint device, the process that is present on the endpoint
device first is given precedence.
• secondaryProcesses = list of secondary processes for the application separated by a pipe
symbol (|). Example, cpthost.exe|cptservice.exe.

Check definition name

os.win.check-app-cpuusage

Check definition parameters

Description

• --appName=<application
name>

Checks the amount of CPU resources
being used by the primary process
and secondary process of the
application.

• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>
os.win.check-appmemory-usage

• --appName=<application
name>
• -primaryProcess=<primary
process name>

Checks the amount of memory being
used by the primary process and
secondary process of the application.

• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1799


<!-- page 1800 -->
Check definition name

os.win.check-app-lastaccess-time

Check definition parameters

• --appName=<application
name>
• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>

Description

Checks the most recent time when
the application was executed or run.

Note:
• This check definition doesn't
require the application to be in
a running state.
• If the application hasn't been
run within the last 7 days, the
last access time is empty.
• If the application's process
path changes within 7 days
(which can occur during app
updates), the last access time
is empty until you run the app
again.
• To modify the 7-day retention
policy, you can change the
registry path in the following
way:
◦ Registry Key:
"HKEY_LOCAL_MACHINE
\SYSTEM\CurrentControlSet
\Control\Session Manager
\BAM"
◦ Registry Name:
"UserSettingsLifetimeMs"
◦ Registry Type: REG_DWORD
(32-bit value)
◦ Registry Value: Duration in
milliseconds

os.win.check-app-lastupdated

• --appName=<application
name>

Checks the time and date of the latest
application update installation.

• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1800


<!-- page 1801 -->
Check definition name

os.win.check-appcrashes

Check definition parameters

Description

• --appName=<application
name>

Retrieves crash rate of the application.

• -primaryProcess=<primary
process name>

This check definition supports
applications that emit a Window Error
Reporting (WER) events (event id =
1000) on crashing.

• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>

Note: This check definition
doesn't require the application to
be running.

• --appSysId=<sys id of the
application>
os.win.check.app.freezes

• --appName=<application
name>
• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>

Retrieves freeze rate of the application
in the last 5 minutes.
This check definition supports
applications that emit a Window Error
Reporting (WER) events (event id =
1001 or 1002) on freezing.

Note: This check definition
doesn't require the application to
be running.

• --appSysId=<sys id of the
application>
os.win.check-appuptime

• --appName=<application
name>

Checks the uptime of the given
application.

• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>
os.win.check-appincoming-network-bytes

• --appName=<application
name>
• -primaryProcess=<primary
process name>

Retrieves the incoming network bytes
of an application for IPv4 and IPv6
networks.

• -secondaryProcesses=<list
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1801


<!-- page 1802 -->
Check definition name

Check definition parameters

Description

of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>
• sleep_time =<Duration of
time from now for which
you must calculate the
average incoming network
byte/sec>
os.win.check-appoutgoing-network-bytes

• --appName=<application
name>
• -primaryProcess=<primary
process name>

Retrieves the outgoing network bytes
of an application for IPv4 and IPv6
networks.

• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>
• sleep_time =<Duration of
time from now for which
you must calculate the
average incoming network
byte/sec>
os.win.check-appdomain-network-details

• --appName=<application
name>
• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>

Retrieves the network latency, packet
loss, and jitter for installed application
domain.

Note: The system uses the
Internet Control Message
Protocol (ICMP) to collect
network performance metrics,
such as latency, jitter, and packet
loss.

• --appSysId=<sys id of the
application>
• domain=<Domain of the
application>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1802


<!-- page 1803 -->
Check definition name

Check definition parameters

os.win.check-appdomain-network-routedetails

• --appName=<application
name>

Description

Retrieves the complete network route
details for application domain.

• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>
• domain=<Domain of the
application>

os.win.check-app-sccm

os.win.check-appzscaler-service-status

None

• --appName=<application
name>

Fetches application-specific metrics
for the App - Microsoft System Center
Configuration Manager.
Retrieves the Zscaler service status
information.

• -primaryProcess=<primary
process name>
• -secondaryProcesses=<list
of secondary processes
separated by a pipe
symbol>
• --appSysId=<sys id of the
application>

Check definitions — Device (Metrics)
DEX provides the following types of check definitions for the device.

Check definition name

Description

os.win.check-systemcpu-usage

Checks the current CPU utilization.

os.win.check-systemcpu-details

Retrieves the CPU ID, CPU name, number of physical and logical
cores, and architecture information.

os.win.check-systemmemory-usage

Checks the current system memory utilization.

os.win.check-systemlast-access-time

Checks the last time the current device was accessed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1803


<!-- page 1804 -->
Check definition name

Description

Note: This check definition works on locked and unlocked
devices. The first time this check definition runs, the events are
captured and an error message appears as there is no prior
data available.
os.win.check-systemuptime

Checks the time elapsed since the last boot of the system.

os.win.check-systemdisk-io-usage-read

Retrieves disk bytes read per second.

os.win.check-systemdisk-io-usage-write

Retrieves disk bytes written according to second.

os.win.check-systemenergy-consumption

Retrieves the energy consumption values for CPU, SoC, display, disk,
network, MBB, EMI, other, total, and loss of a Windows device in
milliwatt-hours.

Note: This check definition isn't compatible with virtual
machines that don't have energy sensors.
Unlike other check definitions that retrieve latest data, this
check definition retrieves the sum of last 5 minutes of data.
os.win.check-systemtime

Checks the current time in Coordinated Universal Time (UTC) using
UNIX timestamp.

os.win.check-systempower-plan

Retrieves the name of the active power plan.

os.win.check-systemos-details

Retrieves the name, version, platform, architecture, and installation
date of the operating system.

os.win.check-systemdevice-crashes

Retrieves details of different crashes on your device.

Note: This check definition supports BSOD that emits system
events with event ids = 41,1001.

os.win.check-systemdevice-events

Retrieves the details of events that occurred on the device during
the specified time interval. Events for Windows include: last boot and
logged-in users.

os.win.check-systemdisk-usage

Retrieves the disk used space as a percentage of the total space.

os.win.check-systembattery-details

Retrieves battery-related data, including the remaining battery
percentage, the designed voltage, the estimated run time, and the
battery's maximum capacity.

Note:
• This check definition doesn't apply to virtual machines (VMs)
or desktops because they don't have batteries.
• If current capacity is greater than designed capacity, the
battery is rounded off to 100%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1804


<!-- page 1805 -->
Check definition name

Description

os.win.check-systemnetwork-details

Retrieves the network details, including Ethernet, Wi-Fi, and other
relevant information.

os.win.check-systemlogged-in-users

Checks the login user ID of the users who are currently logged in to
the device.

os.win.check-systempower-consumption

Retrieves the power consumption of the device in milliwatt.

Note: This check definition is exclusively compatible with
physical machines and doesn't support virtual machines (VMs).

os.win.check-systemadmin-users

Retrieves all user accounts with local administrative privileges.

os.win.check-systembsod

Retrieves the count, message, ID, level, and time of Blue Screen of
Death (BSOD) occurrences.

Note: This check definition supports BSOD that emits system
events with event ids = 1001.
os.win.check-systemfirewall-enabled

Checks if the operating system firewall is active and enabled.

os.win.check-systemantimalware-details

Retrieves the details of the anti-malware software on the device.

os.win.check-systemreboot-details

Retrieves the reboot duration in seconds and the last reboot
timestamp (in UNIX epoch time).

Note: The displayed values might not accurately reflect cases
where system reboots were interrupted, such as during system
updates, power loss, or manual intervention.
os.win.check-systemos-setup-details

Retrieves the approximate OS age for the device.

os.win.check-systemRetrieves the network adapter details for the device.
network-adapter-details
os.win.check-systemnetwork-connectionprofiles

Retrieves the network connection profile details for the device.

Note: This check definition retrieves the network type, which
can be used to check the vpn status.

os.win.check-systemcompliance-details

Retrieves the system’s compliance details. This includes the list of
all configured apps and metric values that are non-compliant, and
calculates a compliance rating based on that.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1805


<!-- page 1806 -->
Check definition name

Description

Note:
• This check definition provides the following details:
◦ Condition for app to be said as compliant: Every process
mentioned in primary process should be running.
◦ Condition for metric value to be said as compliant: Value
should be matching with the configured expected value.
• The score is then calculated using this formula: Score =
( Complaint Application + Compliant metric value) / (Total
Applications and metric value - Failed Ones) *100
os.win.check-systembattery-chargepercentage

Retrieves the battery charge percentage on Windows device.

Note: If current capacity is greater than designed capacity, the
battery is rounded off to 100%.

os.win.check-systemwindows-registry

Retrieves the Windows registry data.

os.win.check-systemmemory-details

Retrieves the system memory details like and virtual memory details.

os.win.check-systembios-details

Retrieves the System Bios details.

os.win.check-systemexecutables

Fetches all the executables (*.exe) present on Windows machine.

os.win.check-systemcustom-query-onchange

Execute the custom query provided in the parameters. Runs only if
value changes.

os.all.check.internal.get- Gets the configurations of a device. Example: sudo configured,
device-configurationdebug on, agent user, and so on. Runs only if value changes.
on-change

Check definitions — Diagnostic Actions
DEX provides the following types of check definitions for Diagnostic actions.

Check
definition
name

Check definition
parameters

Description

Diagnostic action
os.win.check- -Retrieves the Process IDs (PIDs) of both the parent
appprocess_name=<process and all the child processes associated with the
process-ids name>
application.
os.win.check- None
process-cpu

Retrieves a list of all running processes along with
their CPU usage percentage, CPU time, Process ID
(PID), Parent Process ID (PPID), and name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1806


<!-- page 1807 -->
Check
definition
name

Check definition
parameters

Description

os.win.check- None
processmemory

Retrieves a list of all running processes along with
their memory usage in kilobytes (KB), Process ID
(PID), Parent Process ID (PPID), and name.

os.win.check- None
process-disk

Retrieves a list of all running processes along with
their disk usage in Bytes, Process ID (PID), Parent
Process ID (PPID), and name.

os.win.check- None
rssi-value

Retrieves the Received Signal Strength Indicator
(RSSI) value for the currently connected WiFi
interface.
RSSI indicates the signal strength between the
wireless access point (AP) and the device, with
higher RSSI values indicating stronger signal
strength.

Note: This check definition can't be applied to
a virtual machine.
os.win.check- service_type =<Type
servicesof service(one of user,
data
system or all)

Retrieves the list of all services with PID, Service
Name, Service Display Name, Status, Service Type.

Check definitions — Remedial Actions
DEX provides the following types of check definitions for Remedial actions.

Check
definition
name

Check definition parameters

os.win.action- --pid=<process id>
kill-process
OR
--process_name=<list of comma separated
executable file names>

Description

Terminates a running process or
multiple processes specified by
their Process ID (PID) or a list of
executable (.exe) file names.

Note: The process ID takes priority
over the application name.
os.win.action- --service_name=<service name>
restartservice

Restarts logged user services
that take a service name as input
to the system.

os.win.action- None
flush-dnscache

Flushes DNS cache on a
Windows device.

os.win.action- --auto_close = <true/false>
clearbrowsercache

Clears cache of the supported
browsers such as Google
Chrome,Mozilla Firefox, and
Microsoft Edge.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1807


<!-- page 1808 -->
Check
definition
name

Check definition parameters

Description

Note: When auto-close is enabled,

Note: Before executing

while clearing the browser cache, the
browser is closed and vice versa.

this check definition, save
your browser work.

--browsers = <List of comma separated
browsers>
os.win.action- auto_close = <True/False whether you want
clear-appthe process to be closed before clearing the
cache
cache>

Clears the application cache.

process_name = <Process name>
app_name = <Application name>
cache_path = <Path to the cache folder>

Note: The cache path is supported
for Zoom, Microsoft Outlook, and
Microsoft Teams. Cache path should be
entered without the path to the user. For
example, if the cache is at path C:\User
\<UserName>\AppData\Roaming\Zoom
\data enter AppData\Roaming\Zoom
\data.
os.win.action- action: <MAP/DELETE>
network-drive
drive_letter
network_path

Maps or deletes a network drive
depending on the action input
parameter, which supports the
following values:
• MAP – to map a network drive
• DELETE – to remove a mapped
network drive

os.win.action- process_name = <Process name>
restartapp_name = <Application name>
application
os.win.action- access - <deny_read/deny_write/
removabledeny_execute>
usb-storagevalue - <true/false>
access

Restarts the application if it is
running.

Controls access to removable
USB storage disks for read, write,
and execute access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1808


<!-- page 1809 -->
Check
definition
name

Check definition parameters

Description

Note:
• This action is effective
only if removable USB
storage access is not
already controlled by
other mechanisms,
such as Group Policies,
third-party endpoint
protection tools, or
device control software.
• After you run the check,
restart the device for the
access changes to take
effect.
os.win.action- app_name = <application name>
uninstallapplication

Uninstall an application.

os.win.action- None
zscaler-zpareconnect

Resolves Zscaler connectivity
issues.

os.win.action- None
restart-onedrive

Restarts OneDrive on the enduser's machine.

os.win.action- None
disk-cleanup

Clears unwanted files or cache
using Windows disk cleanup:
• Internet cache files
• System error memory dump
files
• System error mini-dump files
• Temporary files
• Windows error reporting

os.win.actionregistry_path = <Absolute Windows registry
windowskey path> (Complete path of the registry key
registryto be added)
action
registry_data = <Data to be added or
modified in a given registry key>

Allows the user to create a
new Windows registry key or
modify an existing one. Users
can add new keys, or update the
data and value type of existing
registry entries as needed.

Registry_type = <Type of the registry key
data> (One of the default provided options)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1809


<!-- page 1810 -->
Check
definition
name

Check definition parameters

os.win.action- file_name_or_path = <File name or path>
delete-file

Description

Permanently delete the entered
file. Entered file should have a
valid type extension.

os.win.action- remove_web_data = <True/False whether you Removes all the browsing data
clear-google- want to remove the web data>
on Google chrome from all the
chromeGoogle chrome profiles.
browsingdata
os.win.action- None
purgerecycle-bin

Purging Recycle Bin will clear all
the files in the recycle bin.

os.win.action- None
reset-googlechromesettings

Clears the settings and removes
all the installed Google chrome
extensions on all the google
chrome profiles.

os.win.action- power_mode - Balanced, High performance,
togglePower saver
power-plan

Toggle between different power
plans.

os.win.actionduration
elevatetemporaryuser_id = ID of the user
admin

Elevates temporary admin
access to users for a period
of time to perform specific
tasks without compromising on
security.

os.win.action- None
fix-classicoutlook-datafiles

Fixes OST / PST data files using
SCANPST.EXE in Classic outlook

DEX Desktop Assistant reference
Reference topics provide additional information about forms and dashboard that you use to
configure and administer Desktop Assistant.
Desktop Assistant usage metrics
Usage metrics dashboard enables you to monitor the connection status of your device, user
login status, application version, and the number of incidents created using the Desktop
Assistant application, ensuring smooth communication with the ServiceNow instance.
Desktop Assistant usage metrics dashboard
Cards

Connection Status

Description

Shows whether the device is
connected to a ServiceNow
instance.

Source table

DEX Desktop Assistant
[sn_dex_desktop_exp]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1810


<!-- page 1811 -->
Desktop Assistant usage metrics dashboard (continued)
Cards

Description

Source table

Note: If a user remains
inactive for 6 hours, their
connection status is
considered as "down",
even if they're still
logged in but not active.
This information helps you
troubleshoot connectivity
issues and make sure that the
device is able to access the
resources it needs.
Logged in

Indicates whether a user is
logged in to the device or not.
The login status of a user is
updated when they either log
in or log out.

DEX Desktop Assistant
[sn_dex_desktop_exp]

This information helps you
determine whether the device
is in use or not and track user
activity over time.
Desktop Assistant Version in
use

DEX Desktop Assistant
Displays the current version of
Desktop Assistant running on [sn_dex_desktop_exp]
user devices.
This information can help you
confirm that the application
is up to date and identify
any potential compatibility
issues with the OS or other
applications.

To return to the usage metrics page or the administration page, where you can access usage
metrics, see View Desktop Assistant usage metrics or DEX Administration.
Components installed with Desktop Assistant
Several types of components are installed with activation of the Desktop Assistant
[sn_dex_desktop] plugin, including user roles and tables.

Roles installed
Role title [name]

Description

Contains roles

Desktop Assistant
administrator

Responsible for managing configurations and
resolving any issues that may arise within the
application.

sn_dex_desktop.user

[sn_dex_desktop.admin]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1811


<!-- page 1812 -->
Role title [name]

Description

Contains roles

Desktop Assistant user

Responsible for using Desktop Assistant.
They do not have the ability to configure any
items within the application.

• sn_incident_read

[sn_dex_desktop.user]

• sn_change_read

Tables installed
Table

Description

Desktop Assistant

Registry of the application.

[sn_dex_desktop_app]

Administrators can go to this table to update the
title of Desktop Assistant.

Desktop Assistant Card

Records the card that is shown on Desktop
Assistant. This is a base table for all card types.

[sn_dex_desktop_app_card]
Desktop Assistant Section
[sn_dex_desktop_app_section]
Desktop Assistant Tab
[sn_dex_desktop_app_tab]
Desktop Assistant App to Tab Mapping
[sn_dex_desktop_app_to_tab_mapping]
Desktop Assistant Installation
[sn_dex_desktop_exp]
Hyperlink Card

Defines a section of the UI that acts as a
container for the cards.
Defines different tabs that are present on the UI
app, where each tab contains multiple sections.
Records a mapping between application and
tabs.
Records information about installation and
usage of the Desktop Assistant application.
Card type to define hyperlinks.

[sn_dex_desktop_hyperlink_card]
Records View Card

Card type to define what records to view.

[sn_dex_desktop_records_view_card]
Record Creator Card
[sn_dex_desktop_record_creator_card]
Section to Card Mapping

Card type to define record creator with intended
fields.
Specifies all the cards in the given section.

[sn_dex_desktop_section_to_card_mapping]
Tab to Section Mapping
[sn_dex_desktop_tab_to_section_mapping]

Specifies all the sections with in a page in a tab
content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1812


<!-- page 1813 -->
Application Registries form
The Application Registries form presents elaborate data on the form's fields and their
corresponding descriptions.
You must have the Desktop Assistant administrator [sn_dex_desktop.admin] role to access the
form.
Application registries form fields and description
Field

Description

Name

Name of the application.

Client ID

Unique identifier for your application that is issued by the service
provider.

Client Secret

Secret key that is used to authenticate your application with the
service provider's API.

Redirect URL

URIs that the service provider should redirect the user to after
authentication is complete. This is where your application
receives the authorization code or access token.

Logo URL

URL of your application's logo image.

Public Client

Option to indicate whether the application is publicly accessible.
Examples of public clients include mobile apps, web applications,
and JavaScript-based applications.

Comments

Additional context or information about a particular request or
response.

Application

Client application that is requesting authorization to access a
protected resource or service on behalf of a user.

Accessible from

IP addresses or domains that are authorized to access your
OAuth client.
When you register your OAuth client with a service provider, you
may be required to provide a list of IP addresses or domains that
are allowed to make requests to the service provider's API on
behalf of your client.

Active

Status of an access token.
When you grant your application permission to access your
resources using OAuth, the service provider issues an access
token that your application uses to make API requests.

Refresh Token Lifespan

The duration of a user's session before requiring reauthentication
in your application.

Access Token Lifespan

Refers to the period of time during which an access token is
considered valid for use by an application.

Default Grant type

Refers to the default method used by an OAuth 2.0 authorization
server to grant access tokens to client applications.

To return to the oauth details page, see Configure Open Authorization details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1813


<!-- page 1814 -->
API parameters to customize Desktop Assistant notifications
Use these parameters in the API to customize Desktop Assistant notifications.

Parameter

Description

Notification message

The notification message that you would like to
send.

Notification title

Title of the notification.

Recipient list

The list of users who can receive the
notification.

Referrer id

The corresponding sys_id of the referred table
selected.

Referrer table

Type of record on which the notification should
be triggered.

Source

The application from which the notification is
triggered.

Note:
• Desktop Assistant supports only Major
Incident Management and Proactive
Engagement sources in the base
system.
• Notifications for new sources are sent
successfully only when the source
is added as a choice value in the
Notification source column of the
sn_dex_desktop_assistant_notification
table. This enables Desktop Assistant
to track the new source.

The following example illustrates the API parameters to customize Desktop Assistant
notifications.
var notificationObj = {
notification_message: "Notification Message",
notification_title: "DA MIM Notification",
recipient_list: "Receiving sys_user sysid",
referrer_id: "referrer record sys_id",
referrer_table: "incident",
source: "MIM"
};
var notifyUtils = new
sn_dex_desktop.DesktopAppNotificationUtils();
notifyUtils.sendDANotification(notificationObj);
Variables to customize a theme for Desktop Assistant
You can modify specific CSS variables to customize themes for Desktop Assistant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1814


<!-- page 1815 -->
Banner color
Variable

Description

Order

brand-primary-darkest

The darkest shade of the
brand's primary color.

1

brand-primary-darker

Slightly lighter shade than the
darkest shade of the brand's
primary color.

2

brand-primary

Primary brand color used in
the UI.

3

brand-primary-lighter

Lighter shade than the
primary brand color.

4

You can apply a gradient to the banner by using the specified colors in the specified order.
Layout and typography variables
Variable

Description

Default

background-secondary

Secondary background color
used for UI elements that are
not the main focus.

✅ffffff

background-primary

Primary background color
used for main focus areas on
the UI.

✅f6f6f8

font-size-base

Base font size used for UI text.

16px

font-weight-base

Base font weight used for UI
body text.

400

font-family-sans-serif

Default sans serif font family
used for UI text.

Lato

line-height-base

Default text line height for
spacing and readability.

1.4

font-size-h5

Font size for heading level 5.

16px or value of the $fontsize-base variable.

font-size-h4

Font size for heading level 4.

18px
This value is calculated using
the ceil () function:
ceil(($font-sizebase * 1.125)).
For example, if the fontsize-base value is 16 px,
the font-size-h4 value
is 18 px: ceil((16px *
1.125))//18px.

font-size-h3

Font size for heading level 3.

20px
This value is calculated using
the ceil () function:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1815


<!-- page 1816 -->
Layout and typography variables (continued)
Variable

Description

Default

ceil(($font-sizebase * 1.25)).
font-size-xl

font-size-xs

font-size-small

Extra large font size typically
used for titles or large labels.

24px

Extra small font size typically
used for minor labels or
captions.

12px

Smaller font than the base
font, used for secondary text.

14px

This value is calculated using
the ceil () function:
ceil(($font-sizebase * 1.5)).

This value is calculated using
the ceil () function:
ceil(($font-sizebase * 0.75)).

This value is calculated using
the ceil () function:
ceil(($font-sizebase * 0.875)).

headings-font-family

Font family used for headings. Lato

headings-font-weight

Font weight used for
headings.

600

Variable

Description

Default

text-primary

Main color used for body text.

✅181A1F

text-color

General text color for the UI,
which is the same as textprimary.

$text-primary!
default

Color variables

Set a value for this variable
only if you have not already
defined the value for textprimary.

For example, $textprimary: ✅000000 !
default;

text-secondary

Color used for less prominent
UI text.

✅474D5A

text-tertiary

Color for tertiary text such as
help text and annotations.

✅656E81

text-muted

Muted text color that is
generally the same as texttertiary.

$text-tertiary!
default

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1816


<!-- page 1817 -->
Color variables (continued)
Variable

Description

Default

Set a value for this variable
only if you have not already
defined the value for texttertiary.

For example, $texttertiary: ✅999999 !
default;

color-grey

Neutral grey color used for
✅C6CBCB
elements such as borders and
backgrounds.

link-color

Color for hyperlinks.

✅3c59e7

Button and interactive element variables
Variable

Description

Default

btn-default-color

Default color for button text.

$brand-primary

btn-primary-color

Text color for primary buttons.

$text-white

btn-primary-bg

Background color for primary
buttons.

$brand-primary

brand-primary

Primary brand color used
across the UI.

✅4f52bd!default;

brand-primary-darker

A darker shade of the primary
brand color.

✅333579

brand-primary-darkest

Darkest shade of the primary
brand color.

✅1D1E46

brand-primary-lighter

A lighter shade of the primary
brand color.

✅8789D2

brand-primary-lightest

Lightest shade of the primary
brand color.

✅D1D2EE

Variable

Description

Default

brand-warning-darker

Darker shade of UI warning
state color.

✅AFA400

brand-success-darker

Darker shade of color used for ✅3B7F00
success states on the UI.

brand-danger-darker

Darker shade of color used for ✅CC293C
danger states on the UI.

alert-warning-bg

Background color used for
alerts and warnings.

$state-warning-bg

badge-color

Text color for badges on the
UI.

$text-white

Status and alert colors

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1817


<!-- page 1818 -->
Border and layout variables
Variable

Description

Default value

border-primary

Primary border color used for
main UI elements.

✅8790A1

border-secondary

Secondary border color
used for less prominent UI
elements.

✅ACB2BE

border-tertiary

Tertiary border color used for
background borders.

✅DADDE2

border-width-xs

Extra-small border width used
for UI elements like thin lines
or light dividers.

1px

border-style-solid

Sets the border style to solid.

solid

border-radius-base

Base border radius for
rounding corners of UI
elements.

4px

input-border

Border style for input fields.

$border-primary

Variable

Description

Default value

sp-space--xxl

Extra-extra-large spacing for
wide gaps or larger layouts.

32px

sp-space--xl

Extra-large spacing for major
sections.

24px

sp-space--lg

Large spacing for padding or
margins.

16px

sp-space--md

Medium or standard spacing
for most UI elements.

12px

sp-space--sm

Small spacing for compact
layouts.

8px

sp-space--xs

Extra-small spacing for
minimal gaps.

4px

sp-space--xxs

Extra-extra-small spacing for
minimal UI gaps.

2px

panel-heading-padding

Padding applied to the
heading section of a panel or
card.

$sp-space--xl

Spacing variables

Font weight and shadow and effects variables
Variable

Description

Default value

Font weight variable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1818


<!-- page 1819 -->
Font weight and shadow and effects variables (continued)
Variable

Description

Default value

font-weight-lg

Font weight used for large or
bold text.

600

sp-panel-box-shadow

Shadow styling for panel
components.

0 4px 8px 0 rgba(23,
40, 52, 0.08)

sp-box-shadow--md

Medium box shadow effects
for UI components.

This value is calculated using
the ceil () function:
ceil(($font-weightbase * 1.5)).

Shadow and effects variables

Resolve Desktop Assistant screen loading issue

Symptom
The DEX Desktop Assistant screen is empty or in a continuously loading state.

Cause
The DEX Desktop Assistant is not loading because the user is not a valid DEX user or the
settings.json file is corrupted.

Resolution
Procedure
1. Refresh the application.
2. Quit and relaunch the application.
3. Clear the Electron settings file at the following location:
◦ macOS: ~/Library/Application\ Support/desktop_assistant_app/
settings.json
◦ Windows: ~\AppData\Roaming\desktop_assistant_app\settings.json
4. Verify you're logged in with the sn_dex_desktop.user role.
5. Verify that the DEX Desktop Assistant application is installed on the instance to which you're
connecting.

Digital End-User Experience properties and settings
You can update the following Digital End-User Experience properties and settings to fit your
needs. You must have the admin role to update these settings and properties.

Property or setting

Value

[url]
sn_dex.administration_tab_doc_link

Type

Application

Description

string

Application and
Device Health

Link to the DEX
Administration card
documentation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1819


<!-- page 1820 -->
Property or setting

Value

Type

sn_dex.alert.correlation_rule.device.period
300
integer

Application

Description

Application and
Device Health

The period in seconds for
correlating similar DEX
device alerts based on the
message_key
Use zero to disable the
rule.

sn_dex.alert.delete_delay_period
15

integer

Application and
Device Health

The delay period in
minutes after which a
closed alert is deleted
For example, if an
alert associated with
dex_alert_metadata is
closed it isn’t deleted for
this period. The default is
15 min.

sn_dex.dex_user_ref_mapping
[JSON]

string

Application and
Device Health

Used to map the
sys_user.user_id column to
a custom_user_id column
when customized
Suffix and prefix help in
providing transformation
between the values.
For example,
{"prefix": "dex-blah",
"device_user_id_column":
“custom_user_id", "suffix":
"dex-blah”}

sn_dex.enable_dex_action_playbook
true
true |
false

Application and
Device Health

Enables the playbook use
when the correct plugins
are enabled
Use for hiding or showing
the playbook in the options
on the device details page.

sn_dex.extension.push_metrics_interval
300
integer

Application and
Device Health

The interval in seconds
that the browser extension
uses to push metrics to the
agent
The default is 5 min.

sn_dex.extension.session_timeout
240

integer

Application and
Device Health

The period in minutes
that an open session
is timed out using the
tab.lastAccessed time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1820


<!-- page 1821 -->
Property or setting

Value

Type

Application

Description

The default is 4 hours.
Entering 0 turns off this
feature.
sn_dex.network_performance_metrics_duration
7200
integer Application and
Device Health

Duration of network
performance metrics in
seconds

sn_dex.set_location

true

sn_dex_content.enable.content.log
false

true |
false

Application and
Device Health

If set to true, table
cmn_location is updated
by DEX when valid location
isn’t found and a new
location record is created

true |
false

DEX Content
Playbook

Enables or disables
storing of the check
execution details in the
table dex_content_log

Desktop
Assistant

Desktop Assistant electron
snapshot app version
number

sn_dex_desktop.app_snapshot_version
2.0.0
string

You can use this property
during app development.
sn_dex_desktop.app_version2.5.0

string

Desktop
Assistant

Desktop Assistant electron
app version number

sn_dex_desktop.enable_notification
false

string

Desktop
Assistant

Determines if the
notifications should be
sent

sn_dex_desktop.mac_min_version
2.6.0

string

Desktop
Assistant

Minimum compatible
version for desktop
application on macOS

sn_dex_desktop.sn_desktop_assistant.notification_time_to_live
7
string
Desktop
Assistant

Time to live value of
notifications to be sent to
the Desktop Assistant
This value is the number
of days for which the
notification is active and
any notification older than
this value is discarded.

Note: The Time-toLive (TTL) value can
be set to a maximum
of seven days.
sn_dex_desktop.va_portal_param
esc

string

Desktop
Assistant

Property that specifies the
default esc portal
If you use a portal other
than esc for ITSM Virtual
Agent, you can specify

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1821


<!-- page 1822 -->
Property or setting

Value

Type

Application

Description

that portal for integration
between Desktop Assistant
and ITSM Virtual Agent.
sn_dex_desktop.win_min_version
2.6.0

string

Desktop
Assistant

Minimum compatible
version for desktop
application on Windows

Custom reporting on DEX tables
You can use the following listed tables to generate a report for the required metrics on DEX.

Table

Name

Update frequency

Base functionality

Data

DEX Device
Metrics Daily
Average Metrics

dex_device_metrics_daily_avg
Daily

DEX Score

Daily averages
for Battery health,
CPU usage, Disk
read/sec, Disk
usage, memory
usage, energy
consumption,
IO usage read,
IO usage write,
memory usage,
Wifi RSSI, Wifi
receive rate, Wifi
transmit rate

Device ADH
Metric Each
Agent Weekly

dex_score_device_adh_metric_each_agent_weekly
Weekly
DEX Score

Weekly averages
for Battery health,
CPU usage, Disk
read/sec, Disk
usage, memory
usage, energy
consumption,
IO usage read,
IO usage write,
memory usage,
Wifi RSSI, Wifi
receive rate, Wifi
transmit rate

Device ADH
Metric Each
Agent Monthly

dex_score_device_adh_metric_each_agent_monthly
Monthly
DEX Score

Monthly
averages for
Battery health,
CPU usage, Disk
read/sec, Disk
usage, memory
usage, energy
consumption,
IO usage read,
IO usage write,
memory usage,
Wifi RSSI, Wifi

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1822


<!-- page 1823 -->
Table

Name

Update frequency

Base functionality

Data

receive rate, Wifi
transmit rate
DEX Installed
Application
Metrics Daily
Average Metrics

dex_installed_app_metrics_daily_avg
Daily
DEX Score

Installed
Application ADH
Metric Each
Agent Weekly

dex_score_installed_application_adh_metric_each_agent_weekly
Weekly
DEX Score
App crashes,
app usage, CPU
usage, memory
usage

Installed
Application ADH
Metric Each
Agent Monthly

dex_score_installed_application_adh_metric_each_agent_monthly
Monthly
DEX Score
App crashes,
app usage, CPU
usage, memory
usage

DEX Web
Application
Metrics Daily
Average Metrics

dex_web_app_metrics_daily_avg
Daily

Web Application
ADH Metric Each
Agent Weekly

dex_score_web_application_adh_metric_each_agent_weekly
Weekly
DEX Score
App usage,
DNS lookup
time, Failed
web requests,
Page load time,
response time

Web Application
ADH Metric Each
Agent Monthly

dex_score_web_application_adh_metric_each_agent_monthly
Monthly
DEX Score
App usage,
DNS lookup
time, Failed
web requests,
Page load time,
response time

Device System
Compliance

dex_ci_device_system_compliance
Daily

Insights - System
compliance

Compliance
rating %, noncompliant
application list,
non-compliant
policy metrics list

Device Battery
Health

dex_ci_device_battery_health
-

Insights - Battery
health

Battery health,
designed
capacity, full
charge capacity,
percentage
of designed
capacity, battery
condition, battery
serial number,
battery status,
chemistry, cycle
count, design

DEX Score

Daily averages
of installed
application
performance

App usage,
DNS lookup
time, Failed
web requests,
Page load time,
response time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1823


<!-- page 1824 -->
Table

Name

Update frequency

Base functionality

Data

voltage, installed
batteries
Device System
Time Report

dex_ci_device_system_time_report
-

Insights - System
time

Up time, boot
time, last reboot
time, device age

Remedial Action
Execution

sn_reacf_remedial_action_execution
DEX Application
and Device
Health

Remedial action
name, parent
record from
where the
action was
executed, action
execution record
or description,
target record or
device name on
which the action
is executed,
execution
state, and
origin or source
application of the
remedial action.

Proactive
Engagement

Experience
Issues

sn_pren_experience_issue
-

Proactive
Engagement

Experience
issue ID, issue
registry numbers,
state, reason
for end state,
fallback result,
origin or source
application.
Experience
issues have
the following
sources:
• DEX Selfservice for
employees
• Employee
self-service
from Desktop
Assistant
• Device actions
from DEX Selfservice
• Device actions
from Desktop
Assistant
• Self-service
using Now
Assist

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1824


