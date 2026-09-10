# Zurich IT Operations Management — ITOM AIOps / ITOM AIOps use case / Event Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2872–3021 of 4823 | Part 1 of 4

Sections: ITOM AIOps (p2872); ITOM AIOps use case (p2873); Event Management (p2874)

---

<!-- page 2872 -->
Plugins activated with ITOM Optimization
Applications installed with Now Assist for ITOM

ITOM AIOps
®

®

The ServiceNow ITOM AIOps product includes the ServiceNow Event Management and
®
ServiceNow Metric Intelligence applications, which help you track and maintain the health of
services in your organization.

Features of ITOM AIOps
Event Management
Event Management gathers alerts from infrastructure events captured by thirdparty monitoring tools. Event Management uses IT-related information gathered by
Discovery to map alerts to configuration items. Based on the collected information,
Event Management then provides dashboards showing a consolidated view of all
service-impact events.
Agent Client Collector
®

Use the ServiceNow Agent Client Collector application to monitor your service
availability, examine the health and performance of your environment, and ensure
that your infrastructure and its applications are running properly. You can also
proactively analyze your IT infrastructure to spot issues and prevent service
outages, using Metric Intelligence. Using advanced machine learning to analyze
information about your IT infrastructure, the Metric Intelligence application
automatically determines dynamic thresholds and identifies anomalies that may
indicate potential service outages.
Health Log Analytics
®

The ServiceNow Health Log Analytics application predicts IT issues before
they impact users. The application helps you solve problems faster by ingesting,
understanding, and correlating machine-generated log data in real time. It notices
any deviation from normal behavior when it happens and alerts you of possible
business-impacting issues. Health Log Analytics receives and processes logs
®
via the MID Server and sends events to the ServiceNow Event Management
application.
Service Observability
®

The ServiceNow Service Observability application helps operations teams triage
and manage incidents in a complex and distributed production system. It combines
external application performance monitoring (APM) systems' telemetry with related
data from the Configuration Management Database (CMDB) and displays both in a
single workflow in the Service Operations Workspace.
Synthetic monitoring
®

he ServiceNow Synthetic monitoring application empowers organizations to
proactively manage and enhance the performance and availability of critical
services. By simulating user transactions on API endpoints, this solution identifies
performance bottlenecks, helps ensure up-time, and optimizes user experiences.
Service Operations Workspace for ITOM
Service Operations Workspace for ITOM is a configurable workspace that provides
a unified experience for multiple IT Operations Management workflows. Service
Operations Workspace for ITOM enables you to manage the life cycle of alerts,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2872


<!-- page 2873 -->
including running actions to resolve alerts and identifying the underlying issue of an
alert.

ITOM AIOps licensing
®

The ServiceNow AI Platform uses a licensing method where your organization is billed for
using ITOM AIOps applications. ITOM AIOps and Health Log Analytics are available as separate
licenses. The ServiceNow Product Documentation doesn't provide information on prices,
packaging, or other details determined by your organization customer contract. For general
information about licensing and subscriptions, see ITOM/OT SU Licensing and subscriptions.

Using guided setup to implement IT Operations Management applications
IT Operations Management Guided Setup provides a sequence of tasks that help you configure
IT Operations Management applications on your ServiceNow instance. To open IT Operations
Management guided setup, navigate to Guided Setup > ITOM Guided Setup. For more
information about using the guided setup interface, see Using guided setup
.

Configure the MID Web Server extension
The MID Web Server is an extension that enables external clients to push metric data and events
to the MID Server. Configure the MID Web Server extension to enable ITOM Health features
(Event Management, Agent Client Collector, and Health Log Analytics).

ITOM AIOps use case
Modern organizations are turning to artificial intelligence (AI) technologies within IT operations
(AIOps) to tackle the escalating volumes and diversity of data. AIOps platforms offer solutions
for analyzing data, automating processes, and predicting issues preemptively, addressing the
growing complexity of IT environments.
Key features of the ITOM AIOps use case include:
• Ingesting events and metrics through base-system integrations with chosen monitoring
systems.
• Processing events and metrics to create alerts.
• Correlating alerts and conducting root cause analysis.
• Detecting anomalies within the system.
• Calculating the impact on application services.
• Utilizing the Service Operations workspace for operational management.
• Automating remediation actions based on alerts.
Application service maps are instrumental for Network Operations Center (NOC) operators
located at central hubs as they facilitate precise prediction of root cause alerts and correlation
of these alerts with discovered topology data. This correlation enables accurate prediction of
service impact, allowing for effective impact analysis to determine the effect on application
services, visualized within the application service map.

Products that add value to ITOM AIOps
In the context of ITOM AIOps, which focuses on maintaining the health and performance of IT
systems and infrastructure, there are several ServiceNow products that can add significant value:
Discovery
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2873


<!-- page 2874 -->
Discovery automatically identify and collect information about IT assets,
configurations, and relationships, providing organizations with a comprehensive
inventory to effectively manage and monitor their IT infrastructure.
Service Mapping
Service Mapping offers detailed information about application instance services
within the [cmdb_ci_service_discovered] table. This data helps establish
connections between infrastructure and application configuration items (CIs) stored
in the [cmdb_ci_appl] table, enhancing visibility into IT environments and facilitating
efficient management and monitoring processes.
Service Portfolio Management
Service Portfolio Management (SPM) offers the associated product model, while
Software Asset Management (SAM) and Hardware Asset Management (HAM)
provide life-cycle data for Technology Portfolio Management (TPM). Together, they
enable comprehensive management of IT assets, ensuring effective utilization,
compliance, and optimization throughout their life cycles.

Products that benefit from ITOM AIOps
Incident Management
Incident Management tools leverage downstream information from Event
Management to create incidents swiftly, ensuring timely resolution of issues.
Customer Service Management (CSM)
Customer Service Management (CSM) systems benefit from ITOM AIOps by
utilizing application service impact data to identify affected users promptly,
enhancing customer support efficiency and satisfaction.

Event Management
®

ServiceNow Event Management is a robust application that helps keep your IT systems healthy
by spotting problems quickly and fixing them. It collects events from different sources, figures
out what's causing the issues, and converts them into alerts. These alerts are then analyzed,
grouped, and acted upon to resolve issues and maintain system health.
Event Management seamlessly integrates with various monitoring tools via connectors and
listeners, enabling comprehensive data collection and correlation. Available as a separate
subscription from the main ServiceNow platform, Event Management allows organizations to
tailor their usage to specific needs, ensuring effective and efficient incident management without
unnecessary overhead.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2874


<!-- page 2875 -->
Get started

Explore

Configure

Use

Explore the various types
of alert grouping and
the rules for correlation

Setup Event Management

View alert information and
monitor service health

Integrations

Event processing

Reference

Learn how you can
integrate Event
Management with other
monitoring systems

Understand the analysis
and management of events

Get details about
domain separation in
Event Management

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Ask or answer questions in the Event Management community
• Contact ServiceNow Support
• Video: Getting started with Event Management
• Videos: Getting started with ITOM
• Developer training
• Developer documentation

Exploring Event Management
Explore Event Management to understand its overview, process flow, user roles, and benefits for
comprehensive IT issue monitoring and resolution.
Event Management provides comprehensive monitoring, analysis, and remediation of IT issues
by effectively managing various components within an IT environment. These components
include discovered services, application services, dynamic CI groups, and alert groups.
• Discovered Services: Defined by interrelated Configuration Items (CIs) from the CMDB, a
discovered service is identified through Service Mapping. It includes a service map with
mapping relationships, an impact tree showing outage severity, active and related alerts, and
CI properties. This service information is displayed on dashboards, the Alerts list, and the
Events list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2875


<!-- page 2876 -->
• Application Services: Created by selecting specific CIs, application services allow for
targeted monitoring and management. For more details, refer to the Application Services
documentation.
• Dynamic CI Groups: These are collections of CIs grouped based on shared criteria, such as
location. Dynamic CI groups help populate application services, simplifying management.
• Alert Groups: Alert groups organize sets of alerts to streamline maintenance and management,
making it easier to respond to IT issues efficiently.

Process flow
Event Management receives external events and generates alerts based on predefined rules.
The MID Server polls external event tracking tools and sends data to Event Management for
storage and processing. Events are stored in the Event [em_event] table, and alerts are created
by matching event rules. Alerts are then transformed and enriched with additional content,
accumulated if thresholds are met, and mapped to specific fields. The system searches for
matching message keys to update existing alerts or create new ones, associating related events
under a single alert. Alerts are bound to specific Configuration Items (CIs) for root cause analysis.
For more information, see Event Management process flow.

Users
Role title [name]

Description

Admin

Has read and write access to all Event Management
features to configure Event Management.

[evt_mgmt_admin]

Note: Exercise caution with the
evt_mgmt_admin role, as it can be elevated to the
admin role. A user with the evt_mgmt_admin role
has the ability to add and modify scripts that run
on a global scope. Ensure proper access control.
With this role, the user can create and/or update
the following scripts:
• Alert correlation rules
• Alert management rules
• Maintenance rules
• Advanced scripts
• Event field mapping
• Pre- and post-binding scripts
Operator
[evt_mgmt_operator]
Team Operator
[evt_team_operator]

Manages alerts, including closing and acknowledging
them. Oversees the overall Event Management
process, ensuring events are properly categorized,
prioritized, and routed for resolution.
Manages Event Management operations within a
specific team as defined in the Assignment Group
field. This role allows the operator to read and write
alerts exclusively for their assigned team. Additionally,
the operator can make configuration changes specific
to their team, including updates to Alert Automation
and the Integrations Launchpad.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2876


<!-- page 2877 -->
Role title [name]

Description

Note: The evt_team_operator role must be
assigned to an assignment group to view and
manage alerts for that group. If the role is created
but not associated with any groups that have
alerts assigned, the operator cannot see any
alerts.
User
[evt_mgmt_user]

Manages the lifecycle of alerts, including performing
basic operations such as viewing and acknowledging
them.

Benefits
• Rapid Issue Detection: Quickly identifies and highlights potential IT issues.
• Efficient Alert Handling: Aggregates and correlates alerts for streamlined management.
• Automated Actions: Initiates automatic remediation processes to speed up issue resolution.
• Comprehensive Monitoring: Integrates with multiple tools for a complete system overview.
• Root Cause Analysis: Offers tools to identify underlying causes of issues.
• Customizable Rules: Tailors event and alert management rules to specific needs.
• Reduced Downtime: Minimizes system downtime with prompt problem resolution.
• Enhanced Visibility: Real-time dashboards offer insights into system health.
• Cost Efficiency: Lowers operational costs by preventing prolonged issues.
Event Management process flow
Event Management collects, analyzes, and converts events into alerts, enabling efficient tracking
and remediation.
Event Management receives external events and generates alerts based on event and alert
management rules. Events are sent directly to your instance via email server, script, SNMP
trap, or web service API. The corresponding alerts appear on dashboards for tracking and
remediation purposes.
As the computer, software, or service generates events, the MID Server polls the external event
tracking tool. The MID Server, maintaining a connection to Event Management, sends the
information to your instance for storage, processing, and remediation.
The instance stores events in the Event [em_event] table and attempts to generate alerts based
on predefined rules and event mappings. Regardless of whether an alert is generated, the
original event is available for review and remediation. Alerts are generated according to the
following process flow.
1. Match Event Rule: Find the best matching event rule for an event.
A rule is matched if the source of the event matches the source specified in an existing rule.
Additionally, a rule is matched if the event matches the optional rule filter and the event
additional_info value matches the rule Additional Information filter. A rule without any filter is
ignored, such as when the source filter or Additional Information filter is missing. If multiple
rules are defined for the same type of event, use the rule order to determine the sequence of
rule application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2877


<!-- page 2878 -->
2. Ignore Rule: If the rule Ignore check box is selected, no alert is generated. However, the event
is still available for review and remediation.
3. Apply Transforms:
◦ If transforms have been defined, apply them.
◦ If compose parameters are set, apply the additional content to display to the user in the
alert.
4. Threshold Accumulation: If Active in the threshold section is selected, accumulate all events
until the threshold is met, then generate a single alert for the events.
5. Event Field Mapping
◦ Search for an event field mapping even if there was no event rule.
◦ If an event field mapping is found, apply the mapping information.
◦ If the event has no severity after the event transformations, retain the event for reference
purposes and do not generate an alert.
6. Alert Generation
◦ Search the Alert [em_alert] table for a matching message key.
◦ If a matching message key exists, update the alert according to the event information.
◦ If a matching message key does not exist, create an alert.
◦ If another event has the same matching key, associate the events under a single alert.
◦ For root cause analysis purposes, bind the alert to a specific Configuration Item (CI).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2878


<!-- page 2879 -->
Event workflow

Event Management architecture
Event Management architecture integrates data collection, processing, and alerting into a unified
system for streamlined IT issue detection and resolution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2879


<!-- page 2880 -->
Architecture
As events occur on various systems, the MID Server connector instance sends them to the main
instance. Event Management generates alerts, applies alert management rules, and prioritizes
alerts for remediation and root cause analysis. This information can be viewed on dashboards,
the alert list in Alert Intelligence, or from a service map.
Event Management architecture

Configuring Event Management
Event Management administrators administer events, manage and monitor alerts, aggregate
alerts, and work review and monitor services' status with the Operator Workspace service
monitor.
Event Management operators find alerts, analyze them, and take action to resolve the underlying
issue.
Request Event Management
Event Management plugin (com.glideapp.itom.snac) requires a separate subscription and must
be activated by ServiceNow personnel. This plugin includes demo data and activates related
plugins if they are not already active.

Before you begin

Role required: admin

About this task

To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2880


<!-- page 2881 -->
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Install Event Management
Retrieve the most updated apps for the Event Management application (com.glideapp.itom.snac)
®
®
in the ServiceNow Store. Periodically check the ServiceNow Store for new app versions.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Role required: admin

About this task

The following items are installed with Event Management:
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with Event Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2881


<!-- page 2882 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ITOM AIOps application using the filter criteria and search bar.
If you cannot find the application, request it from the ServiceNow Store.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install Event Management.
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
(Optional) Demo data comprises sample records that describe application features for
common use cases. Load demo data when you first install the application on a development or
test instance.

Important: If you don't load the demo data during installation, it's unavailable to load
later.
5. Select Install.
Enhance Event Management performance
The Event Management Accelerator plugin ensures that Event Management maintains
performance at a high level. This plugin is optional.

Before you begin

Role required: admin

About this task
The em_alert_history and em_impact_status tables can grow to be very large,
negatively impacting Event Management performance. Installing the Event Management
Performance Accelerator plugin ensures that Event Management performs at a high level.
The plugin includes fix scripts that populate missing data, update key fields to maintain data
accuracy, and create indexes to enhance performance. These actions help optimize large
datasets and reduce the impact on query speed and overall system responsiveness.
When upgrading from an earlier version with more than 5 million records in either the
em_alert_history or em_impact_status tables, you must activate this plugin manually.
When there are less than 5 million records, it runs automatically. You can customize this number
by modifying the evt_mgmt.plugin_activation.table_max_size property.
To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2882


<!-- page 2883 -->
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Event Management setup
After activating Event Management, set it up to receive and process events, and generate and
analyze alerts.

Event Management setup without using guided setup
Set up Event Management by completing these tasks in the following order:
1. Configure a MID Server

to receive and process events via the MID Server.

2. Configure the MID Web Server extension.
3. Configure Configure Event Management connectors.
4. Configure event field mappings and Binding alerts to CIs to manage alert generation.
5. Alert management rules for resolving alerts, perform, and CI remediation for alert
management.
6. Request Service Mapping and get a top-down discovery to receive CI relationships for
software and hardware.
7. Configure impact calculation for services, to establish priority for alert resolution.
8. Configure alert groups to consolidate related alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2883


<!-- page 2884 -->
9. Configure the Predictive Intelligence plugin (com.glide.platform_ml) to enable machine
learning and finding similar alerts.
10. Configure any other general tasks that appear in this section as appropriate.

Note: Event Management does not support creating incidents on remote instances.
Event Management setup using guided setup
Event Management guided setup provides a sequence of tasks that help you configure Event
Management on your ServiceNow instance. To open Event Management guided setup, navigate
to Guided Setup > ITOM Guided Setup. For more information about using the guided setup
interface, see Using guided setup .
Event Management during a platform upgrade
During a platform upgrade Event Management jobs whose Upgrade safe flag is marked as true
remain running.
During an upgrade of the platform, the Event Management connectors are working and continue
to retrieve events. The events are being processed, transformed to an alert using event rules and
if there is a suitable alert management rule, a task is created. However, the impact calculation is
not supported during the platform upgrade. When applying configuration changes or upgrades,
all impacted MID Servers restart.

Note: Event Management jobs that started running before the platform upgrade
commenced continue to run during the upgrade.
The following Event Management jobs remain running as their Upgrade safe flag is marked as
true :
• Event Management - Connector execution
• Event Management - Update stuck connect
• Event Management - Alert Priority Queue
• Event Management - Close flapping alerts
• Event Management - Close threshold alert
• Event Management - Evaluate Scoped Alert Rules Management0
• Event Management - Maintenance Calculator
• Event Management - Process events
During the platform upgrade, all other Event Management jobs wait for the platform upgrade to
finish.

Note: During an Event Management plugin upgrade, all Event Management jobs do not
work.
MID Web Server
The MID Web Server is part of the common infrastructure of the MID Server.
The MID Web Server extension provides options for authentication and data security, and runs
for as long as it is enabled. The extension starts a web server on the MID Server to handle web
requests from external systems. The raw data is pushed to the extension, either from a client
or with a customized script. The data is collected by the MID Server and is transmitted to the
ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2884


<!-- page 2885 -->
The MID Web Server extension supports MID Server clusters that are configured for failover.
When selecting a MID Server cluster option, an algorithm determines which MID Server in the
cluster runs the extension. The extension can run on only one MID Server. If the MID Server
in the cluster that runs the MID Web Server extension goes down, the extension automatically
starts to run on the secondary MID Server, which is activated when the primary MID Server goes
down.
Related topics
Configure the MID Web Server extension
Configure a secure MID Web Server extension
Configure the MID Web Server extension
The MID Web Server is a MID Server extension that enables developing REST APIs to send
events and metrics to the MID Server. The extension is leveraged by other MID Server
extensions, such as Metric Intelligence, MID WebService Event Listener, and the Agent Client
Collector websocket endpoint extension.

Before you begin
• Deploy and start a MID Server.
• Enable the MID Web Server [com.snc.sa.mid.webserver] plugin.
Role required: agent_admin.

About this task

Agent Client Collector supports the following authentication strategies:
• Keybased: For backwards (pre-Zurich release) compatibility only. See Configure key-based
MID Web Server authentication.
• API key: See Configure MID Web Server API key authentication.
• mTLS: See MID Web Server and agent mTLS Authentication.

Procedure
1. Navigate to All > MID Server > Extensions > MID Web Server.
2. In the MID Web Server Contexts list, click New.
3. Fill in the values on the Event Management MID Web Server extension form.
4. Click Save to save the data.
5. Restart the MID Web Server extension to apply your changes.
6. Navigate to All > MID Server > Extensions > MID Web Server and select the MID Server you
just created.
7. In the Related Links section, click Start to start the extension.
Configure a secure MID Web Server extension
Configure a TLS listener for extra security and encryption of data transferred to and from the
MID Web Server extension. Access both a private key and a certificate (or certificate chain)
from a Java keystore to use during the TLS handshake where the MID Web Server and the client
acknowledge each other.

Before you begin

Role required: agent_client_collector_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2885


<!-- page 2886 -->
Procedure
1. Navigate to MID Server > Extensions > MID Web Server.
2. Select New.
3. In the Authentication Type field, select an authentication type to be used.
◦ Keybased – See Configure key-based MID Web Server authentication
◦ Basic – Standard username/password authentication
◦ API key – See Configure MID Web Server API key authentication
◦ mTLS – See MID Web Server and agent mTLS Authentication
4. Select either the MID unified keystore or the web server keystore.
The MID Web Server unified keystore is the most efficient option. If you want to enable
backward compatibility and the ability to store keypairs in an additional keystore, use the Web
server keystore (which allows you to use the MID unified keystore as well).
Option

Description

a. Select the Use MID Unified Keystore check
box
b. Enter an alias name in the Keystore Certifi­
cate Alias field or leave the field empty to
use the keystore's default alias.
For more information, see the Install cus­
tom certificates in the MID Server unified
key store section in MID Server unified key
.

MID unified keystore

Important: Leaving the Keystore

Certificate Alias field empty causes
connecting clients to skip certificate
verification. Instead, the MID Server
uses its own self-signed certificate.
a. Clear the Use MID Unified Keystore check
box.
b. Specify an alias name in the Keystore Cer­
tificate Alias field or leave the field empty if
you have a single alias in that keystore.
Web server keystore

c. If the password to the private key of the re­
quired alias is different from the keystore
password, specify the alias in the Keystore
Key Password field.
d. Enter the keystore password in the Key­
store Password field.

Related topics
Connect the agent to the MID Server using mTLS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2886


<!-- page 2887 -->
Configure key-based MID Web Server authentication
Provide added security to your MID Web Server extension by using key-based authentication.
Generate an authentication token to be sent in the Authorization header of incoming client
requests.

Before you begin

Note: This procedure is only for compatibility with releases prior to Zurich. For details on
the procedure in the Zurich release for configuring the MID Web Server, see Configure the
MID Web Server extension.

• Deploy and start a MID Server.
• Configure a MID Web Server extension and select Keybased as the authentication type. For
details, see Configure the MID Web Server extension.
Role required: agent_admin

Procedure
1. Using a script program, create a token by constructing a string using defined elements of the
HTTP/HTTPS request (HTTP verb, content type header, and request path, received from the
client accessing the MID Web Server extension endpoints).
2. Create an HMAC (Hash Message Authentication Code) of the string by signing the generated
string with the auto-generated secret key that is displayed in the Secret Key.
This key is unique per context.
3. Provide information to send this authentication token in the request Authorization header.

Item

Value

Path to a web service API for sending raw
data

URL format:
https://<MID Server IP
address>:<port number>/api/mid/
sa/metrics
Use a port number that matches one of
the port numbers set up in the Web Server
extension.
Example: http://10.10.10.10:8097/
api/mid/sa/metrics

Request type
Date format

POST
yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
For example: 2016-06-08T20:54:58.917Z

Content-Type

application/json

Use the following request elements to generate the required string: HTTP-Verb, Content-Type,
Date, and request path. Specify these elements and place them in this order:
◦ HTTP-Verb + "\n" +
◦ Content-Type + "\n" +
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2887


<!-- page 2888 -->
◦ Date + "\n" +
◦ Request-Path
For this example, the request string is:
POST\napplication/json\n2016-06-08T20:54:58.917Z\n/api/mid/
sa/metrics
For the timestamp requirement, a valid timestamp that uses HTTP date header is required for
authenticating the request. Ensure that the timestamp is within 15 minutes of the MID Server.

Example: How to generate the HMAC of the string that uses defined elements of
the HTTP/HTTPS request, using Java
package sample;
import com.glide.util;
import java.security.SignatureException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
public class AuthUtil {
private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";
/***
* Generates base64-encode the HMAC(Hash Message Authentication
Code) of input data
*
* @param data
* @param key
* @return
* @throws java.security.SignatureException
*/
public static String signData(String data, String key) throws
java.security.SignatureException {
String result;
try {
// get an hmac_sha1 key from the raw key bytes
SecretKeySpec signingKey = new SecretKeySpec(key.getBytes(),
HMAC_SHA1_ALGORITHM);
// create hmac_sha1 Mac instance and initialize with the
signing key
Mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
mac.init(signingKey);
// compute the hmac on input data bytes
byte[] rawHmac = mac.doFinal(data.getBytes("UTF-8"));
// base64-encode the hmac
result = Base64.encode(rawHmac);
} catch (Exception e) {
throw new SignatureException("Failed to generate HMAC : " +
e.getMessage());
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2888


<!-- page 2889 -->
}
return result;
}
}
Configure MID Web Server API key authentication
Authenticate incoming requests from clients to the MID Web Server extension using API key
authentication. API authentication is a secure and simple way to authenticate your request. You
can create or modify a MID Web Server API key.

Before you begin

Create a MID Web Server extension to use API Key authentication, as described in Configure the
MID Web Server extension. Ensure that you select API Key in the extension's Authentication
Type field.
Role required: event_mgmt_admin

About this task

By default, the maximum number of API keys you can create on an instance is 10. To change
this number, modify the mid.webserver.max.api.keys property value on the System
Properties page.
When working in the global domain while Domain Separation is enabled, API keys are available
to all extensions, regardless of their domain. When working in a specific domain, API keys are
available to extensions in that domain, its parent domains, and the global domain.
You can configure API keys to expire on a specified date.
When creating a new extension with API key authentication (or updating an existing one to use
API key authentication), the system checks for an available API key for the extension. If there is
no available API key, the system creates one.

Procedure
1. Navigate to All > MID Server > Profiles and Deployments > MID Web Server API Key.
2. Either create a new API key or modify an existing API key.
◦ To create a new API key:
a. Select New.
b. On the MID Web Server API Key form, fill in the fields.
MID Web Server API Key form
Field

Description

Name

Name for the API key.

Active

Option for activating the API key.

Authentication key

Read-only encoded value of the
authentication key. No value appears until
after you configure the key.

Expires

Option for setting an expiration date for the
API key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2889


<!-- page 2890 -->
Field

Description

Expired, deactivated, or deleted API
keys are not accepted by the web server
extension.
c. Select Submit to save the API key.
The API key appears on the Mid Web Server API Keys page.
◦ To modify an existing API key:
a. Navigate to MID Server > Profiles and Deployments > MID Web Server API Key.
b. Select an API key on the page.
c. In the Related Links section, select View API Key.
d. Copy the API key that appears in the MID Web Server dialog box.
When connecting to a MID Web Server extension configured with API Key authentication,
place an API key that the extension has access to in the Authorization header of the
request in the following format:
Key <API_KEY>
where <API_KEY> is the value of the API key displayed after selecting View API Key.
e. Select Submit.
MID Web Server and agent mTLS Authentication
Mutual authentication using the Transport Layer Security protocol (mTLS) is a secure, certificatebased authentication scheme. With mTLS, the server (the MID Web Server extension) and the
client (the agent) authenticate each other.
TLS authentication occurs when a client (such as a web browser) authenticates the server
it’s accessing by validating the certificate presented by the server. The client verifies that the
certificate (or certificate chain) is signed by a trusted certificate authority (CA). The client must
have access to a bundle of CA certificates, which it uses to validate the server certificate.
When mTLS is configured, the client presents a certificate or certificate chain to the server, and
the server authenticates the client in the same way that the client authenticates the server
(mutual authentication).
In addition to verifying the certificate signature, some TLS implementations also check the
revocation status of the certificate. In these cases, the Online Certificate Status Protocol (OCSP)
is used. In this protocol, the verifying party sends a request to the OCSP responder set up by the
CA that issued the presented certificate. (The responder's address is typically embedded in the
CA-issued certificates). The response indicates whether the presented certificate is revoked.
Before enabling mTLS, you must first create keys and certificates, install the .pem file on your MID
Server, and connect the agent to your MID Server.
Related topics
Configure the MID Web Server extension
Configure mTLS authentication for a MID Web Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2890


<!-- page 2891 -->
Create keys and certificates
Create keys and certificates in your root directory to enable Transport Layer Security (TLS) setup.
TLS setup is necessary before you can configure mTLS on the MID Web Server and agent.

Before you begin
• Ensure that there are no keys installed in the MID unified keystore by running the following
command:
bin/scripts/manage-certificates.(sh/bat) -l
When there are no keys installed, the output is: defaultsecuritypairhandle
• Invalidate your MID Server.
If additional keys exist in the output, reinstall those keys after invalidating the MID Server.
• Ensure that the MID Server is connected to the instance.
• Select a directory in which you want to create certificates, to be called the root directory.

Note: The commands specified in the following procedure are relevant only for a Centos7
host. When working with another OS, use the commands relevant for your host.
Role required: agent_client_collector_admin

Procedure
1. In your root directory, create subdirectories for your certificates.
mkdir -p labca labmid labacc;
2. In your root directory:
a. Generate a custom certificate authority key pair.
openssl ecparam -list_curves;
openssl ecparam -out labca/ec-labcakey.pem -name prime256v1
-genkey;
ls labca/;
The generated output is the ec-labcakey.pem file.
b. Run the following commands:
openssl ecparam -in labca/ec-labcakey.pem -text -noout;
openssl req -x509 -new -nodes -key labca/ec-labcakey.pem
-sha512 -days 365 -out labca/labcacert.pem -subj
"/C=<country>/ST=<state>/L=<location>/O=<organization>
Lab/OU=<organization unit>/CN=<cn abbreviation>";
openssl verify labca/labcacert.pem;
The generated output is:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2891


<!-- page 2892 -->
▪ labca/labcacert.pem: C = <country>, ST = <state>, L =
<location>, O = <organization>, OU = <organization unit>, CN
= <cn abbreviation>
▪ error 18 at 0 depth lookup: self signed certificate
▪ OK

Note: The error message can be ignored.
3. Prepare the MID Web Server key and certificate.
a. Run the following commands in the root directory:
sudo cp -a
labca/labcacert.pem /etc/pki/ca-trust/source/anchors/;
sudo update-ca-trust extract;
openssl verify labca/labcacert.pem
The generated output is: labca/labcacert.pem: OK
b. Run the command "hostname --all-fqdns" to obtain all of the valid hostnames for
the specific VM.
c. Run the following commands:
openssl req -new -newkey rsa:4096
-keyout labmid/rsa-labmidkey.pem
-sha512 -nodes -out labmid/mid.csr -subj
"/C=<country>/ST=<state>/L=<location>/O=<organization>/OU=<o
rganization unit>/CN=<hostname>";
openssl x509 -req -days 365 -in labmid/mid.csr -CA
labca/labcacert.pem -CAkey labca/ec-labcakey.pem
-CAcreateserial -extensions SAN -extfile
<(cat /etc/pki/tls/openssl.cnf <(printf
"\n[SAN]\nsubjectAltName=DNS:<hostname>")) -out
labmid/mid.crt;
Enter the FQDN as the <hostname> value in the previous command. If more than
one fqdn value is returned by the command, use the value with the following format:
hostname.domain.domain.com.
The generated output is: Signature ok subject=/C=<country>/ST=<state>/
L=<location>/O=<organization>/OU=<organization unit>/CN=<mid
server host fqdn>: Getting CA Private Key
4. In your root directory, combine the key and cert files into one file, named mid.pem.
cat labmid/rsa-labmidkey.pem labmid/mid.crt > labmid/mid.pem;

What to do next

Install the .pem file in the MID unified keystore and set up the MID Web Server.
Install the .pem file in the MID unified keystore and set up the MID Web Server
Install the .pem file into the MID unified keystore and set up the MID Web Server to enable
configuring mTLS on your MID Web Server and agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2892


<!-- page 2893 -->
Before you begin

Copy the labmid/mid.pem file (created in the Create keys and certificates procedure) to your
MID Web Server host directory.
Role required: agent_client_collector_admin

Procedure
1. Access the agent subdirectory under the MID Server's host directory.
2. Run the following commands:
bin/scripts/manage-certificates.sh -a midwss /<path>/mid.pem;
bin/scripts/manage-certificates.sh -l;
The relevant part of the output is, "defaultsecuritypairhandle,midwss”
3. Validate your MID Server on the instance.
4. Select the MID Server on the instance and select Setup ACC listener.
A new MID Web Server is created.
5. Navigate to the newly created MID Web Server record
(ecc_agent_ext_context_webserver) on the instance.
6. On the instance, select the MID Web Server and set the Keystore certificate alias value to
midwss.
7. Select Save.
8. Restart the MID Web Server.

What to do next

Connect the agent to the MID Web Server using TLS.
Connect the agent to the MID Web Server using TLS
Connect the agent to the MID Web Server to enable configuring mTLS on your MID Web Server
and agent.

Before you begin

Ensure that you have installed the .pem file and set up the MID Web Server. For details, see
Install the .pem file in the MID unified keystore and set up the MID Web Server.
Role required: agent_client_collector_admin

Procedure
1. Add the labcacert.pem file to your agent host's truststore.
sudo cp
-a /<path>/<to>/labcacert.pem /etc/pki/catrust/source/anchors/;
sudo update-ca-trust extract
openssl verify /<path>/<to>/labcacert.pem
The generated output is /<path>/labcacert.pem: OK
2. Configure the acc.yml file to use TLS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2893


<!-- page 2894 -->
a. Set the insecure-skip-tls-verify property to false.
b. Set the backend-url property to use the MID Server's FQDN.
backend-url="wss://<mid server fqdn>:<mid web server port>/
ws/events"
3. Restart the agent.
systemctl restart acc;
4. Verify in the logs that the agent is connected to the MID Server.

What to do next

Configure mTLS authentication for a MID Web Server.
Configure mTLS authentication for a MID Web Server
Enhance security in your MID Web Server extension by enabling mTLS authentication.

Before you begin

Ensure that you have enabled Transport Layer Security (TLS) on the agent. For details, see
Connect the agent to the MID Server using mTLS.
Ensure that the insecure-skip-tls-verify parameter in the acc.yml configuration file
is set to false. For details on the acc.yml file, see Configuration file options.
Role required: agent_client_collector_admin

About this task

The MID Web Server extension searches the following locations (in the specified order) to
access the truststore location and password:
• Truststore location: The mid.webserver.truststore.path JVM system property.
If that property is empty, the extension retrieves the location from the
javax.net.ssl.trustStore JVM system property.
If no location is specified, the truststore location defaults to the absolute path of the cacerts
file of the JRE running the MID Server.
• Truststore password: The Truststore Password field on the extension form in the instance.
If that field is empty, the system retrieves the password from the
javax.net.ssl.trustStorePassword JVM system property.
If no location is specified, the password defaults to changeit.

Procedure
1. Navigate to the root folder of your MID Server.
2. Run the following command to add your certificate to the MID trust store:
./jre/bin/keytool -importcert
-file /etc/pki/ca-trust/source/anchors/labcacert.pem
-destkeystore ./jre/lib/security/cacerts -alias mtlsca
3. Enter changeit when prompted for a password.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2894


<!-- page 2895 -->
4. Select yes on the confirmation message window to indicate that you trust the certificate.
5. Run the following command to verify that your certificate was successfully added to the MID
trust store.
./jre/bin/keytool -list -keystore ./jre/lib/security/cacerts
-alias mtlsca
6. Enter changeit when prompted for a password.
7. In the MID Server wrapper override configuration file (wrapper-override.conf, located
in the home/conf directory of the MID Server), configure the revocation of client certificates
in the mid.webserver.cert.revocation.check.enabled property.
◦ If you have a custom internal certificate, set to false by adding the following line to the
conf/wrapper-override.conf file on the MID Server:
wrapper.java.additional.4=-Dmid.webserver.cert.revocation.che
ck.enabled=false
◦ When enabling this property (true), configure the
mid.webserver.ocsp.responder.url property with the OCSP responder URL. This
value overrides any URL embedded in the certificate.
8. If you have changed properties in the wrapper override configuration file, restart the MID
Server.
®

9. On your ServiceNow instance, access the MID Server record and change the value of the
Authentication type field to mTLS.
10. Restart the MID Web Server.
11. Verify that the MID Web Server and websocket endpoint are up and running.

What to do next

Connect the agent to the MID Server using mTLS.
Connect the agent to the MID Server using mTLS
Before configuring mTLS authentication on the agent, you must run a series of commands that
enable configuring Transport Layer Security (TLS) authentication.

Before you begin

Ensure that you have performed the following tasks:
1. Create keys and certificates
2. Install the .pem file in the MID unified keystore and set up the MID Web Server
3. Connect the agent to the MID Web Server using TLS
4. Configure mTLS authentication for a MID Web Server
5. Connect the agent to the MID Server using mTLS
Role required: agent_client_collector_admin

Procedure
1. Generate a key for your agent.
openssl ecparam -out labacc/acc.key -name prime256v1 -genkey
2. Generate a certificate request for your agent, according to the following format:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2895


<!-- page 2896 -->
openssl req -new -key labacc/acc.key -out labacc/acc.csr -subj
"/C=<country>/ST=<state>/L=<location>/O=<organization>/OU=<org
anization unit>/CN=<cn abbreviation>/emailAddress=<email
address>"
For example:
openssl req -new -key labacc/acc.key -out labacc/acc.csr
-subj "/C=US/ST=NC/L=Raleigh/O=ServiceNow/OU=ITOM
Lab/CN=acclinux/emailAddress=john.smith@servicenow.com"
3. Generate a signed certificate for your agent.
openssl x509 -req -days 365 -in labacc/acc.csr -CA
labca/labcacert.pem -CAkey labca/ec-labcakey.pem
-CAcreateserial -extensions client -out labacc/acc.crt
4. In the labacc folder, copy your key and certificate files to the agent host's virtual machine.
cp ./acc.key <agent host config folder>
cp ./acc.crt <agent host config folder>
The configuration folder paths depend on your OS.
◦ Linux: /etc/servicenow/agent-client-collector/
◦ Windows: C:\ProgramData\servicenow\agent-client-collector\config\
◦ macOS: /Library/Application\ Support/servicenow/agent-clientcollector/
5. Navigate to the location where you copied the .key and .crt files from.
6. Run the following commands to update the files' read permissions and enable the agent to
read from them.
◦ Linux:
a. chown servicenow:servicenow acc.key
b. chmod 0400 acc.key
◦ Windows:
a. Select and hold (or right-click) the .key file and select the Security tab from the file
properties.
b. Add the servicenow user to the list of users with read access to the file.
◦ macOS:
a. chown _servicenow:_servicenow acc.key
b. chmod 0400 acc.key

Note: The agent must be run with the default servicenow user.
7. In the acc.yml configuration file, add the following parameters to specify the path to your key
and certificate files.
key-file: "<path to acc.key file>/acc.key"
cert-file: "<path to acc.cert file>/acc.crt"
8. Restart the agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2896


<!-- page 2897 -->
◦ Linux: systemctl restart acc
◦ Windows:
a. Open the Services application.
b. Select and hold (or right-click) the Agent Client Collector entry and select Restart.
◦ macOS:
a. launchctl unload -w /Library/LaunchDaemons/com.sn.acc.plist
b. launchctl load -w /Library/LaunchDaemons/com.sn.acc.plist
9. Check the logs to verify that the agent was able to connect to the instance using TLS.
Agent Client Collector logs are accessible from:
◦ Linux: /var/log/servicenow/agent-client-collector/acc.log
◦ Windows: The location specified by the log-file configuration flag. The default location
is: C:/ProgramData/ServiceNow/agent-client-collector/log/acc.log
If the C:/ProgramData directory is hidden (such as on older Windows versions), change
the Explorer filter to show hidden elements.
◦ macOS: The default location is: /Library/Application\ Support/servicenow/
agent-client-collector/log/acc.log
Related topics
MID Web Server and agent mTLS Authentication
Event Management configuration preferences
Preferred settings of properties and general configuration.
Use the Known Error Portal

and the Community

to further help you find information issues.

General preferences
Self-health
By default, the self-health monitoring feature is not enabled. To enable it,
navigate to Event Management > Settings > Properties and select Yes for
the Enable Event Management self-health monitoring
(evt_mgmt.self_health_active) property. Use this feature to monitor and track many
Event Management features.

Note: CIs used in the self-health service are created in the CMDB.
Use the following settings to help with preventing performance degradation.

Topic

Business rules

Details

• Avoid writing business rules for event [em_event]
tables, as they do not run in the current default REST
URL that is used for event injection.
• Business rules that are written for alert [em_alert]
tables must be highly efficient or they may result
in performance degradation. Instead of writing a
business rule, consider whether it is more appropriate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2897


<!-- page 2898 -->
Topic

Details

to write a job. An inefficient business rule can cause
incident creation for an alert to fail and the alert impact
calculation to fail.
• Do not write async business rules for alert tables.
• Business rules must not change the Category field on
event [em_event] tables.
Scaling up

Check the average event processing time before scaling
up event throughput when first starting with Event
Management. Do this check after an initial flow of events
and all rules are in place. If processing time takes over
a few milliseconds per event, determine the cause for
the processing slowdown before continuing to scale.
Performance duration can be checked in the Performance
Statistics [sa_performance_statistics] table.
• Set the Enable multi node event processing
(evt_mgmt.event_processor_enable_multi_node)
property to Yes.

Configure for largescale environments

Enable multi-node in production environments and
set values based on the size of the deployment and
expected event rate.
• Set the Number of scheduled jobs processing events
(evt_mgmt.event_processor_job_count)
property to 4.
• If you are sending events from a custom source, verify
that events haveMessage Key or Source, Node, Type,
and Resource data.
Check the following settings:
• Verify that the Bucket field in the event [em_event]
table is set to a value that is greater than zero (0).
• Navigate to System Scheduler > Scheduled Jobs and
search for - process events*.

Latency issues for
receiving events

Archive events

Check that all - process events* jobs exist
according to the Number of scheduled jobs processing
events (event_processor_job_count) property
configuration. Verify that the State is Running or
Ready. If the state is Queued or Error, set the job
state to Ready.

• Avoid changing the default retention time for events.
• To log events for a longer time, create an archive
table and a job that copies new events to it. Do this by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2898


<!-- page 2899 -->
Topic

Details

scheduling a job to regularly back up events [em_event]
to a custom table.
• Do not extend table rotation by adding more days.

Event integration
SNMP traps
• Use a monitoring tool to send SNMP traps, rather than sending them directly from
devices.
• To avoid having to rewrite event rules, upload MIBs prior to defining the event
rules.
Web service API
• Using a web service API for integration can reduce the number of event rules
needed. This action avoids having to transform events (prepared data is sent in
an event to the instance).
• Use dedicated credentials for integration. Optionally, designate credentials
specific to each event source.
CloudWatch
Use dedicated credentials for integrating CloudWatch with ServiceNow.
Email
Use email only if the source has a low volume and other options are not available,
such as, running a script or forwarding an SNMP trap.
Event rules
Configuration settings when creating event rules:
• Write Event Rules to apply to the broadest number of events possible. More
specific rules can then be created as necessary and should use a lower-order
value.
• If a more general rule can achieve the same outcome, avoid writing Event Rules
that apply only to a certain subset of events.
• When Event Rules are applied to events, no changes are made to the original
event. All processing occurs in memory, so use the Processing Notes field and/or
use the Check Process of Event UI action link to troubleshoot.
• If you change a rule/transform that has existing mapping rules, you should review
and retest with events that are either actual or simulated.
• Ensure that the From field value exactly matches a string in the JSON in the
additional_info field of an event. This matching happens when a rule has
been configured based on information in a MIB file. If the MIB file is not uploaded,
the JSON for the SNMP trap shows varbinds (variable binding) with dotted names,
instead of the translated name in the MIB. The event field mapping rule then fails
to be applied.
• Establish a consistent naming convention. A common convention is: <customer
acronym>.<Event Source>.<Description>. For example,

ACME.OEM.Normalize
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2899


<!-- page 2900 -->
• If two Event Rules have similar conditions set, use the Order field to control which
Event Rule runs.
• Use Event Rules to associate an alert with a CI.
Additional settings for constructing event rules:

Desired result

Required activity

Effective de-duplication
Populate the Source, Node, Type, Resource, Metric
and enabling efficient
Name fields.
parallel event processing
CI binding

• Bind to host - by populating the Node field and
optionally CI identifiers.
• Binding to application and / or device – by
populating the CI Identifiers field and the Additional
information field.

Alert Correlation, using
alert aggregation

Populate the Resource and Metric Name fields.

Note: If CI is also bound, Alert Correlation is
improved.

Custom event fields
Include additional fields in the Additional information field of the
event only.
Do not add additional fields to an event by adding a custom field to the
event [em_event] table.
Do not add columns to the event [em_event] table.
For information about how to include additional fields in events, see Custom alert
fields.
De-Duplication
Configuration settings for de-duplication.
• The message_key field is used for De-Duplication. If reliable message key values
are not provided with the source event, it is important to have a well-defined plan
for constructing these identifiers.
• If the message key is not defined, then the default message key is <Source +
Node + Type + Resource + Metric Name> .
• The guideline is to have the event source populate the <Source + Node +
Type + Resource + Metric Name> fields out-of-the-box and populate
the message key. This action enables a better distribution of event processing
among instance workers and nodes.
• If the source event does not have values for these fields, make sure to populate
them using transform rules. This action does not affect event processing, but is
used for de-duplication. Populate as many of these fields as possible before they
are sent to the instance. This action provides better distribution of events over the
processor workers, and therefore better throughput and scale.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2900


<!-- page 2901 -->
CI binding
• Where possible, always attempt to bind an alert to a CI.

Note: Although Event Rules are defined on events, CIs are
bound to alerts that result from those events, and are not
bound to the event.
• To bind a host, machine or any device with an IP, populate the event
Node field with a unique host name, FQDN, IP, or MAC address.
If other identifiers are necessary to identify a host, then populate
the ci_identifiers field with a JSON format. The JSON format must
contain the CMDB field name and value to perform the match.

Note: The event Node field must be populated from an event
rule or populated with a unique host name from the source
before the event is inserted.
• The primary binding strategy is to use the Node field. If the Node
field is not pre-populated in the event, it can be populated using
event rules.

Alert settings
Alert lifecycle
General alert functionality:
• An alert is opened whenever an event is not ignored or its threshold is exceeded by an event
rule, and de-duplication does not identify the event as belonging to an existing alert.
• An alert is closed when a closing event is sent on the same message key, or the alert is closed
manually.
• An alert is reopened if an opening alert that has the same message key is sent within the
timeframe defined in properties (default is one hour).
• If an alert is opened and closed at a high rate, as defined in properties, it becomes flapping.
When this opening and closing rate stops, the alert goes out of flapping state.
• If an incident is opened from an alert, that alert remains open as long as the incident remains
open. By default, when either the incident or the alert is closed the other is closed as well. This
behavior can be configured using properties.
• Do not close an alert when creating a corresponding incident.
• Do not delete an open alert. Close an alert first and then delete it.
• Use Acknowledge to denote that the alert is known, and can temporarily be ignored.
• Do not use Acknowledge to mark an alert as needing attention.
• Do not create alerts in any of these states:
◦ Closed
◦ OK
◦ Open
• The evt_mgmt.alert_auto_close_interval property automatically closes alerts
after the specified period. Do not specify 0, as this value disables the feature and may lead to
performance degradation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2901


<!-- page 2902 -->
• Do not create alerts in OK state. In some monitoring systems OK denotes that an issue has
been resolved, while in other monitoring systems OK is used to denote events that are not of
operational significance. For the former case, use Clear instead of OK using a Mapping Rule.
For the latter case, have an Ignore rule, unless the events are of specific value.
Alert action rules
• A scheduled job applies Alert action rules to new Alerts every 11 seconds. If
an Alert Rule does not immediately start, allow 10–15 seconds before you start
troubleshooting.
• Use the Order field to control which Alert Rule runs if two Alert Rules have similar
conditions set.
• Use Alert action rules with Task Templates to populate static values in an incident.
Use the populator script to assign dynamic values in the incident. The populator
script can return a value of false to abort incident creation.
• Create a user called Event Management (or a similar name). Then the Created by
field in a task template (for example, Incident) can be set to indicate that user was
the source of the task.
• To perform any dynamic value assignment or to override OOB dynamic value
assignment, use the EvtMgmtCustomIncidentPopulator script include.
Remediation
• Always set orchestration workflow properties to the Remediation Task
[em_remediation_task] table.
• Use ECC Queue and Workflow > Live Workflow > All Contexts to find more
detailed information on remediation activities.

Business rules
• Business rules created on alert tables should not take more than a few milliseconds. In place
of using a business rule, consider if the same functionality can be achieved using a job.
• Do not use business rules to associate an alert with a CI. Use event rules to do binding instead
of using business rules.

Planning
• Organize event source configuration of filters, modules, and so on, into multiple parallel efforts,
rather than in serial.
• Validate processed event formats to ensure that data that is parsed is aligned with desired
results.
• Test production events in a non-production environment. Integrate with non-production
element managers and ServiceNow instances. If non-production element managers are
not available, send events from element managers to both production and non-production
environments.

Services and dashboard
• Use Service Groups to group services into logical groups to reduce the number of services
displayed on the Service Health dashboard.
• Import manually built service maps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2902


<!-- page 2903 -->
Metric Intelligence collector logs and files
Metric Intelligence collector logs and files are located under the path $(MID_SERVER_DIR)/
agent. Use these logs and files for troubleshooting and monitoring purposes.
Location of Metric Intelligence collector logs and files
Log or file

Path

PowerShell metric collector
log file

Logs/retrieve_metrics{connector instance ID}.log

PowerShell output file

work/metrics/metrics_output_{connector instance ID}.txt

PowerShell input file

work/metrics/parameters_{connector instance ID}.txt

Metric Intelligence performance can be checked in the MID Server log file when the
mid.log.level MID Server parameter is in debug mode.
Metric Intelligence performance numbers are available in the Performance Statistics
[sa_performance_statistics] table. To view the performance numbers, filter the Performance
Statistics list for Metric Collector.
Related topics
Rotate event and alert table for cleanup
Domain separation and Event Management
Domain separation is supported in Event Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

How domain separation works in Event Management
When domains are separated in Event Management, users can only see and manage alerts and
events in their own (tenant) domain.
A domain column is present for Event Management tables that are provided in the base system.
The column displays the name of the domain to which the event or alert belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2903


<!-- page 2904 -->
Note:
If the domain column does not display in the list, click
(Update Personalized List) and
add the required column. In addition, you can add a column that displays the domain path.
For information about domain separation limitations in Event Management, see Configure Event
Management domain separation.
Related topics
Domain separation for service providers
Configure Event Management domain separation
You can configure Event Management for domain separation to create logically defined domains
that limit unauthorized access to data. When domains are separated in Event Management,
users can only see and manage alerts and events in their own (tenant) domain.

Before you begin

Role required: evt_mgmt_admin and evt_mgmt_integration

About this task

Activate the Domain Support – Domain Extension Installer plugin and configure the MID Server
for Event Management.
The following Event Management features have limited domain separation support.
Features with limited domain separation support
Feature

Support

Event – alert Supported.
flow
Separation is based on the domain user that sent events. User access is
required for the credentials of the sending API events or in the configuration of
the MID Server reporting events.
In a multi-domain environment, each MID Server can serve only one domain
according to the integration user that it uses. In the configuration of the
connector instance, make sure that the MID Server have same domain as
Connector instance.
To configure pull connectors to support custom domain separation, see
Personalize domains for pull connector events to use in event creation.
Impact
calculation

Supported.

Application
services

Partially supported.

Dynamic CI
groups

Partially supported.

Segregation is based on the manner in which CIs are segregated.

Segregation is based on the manner in which CIs are segregated.

Segregation is based on the manner in which CIs are segregated.

Note: The discovery process does not segregate CIs by domain.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2904


<!-- page 2905 -->
Features with limited domain separation support (continued)
Feature

Support

Remediation Supported.
While editing alert management rules, users can only apply relevant workflows.
For more information on domain separation in the Flow Designer, see Domain
separation and Flow Designer.
Alert
Supported. In domain-separated environments, alert groups are created only for
Aggregation alerts in the same domain.

Procedure
1. If it is not already active, activate the Domain Support – Domain Extension Installer plugin.
2. Configure the connector instance to be in the same domain as the MID Server.
Event Management Integrations
An event is a notification from one or more monitoring tools that indicate something of interest
has occurred, such as a log message, warning, or error.
Events are processed and alerts are generated based on the following factors:
• Event collection configuration via a MID Server, script, SNMP trap collector, or email message.
• An Event rule, alert binding, or event field mapping configuration for processing events from
various sources.
When a package of events that contains events with a custom (non-supported) state is
processed, the events with the custom state are not processed.
Integration with external events
Event Management receives external events via an integration or scripts. If you are using a script
to collect events, no configuration is required. All other integrations require configuration.
When an integration is configured, Event Management can collect events that are sent directly to
the ServiceNow AI Platform instance or via the MID Server, SNMP trap or email.
The integration with external systems can be initiated from a ServiceNow AI Platform instance
using a pull connector, or from an external system using a push mechanism.

Integration via a ServiceNow AI Platform instance
The ServiceNow AI Platform instance includes push connectors that help external monitoring
systems to integrate with Event Management directly.
You can configure the authentication in the ServiceNow AI Platform instance and update the
external monitoring systems to use endpoints to send the events for the push connectors that
are available. For more information, see Push Connectors.

Integration via MID Server
The MID Server facilitates communication and movement of data between external applications,
data sources, services, and the ServiceNow AI Platform instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2905


<!-- page 2906 -->
Connector
Description
operation

Pull

You can configure connector instances to use connector definitions (script
instructions). This enables the MID Server to connect to external servers to obtain
event information using a pull operation.

Push

You can configure external systems to push event information to the ServiceNow
AI Platform instance via MID Server. For example, you can configure the MID
WebService Event Collector to push event messages to the MID Server. For more
information, see Pushing events to the MID Server using web service API.

Standard event form
A standard event form must be used by all events, regardless of how they arrive at the
ServiceNow AI Platform instance. For more information, see Event field format for event
collection.
Event Management Connectors domain personalization
Create events in different domains for all Event Management connectors using just a single
connector instance by personalizing domain separation of Event Management connectors.

How the domain is identified
In a ServiceNow instance, events are created within the logged-in or MID Server user domains.
However, you can create events in a different domain by providing metadata values in the event
HTTP request, including the URL, headers, request body (payload), and connector parameters.
The logged-in user or the MID Server user must have access to the provided domain. The
connector resolves the domain based on the provided identifier and creates events in that
domain.
System properties provide the default metadata that sets the domain-separated table to identify
the domain. For more information, see Domain properties installed with Event Management.

Connector Exceptions
You cannot personalize domain separation for the following pull connectors:
• SCOM
• IBM Netcool (supports only IBM Netcool_v2)
• HPOM
• Hyperic
You cannot personalize domain separation for the following push connectors:
• SAP SolMan Transform Script
• bmcTrueSight Transform Script
• Transform Generic Events MID
• TransformEvents_xmlSample
Related topics
Domain separation and Event Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2906


<!-- page 2907 -->
Personalize domains for pull connector events to use in event creation
Configure pull connectors to personalize domain separation of events so you can use them to
create events in domains other than the user's currently logged-in or MID Server domain.

Before you begin

Make sure that you have the following setup:
• You have read access to the domain information table for the evt_mgmt_integration role
(default table: core_company). For more information, see Configure an ACL rule .
• You enabled the evt_mgmt.connector_enable_custom_domain_separation
system property .
• You installed the following plug-ins on your ServiceNow instance:
◦ Event Management com.glideapp.itom.snac plug-in
◦ Event Management connectors sn_em_connector plug-in
◦ Domain Support - Domain Extensions Installer

com.glide.domain.msp_extensions.installer plug-in

You can download the plug-ins from the ServiceNow Store

.

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances > .
2. On the Connector Instances list, deactivate the connector instance of the connector for which
you want to configure domain separation by selecting it and clearing the Active check box.
3. Select Update.
4. Navigate to All > Event Management > Integrations > Connector Definitions.
5. From the Connector Definitions list, select your connector definition.
6. Determine whether all events should be created in a provided domain or determined by a
domain provided in the payload of each event.
a. In the Connector Parameters table, double-click Insert a new row
b. Choose the event creation domain definition location.
▪ To have all events be created in the provided domain, enter
payloadDomainInfoFieldValue in the Name column.
▪ To have events be created in the domain provided in the payload of the event, enter
payloadDomainInfoFieldName in the Name column.

Note: If both the payloadDomainInfoFieldValue and the

payloadDomainInfoFieldName are provided, the domain provided in the
payload of the event takes precedence.
c. Select Update.
7. Navigate to All > Event Management > Integrations > Connector Instances.
8. On the Connector Instances page, select your connector instance from the list.
9. In the Connector Instance Values list, provide a value in the Value field of the parameters.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2907


<!-- page 2908 -->
Parameter

Value

payloadDomainInfoFieldValue

The value that will be used to match the do­
main record. For example, ServiceNow.
The key in the payload that has the domain
identifier. For example, if the payload key com­
pany holds the domain identifier, then the
value in the Value column would provide the
company information. For example:
company
{

payloadDomainInfoFieldName

“source”: “Solarwinds”,
“host”: “127.0.0.1”,
“company”: “ServiceNow”
}

Note: Dot-walking isn’t supported.
10. Select Save.
11. Select Test Connector to verify the connection between the MID Server and the connector.
◦ If the test is successful, a confirmation message appears.
◦ If the test fails, a message provides instructions to correct the problem.
On a successful test, an onscreen message appears. If the test fails, follow the onscreen
message instructions to correct the problem and then run another test.

Note: Use a network tool such as ping to verify whether the credentials are correct and
network connection from the MID Server to the connector server.
12. After the connector is verified, select the Return to Connector Instance link.
13. Activate the connector instance by selecting Active and Update.
14. Optional: Configure the domain for events by providing domain metadata through the
connector parameters.
For example, to use the User [sys_user] table for a single connector instance in the Connector
Definitions form, create parameters with the following names, and add their values in the
Connector Instance form.
◦ connectorDomainInfoTableName - sys_user

Note: The table must be domain separated.
◦ connectorDomainInfoColumnName - user_name
◦ connectorDomainIdColumnName - sys_domain
◦ connectorDomainPathColumnName - sys_domain_path
For more information, see Connector domain metadata.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2908


<!-- page 2909 -->
Result

The Event Management connector is set up for domain separation.
Personalize domains for push connector events to use in event creation
Configure push connectors to personalize domain separation of events so you can use them
to create events in different domains other than the user's currently logged-in or MID Server
domain.

Before you begin

Make sure that you have the following setup:
• You have read access to the domain information table for the evt_mgmt_integration role
(default table: core_company). For more information, see Configure an ACL rule .
• You enabled the

evt_mgmt.connector_enable_custom_domain_separation .system property.
®

• You installed the following plug-ins in the ServiceNow AI Platform instance:
◦ Event Management (com.glideapp.itom.snac)
◦ Event Management connectors (sn_em_connector)
◦ Domain Support - Domain Extensions Installer
(com.glide.domain.msp_extensions.installer)
You can download the plug-ins from the ServiceNow Store

.

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Push Connectors.
2. Open a push connector.
3. On the Push Connector screen, scroll down to the Push Connector Configurations list and
select New.

Note: If this list is not displayed, you must create a push connector configuration
parameter. For more information, see Create a push connector configuration parameter.
4. In the Push Connector Configurations screen, determine whether events should be created
in the provided domain or the domain provided in the payload of each event.
Domain creation location

The provided domain

Parameter and values

◦ Field name: payloadDomainInfoFieldValue
◦ Value: domain-identifier
◦ Field name: payloadDomainInfoFieldName

◦ Value: field-name-in-payload
The domain provided in the payload of each
event
Example: If the payload key “company” holds
the domain identifier, then “company” is the
value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2909


<!-- page 2910 -->
Domain creation location

Parameter and values

“company”
{
“source”: “Solarwinds”,
“host”: “127.0.0.1”,
“company”: “ServiceNow”
}

Note: If both the payloadDomainInfoFieldValue and the

payloadDomainInfoFieldName parameters are provided, then the
payloadDomainInfoFieldName takes precedence.
5. Select Submit.

Result

Events are created in the domain referred to by the domain identifier.

Note: The table that stores domain information records (for example, core_company) must
be domain separated. For more information, see Domain-separate a custom table

.

Related topics
Integrate with push connectors
Connector domain metadata
Configure Event Management connectors
Event Management provides many connectors to pull or push events from external devices.
Connectors are available from the ServiceNow store as well as from third parties. You can also
create custom connectors.

Provided connectors (pull)
This table lists the connectors that are provided with Event Management.

Note:
• The Azure Metrics and AWS CloudWatch Metrics connectors display in the base system
only when the Operational Intelligence plugin (com.snc.sa.metric) is activated.
• All connectors support external credential storage solutions. For details on configuring
external credential storage, see External credential storage configuration .

Connectors

Supported version

Azure Monitor

Description

Send alert state changes to
the Azure Portal.

HPOM

08.60.005

Receive events from the HP
Operations Manager (HPOM).

Hyperic

5.8.4.0

Receive events from the
VMware vRealize Hyperic
server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2910


<!-- page 2911 -->
Connectors

Supported version

Description

Logicmonitor

156

Receive events from the
Logicmonitor server.

IBM Netcool

8.1.0

Receive events from IBM
Netcool/OMNIbus Object
Servers and Impact Servers.

Icinga2

2.4.1

Receive events from the
Icinga2 server.

Apache Kafka Consumer
Connector

• 3.0.0
• 3.2.0

Receive events from the
Apache Kafka server.

ServiceNow Cloud
Observability

2.1.1 or higher

Receive events from
the ServiceNow Cloud
Observability platform.

NagiosXI

5.5.2

Receive events from the
Nagios XI server.

NNMi

10.30.653

Receive events from the NNMi
server.

OBM, also known as OMi v2

10.01, 10.10, 10.11, 10.12, 10.60,
10.61, and 11.01

Receive alerts from the OBM
server.

OMi

10.01, 10.10, 10.11, 10.12, 10.60,
and 10.61

Receive alerts from OMi
server.

Op5

7.3.15

Receive alerts from an OP5
Monitor.

Opsview

5.4.0

Receive alerts from an
Opsview Monitor

PRTG

21.3.71

Receive alerts from a Paessler
PRTG Network Monitor source.

SAP Solution Manager

7.2 740 SP16

Receive alerts from an SAP
Solution Manager Monitor
source.

SCOM

• 2007 – version 6.1.7221.0
• 2012 - version 7.1.10226.0
• 2016 - version 7.2.117190

SolarWinds

• NPM 12.0
• SAM 6.2.4

vCenter

6.5

Alert and metric collection
from the Microsoft System
Center Operations Manager
(SCOM).

Receive events from the
SolarWinds monitor.

Receive events from
your VMware vSphere
environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2911


<!-- page 2912 -->
Connectors

Supported version

Description

vRealize

VMware vRealize Operations
Manager

Receive events from the
vRealize Operations Log and
Event Management servers.

Supported version: 8.10.0
Zabbix

5.0.9

Receive alerts from the Zabbix
server.

Provided connectors (push)
This table lists the connectors that are provided with Event Management. Generic push
connectors are also provided, one for event collection through the MID Server and the other
through the instance.
Before you begin, ensure the Event Management Connectors plugin is installed in the
ServiceNow AI Platform instance. You can download the plugin from the ServiceNow Store
website.

Connectors

Description

Supported authentication

AWS

Use the connector to process
Amazon Web Services (AWS)
alarms as events. The event
collection is through the
instance.

N/A

Azure

Use OAuth authentication
to process Azure platform
event messages. The event
collection is through the
instance.

• Integrate Azure Monitor with
OAuth authentication
• Integrate Azure Monitor with
basic authentication

Configure Azure Monitor Bidirectional connector

Use the Azure Monitor Pull
Basic authentication
connector to send information
from ServiceNow Event
Management to the Azure
Portal.

Microsoft Azure MID Push
Connector

Collect JSON formatted event Basic authentication
messages sent from Microsoft
Azure. The collection is
through the MID Server.

BMC TrueSight

Collect JSON formatted
Basic authentication
event messages sent from
BMC TrueSight Operations
Management (TrueSight). The
event collection is through the
MID Server.

New Relic

Collect JSON formatted event
messages sent from New
Relic. The event collection is
through the instance.

Basic authentication

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2912


<!-- page 2913 -->
Connectors

Description

Supported authentication

Dynatrace

Collect JSON formatted
event messages sent
from Dynatrace. The event
collection is through the
instance.

• Integrate Dynatrace with
OAuth authentication

Collect JSON formatted
event messages sent from
Datadog. The event collection
is through the instance.

• Integrate Datadog with
OAuth authentication

Datadog

• Integrate Dynatrace with
basic authentication

• Integrate Datadog with
basic authentication

Catchpoint

Configure the Catchpoint
connector to receive
Catchpoint events. Event
Management can process
the Catchpoint events as
ServiceNow events.

Basic authentication

Google Cloud Platform (GCP)

Collect JSON formatted event Basic authentication
messages sent from GCP. The
event collection is through the
instance.

Google Cloud Platform (GCP)
MID Push Connector

Collect JSON formatted event Basic authentication
messages sent from GCP. The
event collection is through the
MID Server.

Logicmonitor

Collect JSON formatted
event messages sent from
Logicmonitor. The event
collection is through the
instance.

Basic authentication

Logicmonitor MID Push
Connector

Collect JSON formatted
event messages sent from
Logicmonitor. The event
collection is through the MID
Server.

Basic authentication

Oracle Cloud Push Connector Use basic authentication
Basic authentication
to process Oracle Cloud
alarms. The event collection is
through the instance.
Prometheus

Collect JSON formatted
event messages sent from
Prometheus. The event
collection is through the
instance.

Basic authentication

Sentry

Configure the Sentry
Basic authentication
connector to receive Sentry
events. Event Management
can process the Sentry events
as ServiceNow events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2913


<!-- page 2914 -->
Connectors

Description

Supported authentication

SNMP traps

Process SNMP traps as
events.

Basic authentication

ThousandEyes

Collect JSON formatted
event messages sent from
ThousandEyes. The event
collection is through the
instance.

• Integrate ThousandEyes
with OAuth authentication
• Integrate ThousandEyes
with basic authentication

Email

Configure an inbound
email action to send email
notifications when events and
alerts are triggered.

Basic authentication

Oracle Enterprise Manager
trap collection

Configure the SNMP trap
connector to receive Oracle
Enterprise Manager Cloud
Control SNMP traps. Event
Management can process
these traps as events.

Basic authentication

Grafana

Collect JSON formatted
event messages sent from
Grafana. The event collection
is through the instance.

Basic authentication

EIF listener

Configure the EIF listener
context to receive EIF events.
Event Management can
process these EIF events as
ServiceNow events.

Basic authentication

Integrate Honeycomb events

Configure the Event
Management environment for
the collection of events from
Honeycomb by authenticating
Honeycomb as a data source.
In the Honeycomb platform,
set your ServiceNow AI
Platform as the rest endpoint
using a webhook.

Basic authentication

Integrate Instana events

Configure Instana with Event
Management by adding a
standard webhook in the
Instana console.

Basic authentication

Integrate Scout APM events

Enable the collection of
events from Scout APM by
authenticating Scout APM as
a data source to integrate it
with Event Management

Basic authentication

Integrate Panopta as a data
source

Configure the Panopta cloudbased monitoring solution
with Event Management.

Basic authentication

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2914


<!-- page 2915 -->
Connectors

Description

Supported authentication

URL format for generic JSON

Configure this generic
JSON target URL and
configure an event rule to
collect events:https://
<<INSTANCE>>/api/
sn_em_connector/
em/inbound_event?
source=genericJson

N/A

This URL can be used as-is
and requires an event rule to
be configured.

ServiceNow store - connectors
Connectors are available from the ServiceNow store. Download the required content from
ServiceNow Store .

Third party connectors
Connectors are also available from third parties. For further information, contact your sales
representative for available connectors and listeners.

Third party connectors

Link

AppDynamics Service Model Integration

AppDynamics Service Model Integration

Use this integration to enable your instance to
have AppDynamics Application Performance
Monitoring data fed into Event Management.
Juniper Mist
Use this integration to managed service
providers and large enterprises the ability
to integrate real-time events and alerts from
Juniper Mist with ServiceNow platform's
Event Management. This capability provides
a standardized approach to transform and
persist Juniper Mist events in the Events
Management table. The events data in
ServiceNow allows customers to create
their own incidents based on default or user
defined alert rules without interacting with the
Mist dashboard.
NetScout - nGeniusONE Alert integration

https://store.servicenow.com/
$appstore.do !/store/application/
e89296eb1b95561019a8a753604bcb24/1.0.0?
referer=%2Fstore%2Fsearch%3Flistingtype
%3Dallintegrations%25253Bancillary_app
%25253Bcertified_apps%25253Bcontent
%25253Bindustry_solution
%25253Boem%25253Butility
%25253Btemplate%25253Bgenerative_ai
%25253Bsnow_solution%26q%3DJuniper
%2520Mist&sl=sh

NetScout - nGeniusONE Alert integration

The NETSCOUT integration module enables
nGeniusONE to generate enhanced alerts to
ServiceNow ITOM with a contextual launch
capability for service triage. ServiceNow ITOM
users can launch queries into nGeniusONE
from any other alert with that context.
nGeniusONE dashboards and reports will
support the visualization of those alert
conditions to and from ServiceNow ITOM
Panopta Integration

Panopta integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2915


<!-- page 2916 -->
Third party connectors

Link

Integrate with this application for onedirectional transfer of events from Panopta to
Event Management.
Splunk Integration

Splunk Integration

Integrate the Splunk Add-on with ServiceNow
to enable Splunk users to create incidents
and events in Event Management. For
more information about the configuration
of this integration, see Splunk Add-on for
ServiceNow .
ScienceLogic

ScienceLogic Integration

Integrate with this application for onedirectional transfer of events from
ScienceLogic to Event Management
SevOne

SevOne Integration

Integrate with this application for onedirectional transfer of events from SevOne to
Event Management
Site24X7

Site24x7 Integration

Integrate with this application for onedirectional transfer of events from Site24x7 to
Event Management

Create a custom pull connector
You can create a customized pull connector that requires a script, connector definition, and
connector instance, to retrieve events on behalf of an event source.

Before you begin

Role required: evt_mgmt_admin

About this task

A custom connector script can make remote API calls for a new event source to send events
to the ServiceNow instance. You can create a script, and then add it as part of a new Event
Management connector definition and connector instance. This procedure automatically creates
a JavaScript code file using the name that you enter in the Name field as the filename. The
JavaScript custom code that accomplishes these actions must:
• Connect to an event monitoring tool.
• Retrieve events from an event monitoring tool.
• Send events to the Event [em_event] table using a web service API. See REST API

.

Each connector definition is specific to an event source vendor. The connector definition
specifies the MID Server script include that pulls events from the external event source. In
addition, the connector definition specifies what connector instance value parameters are
needed to connect to the external event source host.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2916


<!-- page 2917 -->
Procedure
1. Create a custom MID Server script include.
This example uses Groovy (deprecated). In place of a script include in Groovy, it is
recommended to use JavaScript.
a. Implement these methods:
▪ @Override OperationStatus testConnection()
▪ @Override OperationStatus execute()
b. Design the class to extend the ThirdPartyConnector.
Example
public class HypericConnector extends ThirdPartyConnector
c. Import platform classes for event creation, sending, logging, and third-party connector base
classes.
Example
package com.service_now.mid.probe.tpcon.test
import com.glide.util.Log
import com.service_now.mid.MIDServer
import com.service_now.mid.probe.event.IEventSender
import com.service_now.mid.probe.event.SNEventSender
import com.service_now.mid.probe.tpcon.OperationStatus
import com.service_now.mid.probe.tpcon.OperationStatusType
import com.service_now.mid.probe.tpcon.ThirdPartyConnector
import com.snc.commons.eventmgmt.Event

d. Connect to the data collector, such as SCOM or VMware vRealize Hyperic (Hyperic), with the
API provided by the collector.
e. Use the context parameters to set the event field values that came from a connector
instance.
Example
def authString = (context.username +
':'+ context.password).getBytes().encodeBase64().toString()
def urlStr = 'http://'+context.host + ':'
+ context.parameters.port + '/' + apiFunction
f. Implement the execute function in the script.
It reads events from the connector using its API to create Event objects and send them to the
ServiceNow instance. For example:
Example

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2917


<!-- page 2918 -->
GPathResult alertsResponse1 =
readAlerts('hqu/hqapi1/alert/find.hqu?begin=' + lastSignatureStr +
'&end='+ tillStr +'&count=1000000&severity=1&inEscalation=false&notFixed=false');
Event event = new Event()
event.emsSystem = context.name
event.source = "Hyperic"
event.description = it.@reason
event.type = it.@name
...
IEventSender eventSender =
MIDServer.getSingleton(SNEventSender.class)
for (Event event : list) {
eventSender.sendEvent(event)
}
2. Navigate to MID Server > MID Server Script Files and create a script.
3. Specify the Parent field as Groovy, complete the form as appropriate, and then click Submit.
4. Navigate to Event Management > Integrations > Connector Definitions and create a
connector definition.
5. In the Groovy script to run field, select the MID Server script file, complete the form as
appropriate.
In addition to username or host, you can add any other parameter, for example, port, and then
click Submit.
6. Navigate to Event Management > Integrations > Connector Instances and create a connector
instance.
7. In the Connector definition field, select the connector definition, complete the form as
appropriate, and then click Submit.
8. To confirm or debug the script, use debug printouts from Groovy to the MID Server log.
9. To monitor incoming events using the custom connector instance, navigate to ECC > Queue
and filter on ConnectorProbe.
10. Create a custom connector definition.
a. Navigate to All > Event Management > Integrations > Connector Definitions.
b. Click New.
c. In the Name field, type a descriptive name for the connector definition.
d. In the Script type field, select Javascript.
e. Right-click the form header and select Save.
The Javascript to run field is automatically populated with the name of the JavaScript template
file.
11. To edit the default JavaScript file, click the information icon (
file name and follow these steps:

) to the right of the JavaScript

a. Specify the information required for the testConnection function.
This function tests the connector definition to verify if the connection to the target is valid.
b. Specify the information required for the execute function.
This function retrieves the information from the external source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2918


<!-- page 2919 -->
c. Specify the information required for the retrieveKpi function.
This function retrieves the metric data from the external source.
12. Optional: You can replace the default JavaScript with your JavaScript code.
13. Fill in the fields, as appropriate.
Connector Definition form
Field

Description

Default schedule

The number of seconds between attempts to receive events.

Bi-directional

Specify to enable the external monitoring system to be updated if
the alert is changed. There is default implementation for SCOM.

Alert field identifier

Specify the alert field that, if changed manually, causes the
external monitoring system to be updated.

Note: This field appears only if Bi-directional is selected.
Collect metrics

Select to enable the collection of metrics.

Note: Metrics are collected only for SCOM external event
sources.
Metrics collection
default schedule
(seconds)

Specify the number of seconds of information that must be
collected. The default is 10 seconds.

Connector Parameters

Specify the parameters to enable communication with an event
server.

Note: This field appears only if Collect metrics is selected.

Connector Definition to The MID Server name to process events from the event server. If
MID Server Capabilities not specified, an available MID Server is used.
14. Click Submit.
Configure a pull connector
Configure a pull connector to schedule the frequency of event collection.

Before you begin

Before starting this procedure:
• Locate or define a connector definition.
• Create the credentials to connect to the event source.
• If the connector instance is to be used for the collection of Metric Intelligence metric data, the
Metric Intelligence plugin must be activated.
Role required: evt_mgmt_admin

About this task

You can use a connector instance to control the location and manner in which events arrive from
external sources. You can optionally select to collect Metric Intelligence information from the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2919


<!-- page 2920 -->
external sources that you are connecting to. The Metric Intelligence feature is for the analysis of
trends, threshold definitions, and anomaly detection. You can run a test to confirm that connector
instance parameters let the MID Server receive events from a supported external event source to
the Event [em_event] table. The test also confirms:
• The MID Server is running.
• The host is running on the IP address that is in the Host IP field.
• Both the MID Server and the host are running in the same domain.
• The connector instance value fields are valid.
• A connection can be made to the event source, using API, to retrieve events.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. Fill in the fields, as appropriate.
Connector Instance Form
Field

Description

Name

A unique name for the connector instance record, such
as the name of event source host.

Description

Any optional information that the administrator wants to
use to identify this record.

Connector definition

The vendor and protocol used to gather events from the
external event source. Select the connector definition
that matches the source of external events. The options
available in the base system are, for example:

Note: Metric Intelligence
connectors (such as the
AWS CloudWatch and
AzureConnector), appear
in the base system only
if the Metric Intelligence
plugin (com.snc.sa.metric) is
activated.

◦ AWS CloudWatch
◦ AzureConnector
◦ HPOM
◦ IBM Netcool
◦ NagiosXI
◦ NNMi
◦ OMi
◦ SCOM
◦ SolarWinds
◦ Op5
◦ PRTG
◦ vCenter
◦ Zabbix
For a list of the connector definitions available in
the base system, see Configure Event Management
connectors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2920


<!-- page 2921 -->
Field

Description

Host IP

The IP address of the event source host. The system
uses this IP address to select the appropriate MID
Server for communicating with the event source host.

Credential

The record from the Credentials [discovery_credentials]
table containing valid credentials to the event source
host.

Event collection last run time

The date and time of the most recent event import. The
value of this field is automatically populated.

Last event collection status

The status of the last import. The value of this field is
automatically populated.
◦ None - A valid connection has not yet been
established.
◦ Success - A successful connection was established.
◦ Error - A connection was established. However the
external event source was not updated.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for
new events from the external event source. This value
cannot be lower than the minimum schedule property,
which by default is 120 seconds.

Last error message

Last error message received by the connector. If the
test connector fails, an error message appears in this
field.

Active

This option appears only after the form has been saved.
Do not select this check box until after you test the
connection between the MID Server and the connector.
Select this check box to enable pulling events from this
external event source.

Bi-directional

Select to invoke the bi-directional option. This option is
available only when the specified connector definition
has been configured with bi-directional values.
When selected, this option enables the bi-directional
exchange of values to-and-from the external event
source. The Last bi-directional status option appears
only when this option is selected.
This option appears only if the connector definition that
is selected is SCOM.

Last bi-directional status

The value of this field is automatically populated. The
status values are:
◦ None - A valid connection has not yet been
established.
◦ Success - A successful connection was established.
◦ Error - A connection was established. However the
external event source was not updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2921


<!-- page 2922 -->
Field

Description

This option appears only if the connector definition that
is selected is SCOM.
Metrics collection

Designates collection of Metric Intelligence metric data.

Note: The metrics connector supports working
against the SCOM database (MSSQL) that is
configured to work with SSL.
This option appears only if the connector definition
supports metric collection, such as SCOM.
Metrics collection last run time

The date and time of the most recent metric data
collection. The value of this field is automatically
populated.

Last metrics collection status

Status of the metric data collection activity. The value of
this field is automatically populated.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM)
and if the Metrics collection option is selected.

Metrics collection schedule
(seconds)

The time, in seconds, to repeat the metric data
collection scheduled job.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM)
and when the Metrics collection option is selected.

Metrics database host

Enter either the IP address or the host name of the
metrics database host.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM).

Connect using a named instance

Select to specify the MSSQL named instance to
connect to.
This option appears only if the connector definition that
is selected is SCOM.

Metrics database named instance

The name of the metrics database instance.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM).

Metrics database port

The port used by the metric database. The connection
is made using JDBC. The base system value is 1,433.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM).

Database login with Windows
authentication

Perform database login with the credentials of the logon user that is defined on the MID Server service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2922


<!-- page 2923 -->
Field

Description

This option appears only if the connector definition that
is selected is SCOM.
Metrics collection running

When selected, indicates that the Metric Intelligence
collection is running.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM).

Metrics database credential

Credentials for the metric database.
This option appears only if the connector definition that
is selected supports metric collection (such as SCOM).

Connector Instance Values

The related list containing connection parameters for
the event source host. The list of parameters depends
on the selected connector definition.

MID Servers for Connectors

The name of theMID Server to process events from the
event server.

4. Right-click the form header and select Save.
5. Click Test connector to verify that the MID Server can communicate with the external server
host.
6. If the test fails, follow the instructions on the page to correct the problem and then run another
test. The description of the reason for failure is shown in the MID Server log, according to the
type of error, such as Events, Metrics, or Bi-Directional.
7. After a successful test, select the Active check box and then click Update.
8. Confirm that Event Management processes events using this connector instance by manually
creating an event.
Related topics
Configure Event Management connectors
Configure a default MID Server for connectors
You can set a default MID Server for connectors to ensure that there is always a MID Server
available to receive external events.

Before you begin

Role required: evt_mgmt_operator

About this task

The default MID Server must have connectivity to all external event sources.

Procedure
1. Enter sys_properties.list in the navigation filter to open the System Property
[sys_properties] table.
2. Select the mid.server.connector_default system property.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2923


<!-- page 2924 -->
Task Template form
Field

Description

mid.server.connector_default Default MID Server for connectors
Determines the MID Server connectors to use when no MID
Server is specified. Must match a MID Server name.
◦ Type: select string from the list
◦ Value: enter the name of an existing MID Server, for
example, SNC MID Server
◦ Location: System Property [sys_properties] table

Note: You can reset the default MID Server by clearing the

mid.server.connector_default property or by updating the value of this
property to a different MID Server. This property is not automatically reset in all scenarios.
4. Click Update.
Configure the Dynatrace metrics connector instance
Configure the Dynatrace connector instance to receive Metric Intelligence raw data from the
Dynatrace server.

Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
• Create an access token in Dynatrace with Read Metrics (metrics.read) scope permissions, to
enable fetching metric data. This token is used in the connector to call the Dynatrace REST
API.
• Configure the Service graph connector for Dynatrace. This is configured in the instance and
discovers Dynatrace CIs. For details on configuring this connector, see Configure Service
Graph Connector for Observability - Dynatrace using guided setup .
Role required: evt_mgmt_admin

About this task

By default, the Dynatrace service graph connector discovers CIs and supports metric collection
for the following entity types:
• HOST
• APPLICATION
• SERVICE
• PROCESS_GROUP_INSTANCE
Configure other entity metrics for collection when creating event rules for CI binding.

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Select New and create a connector instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2924


<!-- page 2925 -->
For details on the connector instance fields displayed on the page, see Dynatrace connector
instance form.
3. Select and hold (or right-click) the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. Optional: In the Connector Instance Values section, you can edit the values of the mandatory
Dynatrace parameters.
For details on the connector instance value parameters, see Dynatrace connector instance
value parameters.
5. In the MID Servers for Connectors section, add a MID Server for the Dynatrace connector to
use.
6. In the Related Links section, select Configure metrics to collect.
Only metrics with the value Active=true are collected by the instance.
7. Configure the metrics you want the instance to collect with the value Active=true.
Metrics with the value Active=false are not collected by the instance.
8. Optional: Select New to create new metrics.
Configure the fields on the Connector instance metrics - New record
(sn_em_connector_instance_metric) page.
Connector instance metrics page - New record
Field

Description

Metric name

Display name for the metric to be configured
in the ServiceNow instance.

Metric connector instance

Set by default to Dynatrace connector
instance.
All metrics are collected for the Dynatrace
connector instance.

Metric type

The name of the Dynatrace entity type which
the metric belongs to.

Metric ID

The Dynatrace metric ID of the metric being
collected.

Active

Select for the metrics to collect.

◦ Ensure that the CIs related to the metrics exist in the instance.
◦ Create an event rule to perform CI binding, as needed. For details, see Create or edit an
event rule.
9. Select Test Connector to verify the connection between the MID Server and the connector.
10. After a successful test, select the Active check box and then select Update.
Configure the Datadog metrics connector instance
The Datadog Metrics connector retrieves performance metrics from your Datadog environment
and sends them to your ServiceNow instance. Users can use SN anomaly detection capabilities
and correlate metric anomalies with events and logs alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2925


<!-- page 2926 -->
Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
•◦ Create an API key and Application Key in Datadog. These are used in the connector to call
the Datadog REST API.
◦ Configure the Service graph connector for Datadog. This is configured in the instance and
discovers Datadog CIs. For details on configuring this connector, see .
Create a Credentials record in your ServiceNow instance:
1. Navigate to Credentials & Connections > Credentials.
2. Select New and select API Key Credentials.
3. In the Name field, enter a descriptive name. For example, Datadog API Key.
4. In the API Key field, enter your Datadog API key.
5. Select Submit to save the record.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. In the list, select Datadog Metrics.
The form displays the default parameters for the connector. You typically do not need to modify
these parameters on the definition itself.

Note: The blue information banner at the top of the page serves as a permanent
reminder of the automatic capping applied to key performance parameters to ensure
system stability.
3. In the Connector Instances related list, click New.
4. On the Connector Instance form, fill in the fields.
For details on the connector instance fields displayed on the page, see Datadog connector
instance form.
5. Right-click the form header and select Save.
The Connector Parameters and Connector Instance Metrics related lists appear. For details on
the connector instance value parameters, see Datadog connector instance value parameters.
6. Optional: To add custom, select New and fill the form.
Connector instance metrics page - New record
Field

Description

Metric name

Display name for the metric to be configured
in the ServiceNow instance.

Metric connector instance

Set by default to Datadog connector
instance.
All metrics are collected for the Datadog
connector instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2926


<!-- page 2927 -->
Field

Description

Metric type

The name of the Datadog entity type which
the metric belongs to.

Metric ID

The Datadog metric ID of the metric being
collected.

Active

Select for the metrics to collect.

◦ Ensure that the CIs related to the metrics exist in the instance.
◦ Create an event rule to perform CI binding, as needed. For details, see Create or edit an
event rule.
7. Select Test Connector to verify the connection between the MID Server and the connector.
8. After a successful test, select the Active check box and then select Update.
Configure the Kafka metrics connector instance
Configure the Kafka metric consumer connector instance to read message send to Kafka server
over topic.

Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
OAuth authentication for the Kafka Metrics Connector is supported only in the Australia release
and later. Ensure your instance is upgraded to Australia or a newer version before configuring
OAuth.
• Create Kafka SSL credentials on ServiceNow instance. For more information, see Kafka SSL
credentials fields.
• ServiceNow does not support discovery for Kafka. Therefore, create the CI entry manually in
the respective table.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Select New and create a connector instance.
For details on the connector instance fields displayed on the page, see Kafka connector
instance form.
3. In the MID Servers for connectors section,specify a MID Server that is up and is valid.
4. Right-click the form header and select Save.
5. In the table presenting the connector instance values, verify the populated connector instance
values based on your Kafka setup and the message (JSON payload) that you received from the
Kafka topic with <field_mappings> value.
6. Optional: In the Connector Instance Values section, you can edit the values of the mandatory
Kafka parameters.
For details on the connector instance value parameters, see Kafka connector instance value
parameters.
7. Right-click the form header and select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2927


<!-- page 2928 -->
8. Test the connection between the MID Server and the Kafka Metric Consumer connector.
◦ Select Test Connector.
◦ If the test connection fails, verify whether the credential is valid, and that the network is
connected from the MID Server to the Kafka broker.

Note: Kafka topic name validation occurs only in Test Connector validation.
9. After a successful test, make the connector instance active by selecting the Active check box.
10. Select Update.
Configure the Nagios metrics connector instance
Configure the Nagios metric connector instance to receive Metric Intelligence raw data from the
Nagios server.

Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
• Create basic authentication credentials on ServiceNow instance with Nagios SQL database
username and password.
• ServiceNow does not support discovery for Nagios. Therefore, create the CI entry manually in
the respective table using the hostname configured on the Nagios platform.
Role required: evt_mgmt_admin

About this task

By default, CI binding will occur for the following entities:
• HOST HTTP Endpoint: The event rule applies to the Nagios metric HTTP if you are running a
check that includes command_name as service_http.
• MySQL Instance: The event rule applies to the Nagios metric MySQL if you are running a check
that includes command_name as mysql.
If you are running any other checks on HTTP endpoints or MySQL, you can edit the existing
event rule to add the command_name. For other entities, configure event rules based on CI
binding requirements.

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Select New and create a connector instance.
For details on the connector instance fields displayed on the page, see Nagios connector
instance form.
3. Select and hold (or right-click) the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. Optional: In the Connector Instance Values section, you can edit the values of the mandatory
Nagios parameters.
For details on the connector instance value parameters, see Nagios connector instance value
parameters.
5. In the MID Servers for Connectors section, add a MID Server for the Nagios connector to use.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2928


<!-- page 2929 -->
6. Ensure that the CIs related to the metrics exist in the instance.
7. Create an event rule to perform CI binding, as needed.
For details, see Create or edit an event rule.
8. Select Test Connector to verify the connection between the MID Server and the connector.
9. After a successful test, select the Active check box and then select Update.
Configure the Zabbix metrics connector instance
Configure the Zabbix Metric connector instance to receive Metric Intelligence raw data from the
Zabbix server.

Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
Create basic authentication credentials on ServiceNow instance with Zabbix server username
and password.
Role required: evt_mgmt_admin

About this task

ServiceNow does not support discovery for Zabbix, so CI entries must be manually created in the
appropriate table using the hostname configured in the Zabbix platform.
• Create an Event Rule to bind specific CIs.
• Users can add tag information to Zabbix items, and the relevant tags will be included in the
metric-to-CI records. These tags can also be used as filter conditions in the Event Rule for CI
binding.

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Select New and create a connector instance.
For details on the connector instance fields displayed on the page, see Zabbix connector
instance form.
3. Select and hold (or right-click) the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. Optional: In the Connector Instance Values section, you can edit the values of the mandatory
Zabbix parameters.
For details on the connector instance value parameters, see Zabbix connector instance value
parameters.
5. In the MID Servers for Connectors section, add a MID Server for the Zabbix connector to use.
6. Select Test Connector to verify the connection between the MID Server and the connector.
7. After a successful test, select the Active check box and then select Update.

Note: ServiceNow supports only unsigned float and unsigned integer metric types for
Zabbix.
Configure the SolarWinds metrics connector instance
Configure the SolarWinds connector instance to receive Metric Intelligence raw data from the
SolarWinds server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2929


<!-- page 2930 -->
Before you begin

To activate metric collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
Configure the Service graph connector for SolarWinds. This is configured in the instance
and discovers SolarWinds CIs. For details on configuring this connector, see Service Graph
Connector for SolarWinds .
Role required: evt_mgmt_admin

About this task

By default, the Solarwinds Metric Connector Collects metrics from the following tables:
• Orion.CPULoad
• Orion.NPM.InterfaceTraffic
• Orion.VolumePerformanceHistory
• Orion.VolumeUsageHistory
• Orion.ResponseTime

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Select New and create a connector instance.
For details on the connector instance fields displayed on the page, see Solarwinds connector
instance form.
3. Select and hold (or right-click) the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. Optional: In the Connector Instance Values section, you can edit the values of the mandatory
SolarWinds parameters.
For details on the connector instance value parameters, see Solarwinds connector instance
value parameters.
5. In the MID Servers for Connectors section, add a MID Server for the SolarWinds connector to
use.
6. In the Related Links section, select Configure metrics to collect.
Only metrics with the value Active=true are collected by the instance.
7. Configure the metrics you want the instance to collect with the value Active=true.
Metrics with the value Active=false are not collected by the instance.
8. Optional: Select New to create new metrics.
Configure the fields on the Connector instance metrics - New record
(sn_em_connector_instance_metrics_solarwinds) page.
Connector instance metrics page - New record
Field

Description

Metric name

Name for the metric to be configured in the
ServiceNow instance.

Metric connector instance

Set by default to SolarWinds connector
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2930


<!-- page 2931 -->
Field

Description

All metrics are collected for the SolarWinds
connector instance.
Additional columns

(Optional) List of additional columns to fetch
for CI-related information.
For example: DateTime, Node, Resource.
If DateTime is not provided, the current
time is used as the metric timestamp. If
Node and Resource are provided, they are
populated accordingly. To reference fields
from a parent table, use dot-walking format,
such as Interface.InterfaceName.
If a field should populate a specific standard
field (like Resource), use an alias with
the same name. For example, to use
InterfaceName as the resource, specify
it as Interface.InterfaceName AS
Resource.

Table Name

Name of the table from which metrics are
collected.

◦ Ensure that the CIs related to the metrics exist in the instance.
◦ Create an event rule to perform CI binding, as needed. For details, see Create or edit an
event rule.
9. Select Test Connector to verify the connection between the MID Server and the connector.
10. After a successful test, select the Active check box and then select Update.

Note: Ensure that Registration Mode is enabled for the SolarWinds source in the Metric
Sources table.
Configure event collection from HP OMi
Configure the HP Operations Manager (OMi) connector instance to receive alerts from the HP
OMi server.

Before you begin

Supported versions: 10.01, 10.10, 10.11, 10.12, 10.60, and 10.61.
The OMi connector is not supported on versions below version 10.
Create Basic Auth type of credential to connect to OMI.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance with the following details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2931


<!-- page 2932 -->
Field

Value

Name

Descriptive name for the OMi connector.

Description

Description for the use of the OMi event collection
instance.

Host IP

Specify the OMi IP address.

Credential

Click in the Credential field. Select a Basic Auth
credential from the list or click the search icon. Either
select the required credentials from the list or click New
and create the required credentials using Basic Auth
type. If you create the credentials, save them using a
unique and recognizable name, for example OMiOPS.

Event collection last run time

Last run time value. Automatically updated.

Last event collection status

Last run time status. Automatically updated.

Event collection schedule
(seconds)

Frequency in seconds that the system checks for new
events from OMi. The default value is 120 seconds.

Last error message

Last error message. Automatically updated.

Connector Definition

Select OMi.

MID Servers (MID Server for
Connectors section)

Optional. Name of a MID Server. If no MID Server is
specified, an available MID Server that has a matching
IP range is used. In the MID Servers for Connectors
section, specify a MID Server that is up and valid. You
can configure several MID Servers. If the first is down,
the next MID Server is used. If that MID Server is not
available, the next is selected, and so on. MID Servers
are sorted according to the order that their details were
entered into the MID Server for Connectors section.

3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2932


<!-- page 2933 -->
4. In the Connector Instance Values section, specify the OMi values.
a. days_from.
Specify the number of days for which events must be collected on the first collection cycle.
Default 7.
b. debug.
Default false. To enter debug mode, specify true.
c. port.
Default 80.
d. protocol.
Default http.
e. query_filter.
Default value is false. If you do want to use this extra filter to query events, specify the event
attributes. For example, assigned_user = "admin" AND title = "My Title".
The query filter criteria are:
▪ A filter property that specifies an event attribute, such as, related_ci
▪ A supported operator, for example, OR or AND
▪ A value for the filter property, for example, admin or integrator
Everything from the query_filter field undergoes URL encoding and is then passed as a
parameter to the OMi API call. For detailed information on how to build the filter query, see
“Filtering by Event Attributes: query” in the HP OMi Extensibility Guide. For example, to query
the events for a list of events that are assigned to the admin user, specify:
event_list?query=assigned_ user%20EQ%20"admin"
To nest query_filter event attributes, specify the hierarchy using square brackets "[ ]".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2933


<!-- page 2934 -->
f. inclusion list.
Default value:false. Specify a comma-separated list to include this feature to add
attributes that should be collected and added to the Event Management Additional
information field.
5. Right-click the form header and select Save.
6. Click Test Connector to verify the connection between the MID Server and the connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the HP OMi server.
8. After a successful test, select the Active check box and then click Update.
Configure event collection from HPOM
Configure the HPOM connector instance to receive events from HP Operations Manager
(HPOM).

Before you begin

Role required: evt_mgmt_admin
Supported version: 08.60.005.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create an HPOM connector instance with the following details:

Field

Value

Name

Specify a unique name for the HPOM connector instance.

Host IP

Specify the HPOM IP address.

Credential

Click in the Credential field. Select a credential from the list
or click the search icon. Either select the required credentials
from the list or click New and create the required credentials.
If you create the credentials, save them using a unique and
recognizable name, for example, HPOMOPS.

Schedule (seconds)

The frequency in seconds that the system checks for new events
from HPOM.

Description

Type a description for the use of the HPOM event collection
instance.

Connector definition

The vendor and protocol used to gather events from the external
event source. Select the HPOM connector definition.

Last error message

The last error message is automatically updated.

Last run time

The last run time value is automatically updated.

Last run status

The last run time status is automatically updated.

MID Servers (MID Server
for Connectors section)

Optional. Name of a MID Server. If no MID Server is specified,
an available MID Server that has a matching IP range is used. In

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2934


<!-- page 2935 -->
Field

Value

the MID Servers for Connectors section, specify a MID Server
that is up and valid. You can configure several MID Servers. If the
first is down, the next MID Server is used. If that MID Server is not
available, the next is selected, and so on. MID Servers are sorted
according to the order that their details were entered into the MID
Server for Connectors section.
3. Right-click the form header and click Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Parameters section, specify the values of the mandatory HPOM parameters.
◦ driver. Specify the driver to be used to make the call. This driver is specific to the type of
database you are calling into.
▪ For an IBM DB2 Universal driver, specify: com.ibm.db2.jcc.DB2Driver
▪ For an Oracle driver, specify: oracle.jdbc.OracleDriver
▪ For a Microsoft SQL driver, specify: com.microsoft.sqlserver.jdbc.SQLServerDriver
▪ For a MySQL driver, specify: com.mysql.jdbc.Driver
▪ For a Sybase driver, specify: com.sybase.jdbc3.jdbc.SybDriver
◦ url. Specify a URL. The JDBC protocol uses a connection string to establish the
authentication and other parameters to establish a connection between the client and
the database. Each database has its own connection string format. In the following URLs,
replace the variables, for example, <username> and <password>, with your values.
▪ For an IBM DB2 Universal URL, specify: [jdbc:db2://sysmvs1.stl.ibm.com:<port number>/
<database name>:user=<username>;password=<password>]
For example: jdbc:db2://sysmvs1.stl.ibm.com:5021/
regionsdb:user=example;password=wlrs21.
▪ For an Oracle URL, specify: [jdbc:oracle:thin:@<IP address>:<port number>:<database
name>]
For example: jdbc:oracle:thin:@172.31.255.255:4028:OracleMain.
▪ For a Microsoft SQL URL, specify: [jdbc:sqlserver://<IP
address>;user=<username>;password=<password>]
For example: jdbc:sqlserver://localhost;user=example;password=w3lrs2.
▪ For a MySQL URL, specify: [jdbc:mysql://<IP address>/database?
user=<username>;password=<password>]
For example: jdbc:mysql://localhost/database?user=example;password=65wlrs.
▪ For a Sybase URL, specify: [jdbc:sybase:Tds:<IP address>:<port number>/<database
name>?user=<username>;password=<password>]
For example: jdbc:sybase:Tds:172.31.255.255:4100/SYBMAIN?
user=example;password=wlrs1m.
5. Use a network tool, such as ping, to verify that the HPOM server is running and the IP address
matches the value in the Host IP field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2935


<!-- page 2936 -->
6. Click Test connector to verify the connection between the MID Server and the HPOM
connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the HPOM server.
8. After a successful test, select Active and then click Update.
Related topics
Configure a pull connector
Configure event collection from Hyperic
Configure the Hyperic connector instance to receive events from the VMware vRealize Hyperic
server.

Before you begin

Role required: evt_mgmt_admin
Supported version: 5.8.4.0.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a Hyperic connector instance with the following details:

Field

Value

Name

Specify a unique name for the Hyperic connector instance.

Host IP

Specify the Hyperic IP address.

Credential

In the Credentials form, click New and create the required
credentials. Save the credentials using a unique and
recognizable name, for example, HypericOPS.

Schedule (seconds)

The frequency in seconds that the system checks for new
events from Hyperic.

Description

Type a description for the use of the Hyperic event collection
instance.

Connector definition

The vendor and protocol used to gather events from the
external event source. Select the Hyperic connector definition.

Last error message

The last error message is automatically updated.

Last run time

The last run time value is automatically updated.

Last run status

The last run time status is automatically updated.

MID Servers (MID Server for
Connectors section)

Optional. Name of a MID Server. If no MID Server is specified,
an available MID Server that has a matching IP range is used.
In the MID Servers for Connectors section, specify a MID
Server that is up and valid. You can configure several MID
Servers. If the first is down, the next MID Server is used. If that
MID Server is not available, the next is selected, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2936


<!-- page 2937 -->
Field

Value

MID Servers are sorted according to the order that their details
were entered into the MID Server for Connectors section.
3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Parameters section, specify the values of the mandatory Hyperic parameters.
a. port Default value 7080.
b. protocol Default value http.
5. Click Test connector to verify the connection between the MID Server and the Hyperic
connector.
6. If the test fails, follow the instructions that are issued by the error to correct the problem and
then run another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the Hyperic server.
7. After a successful test, select the Active check box and then click Update.
Related topics
Configure a pull connector
Configure event collection from IBM Netcool
Configure the IBM Netcool_V2 connector to receive events from IBM Netcool/OMNIbus
Object Servers and Impact Servers. The IBM Netcool_V2 connector uses REST API calls and is
bidirectional.

Before you begin

For the IBM Netcool_V2 connector:
• Role required: evt_mgmt_admin
• Perform connector validation on IBM NetCool/OMNIbus version 8.1.0.

About this task

To use IBM Netcool_V2 connector, configure a connector instance for the MID Server.

Note: The IBM Netcool connector is deprecated and only IBM Netcool_V2 connector is
supported.

Procedure
1. Navigate to Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance with the following details:

Field

Value

Name

Specify a unique name for the Netcool
connector instance.

Description

Type a description for the use of the Netcool
event collection instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2937


<!-- page 2938 -->
Field

Value

Host IP

Specify the Netcool IP address.

Credential

In the Credentials form, click New, and create
the required credentials. Save the credentials
using a unique and recognizable name, for
example, NetcoolOPS.

Event collection last run time

The last run time value is automatically
updated.

Last event collection status

The last run time status is automatically
updated.

Event collection schedule (seconds)

The frequency in seconds that the system
checks for new events from Netcool. The
default value is 120 seconds.

Last error message

The last error message is automatically
updated.

Connector definition

Select IBM Netcool_V2 to gather events from
the external event source.

MID Servers (MID Server for Connectors
section)

Specify a MID Server that is up and is valid.
You can configure several MID Servers. If the
first is down, the next MID Server is used. If
that MID Server is not available, the next is
selected, and so on. MID Servers are sorted
according to the order that their details were
entered into the MID Server for Connectors
section. If no MID Server is specified, an
available MID Server that has a matching IP
range is used.

3. Right-click the form header and click Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Parameters section, specify the value of the required Netcool parameters.
Connector

Required parameters

port: The port number on which IBM Netcool
is running. For example: 8080
IBM Netcool_V2

initial_sync_in_days: The number of days of
data fetched on first pull. The default value is
3, but can be changed according to your re­
quirements.

5. Verify that Netcool servers are up and running:
For the IBM Netcool_V2 connector, use this REST API call to verify that the Netcool API is up
and running: http://hostname:port/objectserver/restapi/alerts/status
6. Right-click the form header and click Save.
7. Click Test connector to verify the connection between the MID Server and the Netcool
connector.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2938


<!-- page 2939 -->
8. If the test fails, follow the instructions that are issued by the error to correct the problem and
then run another test.
9. After a successful test, select the Active check box and then click Update.
Related topics
Configure a pull connector
Configure event collection from an Icinga2 connector
Configure the Icinga 2 (Icinga) connector instance to receive events while monitoring your
network resources.

Before you begin

Role required: evt_mgmt_admin
Supported version: 2.4.1.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.
Connector Instance form
Field

Description

Name

Descriptive and unique name for the Icinga connector.

Description

Description for the use of the Icinga event collection
instance.

Connector definition

Name of the required connector definition. Select Icinga2.

Host IP

IP address where Icinga is installed.

Credential

Permission to connect to Icinga. Click the search icon in
the Credential field. Use Basic Authentication credentials.
Either select the required credentials from the list or
click New and create the required credentials on the
Credentials form. If you create the credentials, save them
using a unique and recognizable name, for example,
ICINGA2CHCK.

Event collection last run time

Last run time value. Automatically updated.

Last event collection status

Last run status. Automatically updated.

Event collection schedule
(seconds)

Frequency, in seconds, that the system checks for new
events from Icinga. The default value is 120 seconds.

Last error message

Last error message. Automatically updated.

4. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2939


<!-- page 2940 -->
a. debug: Display debug messages. Default value: false. Specify true to see debug messages.
b. logPayloadForDebug: Display payload related debug messages. Default value: false. Specify
true to see payload related debug messages.
5. In the Connector Instance Values section, verify and where required, modify the default
connector instance values.

Field

Description

debug

Display debug messages. Default value: false. Specify true to see
debug messages.

port

Number of the connector port. Default value: 5665.

protocol

Type of protocol. Default protocol type: https.

alert_type

Provide the Icinga alert type details. There are 2 types of an alert in
Icinga2: SOFT and HARD
SOFT: Connector instance will pull a soft alert.
HARD: Connector instance will pull a hard alert.

6. Optional: In the MID Servers for Connectors section, specify a MID Server that is up and is
valid.
If no MID Server is specified, an available MID Server that has a matching IP range is used.
You can configure several MID Servers. If the first is down, the next MID Server is used. If that
MID Server is not available, the next is selected, and so on. MID Servers are sorted according
to the order that their details were entered into the MID Server for Connectors section.
7. Right-click the form header and select Save.
8. Test the connection between the MID Server and the Icinga connector.
a. Click Test Connector.
If the test fails, follow the instructions that the error issues to correct the problem and then
run another test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2940


<!-- page 2941 -->
Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the external monitoring tool.
b. After a successful test, select the Active check box.
9. Click Update.
Configure event collection from Logicmonitor
The Logicmonitor pull connector sends information from Event Management to Logicmonitor.
It sends responses received from a Push connector in a bi-directional environment to
Logicmonitor.

Before you begin

Role required: evt_mgmt_admin

About this task

Starting from the Xanadu release, the OOTB (Out-Of-The-Box) rules provided with the connector,
which you have not previously used (i.e., neither activated, deactivated, nor modified), will now
have theApply additional matching rulescheck box set to true. Previously, this check box was
disabled. This change allows you to execute more event rules or automation using the same filter
conditions for the connector.

Note: This feature applies only to active event rules.
Procedure
1. Navigate toAll > Event Management > Event Connectors (Pull) > Connector Instances.
2. ClickNew.
TheConnector Instance New Recordpage appears.
3. Enter values in the required fields, which are indicated by a red asterisk.
Field

Description

Name

Descriptive name for the connector.

Connector definition

Search for and selectLogic Monitor.

Credential

SelectBasic Authfor basic authentication. Pro­
vide access_id and access_key from Logic­
monitor's token based API authentication in
the credentials as the basic authentication
username and password.

Host IP

The Logicmonitor IP address.

When adding bi-directional functionality for a Push connector, the Connector Instance name
must match the Source Instance field of the event generated by that source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2941


<!-- page 2942 -->
The source of events islogicmonitorso you should create an instance with the

namelogicmonitor.

Note: The Update queue business rule in the Alert table identifies each manual update
of the alert and updates the connector queue accordingly. By default, changes to all alert
fields are tracked.
4. Select theActivecheck box and clickSave.
The LogicMonitor pull connector does not retrieve Events or populate the Events [em_event]
table.
Configure event collection from NNMi
Configure the HP Network Node Manager i (NNMi) connector instance to receive events while
monitoring your network resources.

Before you begin

Supported version: 10.30.653.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.
Connector Instance form
Field

Description

Name

Descriptive and unique name for the NNMi connector.

Description

Description for the use of the NNMi event collection
instance.

Connector definition

Name of the required connector definition. Select NNMi.

Host IP

IP address where NNMi is installed.

Credential

Permission to connect to NNMi. Click the search icon in
the Credential field. Either select the required credentials
from the list or click New and create the required
credentials on the Credentials form. If you create the
credentials, save them using a unique and recognizable
name, for example, NNMiCHCK.
The selected credentials use basic authentication.

Event collection last run time

Last run time value. Automatically updated.

Last event collection status

Last run status. Automatically updated.

Event collection schedule
(seconds)

Frequency, in seconds, that the system checks for new
events from NNMi. The default value is 120 seconds.

Last error message

Last error message. Automatically updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2942


<!-- page 2943 -->
4. Right-click the form header and select Save.
The connector instance values are added to the form and
the parameters that are relevant to the connector appear.

5. In the Connector Instance Values section, verify and where required, modify the default
connector instance values.

Field

Description

days_from

Number of days for which events must be collected at the first
collection cycle. Default value: 7 days.

Note: The maximum number of past events that can be
collected is 3,000. The first time that the connector runs, it
collects all events (up to the 3,000 limit) that were created from
the days_from date until the current date.
debug

Display debug messages. Default value: false. Specify true to see
debug messages.

port

Number of the connector port. Default value: 80.

protocol

Type of protocol. Default protocol type: http.

6. Optional: In the MID Servers for Connectors section, specify a MID Server that is up and is
valid.
If no MID Server is specified, an available MID Server that has a matching IP range is used.
You can configure several MID Servers. If the first is down, the next MID Server is used. If that
MID Server is not available, the next is selected, and so on. MID Servers are sorted according
to the order that their details were entered into the MID Server for Connectors section.
7. Right-click the form header and select Save.
8. Test the connection between the MID Server and the NNMi connector.
a. Click Test Connector.
If the test fails, follow the instructions that the error issues to correct the problem and then
run another test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2943


<!-- page 2944 -->
Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the external monitoring tool.
b. After a successful test, select the Active check box.
9. Click Update.
Configure event collection from NagiosXI
Configure the NagiosXI connector instance to receive events from the Nagios Core monitor.

Before you begin

Supported version: 5.5.2.
The NagiosXI connector instance requires a credential that lets the instance access NagiosXI
accounts. You can use an existing credential or create a new one. For more information, see
Create Nagios XI server credentials.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Name

Descriptive name for the Nagios connector.

Description

Description for the use of the NagiosXI event collection
instance.

Host IP

Specify the Nagios XI IP address.

Credential

Select the credential with basic authentication that you
created for this connector. For more information, see
Create Nagios XI server credentials.

Ensure that the user password contains
the NagiosXI user API key, for example
04lquEPqf4JimWCm8RWbJokOpW8LYBUfEvJp9OSHSRYe4QDrHPFndYbW
Event collection last run time

The last run time value is automatically updated.

Last event collection status

The last run time status is automatically updated.

Event collection schedule
(seconds)

The frequency, in seconds, that the system checks
for new events from Nagios. The default value is 120
seconds.

Last error message

The last error message is automatically updated.

Connector Definition

Select NagiosXI.

MID Servers (MID Server for
Connectors section)

Optional. Name of a MID Server. If no MID Server is
specified, an available MID Server that has a matching
IP range is used. In the MID Servers for Connectors
section, specify a MID Server that is up and valid. You can

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2944


<!-- page 2945 -->
Field

Description

configure several MID Servers. If the first is down, the next
MID Server is used. If that MID Server is not available,
the next is selected, and so on. MID Servers are sorted
according to the order that their details were entered into
the MID Server for Connectors section.
4. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
5. In the Connector Instance Values section, specify the Nagios values.
◦ initial_sync_in_days. Specify the number of days for which events must be collected at the
first collection cycle. Default value 7 days.
◦ port. Default value 80.
◦ protocol. The default protocol type is http.
◦ time_zone. The default time zone is GMT; update this value to the Nagios timezone. For
example, if Nagios is sending the events according to the EDT time zone, update this value to
GMT-04:00 (abbreviations such as EDT are not supported).
◦ severity_by_state_type. The default value is false. When set to true, the state_type
is used along with the state to determine the severity which creates less critical events as
shown in the following mapping table.
Mapping Table
_state_type(Connector
State (Nagios JSON
definition
payload attribute)
parameter)

State_type (Nagios
JSON payload
attribute)

ServiceNow Severity

false

2

0/1

1 (Critical)

false

1

1

1(Critical)

false

1

0

2(Major)

false

0

0/1

5(OK)

true

0

0/1

5(OK)

true

1

0

4 (Warning-soft -> Warning)

true

2

0

2(Critical-soft -> Major)

true

3

0

4(Unknown-soft-> Warning)

true

1

1

3(Warning-hard -> Minor)

true

2

1

1(Critical-hard -> Critical)

true

3

1

3(Unknown-hard -> Minor)

6. Right-click the form header and select Save.
7. Click Test Connector to verify the connection between the MID Server and the connector.
8. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2945


<!-- page 2946 -->
If this message appears: Connection test failed: Failed to connect to
Nagios on test connector. Invalid API Key, then enter the API Key for the
specific user to be able to read the Nagios events.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the Nagios Core monitor.
9. After a successful test, select the Active check box and then click Update.
Create Nagios XI server credentials
Create credentials to access Nagios XI server.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for
this credential. For example, you might call it
Nagios authentication.

User name

Name to identify the user.

Ensure that the user password contains
the NagiosXI user API key, for example,
04lquEPqf4JimWCm8RWbJokOpW8LYBUfEvJp9OSHSRY
Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform
tries this credential as it attempts to log on to
devices. The smaller the number, the higher
in the list this credential appears. Establish
credential order when using large numbers
of credentials or when security locks out
users after three failed login attempts. If all
the credentials have the same order number
(or none), the instance tries the credentials in
a random order. Default value: 100

5. Click Submit.

Result

The credential for use with the Nagios XI server connector is created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2946


<!-- page 2947 -->
Related topics
Credentials and connection information
Configure event collection from OBM
Configure the Operation Bridge Manager (OBM), also known as OMi v2, connector instance to
receive alerts from the OBM server. The OBM connector script OBM v2 will be available after
installing the Event Management Connectors app.

Before you begin

Role required: evt_mgmt_admin
Supported versions: 10.01, 10.10, 10.11, 10.12, 10.60, 10.61, and 11.01.

About this task

Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. Navigate to All > Event Management > Event Connectors (Pull) > Connector Instances.
2. Click New and create a connector instance with the following details:

Field

Value

Name

Descriptive name for the OBM connector.

Description

Description for the use of the OBM event collection
instance.

Host IP

Specify the OBM IP address.

Credential

Select the required credentials from the list or click New
and create the required credentials. If you create the
credentials, save them using a unique and recognizable
name, for example OBMOPS.

Event collection last run time

The last run time value is automatically updated.

Last event collection status

The last run time value is automatically updated.

Event collection schedule
(seconds)

Frequency in seconds that the system checks for new
events from OBM. The default value is 120 seconds.

Last error message

The last error message is automatically updated

Connector Definition

Select OBM V2.

Note: This script will be available after installing
the Event Management connector scoped app.
MID Servers (MID Server for
Connectors section)

Specify the MID Server to run the OBM connector
instance. You can configure several MID Servers. If the
first server is down, the next MID Server If that MID
Server is not available, the next is selected, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2947


<!-- page 2948 -->
Field

Value

MID Servers are sorted according to the order that their
details were entered into the MID Server for Connectors
section. If no MID Server is specified, an available MID
Server that has a matching IP range is used.
3. Right-click the form header and select Save.
The parameters that are relevant to the OBM connector appear.
4. In the Connector Instance Values section, specify the OBM values.
a. days_from.
Specify the number of days for which events must be collected on the first collection cycle.
The default value is 7 days and data can only be pulled a maximum of 7 days from the OBM
system.
b. debug.
The default value is false. To enter debug mode, change the value to true.
c. port.
The default value is 80.
d. protocol.
The default value is http.
e. query_filter.
The default value is false. If you do want to use this extra filter to query events, specify the
event attributes. For example, assigned_user = "admin" AND title = "My
Title". The query filter criteria are:
▪ A filter property that specifies an event attribute, such as, related_ci
▪ A supported operator, for example, OR or AND
▪ A value for the filter property, for example, admin or integrator
Everything from the query_filter field undergoes URL encoding and is then passed as a
parameter to the OBM API call. For detailed information on how to build the filter query, see
“Filtering by Event Attributes: query” in the OBM Extensibility Guide. For example, to query
the events for a list of events that are assigned to the admin user, specify:
event_list?query=assigned_ user%20EQ%20"admin"
To nest query_filter event attributes, specify the hierarchy using square brackets "[ ]".
f. inclusion list.
The default value is false. Specify a comma-separated list to include this feature to
add attributes that should be collected and added to the Event Management Additional
information field.
5. Right-click the form header and select Save.
6. Click Test Connector to verify the connection between the MID Server and the connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2948


<!-- page 2949 -->
Note: Use a network tool, such as ping, to verify that the OBM server is running and the
IP address matches the value in the Host IP field.

8. After a successful test, select the Active check box and then click Update.
Configure OP5 or OP5_v2 connector
Configure the OP5 or OP5_v2 Monitor connector instance to receive alerts from an OP5 Monitor
source.

Before you begin

The OP5_v2 connector is supported in Event Management connectors version 2.3.0 - August
2022, available from the ServiceNow Store .
Supported version:
• OP5: 7.3.15
• OP5_v2: 8.3.8
Role required: evt_mgmt_admin

About this task

Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance with the following details:

Field

Value

Name

Descriptive name for the OP5 or OP5_v2 connector.

Description

Description for the use of the OP5 or OP5_v2 event
collection instance.

Host IP

Specify the OP5 or OP5_v2 IP address.

Credential

Either select the required credentials from the list or click
New and create the required credentials. If you create the
credentials, save them using a unique and recognizable
name, for example, OP5OPS.

Event collection last run time

The last run time value is automatically updated.

Last event collection status

The last run time status is automatically updated.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for new
events from OP5 or OP5_v2.

Last error message

The last error message is automatically updated.

Connector definition

Select OP5 or OP5_v2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2949


<!-- page 2950 -->
Field

Value

Connector Instance Values
section

The parameters that are specific to OP5 or OP5_v2 display
here when the form is saved.

MID Servers (MID Server for
Connectors section)

Optional. Name of a MID Server. If no MID Server is
specified, an available MID Server that has a matching IP
range is used. In the MID Servers for Connectors section,
specify a MID Server that is up and valid. You can configure
several MID Servers. If the first is down, the next MID
Server is used. If that MID Server is not available, the next is
selected, and so on. MID Servers are sorted according to the
order that their details were entered into the MID Server for
Connectors section.

3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Instance Values section, specify the OP5 or OP5_v2 values.
a. days_from.
Specify the number of days for which events must be collected at the first collection cycle.
Default value 7 days.
b. debug.
Displays debug messages. Default value: false. Specify true to see debug messages
c. logPayloadForDebug.
Displays payload related debug messages. Default value: false. Specify true to see payload
related debug messages.
d. port.
Default value 443.
e. state_types.
Specify filters for event collection based on the state_types attribute. You can filter events
based on state type. Specify the type, for example, soft or hard.
5. Right-click the form header and select Save.
6. Click Test Connector to verify the connection between the MID Server and the connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.
8. After a successful test, select the Active check box and then click Update.
Configure Opsview_v2 connector
Configure the Opsview_V2 connector instance to receive alerts from an Opsview Monitor source.

Before you begin

Ensure you have the supported version of the Opsview_V2 connector: 6.7.0.
Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2950


<!-- page 2951 -->
Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance with the following details:

Field

Value

Name

Descriptive name for the Opsview connector.

Description

Description for the use of the Opsview event collection instance.

Host IP

Specify the Opsview IP address.

Credential

Either select the required credentials from the list or click
New and create the required credentials. If you create the
credentials, save them using a unique and recognizable name,
for example, OpsviewOPS.

Note: User should have the CONFIGUREVIEW role with
access to 'VIEW ALL, CHANGE NONE'.
Event collection last run
time

The last run time value is automatically updated.

Last event collection
status

The last run time status is automatically updated.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for new
events from Opsview.

Last error message

The last error message is automatically updated.

Connector definition

Select Opsview_v2.

Connector Instance
Values section

The parameters that are specific to Opsview_V2 display here
when the form is saved.

MID Servers (MID Server
for Connectors section)

Optional. Name of a MID Server. If no MID Server is specified,
an available MID Server that has a matching IP range is used. In
the MID Servers for Connectors section, specify a MID Server
that is up and valid. You can configure several MID Servers. If the
first is down, the next MID Server is used. If that MID Server is
not available, the next is selected, and so on. MID Servers are
sorted according to the order that their details were entered into
the MID Server for Connectors section.

3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Instance Values section, specify the Opsview_v2 values.
a. days_from.
Specify the number of days for which events must be collected at the first collection cycle.
Default value 7 days.
b. debug.
Display debug messages. Default value: false. Specify true to see debug messages.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2951


<!-- page 2952 -->
c. logPayloadForDebug.
Display payload related debug messages. Default value: false. Specify true to see payload
related debug messages.
d. eventtype_filter.
Specify filters for event collection based on the eventtype attribute. Specify one of these
values 0,1,2,3.
e. port.
Default value is 80.
.
f. protocol.
The default protocol type is HTTPS.
5. Right-click the form header and select Save.
6. To verify the connection between the MID Server and the connector, select Test Connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.
If this message appears: Connection test failed: Failed to connect to
Opsview on test connector. Invalid API Key, then enter the API Key for the
specific user to be able to read the Opsview events.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the Opsview Monitor source.
8. After a successful test, select the Active check box and then select Update.
Configure PRTG connector
Configure the PRTG connector instance to receive alerts from a Paessler PRTG Network Monitor
source.

Before you begin

Role required: evt_mgmt_admin
Supported version: 21.3.71.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance with the following details:

Field

Value

Name

Descriptive name for the PRTG connector.

Description

Description for the use of the PRTG event collection
instance.

Host IP

Specify the PRTG IP address.

Credential

Either select the required credentials from the list or click
New and create the required credentials. If you create the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2952


<!-- page 2953 -->
Field

Value

credentials, save them using a unique and recognizable
name, for example, PRTGOPS.
Event collection last run time

The last run time value is automatically updated.

Last event collection status

The last run time status is automatically updated.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for new
events from PRTG.

Last error message

The last error message is automatically updated.

Connector definition

Select PRTG.

Connector Instance Values
section

The parameters that are specific to PRTG display here
when the form is saved.

MID Servers (MID Server for
Connectors section)

Optional. Name of a MID Server. If no MID Server is
specified, an available MID Server that has a matching
IP range is used. In the MID Servers for Connectors
section, specify a MID Server that is up and valid. You can
configure several MID Servers. If the first is down, the next
MID Server is used. If that MID Server is not available,
the next is selected, and so on. MID Servers are sorted
according to the order that their details were entered into
the MID Server for Connectors section.

3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Instance Values section, specify the PRTG values.
a. add_columns.
Specify which columns to be returned by the connector. Separate the names with a comma
and without a space between the names. The output is stored in the Additional information
field of the event. Default value false. If false is specified, only the default list of columns
is retrieved: parent, name, type, objid, tags, message, status, priority, datetime, actions,
baselink, basetype, modifiedby.

Note: Only columns names that are applicable to the Message content type can be
specified.
b. date_format.
The format date and time. Default format M/d/yyyy/ h:mm:ss a. If you receive an event whose
date is in a different format, modify this value to match the format of the incoming event. If
you do not, the event will not be processed correctly.
For example, if an event arrives on June 27, 2019 at 11:25 AM with a listed date of
2019/06/27/ 11:25:00 a, modify the date_format value to yyyy/M/d/ h:mm:ss
a to match the format of the received event.
In the date_format, a represents AM, and p represents PM.
c. In the days_from field, specify the number of days for which events must be collected at the
first collection cycle.
Default value 7 days.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2953


<!-- page 2954 -->
d. debug.
Default value false.
e. port.
Default value 80.
f. protocol.
The default protocol type is http.
g. prtg_api_fetched_events_num.
Maximum number of events, per query, that can be fetched from the PRTG client into the
MID Server. Default number: 50,000.
h. time_zone.
The default time zone is the GMT time zone; update this value to the PRTG time zone. For
example, if PRTG is sending events according to the EDT time zone, update this value to
GMT-4 (abbreviations such as EDT are not supported).
5. Right-click the form header and select Save.
6. Click Test Connector to verify the connection between the MID Server and the connector.
7. If the test fails, follow the instructions that the error issues to correct the problem and then run
another test.
If this message appears: Connection test failed: Failed to connect to
PRTG on test connector. Invalid API Key, then enter the API Key for the
specific user to be able to read the PRTG events.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to PRTG.
8. After a successful test, select the Active check box and then click Update.
Apache Kafka Consumer Connector
The Apache Kafka Consumer connector instance enables you to create events from messages
collected from the Apache Kafka topic as a JSON payload that contains essential information in a
data block.
Apache Kafka is a distributed publish-subscribe messaging system that receives data from
disparate source systems and makes the data available to target systems in real time.
You can use this connector to create ServiceNow events from Kafka messages. Messages in the
Kafka topic must be in JSON format.
Like other message broker systems, Kafka facilitates the asynchronous data exchange between
processes, applications, and servers.
Kafka software runs on one or more servers. Each node, called a broker, in a Kafka cluster helps
producer applications write data to topics, which are where records are stored and published.
Consumer applications read from topics. Topics are divided into partitions to make them more
manageable and Kafka guarantees strong ordering for each partition.
Configure the Apache Kafka Consumer connector
Configure the Apache Kafka Consumer connector instance to create events from streaming
messages collected by the Apache Kafka connector.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2954


<!-- page 2955 -->
Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Select New.
3. On the form, fill in the fields.
Connector instance form
Field

Value

Name

Descriptive and unique name for the Kafka Consumer
connector.

Description

Description to be used by the Kafka Consumer event
collection instance.

Connector definition

Name of the required connector definition, which in this
case should be Kafka Consumer.

Host IP

The host IP.

Note: This field must contain a value to complete
the creation process so the placeholder 1.1.1.1 should
be entered as a temporary value.
Event collection last run time

This field is automatically set to the last runtime value.

Last event collection status

This field is automatically set to the last runtime status.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for new
events from the Kafka Consumer. The default value is 60
seconds.

Last error message

This field is automatically set to the last error message.

4. For PLAINTEXT or SASL_PLAINTEXT, in the Credential field, create a Basic authentication
credential.
Use the Kafka SSL credential type for a new Kafka pull connector instance with
SASL_PLAINTEXT authentication. Go to step 5.
Use the Kafka SSL credential type when the Kafka server’s sasl.enabled.mechanisms or
sasl.mechanism parameter's value don’t equal PLAIN. Go to step 5.
a. Select the Search icon

next to the Credential field.

b. On the Credentials screen, select New.
c. From the list of available credentials, select Basic Auth Credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2955


<!-- page 2956 -->
d. On the Basic Authentication screen, give information for either PLAINTEXT authentication,
which doesn’t require credentials, or SASL_PLAINTEXT authentication, which requires
credentials.
▪ For PLAINTEXT authentication, in the Name field, type any value and leave the User Name
and Password fields empty.
▪ For SASL_PLAINTEXT authentication, give a name for the credential in the Name field,
preferably prefaced by SASL. Provide the user name and password In the User Name and
Password fields.
e. Select Submit.
5. For a SASL_PLAINTEXT, SSL, or SASL_SSL authentication credential, in the Credential field,
create a Kafka SSL credential.
a. Select the Search icon

next to the Credential field.

b. On the Credentials screen, select New.
c. From the list of available credentials, select Kafka SSL Credentials.
d. On the Kafka SSL Authentication screen, fill in the Kafka SSL credentials fields.
For the Kafka SSL credentials fields descriptions, see .

Note: If you clear the Disable hostname verification field, then in

the Additional Kafka consumer properties field, enter the value of the
ssl.endpoint.identification.algorithm parameter the same as of the
Kafka server parameter value. For example:
ssl.enabled.protocols=TLSv1.2,TLSv1.1,TLSv1;
sasl.jaas.config=org.apache.kafka.common.security.plain.Pl
ainLoginModule required username=<username>
password=<password>;
sasl.enabled.mechanisms=PLAIN;ssl.endpoint.identification.
algorithm=;
e. Select Submit.
6. To use SASL_SSL with OAuthbearer, perform the following steps:
◦ Select the value of the Security protocol field as SASL_SSL
◦ Select the value of the field SASL mechanism as OAUTHBEARER
◦ For User name field, provide the <client id value>.
◦ For the Password field, provide the <client_secret>.
◦ For the SASL JAAS config template field, enter the value as
org.apache.kafka.common.security.oauthbearer.OAuthBearerLoginModule
required clientId="${user_name}" clientSecret="${password}"
scope="openid";

Note: OAuth authentication for the Kafka Event Connector is supported only in the
Australia release and later. Ensure your instance is upgraded to Australia or a newer
version before configuring OAuth.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2956


<!-- page 2957 -->
7. Right-click the form header and select Save.
8. In the table presenting the connector instance values, verify the populated connector instance
values based on your Kafka setup and the message (JSON payload) that you received from the
Kafka topic.
Change the connector instance values if necessary.
Connector instance Values table
Field

authentication_type

Description

The Kafka Consumer authentication type. The
currently supported values are:
◦ PLAINTEXT (no authentication) (Default)
◦ SASL_PLAINTEXT (basic authentication –
user name and password)

bootstrap_servers

The servers that establish the connection
with the Kafka cluster. Values in this field
should be in the form host1:port1, host2:port2,
and so on (comma-separated).
This field is required.

consumer_group_name

The Consumer group name.
If the same Kafka topic is being consumed
from two different instances, use different
consumer group names so all events are
captured for both instances.
This field is required.

time_of_event_field

The name of the field in the JSON payload/
message that includes the time of the event.
If a field in the JSON payload/message
includes the time of the event, that value
should be the value for this parameter.
If no time field value is given, then the
received time of the event in the ServiceNow
instance is set as time_of_event.
The time_of_event field should be a first-level
field in the JSON payload/message. Nested
field names aren’t allowed.

timezone

The time zone of the time_of_event field in the
JSON payload/message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2957


<!-- page 2958 -->
Field

Description

The timezone value isn’t used when the
time_of_event field is empty.
For example, if the time_of_event in the
payload/message is in the IST time zone, the
value would be GMT+0530.
Default: GMT.
date_format

The date_time format of the time_of_event
field in the JSON payload/message.
If no time field value is given, then the time
when the event was received in the instance
in GMT time is used. The date_time value isn’t
used when the time_of_event field is empty.
Default: yyyy-MM-dd HH:mm:sss.

debug

Displays debug messages. Default value:
false. Specify true to see debug messages.

logPayloadForDebug

Displays payload related debug messages.
Default value: false. Specify true to see
payload related debug messages.

topic

The Kafka topic from which the messages are
fetched.
This field is required.

9. In the MID Servers for Connectors section, specify a MID Server that is up and is valid.

Note: You can configure several MID Servers. If the first server is down, the next MID
Server is used. If that MID Server isn’t available, the next is selected, and so on. MID
Servers are sorted according to the order that their details were entered into the MID
Servers for Connectors section.
If you do not specify a MID Server, an available MID Server that has a matching IP range
is used.
10. Right-click the form header and select Save.
11. Test the connection between the MID Server and the Kafka Consumer connector.
a. Select Test Connector.
b. If the test connection fails, verify whether the credential is valid, and that the network is
connected from the MID Server to the Kafka broker.

Note: Kafka topic name validation occurs only in Test Connector validation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2958


<!-- page 2959 -->
12. After a successful test, make the connector instance active by selecting the Active check box.
13. Select the Update button.

What to do next

After the connector is created, you must map the fields. For more information, see Map Kafka
message payload attributes to alert fields.
Map Kafka message payload attributes to alert fields
Map Kafka message attributes to alert fields to make alerts based on the messages more
meaningful. Use event field mapping to map Kafka severity values to appropriate ServiceNow
values.

Before you begin

Role required: evt_mgmt_admin

About this task

Depending on your payload, Use event field mappings to provide more comprehensive
information in an event alert by substituting values from the event field mapping rule into the
event. Depending on your payload, transform information in events to populate specified alert
field values and compose alert fields from various values to generate alerts for tracking and
remediation. If needed, use both event field mappings and alert rules.
The following table compares a message received from a topic and a flattened payload in the
event Additional info field. The message received from a topic is flattened as a single field and
appears in the event Additional info field. Use these flattened messages to create event rules
and mappings.
Actual versus flattened payload
Actual Payload inserted into a topic

{

Flattened payload in the Additional Info field

{
"version": "v0.1.0",

"flattened.alert_type":
"on_true",

"name": "fibsrc",
"id": "mnop6789",
"trigger_description":
"Triggers on duration_ms goes
above 5K",
"status": "TRIGGERED",

"flattened.description":
"Current value (12.296815 k)
greater than threshold value
(5 k)",
"flattened.id": " mnop6789",
"flattened.kafkaKey":
"null",

"alert_type": "on_true",
"summary": "Triggered:
fibsrc",
"description": "Current
value (12.296815 k) greater
than threshold value (5 k)",

"flattened.kafkaOffset":
"28",
"flattened.kafkaPartition":
"0",
"flattened.kafkaTopicName":
"topic123",

"operator": "greater than",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2959


<!-- page 2960 -->
Actual versus flattened payload (continued)
Actual Payload inserted into a topic

Flattened payload in the Additional Info field

"flattened.name": "fibsrc",
"threshold": 5000,
"flattened.operator":
"greater than",

"groups": [
{

"flattened.status":
"TRIGGERED",
"Group": "GroupA",
"flattened.summary":
"Triggered: fibsrc",

"Result":
12296.815478000368
}
],

"flattened.trigger_descriptio
n": "Triggers on duration_ms
goesa above 5K",

"trigger": {

"flattened.version":
"v0.1.0",

"Result":
12296.815478000368

"flattened.version": 5000,

}

"flattened.groups.0.Group":
"GroupA",

}
"flattened.groups.0.Result":
12296.815478000368,
"flattened.trigger.Result":
12296.815478000368
}

Procedure
1. To map the Kafka message attributes to the predefined alert fields to generate alerts by
creating event field mappings.
a. Navigate to All > Event Management > Rules > Event Field Mapping.
b. In the Event Field Mapping window, select New.
c. In the Name field, enter a name for the field mapping.
d. In the Source field, enter Kafka Consumer.
e. In the Mapping type field, select the appropriate mapping type
f. For a list of the available mapping types, see Event Field Mappings.
2. To map the Kafka message attributes to the predefined alert fields to generate alerts by
creating event rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2960


<!-- page 2961 -->
a. Navigate to All > Event Management > Rules > Event Rules.
b. Select New .
c. In the Name field, enter a name for the event rule.
d. In the Source field, enter Kafka Consumer.
e. Select Event Filter.
f. Enter the appropriate filter according to your requirement.
g. Select Transform and compose alert output.
When creating event rules, the event fields are displayed in the Event Rules Transform and
Compose Alert Output tab. Because the Kafka message varies from user to user, you must
transform the event fields to the alert fields to see the details in the alert.

Note: Because the severity value is required to create an alert, you must map the

Severity field using event rules or event field mappings. If the Severity field is empty,
the event isn’t processed and enters into an error state.
h. Map the fields of the event and Additional Info field to the fields of the alert.
i. Select Binding.
j. Enter the appropriate binding according to your requirement.
k. Select Submit.
For more information, see Create or edit an event rule.
3. In the All Events screen, check whether any of the events from Kafka are in an error state due
to a missing event rule and provide missing rules.
a. Navigate to All > Event Management > All Events.
b. In the All Events table, open any Kafka consumer event that shows Error as the state in the
Severity column.
The message received from the Kafka consumer can vary. Because the connector cannot
know the attributes that will be received, you must map the Severity field or other event
fields to the fields in the message to ensure that alert fields are correctly populated.
c. On the All Events screen, create a new event rule by selecting Create Event Rule.
For more information on creating event rules, see Event Rules.
If no event field mappings exist to handle the new type of event, create event field mappings.
For more information, see Create event field mappings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2961


<!-- page 2962 -->
Result

Your Apache Kafka consumer connector is configured. When new messages arrive into the Kafka
topic, they are received into the ServiceNow instance as events, and alerts are then created from
those events.
Configure SAP Solution Manager connector
Configure the SAP Solution Manager (Solman) connector instance to enable communication
between the SAP Solution Manager and Event Management.

Before you begin

Role required: admin
Supported versions: Tested on SAP Solution Manager 7.2. Might also work on other versions.

About this task

This configuration enables you to update the SAP Solution Manager with the statuses that have
been updated by ServiceNow. For general information about the SAP Solution Manager, see SAP
configurations enabling the SAP Solution Manager connector.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a connector instance.
3. Fill in the fields on the form.
Connector instance form
Field

Description

Name

Descriptive name for the SAP Solman connector.

Description

Description for the use of the SAP Solman event
collection instance.

Active

Option that activates the connector instance. Select this
option only after running a successful test.

Connector definition

The vendor and protocol used to gather events from the
external event source. Select SAP Solman.

Host IP

The IP address where SAP Solman is installed.

Credential

Required credentials entered either by selecting them
from the results of a search through the search icon
or by clicking New. or creating them. If you create
credentials, save them using a unique and recognizable
name, such as SAPSOLMANOPS.

Event collection last run time

The last run time value. Automatically updated.

Last event collection status

The last run time status. Automatically updated.

Event collection schedule
(seconds)

The frequency in seconds that the system checks for new
events from SAP Solman.

Bi-directional

Ensure that you select this option to invoke the bidirectional exchange of values to-and-from the external
event source. The Last bi-directional status option
appears only when selecting this option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2962


<!-- page 2963 -->
Field

Description

Last bi-directional status

This field appears only when Bi-directional is selected.
This field is automatically populated with the most recent
bi-directional status.

Last error message

Last error message. Automatically updated.

Connector Instance Values
section

The parameters that are specific to SAP Solman,
automatically displayed when saving the form.

MID Servers (MID Server for
Connectors section)

MID Server that is up and valid. You can configure several
MID Servers so that if the first server is down, the next
MID Server is used. If that MID Server is not available,
the next is selected, and so on. MID Servers are sorted
according to the order in which their details are entered
into the MID Server for Connectors section.
If no MID Server is specified, an available MID Server that
has a matching IP range is used.

4. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
5. In the Connector Instance Values section, specify the default connector instance values.
◦ Client: Default value = 001
◦ Port: Default value = 8000
6. Right-click the form header and select Save.
7. Click Test Connector to verify the connection between the MID Server and the connector.
If the test fails, follow the instructions in the error message and then run another test.

Note: Use a network tool such as ping to verify the credentials and the network
connectivity from the MID Server to the SAP Solman monitor.
8. After a successful test, select the Active check box and click Update.
Related topics
Use the SAP Solution Manager Push connector
SAP configurations enabling the SAP Solution Manager connector
Configure your SAP environment to work with the ServiceNow Event Management platform so
you can use the SAP Solution Manager connector.
When integrating your SAP environment with Event Management, the SAP Solution Manager
sends events through a MID Server to Event Management, which generates an alert from the
event.
After the MID Server processes events, you can perform the following actions in the SAP Solution
Manager:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2963


<!-- page 2964 -->
• Add comments
• Confirm alerts
• Set status to Externally Managed
The following diagram illustrates the flow of data between SAP and Event Management.
SAP Solution Manager connector

Data moves between SAP and Event Management using both Push and Pull interfaces.
• Pull interface:
The Connector Update Queues table [em_connector_update_queue] lists manual updates of
alerts and sends them to the SAP Solution Manager.
The table's business rule identifies each manual update of alerts in Event Management
and updates the connector queue with these changes. By default, changes to all alert
fields are tracked. For information on adjusting this setting, see the SAP Solution Manager
documentation.
The Event Management - Queue connector processor scheduled job removes alert
changes from the queue and sends them to the MID Server. By default, the system performs
this process in batches of 1,000 alerts. You can customize this batch size by setting the
evt_mgmt.max_update_source_records property.

Note: You must define the Pull interface to enable bi-directional functionality in the SAP
Solution Manager connector. For details, see the SAP Solution Manager documentation.
• Push interface: Because SAP can only push data to an external source, the integration uses
the Push interface to store alerts sent from SAP to Event Management.
SAP alerts create events in Event Management that use both event rules and CI identification
rules to create Event Management alerts.
After Event Management creates alerts, a business rule listens for a change to the alert. If it
detects a change, Event Management updates the SAP Solution Manager alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2964


<!-- page 2965 -->
Related topics
Event Management Integrations
Use the SAP Solution Manager Pull connector
Use the SAP Solution Manager Pull connector
The SAP Solution Manager Pull connector sends information from Event Management to the SAP
Solution Manager. The Pull connector sends responses received from a Push connector in a bidirectional environment.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Event Connectors (Pull) > Connector Instances.
2. Click New.
The Connector Instance New Record page appears.
3. Enter values in the required fields, which are indicated by a red asterisk.
Field

Description

Name

Descriptive name for the connector.

Connector definition

Search for and select SAP Solution Manager.

Credential

Select Basic auth for basic authentication.

Host IP

The SAP Solution Manager IP address.

The Connector Update Queues table [em_connector_update_queue] lists manual
updates of alerts and sends an event to the SAP Solution Manager, using the Pull interface.

Note: When adding bi-directional functionality for a Push connector, the Connector
Instance name must match the Source Instance field of the event generated by that
source. The Connector Instance field value is a combination of SID + _ + Mandant.
For example, the following image displays an event generated by the instance source
PSM_001. To enable sending information back, you would have to name your connector
instance PSM_001.

4. Set the following values for the connector instance:
◦ Client: Represents the client value in SAP, usually 001.
◦ Port: The SAP Solution Manager WebService port. Default value = 8000.
The following table lists the actions you can perform in Event Management, and the resulting
updates occurring in SAP Solution Manager.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2965


<!-- page 2966 -->
Event Management actions and SAP Solution Manager updates
Action in Event Management

Result in SAP Solman

Close an alert.

Confirms an alert in the alert inbox. The alert is removed.

Select the Maintenance setting in
an alert.

Adds a comment indicating that the alert is in
Maintenance mode.

Clear the Maintenance setting in
an alert.

Removes the Maintenance mode comment.

Select the Acknowledged setting
in an alert.

Adds a comment indicating that the alert is in the
Acknowledged mode.

Clear the Acknowledged setting in Removes Acknowledged mode comment.
an alert.
Note the following behaviors:
◦ The Update queue business rule in the Alert table identifies each manual update of the alert
and updates the connector queue accordingly. By default, changes to all alert fields are
tracked.
◦ The Event Management — Queue Connector Processor job removes alert changes from
the queue and sends them to the MID Server. By default, Event Management performs this
dequeue process in batches of 1,000 alerts. You can configure the batch size by setting the
evt_mgmt.max_update_source_records property.
Use the SAP Solution Manager Push connector
The MID Server web service Event Collector enables you to collect alerts sent from the SAP
Solution Manager through event stream notification capabilities. The interface runs both a Push
and a Pull interface to interact directly with the SAP Solution Manager.

Before you begin
• Deploy and start the MID Server.
• Configure and start the MID Web Server.
• Configure and start the MID Server web service Event Collector.
Role required: evt_mgmt_admin

About this task

SAP Solution Manager sends JSON formatted event messages to the MID Server. The MID
Server parses the collected alert messages and transforms them using the SAP Solman
Transform [TransformEvents_SAPSolman] script.
JSON formatted messages are collected using basic authentication. For details on other
supported authentication methods, see Configure the MID Web Server extension.

Procedure
1. Navigate to All > Event Management > Integrations > Push connectors.
2. Select the SAP Solman Transform Script script.
3. Use the following URL to push alert messages from SAP Solution Manager to the MID Server:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2966


<!-- page 2967 -->
http://<MID_Server_IP>:<MID_Web_Server_Port>/api/mid/
em/inbound_event?Transform=TransformEvents_SAPSolman, where the
following are true:
◦ MID_Server_IP is the IP address of the MID Web Server extension
◦ MID_Web_Server_Port is the listening port of the MID Web Server extension

What to do next

Create an Remote Function Call (RFC) in the SAP Solution Manager and install a transport, as
described in Configure RFC in SAP Solution Manager.
Related topics
Configuring MID Servers
Configure the MID Web Server extension
Configure the MID WebService Event Collector Context
SAP Solution Manager setup configurations
As part of the SAP Solution Manager setup, you must perform several configurations to enable
SAP Solution Manager to interact with Event Management.
Configure RFC in SAP Solution Manager
As part of enabling communication with Event Management, you must create a Remote Function
Call (RFC) in the SAP Solution Manager and install a transport.

Before you begin

Role required: evt_mgmt_admin
Download the following .psm files and import them into the SAP Solution Manager system.
• https://downloads.docs.servicenow.com/resource/enus/cad/K900249.PSM
• https://downloads.docs.servicenow.com/resource/enus/cad/R900249.PSM

Procedure
1. On the SAP UI, enter the transaction code SM59 and create a new RFC with the following
parameters on the Technical Settings tab:
RFC parameters
SAP
Value
Parameter

Target
Host

Name of the MID Server.

Service
No

Listener port on the MID Server

Path
Prefix

The URL of the MID Server transform script: /api/mid/
em/inbound_event?Transform=TransformEvents_SAPSolman

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2967


<!-- page 2968 -->
Technical Settings tab

2. On the Logon & Security tab, select Basic Authentication and enter your Event Management
logon credentials in the User and Password fields.
Logon & Security tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2968


<!-- page 2969 -->
A custom SAP BADI (Business Add-in) named Z_ALRT_REACTION_IMPL is created and stored
as a workbench transport request. After installation, this BADI calls the RFC to connect to
Event Management.

Configure SAP to forward alerts to your BADI
After setting up SAP Solution Manager monitoring, you must configure SAP to forward alerts to
the BADI (Business Add-in) you create as the first step in the SAP integration setup.

Before you begin

Role required: evt_mgt_admin

About this task

Third-party alerts get forwarded globally. You can configure the alert reaction only for a specific
monitoring template.

Procedure
1. On the SAP UI, navigate to Application Operations > System Monitoring.
2. In the ribbon at the top of the System Monitoring configuration page, select 2 Configure
Infrastructure > 2.3 Default Settings.
The Default Settings page appears.
Default Settings page

3. Configure and activate a third-party component.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2969


<!-- page 2970 -->
a. Enter edit mode by clicking the Edit button.
b. Select the Third-Party Components tab.
c. Click Add and add the following value as the third-party connector: Implementation:
BADI Definition for Alert Reactions ZSNOW with scope = All
Alerts and Metrics.
d. Click Save to activate third-party components globally.
4. Define the objects to which the monitoring template will be assigned.
a. In the ribbon at the top of the page, select 5 Define Scope.
The Define Scope page appears.

b. Select the managed object to which you want to assign the monitoring template.
The monitoring template is assigned to the selected objects.
5. Reactivate the monitoring of templates.
a. Select 6 Setup Monitoring.
b. Search for and locate entries with Setup Status = Reconfigure Required and assign the
monitoring template to those entries.
c. Select Apply and Activate.
When the jobs finish, verify that the Assignment Status is green.
All templates and active alerts assigned to the selected objects use the new forwarding
method.

What to do next

View alerts generated in SAP Solution Manager to see any pressing issues, as described in View
alerts in the SAP Solution Manager inbox.
Configure the alert inbox in SAP Solution Manager
Configure SAP solution manager to retrieve alerts in the system by enabling the alert inbox with
the SOA manager.

Before you begin

Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2970


<!-- page 2971 -->
Procedure
1. Navigate to SOA MANAGER in your solution manager: /sap/bc/webdynpro/sap/
appl_soap_management?sap-client=XXX&sap-language=EN#
2. Select Simplified Web Service Configuration, then validate the form to activate the service.
You must use simplified mode else the resulting web services is different with other modes and
not compatible with the connector.

3. Select Search.
4. Check the row with the creation type Simple consumer related.
If anything goes wrong, check Configuring a Service Provider (Simplified)

What to do next

View alerts generated in SAP Solution Manager to see any pressing issues, as described in View
alerts in the SAP Solution Manager inbox.
View alerts in the SAP Solution Manager inbox
You can view alerts generated in SAP Solution Manager to see any pressing issues. All alerts also
forward to Event Management automatically.

Before you begin

Role required: evt_mgt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2971


<!-- page 2972 -->
Procedure
1. On the SAP UI, open Solution Manager and select the System Alerts tab.

The system alerts are listed on the page.
2. Navigate to (Event Management > All Alerts) to view the alerts in Event Management.

The following table describes the field mapping between SAP Solution Manager and Event
Management for alerts.
Field mapping for SAP Solution Manager and Event Management
SAP Field

Event Management Field

Description

severity

severity

SAP uses a number from
1 (less critical) to 9 (more
critical)

message_key

message_key

SAP message group ID,
messageGUID

description

description

Event description

source

source

SAP system ID

managed_object_type

type

The type of the object, such
as Host or Instance

node

node

Object name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2972


<!-- page 2973 -->
SAP Field

Event Management Field

Description

managed_object_name

resource

Solution manager node name

N/A (there is no value
provided by SAP. Event
Management generates the
indicated field.)

source instance

The event class must match
the connector pull instance
name, with the structure
<Source>_<Client>.

source

additional_info.sid

SAP system ID

rating

additional_info.rating

Event color in SAP

resource

additional_info.mandant

SAP mandant

metric_name

metric_name

Metric name for the SAP
event

time_of_event

time_of_event

Time of event in SAP

Example: High CPU Usage on SAP Host
Scenario: An alert is generated in SAP Solution Manager when the CPU usage on a critical host
exceeds 90% for more than 10 minutes.
SAP Solution Manager Alert
Field

Value

Severity

8 (Critical)

Message Key

CPU_Overload_12345

Description

High CPU usage on SAPHost01

Source

SAP_Prod

Type

Host

Node

SAPNode_01

Time

2024-07-31T14:23:00Z

Here’s how the alert is mapped in Event Management:
Mapped Event Management alert
Field

Value

Severity

8

Message Key

CPU_Overload_12345

Source

SAP_Prod

Type

Host

Node/Resource

SAPNode_01

Source Instance

SAP_Prod_100

SID

SAP_Prod

Rating

Red

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2973


<!-- page 2974 -->
Mapped Event Management alert (continued)
Field

Value

Mandant

100

View and update your SAP Solution Manager certificate
View your SAP Solution Manager certificate, and update the certificate if necessary.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Connect to SAP on client 00.
2. Enter the strust transaction.
3. In the Trust Manager UI, open the SSL client.
4. Import the SSL certificate and save it.
5. Use the smicm transaction to enable the system to work with both HTTP and HTTPS clients.
6. Navigate to Administration > ICM > Exit Hard > Global.

The ICM module restarts.
View the SAP interface log
View the SAP interface log to help you debug issues.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2974


<!-- page 2975 -->
Procedure
Select a transaction in the SAP UI.
The ZSNOW interface debugging table appears.

SAP Solution Manager transaction codes
The transaction code abbreviations that you can use in the SAP interface when working with the
SAP Solution Manager connector.
SAP Solution Manager transaction codes
Transaction Code

Description

ALRTINBOX

Displays the alert inbox.

SOAMANGER

Opens and activates the

Sap_Solman_Alert_Inbox web service.
SRT_UTIL

View the SOA manager logs.

SOLMAN_WORKCENTER

Opens the SAP Solution Manager interface in
a browser.

SM59

Displays the entire output interface.

SE38

Executes the Advanced Business
Application Programming (ABAP) code.
(The equivalent ServiceNow code is
ZTEST_SNOW_CONNECTOR.)

MAI_TOOLS

Displays the alarm tool.

SE16

Displays the interface debugging table
(ZSNOW).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2975


<!-- page 2976 -->
Configure alert collection from SCOM
Alerts from the Microsoft System Center Operations Manager (SCOM) are collected using the
SCOM connector instance.

Before you begin

Role required: evt_mgmt_admin

About this task

The SCOM connector instance requires configuration before receiving alerts and Metric
Intelligence raw data from the SCOM server. You can limit the collection of SCOM alerts to only
those alerts that belong to the SCOM group that you specify.

Procedure
1. Configure the SCOM connector instance.
2. Configure the Microsoft System Center Operations Manager (SCOM) connector instance to
receive alerts and Metric Intelligence raw data from the SCOM server.
3. Limit collected SCOM alerts to specific SCOM groups.
Configure the SCOM connector instance
Configure the Microsoft System Center Operations Manager (SCOM) connector instance to
receive alerts and Metric Intelligence raw data from the SCOM server.

Before you begin

To activate Metric Collection, ensure that the MID Server that retrieves metrics is configured
with the Metric Intelligence extension and that the extension is in Started mode. See Manually
configure the Metric Intelligence extension.
Windows authentication is used by the connector to access the SCOM database
(OperationsManagerDW). Therefore, if Metric Collection is selected and the Database login
with Windows authentication option is also selected, ensure that the MID Server service runs
with a user having read access to the SCOM database. Ensure that the correct credentials are
used:
1. In the local services, select and hold (or right-click) the MID Server service and
select Properties.
2. In the Log On tab, ensure that This account is selected. Include the details of the Windows
domain user that has read access to the SCOM database.
Before starting the procedure to configure the connector, ensure that:
• The MID Server is running with a user that has local admin permissions to enable the MID
Server to run PowerShell.
• The MID Server user has read access to the SCOM API.
• The MID Server resides in the same domain as the SCOM server.
• The MID Server uses the same time zone as the SCOM server.
• The MID Server is running on Windows.
• The MID Server has .NET framework version 3.5.
If Bi-directional is selected, ensure that:
• PowerShell version 3.0 is installed on Windows.
• The MID Server is running with a user that has local admin permissions to enable running
PowerShell.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2976


<!-- page 2977 -->
To upgrade an existing SCOM connector:
1. On the Connector Instance - SCOM connector page (All > Event Management > Integrations
> Connector Instances), clear the Collect Metrics check box.
2. Install the em-connectors plugin from the store.
Role required: evt_mgmt_admin

About this task

To receive SCOM alerts, you can obtain the redistributable SCOM files from your SCOM
application. Add the files to the MID Server, and then configure a SCOM connector instance to
collect the alerts and Metric Intelligence raw data.
The collection of Metric Intelligence is performed using JavaScript running JDBC in place of
PowerShell.
You can also use this setup for the SCOM managed instance on Azure.
This connector has the logPayloadForDebug log parameter enabled, which logs event and
metric payloads from the source system. Once debugging is complete, set this parameter to
false to prevent overloading the system.
Supported versions:
• 2007 – version 6.1.7221.0
• 2012 – version 7.1.10226.0
• 2016 – version 7.2.117190 and 7.3.13261.0
• 2019 – version 10.19.10050.0
• 2022 – version 10.22.10118.0
• 2025 - version 10.25.10132.0

Procedure
1. On the SCOM server, download the following files to a local computer.
Version

SCOM path and library names

%ProgramFiles%\Microsoft Sys­
tem Center 2012 R2 or 2012\Oper­
ations Manager\Server\SDK Bina­
ries
SCOM 2012R2 or SCOM 2012

◦ Microsoft.EnterpriseManagemen­
t.Core.dll
◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.Common­
.dll
◦ Microsoft.EnterpriseManagemen­
t.Runtime.dll

SCOM 2007

%ProgramFiles%\System Center Op­
erations Manager 2007\SDK Bina­
ries

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2977


<!-- page 2978 -->
Version

SCOM path and library names

◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.Common­
.dll
◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.dll

Note: Do not append 2007 to the Mi­
crosoft.EnterpriseManagemen­
t.OperationsManager.Common­
.dll file.
%ProgramFiles%\Microsoft System
Center 2016\Operations Manag­
er\Server\SDK Binaries
◦ Microsoft.EnterpriseManagemen­
t.Core.dll
SCOM 2016

◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.dll
◦ Microsoft.EnterpriseManagemen­
t.Runtime.dll

Note: The MID Server must be in­
stalled with .NET 4.6 or higher.
%ProgramFiles%\Microsoft System
Center 2019\Operations Manag­
er\Server\SDK Binaries
◦ Microsoft.EnterpriseManagemen­
t.Core.dll
SCOM 2019

◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.dll
◦ Microsoft.EnterpriseManagemen­
t.Runtime.dll

Note: The MID Server must be in­
stalled with .NET 4.6 or higher.
◦ Microsoft.EnterpriseManagemen­
t.Core.dll
◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.dll
SCOM 2022

◦ Microsoft.EnterpriseManagemen­
t.Runtime.dll

Note: The MID Server must be in­
stalled with .NET 4.6 or higher.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2978


<!-- page 2979 -->
Version

SCOM path and library names

◦ Microsoft.EnterpriseManagemen­
t.Core.dll
◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.dll
SCOM 2025

◦ Microsoft.EnterpriseManagemen­
t.OperationsManager.Common­
.dll
◦ Microsoft.EnterpriseManagemen­
t.Runtime.dll

Note: The MID Server must be in­
stalled with .NET 4.6 or higher.

Note: A connection cannot be made to SCOM 2012/SCOM 2016/SCOM 2019/SCOM
2022 and SCOM 2007 from the same MID Server. To work with both SCOM 2012/SCOM
2016/SCOM 2019/SCOM 2022 (any of them) and SCOM 2007 in your instance, do the
following before uploading files to your instance:
a. Append .2012 to the end of the
Microsoft.EnterpriseManagement.OperationsManager.dll file, so it
becomes:
Microsoft.EnterpriseManagement.OperationsManager.dll.2012.
Do this for 2012/2016/2019/2022.
b. Append .2007 to the end of the
Microsoft.EnterpriseManagement.OperationsManager.dll file found
in the 2007 path.
Using these modified file names enables the relevant MID Server to load the
applicable DLL when both SCOM versions are deployed. Do not append 2007 to the
Microsoft.EnterpriseManagement.OperationsManager.Common.dll
file (for SCOM 2007).
At any given time, you can define connectors of either SCOM 2007, SCOM 2012/2016, or
SCOM2019. Since SCOM 2012 and SCOM 2016 use the same library files, they are able
to work at the same time. Although, SCOM 2019 uses the different SCOM DLL files so you
cannot configure SCOM 2012, 2016, and 2019 all together. Each SCOM connector can
use the database of another connector, for metric support.
2. Navigate to MID Server > JAR Files.
3. Select New and add a separate record for the SCOM version for each of the DLL files that you
downloaded from the SCOM server.
a. In the Name field, specify the SCOM version and an identifier to make the name unique, for
example 2012 1.
If you are using SCOM 2016, specify 2012 as the version.
b. Select the paper clip icon in the form header and then attach one of the appropriate DLL
files that you downloaded.
c. Select Submit.
4. Repeat step 3, creating a separate record for each of the remaining DLL files.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2979


<!-- page 2980 -->
Ensure that you have a unique identifier after the SCOM version for each file that you attach,
for example 2012 2.
5. Navigate to Event Management > Integrations > Connector Instances.
6. Click New and create a new connector instance.
For details on the connector instance fields displayed on the page, see SCOM connector
instance form.
7. Select and hold (or right-click) the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
8. In the Connector Instance Values section, you can edit the values of the mandatory SCOM
parameters.
a. login_with_windows_authentication Default value: false.
Set to true to enable SCOM event collection and the bi-directional exchange of event values
to work with Windows authentication.
When invoking this value, ensure that you do the following on the MID Server:
i. Navigate to the list of local services, select and hold (or right-click) the MID Server service,
and select Properties.
ii. In the Log On tab, ensure that This account is selected with the details of the user in the
Windows domain with read access to the SCOM database.
b. metric_chunk_size: Default value: 50000.
c. scom_date_format: Default format: M/d/yyyy/ h:mm:ss a
If you receive an event whose date is in a different format, modify this value to match the
format of the incoming event. If you do not, the event does not process correctly.
For example, if an event arrives on June 27, 2019 at 11:25 AM with a listed date of
2019/06/27/ 11:25:00 a, modify the scom_date_format value to yyyy/M/d/
h:mm:ss a to match the format of the received event.
In scom_date_format, a represents AM, and p represents PM.
d. scom_initial_sync_in_days: Default value: 7.
e. scom_version: It is mandatory to specify the SCOM version.
Select from 2022, 2019, 2016, 2012, or 2007.
f. stop_isMonitorAlert_bidirectional: Boolean.
Set to true to stop only SCOM monitoring alerts bi-directionally. Stopping SCOM monitoring
alerts can prevent false alarms on the SCOM console when attempting to update the alerts.
When set to false, SCOM monitoring alerts continue running bi-directionally for all types of
SCOM alerts.
Default value = false.
9. Select and hold (or right-click) the form header and select Save.
10. Restart the MID Server service to copy the files.
11. Select Test connector to verify the connection between the MID Server and the connector.
If the test fails, correct the problem by following the instructions issued by the error and then
run another test.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2980


<!-- page 2981 -->
Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to SCOM.
12. After a successful test, select the Active check box and then select Update.

Note:
The default binding rules that contain SCOM as the external source, that applies to IT
alerts and Metric Intelligence raw data, are the following SCOM Management Packs:
◦ All OS Management Packs
◦ MS SQL Server
◦ IIS

Example:

If bi-directional is configured, the bi-directional exchange of values to-and-from the external
event source is enabled.
These scenarios describe the default bi-directional functionality for SCOM connectors:
• When an alert is resolved in SCOM, it is auto-closed in ServiceNow. However, it is updated
irrespective of the bi-directional feature because during each collection cycle, all alert
changes are updated.
• When an alert is manually closed in ServiceNow, it is auto-closed in SCOM. If the alert state is
changed to Reopen, SCOM is also updated.
• When an incident is created and associated to an alert in ServiceNow, SCOM receives the
incident number as a ticket ID. However, the state of the incident is not available on SCOM.
Therefore when the incident is resolved in ServiceNow, SCOM is not updated as the incident
number remains the same. When the alert is associated with a new incident, the new incident
number is updated in SCOM.
Limit collected SCOM alerts to specific SCOM groups
Limit the collection of SCOM alerts to only those alerts that belong to the specified SCOM group.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Use the SCOM Authoring workspace and Operations console to define a SCOM group and
ensure that the group contains the required computers or instances.
For further information about SCOM groups, see the SCOM documentation.
2. Create a role that has a scope of the SCOM group.
3. Add the new role to the SCOM user.
4. Assign the role to the user defined in the credentials given to the SCOM connector instance.
5. Remove all other roles from the user.

Result

Only alerts from the specified SCOM group arrive at the instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2981


<!-- page 2982 -->
SCOM metric event rules
The base system comes with Microsoft System Center Operations Manager (SCOM) metric
event rules. SCOM metric event rules bind event metrics to configuration items (CIs).
When an event's metrics match the event filter conditions, the metrics bind to the indicated CI.
The event rules that come with the base system are:
Base system metric event rules
Rule Name

CI type

SCOM Metrics - Windows Server

cmdb_ci_win_server

SCOM Metrics - IIS Web Server

cmdb_ci_microsoft_iis_web_server

SCOM Metrics - SQL Server Reporting
Services

cmdb_ci_db_mssql_reporting

SCOM Metrics - MS SQL Database

cmdb_ci_db_mssql_database

SCOM Metrics - MSFT SQL Instance

cmdb_ci_db_mssql_instance

You can create a custom event rule to bind metrics with other CI types. For details, see Create or
edit an event rule.
If the event rule filter doesn't match, the default rule, SCOM Metrics - Default (CI type =
cmdb_ci_hardware) is invoked. The order number of the default event rule must be higher
than the order number of any SCOM event rules (both those that come with the base system and
any custom rules), so that all other rules are checked for matching before invoking the default
rule. For details on event rules, see Event rules.
Configure event collection from SolarWinds monitor
Configure the SolarWinds monitor connector instance to receive events from the SolarWinds
monitor.

Before you begin

Supported versions:
• SAM 6.2.1
• NPM 2024.1

Note: The SolarWinds monitor connector instance can import events from:
• Network Performance Monitor (NPM)
• SolarWinds Service & Application Monitor (SAM)
The SolarWinds monitor connector instance requires a credential that lets the instance access
SolarWinds monitor accounts. You can use an existing credential or create a new one. The
provided user must have access to the SolarWinds API to receive events from the SolarWinds
connector.
Role required: evt_mgmt_admin and evt_mgmt_integration

About this task

This connector has the debug and logPayloadForDebug log parameters enabled. The
debug parameter logs debug messages, such as calls made to the source system to retrieve
events. The logPayloadForDebug parameter logs event and metric payloads from the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2982


<!-- page 2983 -->
source system. Once debugging is complete, set this parameter to false to prevent overloading
the system.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Name

Type a descriptive name for the SolarWinds monitor connector.

Description

Type a description for the use of the SolarWinds monitor event collection
instance.

Connector
Definition

Select Solarwinds_v2.

Host IP

Specify the SolarWinds monitor IP address.

Credential

Select the credential with basic authentication that you created for
this connector. For more information, see Create SolarWinds monitor
credentials.

Event collection
last run time

The last run time value of the scheduled job. This field is updated
automatically.

Last event
collection status

The last event collection status. This field is updated automatically.

Event collection
schedule
(seconds)

The frequency in seconds that the system checks for new events from the
SolarWinds monitor server.

Last error
message

The last error message received by the connector is automatically
updated.

4. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
5. In the Connector Instance Values section, specify these fields:

Field

Value

initial_sync_in_days

Specify how many days the initial pull must contain to retrieve
events. The default value is 7 days.

nodes_custom_properties Specify the SolarWind monitor property names that are
associated with the relevant node. This information is added to
the Additional Information field of the event in JSON format.
The SolarWinds monitor custom properties are user-defined
fields, for example, country, building, or serial number, that you
can associate with monitored network objects. Separate multiple
entries with a comma.
port

Specify the value of the port. By default, the value is 17774.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2983


<!-- page 2984 -->
Field

Value

Note: For version 2023.1 and above, the port is 17774.
6. Optional: Name of a MID Server.
If no MID Server is specified, an available MID Server that has a matching IP range is used.
In the MID Servers for Connectors section, specify a MID Server that is up and valid. You can
configure several MID Servers. If the first is down, the next MID Server is used. If that MID
Server is not available, the next is selected, and so on. MID Servers are sorted according to the
order that their details were entered into the MID Server for Connectors section. The privileges
that are required for the user account that is used for the MID Server to collect events from
SolarWinds monitor is that of evt_mgmt_integration.
7. Click Test connector to verify the connection between the MID Server and the SolarWinds
monitor connector.
If the test fails, follow the instructions that are issued by the error to correct the problem and
then run another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to SolarWinds monitor.
8. After a successful test, select the Active check box and then click Update.
Related topics
Configure a pull connector
Create SolarWinds monitor credentials
Create credentials to access SolarWinds monitor.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for
this credential. For example, you might call it
SolarWinds authentication.

User name

Name to identify the user.

Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform
tries this credential as it attempts to log on to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2984


<!-- page 2985 -->
Field

Description

devices. The smaller the number, the higher
in the list this credential appears. Establish
credential order when using large numbers
of credentials or when security locks out
users after three failed login attempts. If all
the credentials have the same order number
(or none), the instance tries the credentials in
a random order. Default value: 100
5. Click Submit.

Result

The credential for use with the SolarWinds monitor connector is created.
Related topics
Credentials and connection information
Configure event collection from vCenter
Configure the VMware vCenter Server (vCenter or vCenter_V2) connector instance to receive
events from your VMware vSphere environment.

Before you begin

Events collected by this connector are events that match the vCenter ESX Servers event rule.
Supported version: 7.0.2.00500.
Role required: evt_mgmt_admin

About this task

Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
This connector has the debug and logPayloadForDebug log parameters enabled. The
debug parameter logs debug messages, such as calls made to the source system to retrieve
events. The logPayloadForDebug parameter logs event and metric payloads from the
source system. Once debugging is complete, set this parameter to false to prevent overloading
the system.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.
Connector Instance form
Field

Description

Name

Descriptive and unique name for the vCenter connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2985


<!-- page 2986 -->
Field

Description

Description

Description for the use of the vCenter event collection
instance.

Connector definition

Name of the required connector definition. Select
vCenter or vCenter_V2 (vCenter_V2 is located in the
Event Management connectors scope).

Host IP

IP address where vCenter is installed.

Credential

Permission to connect to vCenter. Click the search
icon in the Credential field. Either select the required
credentials from the list or click New and create the
required credentials on the Credentials form. If you
create the credentials, save them using a unique and
recognizable name, for example, vCenterCHCK.

Event collection last run time

Last run time value. Automatically updated.

Last event collection status

Last run status. Automatically updated.

Event collection schedule
(seconds)

Frequency, in seconds, that the system checks for new
events from vCenter. The default value is 120 seconds.

Last error message

Last error message. Automatically updated.

4. Right-click the form header and select Save.
The connector instance values are added to the form
and the parameters that are relevant to the connector

appear.
5. In the Connector Instance Values section, specify the vCenter values.

Field

Value

collect_stateless_events

Events that have a status (stateful) are collected when this
field is set to false (default). These events are of type
AlarmStatusChangedEvent and AlarmClearedEvent. If this
field is set to true, events of other types are collected as
well.

port

Specify the value of the port. Default value: 443.

protocol

Specify the protocol. Default value: https.

6. Optional: In the MID Servers for Connectors section, specify a MID Server that is up and is
valid.
If no MID Server is specified, an available MID Server that has a matching IP range is used.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2986


<!-- page 2987 -->
You can configure several MID Servers. If the first is down, the next MID Server is used. If that
MID Server is not available, the next is selected, and so on. MID Servers are sorted according
to the order that their details were entered into the MID Server for Connectors section.
7. Right-click the form header and select Save.
8. Test the connection between the MID Server and the vCenter connector.
a. Click Test Connector.
If the test fails, follow the instructions that the error issues to correct the problem and then
run another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the external monitoring tool.
b. After a successful test, select the Active check box.
9. Click Update.
Configure event collection from vRealize
Configure the VMware vRealize Operations (vRealize or vRealize_V2) connector instance to
receive events from the vRealize Operations Log and Event Management servers. vRealize uses
basic authentication. vRealize_V2 uses token-based authentication.

Before you begin

Role required: evt_mgmt_admin
Supported version: 8.10.0.

Note: Connect to vRealize using a local account with at least Read-only vRealize
Operations permission. You can use an existing credential or create a new one.

About this task

This connector has the debug and logPayloadForDebug log parameters enabled. The
debug parameter logs debug messages, such as calls made to the source system to retrieve
events. The logPayloadForDebug parameter logs event and metric payloads from the
source system. Once debugging is complete, set this parameter to false to prevent overloading
the system.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New and create a vRealize Operations connector instance with the following details:

Field

Value

Name

Specify a unique name for the vRealize Operations connector instance.

Host IP

Specify the vRealize Operations IP address.

Credential

Select the credential with basic authentication that you created for this
connector. vRealize_V2 uses token-based authentication providing that the user
can generate the token. For more information, see Create vRealize credentials.

Schedule
(seconds)

The frequency in seconds that the system checks for new events from vRealize
Operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2987


<!-- page 2988 -->
Field

Value

Description Type a description for the use of the vRealize Operations connector.
Connector
definition

The vendor and protocol used to gather events from the external event
source. Select vRealize or vRealize_V2 (vRealize_V2 is located in the Event
Management connectors scope).

Last error
message

The last error message is automatically updated.

Last run
time

The last run time value is automatically updated.

Last run
status

The last run time status is automatically updated.

MID
Servers
(MID
Server for
Connectors
section)

Optional. Name of a MID Server. If no MID Server is specified, an available MID
Server that has a matching IP range is used. In the MID Servers for Connectors
section, specify a MID Server that is up and valid. You can configure several
MID Servers. If the first is down, the next MID Server is used. If that MID
Server is not available, the next is selected, and so on. MID Servers are sorted
according to the order that their details were entered into the MID Server for
Connectors section.

3. Right-click the form header and select Save.
The connector instance values are added to the form and the parameters that are relevant to
the connector appear.
4. In the Connector Parameters section, specify the values of the mandatory vRealize Operations
parameters.
a. port: Default value = 443.
b. protocol: Default value = https.
c. days_from:
Number of days worth of data to be pulled on the first event collection run. Default value =
14. The days_from option is available only when using vRealize_V2.
5. Click Test connector to verify the connection between the MID Server and the vRealize
Operations connector.
6. If the test fails, follow the instructions that are issued by the error to correct the problem and
then run another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to vRealize.
7. After a successful test, select Active and then click Update.
Related topics
Configure a pull connector
Create vRealize credentials
Create credentials to access vRealize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2988


<!-- page 2989 -->
Before you begin

Role required: evt_mgmt_admin

About this task

Create Basic Auth type of credential to connect to vRealize.

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for this
credential. For example, NewvRealize.

User name

Name to identify the user.
◦ If the username is internal in vRealize, use
it as is.
◦ If vRealize is integrated with Active
Directory (AD), use the format
DOMAIN\username@sourceauth. For
example, local\administrator@All
vCenter Servers.

Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform
tries this credential as it attempts to log on to
devices. The smaller the number, the higher
in the list this credential appears. Establish
credential order when using large numbers
of credentials or when security locks out
users after three failed login attempts. If all
the credentials have the same order number
(or none), the instance tries the credentials in
a random order. Default value: 100

5. Click Submit.

Result

The credential for use with the vRealize connector is created.
Related topics
Credentials and connection information
Configure event collection from Zabbix server
Configure the Zabbix server connector instance to receiving alerts from the Zabbix server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2989


<!-- page 2990 -->
Before you begin

Supported versions: from 3.0.0 up to 7.0.0
The Zabbix server connector instance requires a credential that lets the instance access Zabbix
server accounts. You can use an existing credential or create a new one.
Role required: evt_mgmt_admin

About this task

This connector has the logPayloadForDebug log parameter enabled, which logs event and
metric payloads from the source system. Once debugging is complete, set this parameter to
false to prevent overloading the system.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Name

Descriptive name for the connector.

Host IP

IP address for the Zabbix server.

Credential

Select the credential with basic authentication that you created
for this connector. For more information, see Create Zabbix
server credentials.

Schedule (seconds)

Frequency, in seconds, that the system checks for new events
from the Zabbix server.

Description

Description for the use of the Zabbix server event collection
instance.

Connector Definition

Name of the connector definition. Select Zabbix.

Last error message

Last error message. Automatically updated.

Last run time

Last run time value. Automatically updated.

Last run status

Last run time status. Automatically updated.

MID Servers (MID Server
for Connectors section)

Optional. Name of a MID Server. If no MID Server is specified,
an available MID Server that has a matching IP range is used. In
the MID Servers for Connectors section, specify a MID Server
that is up and valid. You can configure several MID Servers. If
the first is down, the next MID Server is used. If that MID Server
is not available, the next is selected, and so on. MID Servers
are sorted according to the order that their details were entered
into the MID Server for Connectors section.

4. Right-click the form header and select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2990


<!-- page 2991 -->
The connector instance values are added to the form
and the parameters that are relevant to the connector

appear.
5. Verify and modify the values, as needed.
In the Connector Instance Values section, the default connector instance values appear.
Fields in the Connector Instance Values section
Field

Description

days_from

Number of days for which events must be collected at the first
collection cycle. Default value: 2

Note: The maximum number of past events that can be
collected is 3,000. The first time that this connector runs, the
number of past events is counted in the past from the current
date.
port

Port number. Default: 80

protocol

Protocol type. Default: https

6. Right-click the form header and select Save.
7. Click Test Connector to verify the connection between the MID Server and the connector.
8. If the test fails, follow the instructions that are issued by the error to correct the problem and
then run another test.

Note: Use a network tool, such as ping, to verify credential correctness and network
connectivity from the MID Server to the Zabbix server.
9. After a successful test, select Active and then click Update.
Create Zabbix server credentials
Create credentials to access Zabbix server.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2991


<!-- page 2992 -->
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for this credential. For
example, you might call it Zabbix authentication.

User name

Name to identify the user.

Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform tries this
credential as it attempts to log on to devices. The smaller
the number, the higher in the list this credential appears.
Establish credential order when using large numbers of
credentials or when security locks out users after three
failed login attempts. If all the credentials have the same
order number (or none), the instance tries the credentials
in a random order. Default value: 100

5. Click Submit.

Result

The Basic Auth credential for use with the Zabbix server connector is created.
Related topics
Credentials and connection information
Configure a push connector
You can configure listeners and connectors to push event information to the instance or MID
Server.
Event Management receives external events through a push connector or script. If you are using
a script to collect events, no configuration is required. All other methods of collecting events
require configuration.
After event collection configuration, Event Management can collect events that are sent directly
to the instance, or via the MID Server, SNMP trap, or email.

Note: Integrating with push connectors is only available by installing the Event
Management Connector plugin from the ServiceNow Store.

Standard event form
All events must use a standard event form, regardless of how they arrive at the instance. For
more information, see Event field format for event collection.

Event collection
Event Management facilitates communication and movement of data between external
applications, data sources, services, and the ServiceNow AI Platform instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2992


<!-- page 2993 -->
Event collection modes

Description

Provided by the base
system

Listeners and connectors provided with the Event Management
application:
• AWS CloudWatch, see Integrate AWS platform as a data source.
• Azure event messages, see Integrate Azure Monitor as an
authenticated data source.
• BMC TrueSight events, see Event collection from BMC TrueSight
and BMC TrueSight_v2.
• Datadog events, see Integrate Datadog platform events.
• Dynatrace events, see Integrate Dynatrace platform events.
• Google Cloud Platform (GCP) events, see Integrate Google Cloud
Platform (GCP) events
• New Relic events, see Integrate New Relic platform events.
• Generic event collection through the MID Server.
• Generic event collection through the instance.
Where event messages are received in XML, you can base your
script on the example XML transform script provided with the base
system.

Via MID WebService

You can configure the MID WebService Event Collector to push
event messages to the MID Server. For more information, see
Pushing events to the MID Server using web service API.

Create your own content

You can configure your own listener:
• Via MID WebServer API. See Pushing events to the instance
using web service API.
• Via Custom Transformation. See Event collection from custom
payloads.

Via SNMP

SNMP listeners provided with the Event Management application:
Generic SNMPv2. See Configure event collection for SNMP traps.
In addition, you can create your own custom listener. See Integrate
with push connectors.

Via Email

Email listener. See Configure event collection from email.

Related topics
Push connector instance form
Configure ServiceNow Cloud Observability event collection
Integrate ServiceNow Cloud Observability with Event Management by adding a standard
webhook in the ServiceNow Cloud Observability platform. Download the Event Management
Connector plugin from the ServiceNow Store so you can integrate with ServiceNow Cloud
Observability.

Before you begin
• Role required: evt_mgmt_integration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2993


<!-- page 2994 -->
About this task

Authenticate ServiceNow Cloud Observability as a data source to enable Event Management to
collect events from ServiceNow Cloud Observability. In your ServiceNow Cloud Observability
platform, use a standard webhook to set your ServiceNow AI Platform instance as the rest
endpoint.

Procedure
1. Create a CI.

Note: Discovery for ServiceNow Cloud Observability services is not supported. Create a
CI manually in a ServiceNow instance (cmdb_ci_service_auto table) to enable binding.
a. Navigate to All > Configuration > Application Service.
b. Select New.
c. In the form, enter the name.
The name must be the service name provided in the ServiceNow Cloud Observability
platform.
d. From the Operational Status list, set the operational status to Operational.
e. Select Next.
f. Select Done.
2. In your ServiceNow Cloud Observability platform, create a notification destination.
a. From the navigation bar, click Alerts.
b. Select the Notification destinations tab.
c. Select Create a destination.
d. Select webhook.
Select Webhook

e. In the Name field, enter a name for the webhook.
f. In the URL field, provide the webhook URL.
This is the default format of the URL to push events from ServiceNow Cloud
Observability to the ServiceNow AI Platform Instance. Use this format: https//
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2994


<!-- page 2995 -->
&lt;username>:&lt;password>@&lt;instance-name>.service-now.com/
api/sn_em_connector/em/inbound_event?source=lightstep
g. Select New Header.
h. In the Headers field, enter the service-name and define its value.

Note: In a ServiceNow instance, CI binding occurs only if the service-name header
value matches the name fields of the CI you created in thecmdb_ci_service_auto
table.
Create a Webhook

i. Click Create.
3. In the ServiceNow Cloud Observability platform, configure an alert.
a. From the navigation bar, click Alerts.
b. Select Create an Alert and enter an alert name.
c. In the Alert Configuration area, define the threshold.
d. In the Notification Rules area, in the Send Notifications to fields, select the notification
destination as webhook and search for the destination name for the webhook that you
created in step 2.
e. Select Save.
The default severity for stream based alerts is Critical. You can change the default in the
Push Connector Configuration area of an ServiceNow AI Platform instance. The valid
severity values are:
▪ 1- Critical
▪ 2- Major
▪ 3- Minor
▪ 4- Warning
▪ 5- Info

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2995


<!-- page 2996 -->
Configure a MID Server for event collection using a push operation (listener)
The MID Server supports the collection of event messages, using the MID Web Server to collect
data from external sources and transforming (parsing) them to the format required for event
fields in the event [em_event] table. The transformed events are then transmitted to the instance.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

About this task

The MID Web Server extension enables external clients to push metric data and events to the
MID Server. See Configure the MID Web Server extension. Use the MID WebService Event
Collector to enable a URL method to push event messages to the MID Server. See Configure the
MID WebService Event Collector Context.
Configure a MID Server with either EventManagement or All in the Supported Applications
List.
To ensure uninterrupted services, consider also configuring a failover MID Server cluster.

Procedure
1. Navigate to All > MID Server > Servers.
2. Double-click the MID Server that you want to configure, or click New to create a new MID
Server.
3. In the Supported Applications section, click Edit.
a. Click Edit.
b. In the slushbucket, either select Event Management or ALL and click the > add button.
c. Click Save.
4. To ensure that the MID Server is validated, under Related Links, select Validate.
For more information, see Validate a MID Server .
5. Click Update.

What to do next

Configure the MID WebService Event Collector to enable a URL method to push event messages
to the MID Server. For more information, see Configure the MID WebService Event Collector
Context.
Related topics
Configure key-based MID Web Server authentication
Configure the MID Web Server extension
Configure the MID WebService Event Collector Context
Pushing events to the MID Server using web service API
Configure the MID WebService Event Collector to provide a URL method to push event messages
to the MID Server.
The MID WebService Event Collector, by default, enables you to connect to an event generator
and send event messages through the MID Server, using a URL in the format: http://
{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/em/jsonv2
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2996


<!-- page 2997 -->
The JSON v2 format is the same as the format that clients use to send event messages to the
instance. This URL provides good performance.
For more information, see Configure the MID WebService Event Collector Context.

Note: Event Management accepts events in the timezone of the MID Server through
which the listener has sent the event message. If you require a different timezone, you can
configure the script as required, see Integrate with push connectors.

URL to push custom payloads
The MID Server can also receive a custom payload in JSON, XML, or plain text format. In this
case, the MID Server transforms the event messages using the script include that you provide,
and then sends the events to the instance. The URL in this case is:
http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/
em/inbound_event?Transform={Transform_script_name} For an example of a
script include, see the default TransformEvents_xmlSample script include.
For an example of how the MID WebService Event Collector transforms JSON formatted event
messages, see Event collection from BMC TrueSight and BMC TrueSight_v2.
To send events in generic JSON format, you can use the URL in this format:
http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/
em/inbound_event?Transform=TransformEvents_MidJsonGeneric
In this case, the TransformEvents_MidJsonGeneric MID script include that is provided
in the base instance transforms the event messages into the event fields. All fields are added as
Additional Information fields into the ServiceNow event that is generated.

Note: The URL in the format http://{MID_Server_IP}:
{MID_Web_Server_Port}/api/mid/em/{transform_script_name}is also
supported.
The REST API URL for validating connectivity is: http://{MID_Server_IP}:
{MID_Web_Server_Port}/api/mid/em/ping

Script include to transform collected events
Use the required MID Server script include to transform (parse) collected event messages
and populate them into the mapped event field. The MID Server script include name is
composed of a prefix and suffix. The prefix is the mandatory text TransformEvents_ and
the suffix is the transform name on the URL, for example, http://{MID_Server_IP}:
{MID_Web_Server_Port}/api/mid/em/xmlSample . The composed script name is
therefore TransformEvents_xmlSample.
You must supply a script include that receives the event messages in a text variable. The script
must have a transform() function that performs the transformation and prepares the return
array of Event objects. When the Event Management plugin is activated, you are provided with
the TransformEvents_xmlSample sample include script that transforms events from XML
format.

Note: Event fields that are not identical to fields in the event table are saved in the
Additional information field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2997


<!-- page 2998 -->
Event message headers
Specify the relevant request header value for the Content-Type field according to the format of
the event message.
Request header values for the Content-Type
Message format

Content-Type value

JSON

application/json

XML

application/xml

text

text/plain

Authentication and data security options
Options for authentication and data security:
• Authentication type, which can be set to either API Key, mTLS, or Basic.
• Secure Connection, which lets you choose whether incoming and outgoing data is secured
when transmitted. If you choose the advanced secured option, it requires that you obtain a
certificate from a well-known certificate authority, and then provide the Keystore Certificate
Alias and the Keystore Password.
• Use MID Unified Keystore, which provides encryption protection and enables you to install a
custom certificate in the MID Server unified keystore. For details, see Install custom certificates
in the MID Server unified key store .
• Users must supply a script that receives the JSON, XML, or text formatted event messages in a
text variable. The script must have a transform() function that performs the transformation and
prepares the return array of event objects. The TransformEvents_xmlSample include
script that transforms events from XML format is provided as an example when the Event
Management plugin is activated.
For more information about authentication and data security, see Configure the MID Web Server
extension.
Related topics
Pushing events to the instance using web service API
Pushing events to the instance using web service API
You can use a web service interface, supported by ServiceNow, that operates on the JSON
object as the data input and output format.

Before you begin

Role required: evt_mgmt_integration

About this task

To insert records in the event [em_event] table with a single call, use this web service API:
https://<instancename>.service-now.com/api/global/em/jsonv2

Note: Business rules on the event table are not invoked when this URL is used.
Do not add additional fields to an event by adding a custom field to the event table [em_event].
However, additional fields should be included in the Additional information [additional_info]
field of the event. For more information about how to include additional fields in events, see
Custom alert fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2998


<!-- page 2999 -->
The URL in the format: http://<instancename>.service-now.com/em_event.do?
JSONv2&sysparm_action=insertMultiple is also supported in case you do want to
activate Business rules. However, the performance of the first URL is superior.
To work with the URL that ends with =insertMultiple, add the following properties, with
their respective values, to the MID Server:
• "mid.probe.event.queue.compress" - value: false
• "mid.probe.event.bulk_size" - value: 100
• "mid.probe.event.endpoint.url" - value: em_event.do?
JSONv2%26sysparm_action=insertMultiple

Procedure
1. Send the request with these headers:
Parameter

Type

Description

Accept

String

The acceptable type for this message.
The default value is application/json.

Content-Type

String

The content type for this message.
The default value is application/json.

POST

String

The request type is POST, with one or more trailing records.

2. One or more events in JSON format can be sent as the payload of the web service call.
Event fields that should be populated are:

Variable

Description

source

The name of the event source type. For example, SCOM or SolarWinds.

event_class

Specific instance of the source. For example, SCOM 2012 on
10.20.30.40

node

The node field should contain an identifier for the Host (Server/Switch/
Router/etc.) that the event was triggered for. The value of the node field can
be one of the following identifiers of the Host:
◦ Name
◦ FQDN
◦ IP
◦ Mac Address
If it exists in the CMDB, this value is also used to bind the event to the
corresponding ServiceNow CI.

resource

If the event refers to a device, such as, Disk, CPU, or Network Adapter, or
to an application or service running on a Host, the name of the device or
application must be populated in this field. For example, Disk C:\ or Nic
001 or Trade web application.

metric_name

Name of the metric that triggered the alert. For example, Used Memory or
Total CPU utilization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2999


<!-- page 3000 -->
Variable

Description

type

The type of event. This type might be similar to the metric_name field, but is
used for general grouping of event types.

message_key

This value is used for de-duplication of events. For example, there might be
two events for the same CI, where one event has CPU of 50% and the next
event has CPU of 99%. Where both events must be mapped to the same
ServiceNow alert, they should have the same message key. The field can be
left empty, in which case the field value defaults to source+node+type
+resource+metric_name. The message_key should be populated
only when there is a better identifier than the default.

severity

Severity of the event. ServiceNow values for severity range from 1 – Critical
to 5 – OK, with the severity of 0 – Clear. Original severity values should be
sent as part of the additional information.

additional_info

This field is in JSON key/value format, and is meant to contain any
information that might be of use to the user. It does not map to a predefined ServiceNow event field. Examples include IDs of objects in the
event source, event priority (if it is not the same as severity), assignment
group information, and so on. Values in the Additional information field
of an Event that are not in JSON key/value format are normalized to JSON
format when the event is processed.

time_of_event

Time when the event occurred on the event origin. The format is: yyyy-MMdd HH:mm:ss
The specified time must be according to GMT.

resolution_state Optional – To indicate that an event has been resolved or no longer
occurring, some event monitors use ‘clear’ severity, while other event
monitors use a ‘close’ value for severity. This field is used for those monitors
proffering the latter. Valid values are New and Closing.
3. To create multiple records with a single call, trigger the event web service using the following
URL, where the <instance name> variable is replaced with the name of the required instance:
https://<instancename>.service-now.com/api/global/em/jsonv2
Example
Example showing the payload for two events that are sent in a single web service call:
{
"records": [
{
"source": "SCOM",
"event_class": "SCOM 2012 on scom.server.com",
"resource": "D:",
"node": "name.of.node.com",
"metric_name": "Percentage Logical Disk Free Space",
"type": "Disk space",
"severity": "4",
"description": "The disk D: on computer
V-W2K8-abc.abc.com is running out of disk space. The value
that exceeded the threshold is 38% free space.",
"additional_info": {
"scom-severity": "Medium",
"metric-value": "38",
"os_type": "Windows.Server.2008"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3000


<!-- page 3001 -->
}
},
{
"source": "SCOM",
"event_class": "SCOM 2012 on scom.server.com",
"resource": "MSSQL-database-name",
"node": "other.node.com",
"metric_name": "DB Allocated Size (MB)",
"type": "Database Storage",
"severity": "3",
"description": "High number of active connections for
MSSQL-database-name running on name.of.node.com. Active
connections exceed 5000.",
"additional_info": {
"scom-severity": "Medium",
"metric-value": "38",
"os_type": "Windows.Server.2008"
}
}
]
}
4. To create one record with a single call, trigger the event web service using the following URL,
where the <instancename> variable is replaced with the name of the required instance:
https://<instancename>.service-now.com/api/global/em/jsonv2
Example
Example showing the payload for one event that is sent in a single web service call:
{
"records": [
{
"source": "SCOM",
"event_class": "SCOM 2007 on scom.server.com",
"resource": "C:",
"node": "name.of.node.com",
"metric_name": "Percentage Logical Disk Free Space",
"type": "Disk space",
"severity": "4",
"description": "The disk C: on computer
V-W2K8-dfg.dfg.com is running out of disk space. The value
that exceeded the threshold is 41% free space.",
"additional_info": {
"scom-severity": "Medium",
"metric-value": "38",
"os_type": "Windows.Server.2008"
}
}
]
}
Example
Example: cURL request:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3001


<!-- page 3002 -->
{
curl -X POST
"https://<instancename>.service-now.com/api/global/em/jsonv2"
\
--header "Content-Type: application/json" \
--user "username:password" \
--data '{
"records": [
{
"source": "SCOM",
"event_class": "SCOM 2007 on scom.server.com",
"resource": "C:",
"node": "name.of.node.com",
"metric_name": "Percentage Logical Disk Free Space",
"type": "Disk space",
"severity": "4",
"description": "The disk C: on computer
V-W2K8-dfg.dfg.com is running out of disk space. The value
that exceeded the threshold is 41% free space.",
"additional_info": {
"scom-severity": "Medium",
"metric-value": "38",
"os_type": "Windows.Server.2008"
}
}
]
}'

Related topics
Pushing events to the MID Server using web service API
Configure the MID WebService Event Collector Context
Configure the MID WebService Event Collector Context to provide a URL method to push event
messages from an external source to the MID Server.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

About this task

The default format of the URL to push event messages from an external source to the MID Server
is http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/em/jsonv2.
This URL provides good performance.
From an external source, to push event messages that are not in jsonv2 format, the format
of the URL is: http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/
em/inbound_event?Transform={Name_of_Transform_Script}, where the
{Name_of_Transform_Script} variable is the full name of the script and always begins
with the text: TransformEvents_.
For example, assume the following values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3002


<!-- page 3003 -->
• {MID_Server_IP}: 10.118.69.27
• {MID_Web_Server_Port}: 8097
• Transform script name: EventsToProcess
The URL to be used is therefore: http://10.118.69.27:8097/api/mid/
em/inbound_event/TransformEvents_EventsToProcess

Note:
• The URL in the format http://{MID_Server_IP}:{MID_Web_Server_Port}/
api/mid/em/{transform_script_name}is also supported.
• The date format for events is yyyy-M-d h:mm:ss.
If you receive an event whose date is in a different format, you must use a
{transform_script_name} that is appropriate for the incoming event's date
format. If you do not, the event will not be processed correctly.
For example, if an event arrives on June 27, 2019 at 11:25 AM with a listed date of
2019/06/27/ 11:25:00 a, use a {transform_script_name} with a date
format of yyyy/MM/dd/ HH:mm:ss a to match the format of the received event.

Procedure
1. Navigate to All > Event Management > Integrations > MID WebService Event Listener.
2. In the MID WebService Event Collector Contexts list, click New.
3. On the form, fill in the fields.
MID WebService Event Collectors Context form
Field

Description

Name

A unique name for this collector for easy
identification.

Short description

Enter a brief, meaningful description of this
collector.

MID Web Server Extension

Specify and then start the MID Web Server
extension. The supported authentication
methods are listed in the Authentication
Type field of the MID Web Server extension.
For information about how to configure a MID
Web Server extension, see Configure the MID
Web Server.

Status

This field is auto-populated with the status of
the MID Web Server extension. This field is
blank until the MID Web Server extension is
started. After issuing a command to the MID
Web Server extension, one of the following
values is displayed:
◦ Started: The collector is running.
◦ Stopped: The collector is not running.
◦ Offline: The MID Server is down.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3003


<!-- page 3004 -->
Field

Description

◦ Error: The collector failed with an error
(the error message is displayed in Error
Message).
◦ Warning: A run-time exception has
occurred.
Execute on

Specific MID Server or Specific MID Server
Cluster, as defined on the specified MID Web
Server extension.

MID Server

The Specific MID Server or Specific MID
Server Cluster, as defined on the specified
MID Web Server extension.

Executing on

The name of the MID Server on which the
MID Web Server extension is running.

4. Right-click the form heading and click Save.
5. Under Related Links, click Start to start the collector.
Commands in the Event Management Context form
Related Link Description

Start

If it is not running, start the collector. This action verifies that a web service API
endpoint with the Event Management application is running on the MID Server.

Stop

Stops the running collector on the configured MID Server. If the collector is not
running, no action is taken.

Restart

Stops, then starts the collector on the configured MID Server.

Update
Sends updated parameters to the collector. Parameters are also updated when
parameters the Event Management MID Server context extension is updated. If you click this
control when the collector is not running, no update is made.

Example:

Showing the use of the URL to transform JSON v2 formatted event messages
Assume that JSON v2 formatted event messages are sent to the MID Server. When using the
jsonv2 URL, there is no need to use a script include.
Data for the JSON v2 example
Field

Value

MID_Server_IP

10.218.64.27

MID_Web_Server_Extension_Port

8097

Event message format

jsonv2

Replace the variables in the default format of the URL http://<my-instance>.servicenow.com/api/global/em/jsonv2with values from the preceding
table:http://10.218.64.27:8097/api/global/em/jsonv2
Example showing the URL to push messages not in jsonv2 format
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3004


<!-- page 3005 -->
The format of the URL to push event messages from an external source that are not in jsonv2
format is http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/
em/inbound_event/Transform={Name_of_Transform_Script} where the
{Name_of_Transform_Script} variable is the full name of the script and always begins with
the text: TransformEvents_. The script name must be specified as the Transform header
parameter and must always start with the prefix TransformEvents_.
For this example, assume that the script name is EventsToProcess, the URL is
therefore:http://10.138.64.27:8097/api/mid/em/inbound_event/
TransformEvents_EventsToProcess
Example showing JSON v2 formatted event messages

Note: When copying and pasting the text following, hidden characters might also be
copied and can cause unexpected results.

curl -v -H "Accept: application/json" -H "Content-Type:
application/json" -X POST --data "{
"records":
[ {
\"source\" : \"Simulated\",
\"node\" : \"nameofnode\",
\"type\" : \"High Virtual Memory\",
\"resource\" : \"C:\",
\"severity\" : \"5\",
\"description\" : \"Virtual memory usage exceeds 98%\",
\"ci_type\":\"cmdb_ci_app_server_tomcat\",
\"additional_info\":\"{\\\"name\\\":\\\"My
Airlines\\\"}\"
},
{
\"source\" : \"Simulated\",
\"node\" : \"01.myairlines.com\",
\"type\" : \"High CPU Utilization\",
\"resource\" : \"D:\",
\"severity\" : \"5\",
\"description\" : \"CPU on 01.my.com at 60%\"
}
]
}" -u UserName:Password
http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/em/jsonv2

Example:

Example showing JSON v2 formatted event messages with MID Web Server API key

Note: When copying and pasting the text following, hidden characters might also be
copied and can cause unexpected results.

curl --location -g --request POST
'http://{MID_Server_IP}:{MID_Web_Server_Port}/api/mid/em/json
v2' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: key <mid_webserver_api_key>' \
--data-raw '{
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3005


<!-- page 3006 -->
"records":
[ {
\"source\" : \"Simulated\",
\"node\" : \"nameofnode\",
\"type\" : \"High Virtual Memory\",
\"resource\" : \"C:\",
\"severity\" : \"5\",
\"description\" : \"Virtual memory usage exceeds 98%\",
\"ci_type\":\"cmdb_ci_app_server_tomcat\",
\"additional_info\":\"{\\\"name\\\":\\\"My
Airlines\\\"}\"
},
{
\"source\" : \"Simulated\",
\"node\" : \"01.myairlines.com\",
\"type\" : \"High CPU Utilization\",
\"resource\" : \"D:\",
\"severity\" : \"5\",
\"description\" : \"CPU on 01.my.com at 60%\"
}
]
}'
Related topics
Configure the MID Web Server extension
Event collection from BMC TrueSight
Event collection from Microsoft Azure Monitor
Event collection from Google Cloud Platform
Event collection from custom payloads
The MID WebService Event Collector enables you to collect event information from custom
payloads in JSON, XML, or plain text format.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Role required: evt_mgmt_admin

About this task

The MID Server transforms the collected event messages and populates the Event table fields
(em_table) in the instance. The collection of formatted event messages is described in this
procedure using basic authentication. For information about supported authentication methods,
see Configure the MID Web Server extension.
The format of the required MID Server URL is: http://{MID_Server_IP}:
{MID_Web_Server_Port}/api/mid/em/inbound_event?
Transform={Transform_script_name}. The name of the MID Server script include is
composed by appending a suffix to the default TransformEvents_ prefix. For information
about the collection of JSON v2 event messages, see Configure the MID WebService Event
Collector Context.

Note: The URL in the format http://{MID_Server_IP}:
{MID_Web_Server_Port}/api/mid/em/{transform_script_name}is also
supported.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3006


<!-- page 3007 -->
Procedure
1. Configure the MID WebService Event Collector, see Configure the MID WebService Event
Collector Context.
2. Start the MID WebService Event Collector.

Example:

Transformation of XML formatted event messages using the custom payload URL
Assume that XML formatted event messages are sent to the MID Server. Use this example to
return an array of event objects from the collected event messages. The name of the MID Server
script include is composed by appending a suffix to the default TransformEvents_ prefix.
For the purposes of this example, the user supplied the xmlSample script include. Using these
details, the name of the MID Server script include is TransformEvents_xmlSample. The
MID Server transforms the collected event messages by parsing the messages using the script
include and then transmitting them to the instance.
Data for the XML example
Field

Value

MID_Server_IP

10.218.64.27

MID_Web_Server_Extension_Port

8097

transform_script_suffix _name

xmlSample

Replace the variables in the URL with the values from the above table:
http://10.218.64.27:8097/api/mid/em/xmlSample

Note: When copying and pasting the text below, hidden characters might also be copied
and can cause unexpected results.
Example showing XML formatted event messages:
<records>
<event>
<source>My Source</source>
<node>host1</node>
<type>type1</type>
<severity>3</severity>
<description>Virtual memory usage exceeds 98%</description>
</event>
<event>
<source>My Source</source>
<node>host2</node>
<type>type2</type>
<severity>2</severity>
<description>Virtual memory usage exceeds 90%</description>
</event>
</records>
Related topics
Configure the MID Web Server extension
Configure the MID WebService Event Collector Context

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3007


<!-- page 3008 -->
Integrate with push connectors
Integrate with a push connector to connect to an external event source. Push connectors
process the collected event messages and transform them to the required event format.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed.
Role required: evt_mgmt_admin

Note: If you are upgrading a ServiceNow AI Platform instance from Paris or earlier, you can
use legacy listener transform scripts. See Use legacy listener transform scripts for further
information.

About this task

The push connectors accept event messages that are generated by external event sources.
Configure a connector to listen to an external event source. Using a custom push connector,
send the event messages through either the MID Server or the instance.

Note: You can use this generic JSON target URL to collect events:https:/
<<INSTANCE>>/api/sn_em_connector/em/inbound_event?
source=genericJson. This URL can be used as-is and requires that an event rule be
configured.

Procedure
1. Navigate to All > Event Management > Integrations > Push Connectors.
2. Click New or click the push connector that you want to modify, for example, AWS or Azure.
3. On the form, fill in the fields.

Field

Description

Name

Unique name for this push connector for easy
identification.

Description

Enter a description for the use of the push
connector.

Header name

Specify the name of the header that you want
the value for, such as Set-Header.

Header value

The value of the header name that you want
the value for, such as Set-Header.

Type

Select to send events either Instance
or MID. In each case, use the URL of the
selected type. See the description of the URL
parameter value field.

Active

Select to enable pulling events from this
external event source.

Order

Order in which an event rule is evaluated
when multiple rules are defined for the same
type of event. Event rules are evaluated in
ascending order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3008


<!-- page 3009 -->
Field

Description

URL parameter value

◦ Send events to the instance.
Use the URL in this format for all
connectors: https://<<INSTANCE>>/
api/sn_em_connector/
em/inbound_event?
source={URL_parameter_value}
◦ Send events through the MID Server.
Use the URL in the format:http://
{MID_Server_IP}:
{MID_Web_Server_Port}/
api/mid/em/inbound_event?
Transform={Transform_script}

Note: Sending events to the MID
Server requires the prior configuration
of the MID WebService Event Listener
extension.
4. In the Script section:
◦ If the value selected for the Type field is MID, the Transform script field appears. In this
field, specify or search for the name of the MID script include that accepts event messages
that the required external event source generates and that the script parses into the required
event format. Use this naming convention for the script: TransformEvents_<your
source>
◦ If the value selected for the Type field is Instance, the Script editor appears. In the Script
editor, enter the customized script that accepts event messages that the required external
event source generates and that the script parses into the required event format.
Example
This example shows the fields that have been transformed, being added to an event form.
(function process(/*RESTAPIRequest*/ request, body) {
/*Function that receives a JSON object, adding all its fields
to the Additional information object. The field name is a
concatenation of the field key and the parent field key if it
exists.*/
function updateAdditionalInfo(event,
field,jsonObject,additionalInfo) {
for (var key in jsonObject) {
var newKey = key;
if (field != "") {
newKey = field + '_' + key;
}
// You can do some transformation here and set fields on the
event
//if(key == "MySource")
//
event.source = jsonObject[key];
additionalInfo[newKey] = jsonObject[key];
}
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3009


<!-- page 3010 -->
try
{
gs.info("TransformEvents_generic received body:" +
body);
var jsonObject = JSON.parse(body);
var event = new GlideRecord('em_event');
event.source = "GenericJson"; //TODO: Need to define
event.event_class = "GenericJsonClass"; //TODO: Need to
define
event.severity = "5";
var additionalInfo = {};
updateAdditionalInfo(event,
"",jsonObject,additionalInfo);
/*Iterates over Additional information JSON object and
adds all nested objects' fields as fields of the Additional
information object*/
var notDone = true;
while (notDone) {
notDone = false;
for (var key in additionalInfo) {
if
(Object.prototype.toString.call(additionalInfo[key]) ==
'[object Object]') {
notDone = true;
updateAdditionalInfo(event,
key,additionalInfo[key],additionalInfo);
additionalInfo[key] = "";
}
}
}
gs.info("TransformEvents_generic generated additional
information:" + JSON.stringify(additionalInfo));
event.additional_info = JSON.stringify(additionalInfo);
event.insert();
}
catch(er){
gs.error(er);
status=500;
return er;
}
return "success";
})(request, body);
Use legacy listener transform scripts
Use legacy listener transform scripts when upgrading a ServiceNow AI Platform instance from
Paris or earlier. These scripts can be run as part of existing integrated systems, or in unison with
Event Management push connectors.
You can use listener transform scripts to ensure that previous integrations are supported. For
example, if you are using the https:/<instance-name>.service-now.com/api/
global/em/inbound_event endpoint in various existing integrations, you can continue to
use this endpoint in a Quebec or later ServiceNow AI Platform instance.
If you want to use the Event Management push connectors, download the plugin from the
ServiceNow Store
website. You can then access the push connectors in the ServiceNow AI
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3010


<!-- page 3011 -->
Platform instance, and the https://<instance-name>.service-now.com/api/
sn_em_connector/em/inbound_event endpoint is also created.

Use the legacy endpoint with push connectors
You can continue to use the https:/<instance-name>.service-now.com/api/
global/em/inbound_event endpoint with the push connectors, by deactivating the
relevant transform scripts. To deactivate a script, navigate to Event Management > Integrations
> Listener Transform Scripts. Then click the relevant script in the displayed list, and clear the
Active check box in the form.

Use the legacy endpoint and deactivate all listener transform scripts
You can also continue to use the https:/<instance-name>.service-now.com/
api/global/em/inbound_event endpoint but deactivate all listener transform scripts
to use the push connectors instead. To deactivate all scripts, navigate to System Properties >
All Properties, locate the sn_em_connector_listener_table_for_InboundEvent
property, and set its value to True.

Migrate custom listener transform scripts to the push connectors module
If you have created custom listener transform scripts, they must be migrated to the push
connectors module if you want to use the new https://<instance-name>.servicenow.com/api/sn_em_connector/em/inbound_event endpoint. To migrate the
custom script, navigate to Event Management > Integrations > Listener Transform Scripts,
click the relevant listener transform script, and select the displayed script. Then navigate to
Integrations > Push Connectors, click New, and paste in the script you copied from the listener
transform script.
Integrate AWS platform as a data source
Integrate Amazon Web Services (AWS) with Event Management. To add AWS platform as a data
source, configuration is required in the AWS platform.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Download the Event Management Connectors plugin from the ServiceNow Store.
Role required: evt_mgmt_admin

About this task

When an AWS platform alarm arrives, Event Management:
• Extracts information from the original AWS platform alarm to populate the required event fields
and inserts the event into the database.
• Captures the content in the additional_info field.
The AWS platform push connector is located in Event Management > Integrations > Push
Connectors. In the Push Connectors page, click AWS Events Push Connector.

Note: The AWS push connector that is provided in the base system handles AWS
CloudWatch alarms only and not CloudWatch events created through event rules. To
handle Simple Notification Service (SNS) alarms that are other than AWS CloudWatch,
create a new push connector or customize the AWS push connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3011


<!-- page 3012 -->
Starting from the Xanadu release, the OOTB (Out-Of-The-Box) event rules provided with the
connector, which you have not previously used (i.e., neither activated, deactivated, nor modified),
will now have the Apply additional matching rules check box set to true. Previously, this check
box was disabled. This change allows you to execute more event rules or automation using the
same filter conditions for the events.

Note: This feature applies only to active event rules.
Procedure
1. In the AWS platform console, select Simple Notification Service .
If an SNS topic does not exist, create one.
2. Under the SNS topic, create a new subscription.
a. Take Topic ARN from the topic that you created.
The Amazon Resource Name (ARN) is necessary for binding an Event Management alert to a
CI.
b. Set Protocol to: https.
c. In the ServiceNow instance, create a user account or identify an existing ServiceNow user for
this integration.
Also ensure the relevant ServiceNow sys_user is assigned the evt_mgmt_integration role. To
ensure proper authentication, use the least privileged user with the evt_mgmt_integration
role, rather than a high privileged user.
d. Set Endpoint to: https://<username>:<password>@<instancename>.service-now.com/api/sn_em_connector/em/inbound_event?
source=aws
If AWS platform multi-factor authentication (MFA) is enabled, when signing in to the
AWS platform website, you're prompted for the user name and password, as well as an
authentication code from the AWS platform MFA device of the user.
3. Wait until the subscription changes from Pending to Confirmed and the subscription ARN
is populated.
This can take a few minutes.
4. Create alarms in AWS platform to send to Event Management and link the alarms to the SNS
topic that you created.
Raw message delivery must not be enabled in AWS alarm. These following event rules are
provided with the base system:

Event rule

Description

AWS host binding

Bind AWS platform alarms, on either the host or virtual
machine (VM), to the host Hardware CI.

AWS - General

Bind AWS platform alarms on the Load Balancer (LB)
to the Cloud Load Balancer CI, Amazon Relational
Database Service (RDS) to the Cloud Database CI, and
Host or Virtual Machine (VM) to the Virtual Machine
Instance CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3012


<!-- page 3013 -->
Event rule

Description

Note: To bind events from the Host or Virtual
Machine to the Virtual Machine Instance CI,
disable the AWS host binding rule.

Note: For the push connector to handle the incoming event, you must sent a request
header x-amz-sns-message-type with value Notification.
This example shows a JSON string for AWS VM binding:
{
"Type" : "<type>",
"MessageId" : "<message ID #>",
"TopicArn" : "<topic arn>",
"Subject" : "ALARM: \"<alarm type>\" in <location>",
"Message" : "{\"AlarmName\":\"<alarm
name>\",\"AlarmDescription\":<alarm
description>,\"AWSAccountId\":\"<account ID
#>\",\"NewStateValue\":\"ALARM\",\"NewStateReason\":
\"Threshold Crossed: <threshold and datapoint which
it crossed>.\",\"StateChangeTime\":\"<date and
time>\",\"Region\":\"<location>\",\"OldStateValue\":\"OK\",
\"Trigger\":{\"MetricName\":\"CPUUtilization\",\"Namespace\":
\"<namespace>\",\"Statistic\":\"<statistic
name>\",\"Unit\":null,\"Dimensions\":[{\"name\":
\"InstanceId\",\"value\":\"<dimension
value>\"}],\"Period\":<period
number>,\"EvaluationPeriods\":<number of evaluation
periods>,\"ComparisonOperator\":
\"GreaterThanOrEqualToThreshold\",\"Threshold\":<threshold
number>}}",
"Timestamp" : "<date and time>",
"SignatureVersion" : "<version number>",
"Signature" : "<signature>",
"SigningCertURL" : "<URL>",
"UnsubscribeURL" : "<URL>"
}
5. To enable multiple member accounts to forward CloudWatch or EventBridge events to a
centralized account, where a single SNS topic delivers them to the ServiceNow Event Ingestion
endpoint, you need to make configuration on AWS side.
To configure it, see https://repost.aws/knowledge-center/cloudwatch-cross-account-sns .
This design simplifies integration, avoids duplicating SNS topics across accounts, and
provides a single entry point for all monitoring events flowing into ServiceNow.
Related topics
Event field format for event collection
Integrate with push connectors
Integrate AWS with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3013


<!-- page 3014 -->
Before you begin

Role required: evt_mgmt_integration

Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated by the
ServiceNow AI Platform. Copy the key to use
as part of the REST API call within the Header
or Query parameter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3014


<!-- page 3015 -->
Field

Description

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

4. Unlock Auth Scope and add: UserAccount.
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

6. In the AWS environment, under Simple Notification Service, create a new topic and then
create a new subscription by selecting the topic that you have created.
7. In the Create Subscription window, enter the ServiceNow endpoint value in the Endpoint field.
Format of the api-key value must be: https://[INSTANCENAME].servicenow.com/api/sn_em_connector/em/inbound_event?
source=[SOURCENAME]&sys_id=[SYSID OF PUSH CONNECTOR INSTANCE]&xsn-apikey=[AUTH TOKEN].
The [AUTH TOKEN] value is the system-generated token displayed in the Token field.
Integrate Azure Monitor as an authenticated data source
Integrate Microsoft Azure with Event Management by adding the Azure Monitor as an
authenticated data source.
You can configure the Event Management environment for the collection of events from Azure
Monitor by setting your ServiceNow AI Platform instance as the rest endpoint.
Once the endpoint is configured, when an Azure Monitor alert message arrives, Event
Management:
• Authenticates the Azure Monitor alert message with the relevant ServiceNow user, using
OAuth configuration or a standard webhook.
• Extracts information from the original Azure Monitor alert message to populate required event
fields and inserts the event into the ServiceNow AI Platform database.
• Captures specified content in the Additional Information field of the event form.

What authentication is used
There are two methods of authentication:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3015


<!-- page 3016 -->
• OAuth authentication: Provides enterprise-grade authentication to keep your enterprise
environment safe. Authentication is performed using Azure Monitor V1 or V2 access tokens. For
more information, see Integrate Azure Monitor with OAuth authentication.
• Basic webhook authentication: Provides a basic standard of authentication, without the need
for Azure Active Directory. This authentication can be especially useful for distributed small
teams, such as SRE or DevOps teams. For more information, see Integrate Azure Monitor with
basic authentication.

What to know before you begin
You can use your integrated Azure Monitor as a data source only after you have verified the
following:
• For both methods of authentication, the relevant ServiceNow sys_user is assigned the
evt_mgmt_integration role.
• The Event Management Connectors plugin is installed in the ServiceNow AI Platform instance.
You can download the plugin from the ServiceNow Store
website.
• Azure Cloud Discovery must be performed to ensure that the created alerts are bound to the
configuration items in the ServiceNow AI Platform. For more information, see Discovery for
Microsoft Azure Cloud.

Event Rules and Event Field mappings
These event rules and event field mappings are provided with the base system:

Module

Description

Event Rules

Azure Monitor: A general event rule to handle
all Azure Monitor events.

Event Field Mappings

Azure Monitor - ci_type: To map ci_type of
events based on resourceType field. A base
set of mapping pairs are provided.

These are the mappings provided with the base system in Azure Monitor - ci_type:
Transform Value Pairs

Note: You can add new mapping pairs to the Event Field Mapping - Azure Monitor
- ci_type as per the requirement, to map events to the respective ci_type based on
resourceType.

Starting from the Xanadu release, the OOTB (Out-Of-The-Box) rules provided with the connector,
which you have not previously used (i.e., neither activated, deactivated, nor modified), will now
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3016


<!-- page 3017 -->
have the Apply additional matching rules check box set to true. Previously, this check box was
disabled. This change allows you to execute more event rules or automation using the same filter
conditions for the connector.

Note: This feature applies only to active event rules.
If you want to send alert state changes on the ServiceNow instance from the ServiceNow alerts
to the Azure Portal, you need to enable the Azure Monitor Bi-directional connector. For more
information, see Configure Azure Monitor Bi-directional connector.

Severity mapping from Azure severity to ServiceNow event severity
Azure severity condition

ServiceNow event severity

When an Azure alert monitorCondition is Fired
Azure Sev0

ServiceNow Critical (severity "1")

Azure Sev1

ServiceNow Major (severity "2")

Azure Sev2 and Sev3

ServiceNow Warning (severity "4")

Azure Sev4

ServiceNow OK (severity "5")

When an Azure alert monitorCondition is resolved
Any Azure severity

ServiceNow CLEAR (severity "0")

Integrate Azure Monitor with basic authentication
Integrate Microsoft Azure with Event Management by adding a standard webhook in Azure
Monitor.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
Roles required: evt_mgmt_admin and web_service_admin

About this task

Configure the Event Management environment for the collection of events from Azure by
authenticating Azure Monitor as a data source. In your Azure Monitor portal, set your ServiceNow
AI Platform instance as the rest endpoint using a standard webhook.
On the Azure portal, alert correlation rules are defined through the Correlate alerts
setting within Alert Processing Rules. When Correlate alerts is assigned on the Azure
®
portal, the Azure Monitor alerts received on the ServiceNow instance within 60 minutes are
grouped using tag based alert clustering.

Procedure
1. In the ServiceNow AI Platform, create a user account or identify an existing ServiceNow user
for this integration.
Also ensure the relevant ServiceNow sys_user is assigned the evt_mgmt_integration role. To
ensure proper authentication, use the least privileged user with the evt_mgmt_integration role,
rather than a high privileged user.
2. In your Azure Monitor portal, update the Azure Monitor alert rules to use an action group with a
standard webhook:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3017


<!-- page 3018 -->
a. Create an action group with action type=webhook, and provide the URL that includes
the user ID and password of the ServiceNow user in the endpoint.
For example:
https://<username>:<password>@<instance-name>.service-now.com/
api/sn_em_connector/em/inbound_event?source=azuremonitor

Note: If you have multiple tenants on the Azure portal and you want to use
bidirectional functionality to acknowledge, close, or reopen an alert on the
Azure Portal, then the URL for the webhook has to be in the following format:
https://<username>:<password>@<instance-name>.servicenow.com/api/sn_em_connector/em/inbound_event?
source=azuremonitor&event_class=<new_connector_instance_name>.
The <new_connector_instance_name> is the new Azure pull connector instance that
you need to create for each tenant with other Azure service principal credentials. To
know how to create the pull connector, see Configure Azure Monitor Bi-directional
connector.
b. In the Webhook section, make sure that Yes is selected for the Enable the common alert
schema option.

Result

Alerts start flowing from the Azure Monitor into the Event Management plugin. The plugin extracts
information from the original Azure Monitor alert message to populate the required event fields
and inserts the event into the database. In your ServiceNow AI Platform instance, navigate to All
Events to see the events.

What to do next

If you want to send alert state changes on the ServiceNow instance from the ServiceNow alerts
to the Azure Portal, you need to enable the Azure Monitor Bi-directional connector. For more
information, see Configure Azure Monitor Bi-directional connector.
Integrate Azure with REST API key token
Integrate using an API key to establish secure communication and automate data exchange
via REST API. This simplifies integration, enabling seamless access to services and enhancing
operational efficiency.

Before you begin

Role required: evt_mgmt_integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3018


<!-- page 3019 -->
Procedure
1. Navigate to All > System Web Services > API Access Policies > REST API Key.

2. Select New.
3. On the form, fill the fields.

Note: The user needs to be created with the evt_mgmt_integration role. Create a new
one on the sys_user table to use here to facilitate the right access.
API Key
Field

Description

Name

Name to identify the REST API Key

Description

Description for the REST API Key.

Active

Status of the REST API Key.

User

User associated to the REST API Key. Use the
look-up icon to select the user.

Auth Scope

Option to add auth scope to manage the
authority of the REST API Key.

Token

The REST API key generated by the
ServiceNow AI Platform. Copy the key to use
as part of the REST API call within the Header
or Query parameter.

Expiry

Time after which the credential is no longer
valid. Empty value means no expiration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3019


<!-- page 3020 -->
4. Unlock Auth Scope and add: UserAccount.
5. Use the form menu and select Save.
The system generates a token and saves it in the Token field. To see the token, use the lock
icon and copy the contents display below the field. This is your query parameter (or header)
value when your other system sends a REST API request to ServiceNow.

Integrate Azure Monitor with OAuth authentication
Integrate Microsoft Azure with Event Management by authenticating Azure V1 or V2 tokens in the
Azure Monitor.

Before you begin

Ensure that the Event Management Connectors (sn_em_connector) plugin is installed on the
ServiceNow AI Platform instance.
On the Azure portal, alert correlation rules are defined through the Correlate alerts
setting within Alert Processing Rules. When Correlate alerts is assigned on the Azure
®
portal, the Azure Monitor alerts received on the ServiceNow instance within 60 minutes are
grouped using tag based alert clustering.
Roles required: evt_mgmt_admin, web_service_admin, and oauth_admin

About this task

Configure the Event Management environment for the collection of events from Azure Monitor. In
your Azure Monitor portal, set your ServiceNow AI Platform instance as the rest endpoint using V1
or V2 tokens.

Procedure
1. In the Azure Monitor portal:
a. Perform app registration and expose an API.
For more information about registering an app and exposing an API in Azure, see https://
docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-configure-app-exposeweb-apis .
b. Create an action group with a secure webhook, and provide the rest endpoint as
https://<instance-name>.service-now.com/api/sn_em_connector/
em/inbound_event?source=azuremonitor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3020


<!-- page 3021 -->
Note: If you have multiple tenants on the Azure portal and you want to
use bidirectional functionality to acknowledge, close, or reopen an alert
on the Azure Portal, then the URL for the secure webhook has to be in the
following format: https://<username>:<password>@<instancename>.service-now.com/api/sn_em_connector/em/inbound_event?
source=azuremonitor&event_class=<new_connector_instance_name>.
The <new_connector_instance_name> is the new Azure pull connector instance that
you need to create for each tenant with other Azure service principal credentials. To
know how to create the pull connector, see Configure Azure Monitor Bi-directional
connector.
For servicenowservices.com instances, the rest endpoint has to be https://
<instance-name>.servicenowservices.com/api/sn_em_connector/
em/inbound_event?source=azuremonitor.
For more information about adding a secure webhook to an action group, see https://
docs.microsoft.com/en-us/azure/azure-monitor/platform/action-groups .
c. Navigate to Alerts > Manage Alert Rules.
d. In the Secure Webhook section, make sure that Yes is selected for the Enable the common
alert schema option.
e. Add the action group with the secure webhook to an alert rule.
2. In the Azure Monitor portal, verify which Azure token is in use by your registered application.
a. Navigate to App Registration, and select the registered application.
b. In the Manage section, click Manifest.
c. In the editor screen, select the Microsoft Graph App Manifest tab and locate the
requestedAccessTokenVersion parameter or select the AAD Graph App Manifest
tab and locate the accessTokenAcceptedVersion parameter.
If the value of requestedAccessTokenVersion or
accessTokenAcceptedVersion is 2, the integration must use V2 tokens.
If the value of requestedAccessTokenVersion or
accessTokenAcceptedVersion is 1 or null, the integration must use V1 tokens.
3. In your ServiceNow AI Platform instance, ensure that the ServiceNow user is assigned with the
correct Application (client) ID or Application ID URI.
Also ensure the relevant ServiceNow sys_user is assigned the evt_mgmt_integration role.
a. Navigate to System Security > Users and groups > Users.

Note: To ensure proper authentication, use the least privileged user with the
evt_mgmt_integration role, rather than a high privileged user.
b. Verify that the Source field for the ServiceNow sys_user is populated with the correct
Application (client) ID or Application ID URI, as defined in the Azure Monitor portal.
If the application is using an Azure V1 token, the Source field must be populated with the
Application ID URI of the registered application. If the application is using an Azure V2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3021


