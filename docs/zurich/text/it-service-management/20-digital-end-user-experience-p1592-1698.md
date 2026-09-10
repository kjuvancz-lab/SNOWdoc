# Zurich IT Service Management — Digital End-User Experience

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1592–1698 of 3857

Sections: Digital End-User Experience (p1592); Explore (p1594); Configure (p1601); Monitor (p1684); Use agentic AI (p1698)

---

<!-- page 1592 -->
Domain separation and Digital Product Release
Domain separation is supported for Digital Product Release. Domain separation enables you to
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

Overview of domain separation in Digital Product Release
All tables in Digital Product Release can be domain-separated and include the required domain
separation field.

How domain separation works in Digital Product Release
• Each table in Digital Product Release includes the domain separation field called Domain.
• Customers can use this field to configure domain separation in their implementation of Digital
Product Release.
Related topics
Domain separation for service providers

Digital End-User Experience
®

ServiceNow Digital End-User Experience (DEX) offers comprehensive monitoring for
applications, networks, and devices, promoting optimal performance across all channels. DEX
includes Application and Device Health for monitoring performance and compliance, DEX
Content Playbook for facilitating remediation with policies and metrics checks, and Desktop
Assistant for integrating ServiceNow functionalities into the daily end-user workflows.

DEX Overview
ServiceNow DEX empowers you as IT professionals with proactive oversight of end-user
applications, devices, and networks. The DEX capabilities enable your organization to improve
the technology experience for its employees, make it simple for them to self-solve issues and
engage with a knowledgeable IT team when extra support is needed.
DEX Application and Device Health collects and tracks user experience data and performance
metrics, supporting application, user, and device management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
Desktop Assistant enables employees to troubleshoot issues, receive notifications, and interact
with the Virtual Agent. The application provides a convenient access for the employees to
monitor local applications, requests, and perform network tests.
The Digital End-user Experience Self-service functionality is available through a widget in
Desktop Assistant and Employee Center, as well as through the Virtual Agent. You can check
device issues, resolve them based on suggested resolutions, and initiate device actions to
maintain optimal device performance. With Virtual Agent, you can get answers to your questions
quickly and seamlessly, without having to wait on hold or speak to a representative over the
phone.
DEX Content Playbook typically includes web or installed application monitoring, user device
health monitoring, remediation, as well as diagnostic actions for users to run on their connected
devices for troubleshooting.
For a unified monitoring workspace and relevant content (policies, check definitions, and
actions), refer to Application and Device Health and DEX Content Playbook.
The Digital Experience Score​ dashboard provides comprehensive insight into the digital
experience of your employees by analyzing three key data sources: monitored metrics from enduser devices, user sentiment, and service desk experience. For more information, see Digital
Experience Score​.
Proactive Engagement can assist your organization to improve employee productivity and
satisfaction by proactively detecting digital experience issues and enabling employees to selfsolve on a day-to-day basis.

Get started with DEX

Explore

Configure

Leverage the system for monitoring
and remediation objectives

Configure Digital End-User Experience.

.

Manage

Reference

Monitor and manage the digital workplace
with Digital End-User Experience.

Get information about the DEX
Workspace administration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1593


<!-- page 1594 -->
Use agentic AI

Use the DEX agentic workflow to
diagnose and resolve device issues.

Troubleshoot and get help
Contact Now Support.

Exploring Digital End-User Experience
The Digital End-User Experience (DEX) suite offers proactive visibility to help you understand and
improve the end-user experience across your organization. It includes Application and Device
Health, DEX Content Playbook, Desktop Assistant, Digital Experience Score​, and Proactive
Engagement to provide unique benefits to diagnose and address negative experiences.

Digital End-User Experience overview
The Digital End-User Experience (DEX) provides end-to-end visibility into the health of
applications, networks, and end-user devices. DEX provides such features as application, user
and device navigation, trend analysis, and various useful metrics. With DEX you can identify the
root cause of an issue, rather than just treating the symptoms.

Digital End-User Experience users
For examples of how different people in your organization would use DEX Application and Device
Health, see these users and roles.
Application and Device Health users and roles
Role title [name]

Description

DEX administrator

Responsible for managing user
access to DEX, managing the
applications that are being
monitored, and handling
onboarding or offboardingrelated tasks. They also
troubleshoot any issues that
arise within the application.

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

• sn_dex.user
• sn_dex.engineer
• agent_client_collector_admin
• report_admin

sn_dex.user

• dependency_views
• agent_client_collector_user
• sow_incident_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
Application and Device Health users and roles (continued)
Role title [name]

Description

Contains roles

• mbplus_reader
• sam_user
• evt_mgmt_user
DEX Service Desk agent

Responsible for L1 or L2 support
representatives accessing DEX
[sn_dex.service_desk_user] from the incident platform to
explore and investigate the
details of the devices linked to
the incident.

Not applicable

Also responsible for accessing
and executing the remedial
actions allowed for this role.
For examples of how different people in your organization would use Desktop Assistant, see
these use cases.
Desktop Assistant users and responsibilities
User

Responsibilities

Desktop Assistant administrator

Responsible for managing configurations and
resolving any issues that might arise within the
application.

[sn_dex_desktop.admin]
Desktop Assistant user
[sn_dex_desktop.user]

Responsible for using Desktop Assistant.
User can't configure any items within the
application.

Digital End-User Experience workflow
Depending on your role, you can use Digital End-User Experience for a variety of scenarios.
Digital End-User Experience overview

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
Digital End-User Experience benefits
Having a positive digital experience can lead to numerous benefits, including the following:
Proactive visibility into the end-user experience
Gain insights into the digital experience of your application and services from
the end-user viewpoint, regardless of their location, device type, or network
connectivity. Identify and measure the health of user systems — view what
applications and system crashes are happening. All this reliability data is brought
together in one central workspace, letting your IT team dive deeper into more
detailed data without deploying additional monitors.
Increased productivity
Access digital tools and resources easily to troubleshoot IT issues, reset passwords,
or access software. This ability can lead to increased productivity by reducing the
burden on IT staff. The DEX Content Playbook includes policies and checks for
metrics and subsequent actions required for different operating systems.
Issue analysis
Identify and analyze issues by providing insights into pain points, usage patterns,
performance, and impact. By analyzing DEX data, organizations can identify areas
for improvement and make data-driven decisions to enhance the digital workplace
experience for their end users.
Performance evaluation
Provide insights into the productivity, efficiency, user behavior, and engagement.
DEX provides a wealth of device performance and health information. This data can
help IT teams understand how a given application is being used and identify areas
for improvement.
Enhanced engagement
Promote end-user experience and productivity by continuously measuring and
monitoring application and device health metrics. Gain end-to-end visibility and
insights into the overall user experience and quickly identify users, applications,
and devices with poor experiences that need your attention. A positive digital
experience helps you to improve end-user engagement leading to increased
motivation, better job satisfaction, and lower turnover rates.
Optimized end-user digital experience
Empower your employees with Desktop Assistant – a centralized hub that provides
a comprehensive view of requests and device health, enables internet connection
testing, and offers a usage metrics dashboard for seamless communication with the
®
ServiceNow instance.

Better together
DEX for Service Desk Agents
As a Service Desk agent, navigate to the DEX device health page from the
ServiceNow Core UI incident experience or from the Investigate tab within the
Incident experience in Service Operations Workspace (SOW). Configure a
computer Configuration Item (CI) and install the DEX plugin for the ability to analyze
device metrics from within the platform, getting valuable insights for effective issue
investigation.
Use incident investigation with DEX to review device health, detected issues,
and suggested resolutions. Implement resolutions and remedial actions directly
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
from your workspace and monitor the status of actions. For more information, see
Incident investigation with DEX.
Use the DEX issue diagnosis and resolution agentic workflow to resolve detected
issues with automated root cause analysis, targeted resolution plans, and
documentation of resolution summary in incident records. For more information, see
DEX issue diagnosis and resolution agentic workflow.
Software Asset Management
Unifying the experience of DEX application with Software Asset Management
(SAM) software enables you to access SAM-normalized software content. This
integration provides software metering data from DEX to integrate with SAM for
software licensing reclamation and, in turn, reduce software license costs. For more
information, see Using DEX or SAM for application monitoring.

What to explore next
To learn more about configuring and using Digital End-User Experience, see:
• Configure Digital End-User Experience.
• Monitor and manage the digital workplace with Digital End-User Experience.
• Use the Desktop Assistant.
• Get information about the DEX Workspace administration.
• Tracking digital experience using Digital Experience Score dashboard.

DEX Architecture
Digital End-User Experience (DEX) architecture provides a seamless and integrated digital
experience for end users.
DEX uses a set of new multi-tenant, cloud-native services called ServiceNow shared services.
In this architecture, DEX endpoint agents are able to communicate with the ServiceNow shared
services without a MID Server. ServiceNow shared services provide authentication to DEX agents
and enable message buffering and stateful stream processing of data sent to your ServiceNow
instance and a time series datastore. ServiceNow shared services also enable a secure way to
send policy updates and on-demand execution of checks on the DEX agents. Thus, ServiceNow
shared services enable secure bi-directional communication between your ServiceNow instance
and the DEX endpoint agents.
DEX architectural diagram

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
Binaries installed on endpoints
• Agent Client Collector (ACC): Deployed onto the end-user device endpoints such as a
laptop or Virtual Desktop infrastructure (VDI) to collect various device level performance and
operational metrics. ACC enables you to do the following:
◦ Configure a policy frequency to control what metrics are collected and the frequency of
collection.
◦ Get the agent run remedial actions on the endpoint, such as clearing cache, restarting an
application, and many more.
• Browser extension: Helps track application performance and network metrics like page load
time and network jitter. The communication between the browser extension and ACC, as well
as the device and application metrics, are routed via the ServiceNow shared services. For
more information, see Enable DEX browser extension.
• DEX Desktop Assistant: Enables employees to incorporate ServiceNow functionalities into
their daily workflow, providing access to monitoring local applications, requests, and push
notifications and to performing network tests.

Agent registration highlights
• After the installation, ACC is registered on your organization's ServiceNow instance and the
required certificates are downloaded from the instance. All the communication between ACC
and your instance happens over secured HTTPS.
• After the ACC registration, a connection with the ServiceNow shared services is established.
The agent is authenticated with the shared services via the downloaded certificates.
• ACC opens a bi-directional communication with the ServiceNow shared services using gRPC
Remote Procedure Calls (gRPC) connection. gRPC connection is a secure and encrypted
channel to send and receive data from the endpoints. The channel is secured via mutual
Transport Layer Security (mTLS).
• ACC sends various devices and application performance metrics to the shared services.
• The instance also pushes data, such as DEX policies, to the agent via this bi-directional
channel.
• The ServiceNow shared services use the ServiceNow Hermes Messaging Service and Stream
Connect to isolate your organization’s data.
For more information, see Hermes

and Stream Connect

.

• Raw metrics collected from endpoints are processed further using the shared services and
eventually pushed to your ServiceNow instance.
• In addition, some of the configuration device metrics and agent heartbeats are directly pushed
to the ServiceNow instance. The operation is performed over a secured HTTPS channel via a
REST endpoint.

Data security
There are various security measures to promote that the scripts are run securely.
• Allow list: File shipped along with the agent verifying that no command other than the ones in
the allow lists can be executed.
For more information on the list, see Generate an Agent Client Collector allow list

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
• Plugins certificate signing: The scripts are packaged in plugins which are deployed to the
endpoint. To promote data integrity, the plugins can be signed by a certificate so that there are
no malicious plugins deployed.
For more information on certificate signing, see Secure a custom plugin with a certificate

.

• Role-based access: All actions are available to only specific roles and user criteria within
ServiceNow. For example, advanced actions can be assigned to the DEX engineer role and
basic actions to the Service Desk.
For more information, see Configure the Remedial Actions Framework

.

• Audit: All action runs are audited in the Remedial Action Executions table
(ssn_reacf_remedial_action_execution).
For information about emergency plans (such as notification and restore the service), see DEX
subscription.

Data isolation
Your data is stored in a separate topic when the Hermes Messaging Service and Stream Connect
persist in the file system while data is sent and received.
The agent client certificate issued by your ServiceNow instance holds the instance name for your
organization. After the agent is authenticated, the instance name from the agent certificate is
used to keep data isolated within a shared services cluster.
mTLS is used for a secure communication between the agent and server components. The agent
authenticates itself using a client certificate with the following parameters:
• Public Key Algorithm: id-ecPublicKey (ECDSA)
• Key Size: 256-bit
• Elliptic Curve: NIST Curve P-256
The setup promotes strong encryption and efficient key exchange using elliptic curve
cryptography.
Agent assets and plugins (like DEX) that are downloaded from your ServiceNow instance through
the shared services are signed by ServiceNow or the asset owners during their release. Signing
promotes the authentication and integrity of the agent's asset or plugin to the agent.

Data access
All collected data is transformed and presented on your ServiceNow instance.
Any data collected in the context of DEX is visible to users only with appropriate DEX roles. For
more information about the DEX roles, see Installed with DEX.
When following the standard ServiceNow practices on data governance, no special handling is
required for DEX.

Data retention
All the raw metrics collected from devices are stored in the ServiceNow instance for a maximum
of seven days. Aggregated metrics are stored for a longer duration based on the type of
aggregation. Aggregation metrics are used to show trend lines for various metrics. Hermes
Messaging Service stores data for 36 hours by default. No other ServiceNow shared services
store any metric data in transit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


<!-- page 1600 -->
DEX subscription
Digital End-User Experience (DEX) license counting provides the Subscription Unit (SU)
consumption counting computers where any of the DEX features (Desktop Assistant, Application
and Device Health, and DEX Content Playbook) are active.
If multiple DEX features report usage on the same Configuration Items (CIs), the SU count
removes the duplication.

DEX capacity limitations
DEX uses the MetricBase datastore to store time-series data sampled at regular intervals. The
MetricBase Series limit is controlled by data collection and retention policies for applications and
devices that can’t be modified. For example, application and device metric data collected at fiveminute intervals from each device is retained for up to seven days for troubleshooting purposes.
Roll-ups of aggregated data is available for longer periods to analyze performance and usage
trends. For information on policies and check definitions, see DEX Content Playbook reference.
DEX can monitor up to 200 active applications per ServiceNow instance, with no more than 40
active applications per user per week. Active applications include Software as a Service (SaaS)
and installed applications on end-user computing devices that are monitored by DEX.
DEX uses metric rules to analyze streams of metric data against sets of criteria and thresholds,
triggering alerts when performance metrics deviate from specified parameters. An instance can
have up to 50 active metric rules.

DEX subscription unit calculation
DEX includes entitlement for up to the number of SUs purchased. A SU is a unit of measure
applied to Managed IT Resources using Defined Ratios. For DEX, the Managed IT Resource Type
is an End-user Computing (EUC) device. The SU to EUC device ratio is 1:4. For example, 1,000
SUs = 4,000 EUCs.

Contact info
Contact your account team for additional information regarding DEX pricing and packaging.

Using DEX or SAM for application monitoring
Monitor your application usage and performance with Software Asset Management (SAM) or
Digital End-User Experience (DEX), depending on your organization's needs. SAM and DEX both
use the Agent Client Collector (ACC).
DEX supports software metering through its integration with ACC and SAM. The following table
helps you choose the appropriate application monitoring option for your organization.

Use case

DEX or SAM

Monitor both performance and usage

DEX

Monitor usage only

SAM

Maximum number of applications monitored

DEX
Up to 200 apps

Large-scale software metering

SAM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
Use case

DEX or SAM

Scalable beyond 200 apps
For more information for application monitoring with DEX, see Add an application for monitoring.
For more information on application monitoring with SAM, see the following:
• Using push-based Discovery and SAM together
• SaaS detection report

Configuring Digital End-User Experience
You can set up and configure Digital End-User Experience based on your organization's specific
requirements. Learn how to integrate web and installed applications and to manage the
Application and Device Health monitoring system.
Before setting up and using Digital End-User Experience (DEX), confirm that the system meets
the minimum requirements to guarantee optimal performance. For more information, see DEX
system requirements.
To set up DEX and begin exploring the workspace, you must complete the following
configurations.
1. Install Application and Device Health.
2. Install Agent Client Collector (ACC).
◦ Create an ACC registration key.
◦ Test connectivity to the ServiceNow instance
◦ Install ACC for DEX on Windows
◦ Install ACC for DEX on macOS
◦ Test Agent Client Collector connectivity
◦ If you have a MID-based ACC, you must convert it to a MID-less ACC. For more information
regarding conversion, see Convert MID-based ACC to MID-less.
◦ If you want to fetch the complete playbook content data for a Windows device, see Run ACC
as a local system account user.
3. Enable DEX browser extension.
4. Onboard for Application and Device Health.
5. Make sure to Configure MID-less Agent Client Collector using a single-line command.
6. Explore Application & Device Health interface.

Note: DEX Content Playbook provides policies, check definitions, and actions that can
be used by Application and Device Health to facilitate the monitoring of applications
and devices, and to support application remediation. You can also refer to DEX Content
Playbook reference to learn the content it provides.
7. Set up DEX Desktop Assistant.
8. Configure Proactive Engagement.
9. Configure DEX Self-service.
10. Configure Digital Experience Score​.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


<!-- page 1602 -->
DEX system requirements
System requirements are the fundamental specifications and configuration needed to install and
run DEX effectively.
Vancouver Patch 6 is the minimum version required for DEX.

Supported ACC versions
DEX supports Agent Client Collector Framework (ACC-F) versions 3.4.1 and 3.5.1.

DEX browser extension requirements
The minimum required browser versions for DEX browser extension are Google Chrome 114 or
higher, and Microsoft Edge version 96 or higher.

Operating system compatibility
DEX is compatible with the following operating systems:
• Microsoft Windows
◦ Windows 10 Enterprise Edition
◦ Windows 11 Professional
◦ Windows 11 Enterprise
◦ Windows 11 Surface on ARM64
• Apple macOS
◦ Monterey
◦ Ventura
◦ Sonoma
◦ Sequoia

DEX installation and initial configuration
Install and configure required plugins to start monitoring and administering your organization's
devices using Digital End-User Experience.
Install and configure the Digital End-User Experience (DEX) plugin and Agent Client Collector
(ACC) to enable comprehensive monitoring of devices and web applications. Follow these
procedures to generate the ACC registration key, install ACC on Windows and macOS, verify
connectivity, configure proxy, optionally switch from MID-based to MID-less architecture, and
enable the DEX browser extension. Complete these steps to make sure that devices are properly
onboarded for Application and Device Health, laying the foundation for reliable experience data
collection across your environment.

DEX guided setup
After installing DEX, use the DEX guided setup experience to install and configure the associated
plugins.
In the primary navigation pane, select the DEX Administration icon (
setup through the following cards:

) and access-guided

Agent deployment on Windows devices
Install Agent Client Collector for DEX on Windows.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
Agent deployment on macOS devices
Install Agent Client Collector for DEX on macOS.
Deploy browser extension
Enable DEX browser extension.
Desktop Assistant deployment
Activate Desktop Assistant on the employee's device.
Digital End-user Experience Self-service configuration
®

Configure the DEX Self-service on your ServiceNow instance.
Install Digital End-User Experience
Digital End-User Experience (DEX) is available with activation of the Digital End-User Experience
[sn_dex] plugin. You must have the admin role to install the DEX product [sn_dex]. During
installation, Application and Device Health is included as a component in DEX.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the DEX Application & Device Health
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Digital End-User Experience:
• Roles
• Tables
For more information, see Installed with DEX.
For information about DEX data migration, see the KB1646364

article in the knowledge base.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Digital End-User Experience application [sn_dex] using the filter criteria and search
bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you’re displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Warning: Digital End-User Experience is installed with Mutual Transport Layer Security
(mTLS) automatically enabled on the ServiceNow instance. As an updated, more secure
version of SSL, mTLS enhances security by encrypting data and verifying the identity
of both the client and server before establishing a connection. If you have legacy
security products on any other integrations with ServiceNow, they might break after DEX
installation. Update to support TLS or mTLS, aligning with the enhanced security features.
Create an ACC registration key
Set up an Agent Client Collector (ACC) by creating an agent registration key to identify and
authenticate agents that are enabled to send data to the collector. The key helps promote the
security and integrity of the data collected from the system.

Before you begin

Role required: sn_dex.admin

About this task

Important: By default, the registration key you generated expires in 90 days. Update the
sn_agent.registration_key_validity.days property to change the validity duration.

Procedure
1. Navigate to All > Agent Client Collector > Deployment > Agent Registration Key.
2. Select New.
3. In the Name field, enter a descriptive name for the registration key.
4. Optional: To receive notifications when a registration key is soon to expire, select a group with
a valid email address in the Ownership Group field.
When keys are deleted via the Cleanup Agent Registration Keys scheduled job, the indicated
group receives an email notification.
5. Select Submit.

What to do next

Install ACC for DEX on Windows or Install ACC for DEX on macOS.
Test connectivity to the ServiceNow instance
Test the ServiceNow DEX instance network connectivity.

Before you begin
• On Windows, download the curl utility with the latest binaries to support mutual Transport
Layer Security (mTLS) authentication.
1. From https://curl.se/windows/
drive.

, download the latest curl zip file and extract it to your local

2. Open a command prompt and set the path to the downloaded curl binary.
For example, SET PATH=C:\curl-8.12.1_1-win64-mingw\bin;%PATH%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
Note: The curl utility downloaded from the website doesn't replace the existing utility
version on your local machine. The new version is applicable to the current CMD session
only.
• On macOS, use the curl utility version already installed.
Role required: agent_client_collector_admin

Procedure
1. From the command line, download the install_script.sh by running one of the
following curl commands:
◦ Without a proxy: curl –verbose -L https://<servicenow instance>/api/
sn_agent/agents/install_agent -o install_script.sh
◦ With a proxy: curl --verbose –-proxy <HOST_NAME>:<PORT> -L https://
<servicenow instance>/api/sn_agent/agents/install_agent -o
install_script.sh
The command downloads a script written into install_script.sh.
2. From the All menu, navigate to the Agent scripts table (sn_agent_script).
3. Select the install_script record and confirm that its content matches the content of the
install_script.sh file.

Result

®

The match confirms that the connection is established with the ServiceNow instance.
Trouble?
If there’s no match, fix your network connection issues.
Install ACC for DEX on Windows
Install Agent Client Collector (ACC) to work with Digital End-User Experience (DEX) to monitor
and collect data, provide insights into system performance, identify issues, and enable proactive
maintenance.

Before you begin

Install the ITOM Cloud Services plugin.
Create an agent registration key.
Role required: agent_client_collector_admin

Procedure
1. Retrieve the publicly accessible gateway URL, based on your location.
◦ AMER (Americas): itomcnc-prod-gateway-amer.sncapps.servicenow.com:443
◦ EMEA (Europe): itomcnc-prod-gateway-emea.sncapps.servicenow.com:443
◦ APAC (Asia Pacific): itomcnc-prod-gateway-apac.sncapps.servicenow.com:443
2. On the Windows server where the agent is installed, enter the following command:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
msiexec /i <msi_file_path> /quiet /qn /norestart
CONNECT_WITHOUT_MID="true" ACC_CNC="<gateway_endpoint>"
REGISTRATION_KEY="<registration_key>"
INSTANCE_URL="https://<instance_url>"
The following table shows the parameter values in the command.
Installation command-line parameters
Parameter

Description

CONNECT_WITHOUT_MID Specify true to enable MID-less Agent Client Collector
installation. If you don't specify a value, the regular MID Server
websocket installation is invoked.
ACC_CNC

Specify a public gateway endpoint for Agent Client Collector.

REGISTRATION_KEY

Active and valid registration key for the agent to communicate
with.

INSTANCE_URL

ServiceNow instance that the agent is registered with.

ACC_ALLOW_LIST

Optional string. To disable the allow list, set
ACC_ALLOW_LIST=0. By default, the allow list is enabled.

Note: Disabling the allow list compromises your system's
security and is intended as a temporary measure while
you’re updating the allow list. After completing the update,
enable the allow list by setting ACC_ALLOW_LIST=1.
ACC_VALIDATE_SIG

Optional string. To disable verification of the installer certification
validation, set ACC_VALIDATE_SIG=0 that you can add to
disable the verification of the installer certification validation. By
default, validation is enabled.

Note: Disable the certification validation only when using
non-standard signature validation tools.
3. Start the Agent Client Collector service using the default ServiceNow user role created during
this installation.
The default ServiceNow user role has the following privileges:
◦ Performance Monitor: Viewing all performance counters in the system.
◦ Log on as a service: Starting network services and services that run continuously, even when
no one is logged in to the console.
◦ Debug program: Monitoring the installed applications and collecting in-depth metrics and
remedial actions, such as restart and stop.
4. To collect DEX metrics, restart the ACC service using one of the following methods:
◦ Add Remote Desktop user to ServiceNow user.
◦ Run as a local system account user.
◦ Run as a managed group user.
5. Restart the Agent Client Collector service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


<!-- page 1607 -->
Run ACC as a local system account user
To fetch the complete playbook content data for a Windows device, the Agent Client Collector
(ACC) must run as a local system account.

Before you begin

Role required: sn_dex.admin

Procedure
1. From the Windows task bar, navigate to Services > Run as administrator.
2. Open the Agent Client Collector service and select the Log On tab.
3. Select Local System account and select OK.
Agent Client Collector Properties window

Run ACC as a managed group user
Run Agent Client Collector (ACC) from a managed group account to meet your organization's
security, manageability, and auditability requirements.

Before you begin

Create a user and add the user to the following groups:
• Remote Desktop users: Required to fetch the logged-in user details.
• Performance Monitor users: Required to fetch all performance-related metrics of application
and device level.
• ServiceNow users: Has privileges to Performance Monitor, Log on as a service, and Debug
program.
• Administrator users: Equivalent to a local system user, provides access to fetch information on
Bit locker, energy consumption, and so on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


<!-- page 1608 -->
Role required: admin

Procedure
1. On the Windows host, navigate to Services.
2. Select and hold (or right-click) Agent Client Collector.
3. Select Properties.
4. Select the Log on tab.
5. Select the user that you created.
6. Select OK.
Install ACC for DEX on macOS
Install Agent Client Collector (ACC) to monitor and collect data in a centralized and organized
manner, provide insights into system performance, identify issues, and enable proactive
maintenance.

Before you begin
• Install the ITOM Cloud Services Core (sn_itom_cloud_svc) plugin.
• Onboard your instance to use ITOM Cloud Services. For details, contact Customer Support.
• Configure an agent registration key.
• Role required: root

About this task
Procedure
1. Retrieve the agent registration key:
a. Navigate to All > Agent Client Collector > Deployment > Agent Registration Key.
b. Select the relevant agent registration key.
c. Copy the registration key value and store it in a place where you can easily retrieve it when
needed.
2. Retrieve the publicly accessible gateway URL, based on your location:
◦ AMER (Americas): itomcnc-prod-gateway.amer.sncapps.servicenow.com:443
◦ EMEA (Europe): itomcnc-prod-gateway.emea.sncapps.servicenow.com:443
◦ APAC (Asia Pacific): itomcnc-prod-gateway.apac.sncapps.servicenow.com:443
3. On the server where you’re installing the Agent Client Collector, enter the following command:
CONNECT_WITHOUT_MID="true" ACC_CNC="<gateway_endpoint>"
REGISTRATION_KEY="<registration_key>"
INSTANCE_URL="https://<instance_url>" bash -c "$(curl -L
https://<instance_url>/api/sn_agent/agents/install_agent)"
The following table describes the parameter values in the command.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
Command-line parameter values
Parameter

Value

CONNECT_WITHOUT_MID Specify true to enable MID-less installation. If you don't specify a
value, the regular MID Server websocket installation is invoked.
ACC_CNC

Public gateway endpoint for Agent Client Collector that you can
specify.

REGISTRATION_KEY

Active and valid agent registration key for the agent to
communicate with.

INSTANCE_URL

ServiceNow instance that the agent is registering with.

ACC_ALLOW_LIST

Optional ACC_ALLOW_LIST=0 string that you can add to
disable the allow list.
Default: The allow list is enabled.

Note: When you disable the allow list, you compromise
your system's security. This action is intended as
a temporary measure while you're updating the
allow list. After you complete the update, remove
ACC_ALLOW_LIST=0 from the command line.
ACC_VALIDATE_SIG

Optional ACC_VALIDATE_SIG=0 string that you can add to
disable the verification of the installer certification validation.
Default: Validation is enabled.

Note: Disable the certification validation only when you're
using non-standard signature validation tools.

Related topics
Create an ACC registration key
DEX Architecture
Test Agent Client Collector connectivity
Test the Agent Client Collector (ACC) connectivity to identify any proxy issues.

Before you begin

Note: SSL inspection isn’t supported for DEX.

Role required: agent_client_collector_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
Procedure
1. Gather the following information to test communication between the ACC and ServiceNow
shared services:
a. Copy CNC certificates from the agent to a new folder:

OS

Copy from

Paste to

Windows C:\ProgramData\ServiceNow\agent-clientcollector\config\cert\cnc

Any temp
folder

macOS

Any temp
folder

/Library/Application Support/ServiceNow/agentclient-collector/cert/cnc

b. Copy the gateway URL based on your location:
▪ AMER (Americas): itomcnc-prod-gateway.amer.sncapps.service-now.com:443
▪ EMEA (Europe): itomcnc-prod-gateway.emea.sncapps.service-now.com:443
▪ APAC (Asia Pacific): itomcnc-prod-gateway.apac.sncapps.service-now.com:443
c. Navigate to All > sys_attachment.list.
d. Under Attachments, select File name in the drop-down menu and search for acc-dexcommon.tar.gz.
e. Retrieve the following parameters:
▪ Record sys_id
▪ Hash id

2. Test the connection by running one of the following commands from the temp folder that you
created:
◦ Without Proxy: curl --verbose --output acc-dex-common.tar.gz --cert
cnc_chain.crt --key priv_key.pem https://<ITOM-Gateway-URL>/
content/v1/assets/<attachment_sys_id>/<hash_id>
◦ With Proxy: curl --verbose –-proxy <HOST_NAME>:<PORT> -output acc-dex-common.tar.gz --cert cnc_chain.crt --key
priv_key.pem https://<ITOM-Gateway-URL>/content/v1/assets/
<attachment_sys_id>/<hash_id>
The command output is generated.
3. Confirm that the Content length in the command output matches the Size bytes in the
Attachments table (sys_attachment).
See the preceding image for the location of the Size bytes information in the Attachments
table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
Trouble?
Fix your proxy issues if the command output doesn't match the Attachments table entries.
Install Agent Client Collector on Windows using Microsoft Intune
Use Microsoft Intune to install Agent Client Collector (ACC) on multiple Windows devices at
once, promoting consistent deployment across your organization.

Before you begin
• Create an agent registration key. For more information, see Create an ACC registration key.
Role required: agent_client_collector_admin

About this task

The following procedure describes how to mass-deploy ACC using Microsoft Intune. Your
organization might have a different method to accomplish this task.

Procedure
1. On the ServiceNow instance, download the installation package:
a. Navigate to Self-Service > Agent Client Collector > Deployment > Agent Client Downloads.
b. Download the MSI installer by selecting the Download icon (
Downloads section.

) under the Windows

c. Copy the command from the Single-line installer commands section of Agent Client
Downloads.
2. In Microsoft Intune, navigate to Apps > Windows.
3. Select + Create.
4. From the Select app type drop-down menu, select Line-of-business app, then click Select.

Note: Depending on your setup, you might have to select Win 32 app.
5. Click Select app package file, browse to the folder where you stored the ACC installation
package file, and select OK.
6. Complete the Add app form:

Tab

Steps

App
information

Complete the required fields as shown in the following procedure.
a. Name your application.
b. Provide an easily recognizable description.
c. Enter ServiceNow for Publisher.
d. Paste the command that you copied earlier into Command-line arguments
and remove content before /quiet.
e. In the command string /quiet /qn /norestart
CONNECT_WITHOUT_MID="true" ACC_CNC="ACC_CNC"
REGISTRATION_KEY="REGISTRATION KEY"
INSTANCE_URL="INSTANCE URL" LOCALUSERNAME="local
user name", confirm or enter the variable parameters as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
Tab

Steps

▪ ACC_CNC: one of the following gateway URLs, based on your location:
▪ AMER (Americas): itomcnc-prodgateway.amer.sncapps.service-now.com:443
▪ EMEA (Europe): itomcnc-prodgateway.emea.sncapps.service-now.com:443
▪ APAC (Asia Pacific): itomcnc-prodgateway.apac.sncapps.service-now.com:443
▪ REGISTRATION KEY: ACC registration key
▪ INSTANCE_URL: URL that contains your ServiceNow instance name
▪ LOCALUSERNAME: SYSTEM
Scope tags

Define the scope tags to control role-based access to the objects you create,
then select Next.
This setting is optional.

Assignments Define the groups, users, and devices to which you want to deploy the ACC,
then click Select.
7. Select Next.
8. Review the settings, then select Create.
You can view the ACC application in the application list. Once the users check-in and are
synchronized with Microsoft Intune, the silent installation process begins.
9. Do one of the following to monitor the deployment status:
◦ In Microsoft Intune, select your newly created application.
◦ Review the log file on the endpoint devices: C:\ProgramData\ServiceNow\agentclient-collector\log\acc.log.
◦ On an endpoint device, search for Services and check the status for Agent Client Collector.
Bulk deploy Agent Client Collector on macOS using Jamf
Use Jamf to install Agent Client Collector (ACC) on multiple macOS devices at once, promoting
consistent deployment across your organization.

Before you begin
• Create an agent registration key and retrieve its value to use in the procedure. For more
information, see Create an ACC registration key.
• Install ACC on your local machine. For more information, see Install ACC for DEX on macOS.
Role required: agent_client_collector_admin

About this task

The following procedure describes how to mass-deploy ACC using Jamf. Your organization might
have a different method to accomplish this task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
Procedure
1. Download the installation package.
a. Navigate to All > Agent Client Collector > Deployment > Agent Downloads.
b. Download the appropriate package from the macOS Downloads section, based on the chip
type.
2. Upload the installation package to Jamf Pro.
a. In the Jamf Pro instance, navigate to Settings > Packages.
b. Select the New button.
c. Provide a display name for a package.
d. Select browse for a file under Filename and select the package.
e. Select Save.
3. Update the acc.yml file.
a. Copy the acc.yml file generated during the local installation to your Desktop location.
b. Confirm connect-without-mid is set to true.
c. Confirm that the instance URL is accurate and insert the registration key.
d. Verify that verify-plugin-signature is set to false.
e. Save the acc.yml
4. Using the Terminal command line, convert your acc.yml file into a deploy package.
a. Create a file named yml_package_builder.sh on your Desktop.
b. Copy the following script into the yml_package_builder.sh file and save it.
✅!/bin/bash
✅ === CONFIGURATION ===
PKG_NAME="acc-yml.pkg"
INSTALL_PATH="/Library/Application
Support/servicenow/agent-clientcollector"
YML_SOURCE_PATH="$HOME/Desktop/acc.yml" ✅ Assuming you have
your yml
file on the Desktop folder, change it if needed
✅ === CREATE BUILD STRUCTURE ===
BUILD_DIR="$HOME/pkgbuild-yml"
PAYLOAD_DIR="$BUILD_DIR/payload$INSTALL_PATH"
✅ Clean previous build
rm -rf "$BUILD_DIR"
mkdir -p "$PAYLOAD_DIR"
✅ Copy YAML file into package payload
cp "$YML_SOURCE_PATH" "$PAYLOAD_DIR/"
✅ === BUILD THE PACKAGE ===
pkgbuild \
--identifier "com.servicenow.acc.yml" \
--install-location "$INSTALL_PATH" \
--root "$BUILD_DIR/payload" \
"$HOME/Desktop/$PKG_NAME"
echo "✅ .pkg created at: $HOME/Desktop/$PKG_NAME"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
c. Run the sh yml_package_builder.sh command from the Terminal.

Note: The modified acc.yml file and the yml_package_builder.sh file must
be saved in the same location (Desktop, for example).
The file acc-yml.pkg appears on your Desktop.
5. Upload the yml package to Jamf Pro in the same way you uploaded the installation package.
6. In the Jamf Pro instance, create a post-install script.
a. Navigate to Settings > Scripts.
b. Select the New button.
c. Provide a display name and complete the form as needed.
d. In the Script tab, paste the following script.
✅ === 1. Create sudoers file ===
SUDOERS_FILE="/private/etc/sudoers.d/_servicenow"
cat <<EOF > "$SUDOERS_FILE"
_servicenow ALL=NOPASSWD: SETENV: /Library/Application
Support/servicenow/agent-client-collector/cache/osquery/bin/o
squeryi *,
/usr/bin/mdls, /usr/bin/log, /bin/kill, /bin/launchctl
Defaults:_servicenow !requiretty
EOF
chmod 440 "$SUDOERS_FILE"
echo "[INFO] Sudoers file created at $SUDOERS_FILE"
✅ === 2. Set permissions for the YAML file ===
YML_PATH="/Library/Application
Support/servicenow/agent-clientcollector/
acc.yml"
if [ -f "$YML_PATH" ]; then
chmod 644 "$YML_PATH"
echo "[INFO] Permissions set on acc.yml"
else
echo "[WARN] acc.yml not found at $YML_PATH"
fi
✅ === 3. Restart ACC service ===
PLIST="/Library/LaunchDaemons/com.sn.acc.plist"
if [ -f "$PLIST" ]; then
echo "[INFO] Stopping ACC service..."
launchctl unload -w "$PLIST" 2>/dev/null
sleep 2
echo "[INFO] Starting ACC service..."
launchctl load -w "$PLIST"
else
echo "[ERROR] LaunchDaemon not found at $PLIST"
fi
e. Select Save.
7. Create a Jamf policy and add the created packages and script.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
a. In the Jamf Pro instance, navigate to Inventory > Policies.
b. Select the New button.
c. Enter an appropriate policy name, trigger, and frequency.
d. Under Scope, add all the target computers.
e. Navigate to Packages > Configure and add the installation and acc-yml packages to the
record.

Note: Make sure Install is selected under Action.
f. Navigate to Scripts > Configure and add the post-install script to the record.

Note: Make sure After is selected under Priority.
g. Select Save.
h. On the Scope tab, add target computers and target users.
i. Select Save.
8. To monitor the deployment status, do one of the following:
◦ Check the deployment status in the Jamf Pro instance Dashboard.
◦ Check the agent status by navigating to All > Agent Client Collector > Agents.
◦ Review the log file on the endpoint devices: /Library/Application Support/
servicenow/agent-client-collector/log/acc.log.
Enable DEX browser extension
Activate the DEX Chrome or Edge Extension on your system to collect different operational or
performance-based metrics for the web applications.

Before you begin

Confirm that the DEX plugin [sn_dex] is installed.
Confirm that the browser versions are Google Chrome 114 or higher, and Microsoft Edge version
96 or higher.
Role required: sn_dex.admin

Procedure
Perform the following steps to install DEX Browser Extension based on your browser.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
Browser

Steps

a. Navigate to

.

Google Chrome b. Select Add to Chrome.
c. On the confirmation window, select Add extension.

a. Navigate to

.

Microsoft Edge b. Select Get.
c. On the confirmation window, select Add extension.

Result

The Google Chrome or Microsoft Edge extension is enabled by default, and when monitoring of
the web applications begins, the collected metrics are sent to the ServiceNow instance.

What to do next

Onboard for DEX Application and Device Health.
Enable DEX browser extension on multiple Windows devices
Deploy the DEX browser extension to all your organization's employees using Microsoft Intune.

Before you begin

Obtain the DEX browser extension ID.
Role required: admin

About this task

The following procedure describes how to deploy the DEX browser extension on multiple
devices using Microsoft Intune. Your organization might have a different method to accomplish
this task.

Procedure
1. From Microsoft Intune, navigate to Windows > Manage devices > Configuration.
2. Select Create.
3. Select the appropriate platform, then select Settings catalog under Profile type, and then
select Create.
4. On the Basics tab, provide a meaningful profile name, then select Next.
5. In the Configuration settings tab, select Add settings.
6. In the Settings picker form, select the following:
a. Select Google Google Chrome Extensions, then select Configure the list of force-installed
apps and extensions.
b. Select Microsoft Edge\Extensions, then select Configure the list of force-installed apps
and extensions.
c. Close the Settings picker form.
7. Enable the setting for both Google Chrome and Microsoft Edge browsers.
8. For each browser, provide the extension ID and the update URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
For example, for the Google browser extension it’s
egjklpkeefoaknigleepliepdbonpbehchttp://clients2.google.com/
service/update2/crx%22.
9. Select Next.
10. In the Assignments tab, select an appropriate option under Groups and select Next.
11. Review the profile and select Create.
Enable DEX browser extension on multiple macOS devices
Deploy the DEX browser extension to all your organization's employees using Jamf.

Before you begin

Obtain the DEX browser extension ID.
Role required: admin

About this task

The following procedure describes how to deploy the DEX browser extension on multiple
devices using Jamf. Your organization might have a different method to accomplish this task.

Procedure
1. Create a configuration profile in Jamf.
a. Navigate to Computers > Configuration Profiles.
b. Select New.
c. In the General tab of the new profile form, provide a meaningful name.
d. In the Application & Custom Settings tab, select Upload > Add.
e. Under Preference Domain, enter com.google.chrome.
f. Under Property List, copy and paste the following code block.
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>ExtensionSettings</key>
<dict>
<key>egjklpkeefoaknigleepliepdbonpbehc</key>
<dict>
<key>installation_mode</key>
<string>force_installed</string>
<key>update_url</key>
<string>http://clients2.google.com/service/update2/crx
%22</string>
<key>toolbar_pin</key>
<string>force_pinned</string>
</dict>
</dict>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
</dict>
</plist>
2. Push the configuration file to your end-user devices.
a. In the Scope tab of the configuration profile form, select Add.
b. Add your target computers or computer groups.
c. Select Done, then select Save.
3. Validate the installation.
◦ Apple system: Navigate to System Settings > Privacy and Security > Profiles.
◦ Terminal: Enter the command cd /Library/Managed\ Preferences to navigate to
the managed preferences folder and verify that the com.google.Chrome.plist file is
present.
◦ End-user device: Open Google Chrome and navigate to the chrome://extensions
page.
Onboard for DEX Application and Device Health
During the onboarding process, when there's no application listed to be monitored, you
can begin by accessing a list of available applications. You can also add your own custom
applications and enable them for monitoring along with any existing applications.

Before you begin

To add an application to be monitored, verify you have completed the following tasks:
• Create an ACC registration key
• Install ACC:
◦ Install ACC for DEX on Windows
◦ Install ACC for DEX on macOS
• Enable DEX browser extension
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure Applications on the Application management card.
A pre-existing list of monitoring-enabled applications is provided, initially turned off. You can
add your own application to the list.
4. To add a new application, perform the following steps.
a. Select + New application.
b. On the form, fill in the fields and select Save.
For more information on each field, see New web or installed application form.
5. To monitor an application from the pre-existing list, turn on application monitoring.
For more information on how to turn on an application, see Enable application monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
What to do next

You can explore the product and learn about the various pages and their offerings by accessing
Application & Device Health.
Configure MID-less Agent Client Collector using a single-line command
Use a single-line command to set up a MID-less Agent Client Collector. You can also use
the single-line command to migrate agents configured with a MID Server to have a MID-less
configuration.

Before you begin
Role required:

• In a Linux or macOS environment: root
• In a Windows environment: agent_client_collector_admin

About this task

Running the single-line command includes flags, which indicate the options to be added to the
acc.yml configuration file. These options dictate the configuration of the MID-less Agent Client
Collector. If you don’t specify an option in the command, the existing option in the acc.yml file
is used. If there’s no existing option, an error message indicates that the parameter is required to
enable connecting to an endpoint.
Running a command validates that a connection can be made with the specified parameter (for
example, the specified registration-key value). However, the command doesn’t verify if the value
of the parameter is valid.

Procedure
1. Run the following command in a terminal window: acc gateway ics <flags>.
The available flags appear in the following table:
MID-less configuration flags
Flag

Type

Description

-y, <--accyml>

String Location of the acc.yml being configured.
Can also be used to modify and validate parameters if the file is in
a different location from the default. Can also be used to modify a
different file location to check if the parameters specified are valid.
Optional. If no value is entered, the default location of the acc.yml
file is used.

-b, <-String The gRPC URL for the ITOM cloud services (ICS) gateway.
backend-url>
-i, <-String The instance URL.
instance-url>
-r,
String The registration key for the ITOM cloud services (ICS) gateway.
<registrationkey>
-h, help

N/A

Explains what the specified command does.

2. Restart the agent for the configuration settings to be entered into the acc.yml file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
Convert MID-based ACC to MID-less
Convert MID-based Agent Client Collector (ACC) to MID-less ACC by adjusting the configuration
in acc.yml, decoupling from a specific MID to enhance flexibility and adaptability.

Before you begin

Verify that the ACC registration key was set up and the ACC was installed. For more information,
see the following:
• Create an ACC registration key.
• Install ACC for DEX on Windows or Install ACC for DEX on macOS.
Role required: agent_admin and agent_client_collector_admin
For more information, see Agent Client Collector user roles

.

Procedure
1. Stop ACC based on your operating system:
◦ For Windows, access Services as administrator and stop the Agent Client Collector Service.
◦ For macOS, execute the command: sudo launchctl unload -w /Library/
LaunchDaemons/com.sn.acc.plist;.
2. Open the acc.yml file.
3. Edit the instance URL.
4. Edit the backend-url parameter to point to <ITOM Cloud Services Gateway>.
Use one of the following gateways based on the instance location:
◦ AMER: itomcnc-prod-gateway-amer.sncapps.service-now.com:443
◦ EMEA: itomcnc-prod-gateway-emea.sncapps.service-now.com:443
◦ APAC: itomcnc-prod-gateway-apac.sncapps.service-now.com:443
For more information on how the Agent uses the ITOM Cloud Services Gateway, see DEX
Architecture.
5. Configure the following parameters:
◦ connect-without-mid: true
◦ instance-url: <full_instance_url>
For example: https://dex.servicenow.com.
◦ insecure-skip-tls-verify: false
◦ registration-key: <registration key value>
For more information, see Create an ACC registration key.
6. Comment out the API key parameter:
api-key: "encrypted....”
7. Save the file.
8. Delete files based on your operating system:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
◦ On Windows, navigate to /agent-client-collector/config/cert/cnc and
remove the following files: cnc_chain.crt and priv_key.pem.go.
◦ On macOS, access /Library/Application Support/servicenow/agentclient-collector/cert/cnc and delete the files: cnc_chain.crt and
priv_key.pem.
9. Delete assets.db, queue.db, and all subdirectories in the cache folder based on your
operating system:
◦ On Windows: /agent-client-collector/cache.
◦ On macOS:
▪ For Agent 3.4.1 or above: /Library/Application Support/servicenow/
agent-client-collector/cache.
▪ For Agent 3.4.0 or below: /Library/Caches/servicenow/agent-clientcollector.

Important: Keep agent_now_id in the cache folder.
10. Initiate the ACC service based on your operating system.
◦ On Windows, open Services as administrator, then start the Agent Client Collector Service.
◦ On macOS, use the command: sudo launchctl load -w /Library/
LaunchDaemons/com.sn.acc.plist.
Configure ACC to use a proxy for all traffic
Configure the Agent Client Collector (ACC) to use a proxy for all traffic by setting environment
variables. Using a proxy helps you enhance security, monitor and control internet usage, improve
performance through caching, protect privacy, and enforce compliance with your organization's
policies.

Before you begin

Consider the following aspects before configuration.
• Ports, protocols, and firewall/proxy configurations required to enable ACC to reach the
ServiceNow cloud
• Network-based security tools (IDS, proxy, SSL interception, NAC) that might block ACC
connectivity
• DNS resolution and routing for stable connectivity and failover support
• Support of WebSockets by the proxy
• Firewall rules that prohibit access to ITOM gateway
Role required: admin

About this task

Proxy setup is needed in the following use cases:
• You're using ACC for DEX or ACC-V without a MID Server.
• You must route traffic through an internal proxy to reach the ServiceNow cloud.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
Procedure
1. Run diagnostics to verify that the endpoint can reach ServiceNow before making changes.
Option

Command

Windows

PowerShell: .\servicenow-net-check.ps1
✅ See if DNS resolution succeeds
nslookup
itomcnc-prod-gateway-amer.sncapps.servi
ce-now.com

macOS

✅ See if you can ping ITOM cloud services
ping -c 5
itomcnc-prod-gateway-amer.sncapps.servi
ce-now.com
✅ See if you can establish a TCP connection
nc -zv
itomcnc-prod-gateway-amer.sncapps.servi
ce-now.com 443
✅ See if you can make a HTTP request to the
ServiceNow install server
curl -i https://install.service-now.com/

2. Open the acc.yml file from the following location.
Option

Path

Windows

C:\ProgramData\ServiceNow\agent-client-col­
lector\config

macOS

/Library/Application\ Support/servi­
cenow/agent-client-collector/config

3. In acc.yml with a version of ACC greater than 4.3.0, set the proxy as shown in the following
example:
https-proxy: "http://intproxy0.your-corp.com:8080"
4. Optional: Set up proxy authentication by setting the user name and password in the
environment variable itself:
HTTPS_PROXY="http://username:password@intproxy0.yourcorp.com:8080"
5. Optional: Set the NO_PROXY environment using a comma-separated list of hosts to not proxy.
For example, localhost.
6. Test connectivity using a proxy server with mTLS used by ITOM Cloud Services.
You need the following files from your local endpoint:
◦ cacert.pem - Certificate Authority certificate file used to validate the server identity
(downloaded from ServiceNow with openssl)
▪ Windows:
openssl s_client -showcerts -connect
itomcnc-prod-gateway-amer.sncapps.service-now.com:443 <NUL
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
| findstr /B /C:"-----BEGIN CERTIFICATE-----" /C:"-----END
CERTIFICATE-----" > cacert.pem
▪ macOS:
openssl s_client -showcerts -connect
itomcnc-prod-gateway-amer.sncapps.service-now.com:443
</dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END
CERTIFICATE-/p' > cacert.pem
◦ cnc_chain.crt - client certificate file to present to the server for mutual TLS
authentication (agent-client-collector/cert/cnc).
◦ priv_key.pem - private key associated with the client certificate (agent-clientcollector/cert/cnc).
7. Fetch assets using a proxy with mTLS.
✅ Will attempt to fetch an asset used by ACC-V using a proxy.
The file is not saved.
✅ Remember, replace intproxy0.your-corp.com:8080 with your
internal host and port.
curl -v --proxy http://intproxy0.your-corp.com:8080
--cacert cacert.pem --cert cnc_chain.crt
--key priv_key.pem --request GET --output NUL
https://itomcnc-prod-gateway-amer.sncapps.service-now.com:4
43/content/v1/assets/afaa52edc32f7150f640f2ff050131c8/a4ef65d00
adbab1659f460f8d4e311d8db65f519994f63d176951ce1e0297e08
8. Inspect the output of the cURL to see if the command succeeded using the proxy.
Switch ACC from one instance to another
Switch Agent Client Collector (ACC) to a different instance.

Before you begin

Confirm you have installed the Agent Client Collector (ACC) and set up the ACC registration key.
For information on how to set up and install, see:
• Create an ACC registration key.
• Install Agent Client Collector on a Windows machine manually
Client Collector on macOS .

or Manually install Agent

Role required: agent_admin and agent_client_collector_admin
For more information on roles, see Agent Client Collector user roles

.

About this task

If ACC is already connected to one instance, you can switch the agent to another instance by
changing the configuration in acc.yml.

Procedure
1. Stop ACC with the steps appropriate for your operating system.
◦ For Windows, access Services as Administrator and stop the Agent Client Collector service.
◦ For macOS, execute the command: sudo launchctl unload -w /Library/
LaunchDaemons/com.sn.acc.plist;
2. Open the acc.yml file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
◦ Windows: C:\ProgramData\ServiceNow\agent-client-collector\config
◦ macOS: /Library/Application\ Support/servicenow/agent-clientcollector/
3. Edit the backend-url parameter to point to <ITOM Cloud Services Gateway>.
Use any of the following gateways based on the instance location:
◦ AMER: itomcnc-prod-gateway-amer.sncapps.service-now.com:443
◦ EMEA: itomcnc-prod-gateway-emea.sncapps.service-now.com:443
◦ APAC: itomcnc-prod-gateway-apac.sncapps.service-now.com:443
For more information on how the Agent uses the ITOM Cloud Services Gateway, see DEX
Architecture.
4. Update the following parameters:
◦ connect-without-mid: true
◦ instance-url: <full_instance_url>, example: https://dex.servicenow.com
◦ registration-key: <registration key value>
For more information on how to create a registration key, see Create an ACC registration key.
5. Save the file.
6. Delete files based on your operating system.
◦ On Windows, navigate to /agent-client-collector/config/cert/cnc and
remove the following files: cnc_chain.crt and priv_key.pem.go.
◦ On macOS, access /Library/Application Support/servicenow/agentclient-collector/cert/cnc and delete the files: cnc_chain.crt and
priv_key.pem.
7. Delete the following folders based on your operating system.
◦ On Windows, delete the folder: /agent-client-collector/cache.
◦ On macOS:
▪ For Agent 3.4.1 or above, delete the folder: /Library/Application Support/
servicenow/agent-client-collector/cache.
▪ For Agent 3.4.0 or below, delete the folder: /Library/Caches/servicenow/
agent-client-collector.
8. Optional: If you have connected this ACC to another instance before, do the following:
a. Copy your device serial number.
b. In the Agent Client Collectors table (sn_agent_cmdb_ci_agent), search using your device
serial number.

Note: Add the Agent ID column to the list view if it isn’t available.
c. If you find a record, copy the record Agent ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
d. In the Agent Registrations table (sn_agent_agent_registration), search using the record
Agent ID.
e. Delete any records resulting from the search.
9. Initiate the ACC service by following the steps specific to your operating system.
◦ On Windows, open Services as Administrator, then start Agent Client Collector.
◦ On macOS, use the command: sudo launchctl load -w /Library/
LaunchDaemons/com.sn.acc.plist.

Map a device user to a ServiceNow DEX user
Complete this procedure to map a device user to a DEX user so you can notify the user about any
of the device metrics breaching a predetermined threshold.

Before you begin

Role required: admin

About this task

Column user_name on the base system is used for mapping user records in the sys_user
table. In this case, the user_name matches the user id on the device. You can map a custom
ServiceNow DEX user column to a device user id.

Procedure
1. Change the application scope from global to DEX Application and Device Health.
2. Navigate to All > System Properties > All Properties.
3. Search for sn_dex.dex_user_ref_mapping.
4. Select the property.
5. In the pre-populated form, update the Value field as follows:
a. Copy the example JASON string from the Description field: {"prefix": "dex-blah",
"device_user_id_column": "first_name", "suffix": "dex-blah"}
b. Paste the JASON string to the Value field and update as appropriate.
▪ prefix: Provide the prefix value if appropriate or leave it empty.
▪ device_user_id_column: Provide the value for the column to which you’re mapping.
▪ suffix: Provide the suffix value if appropriate or leave it empty.
For example, {"prefix": "", "device_user_id_column": "login",
"suffix": "@example.com"}.
6. Select Submit.

DEX application monitoring
Manage your organization's application monitoring by adding and enabling an application for
monitoring using DEX, editing the monitoring parameters, and turning off monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
Add an application for monitoring
Add an application to the list of all the applications that are being monitored. With a
comprehensive view of your applications, you can quickly identify and address issues as they
arise.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
To add an application to be monitored, verify you have completed the following tasks:
• Create an ACC registration key
• Install ACC:
◦ Install ACC for DEX on Windows
◦ Install ACC for DEX on macOS
• Enable DEX browser extension
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select New > Installed app or New > Web app.
5. On the form, fill in the fields.
For more information on each field, see New web or installed application form.
6. Move the monitoring toggle switch (

) to turn on the reporting.

7. Select Save.

Result

The application is added to the list of monitored applications.
Edit application details
Edit various details about the application, such as its name, monitored processes, and so on.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select the name of the application that you want to modify.
The Edit installed application or Edit web application form appears.
5. On the form, edit the required fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
For more information on each field, see Edit web or installed application form.
6. Select Save.

Result

Application details are updated.
Add a logo for your application
Add a logo to improve the visual appeal of your application and to distinguish it from others.

Before you begin

Role required: sn_dex.admin

About this task

You can only add a logo for an existing application.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select the name of the application for which you'd like to add a logo.
The Edit Application form appears.
5. Select the Add/Edit image link.
The Application form opens in a new window.
6. On the Logo field, select Click to add.
7. Select Choose file, select Open, and then select OK.
8. Close the window.

What to do next

To see the new application logo, perform the following steps.
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Open the application for which you have added the logo.
The logo appears before the name of the application.
Enable application monitoring
Enable application monitoring to gain insights into performance metrics, diagnose issues, and
promote optimal functionality, enhancing performance and proactively addressing potential
bottlenecks or failures.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select the name of the application for which you want to enable monitoring.
To enable monitoring for more than one application, you can select the check boxes next to an
application and select Turn on metrics monitoring under Actions.
5. Optional: Only when enabling the Microsoft Configuration Manager (MCM), Microsoft Teams,
or DEX for Zoom include Advanced monitoring by selecting MCM - Only choose this option
for MCM or Microsoft Teams from the drop-down list.

Note:
◦ For more details on the MCM monitoring, see Advanced app metrics page.
◦ For more details on Microsoft teams call quality, see Monitor Microsoft Teams call
quality.
◦ For more details on Zoom calls monitoring, see Monitor Zoom call quality using DEX.
6. Select Save.
Turn off application monitoring
Disable the monitoring of an application in situations where monitoring is causing performance
issues or interfering with the functionality of the application.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select the check box next to the application name that you want to turn off.
5. Select Turn off metrics monitoring in the Actions drop-down list.
The monitoring of the application is turned off.
Delete an application from the monitoring list
Delete an application from the monitoring list when there’s no longer a need to track its
performance or activity. If necessary, you can add the application in the monitoring list later.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
4. Select the check box next to the application name that you want to delete.
5. Select Delete selected applications in the Actions drop-down list.
6. On the confirmation window, select Delete.

Result

The application is deleted from the list of monitored applications.
View DEX administrators
Look up the application administrators who are responsible for managing the application,
promoting its proper functioning, and handling any issues that might arise.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the User roles card.
The User Roles table opens in a new window, with users grouped by a role.
4. Select Role: sn_dex.admin to see the list of DEX admins.

Result

The list displays all the administrators available for DEX.
Set up page-level monitoring
Set up monitoring of the application performance at a specific page level. When collected, you
can view the performance metrics data in the Metrics analyzer and device or application view.

Before you begin

DEX browser extension must be installed on the end-user devices.
The application must be already in the list of monitored applications in Application
Management.
Role required: admin, dex_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. On the Application management card, select Configure applications.
The list of monitored applications appears.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
4. On the DEX Application Management screen, select a web application from the list.
5. In the Edit web application form, select Configure under Enable page-level monitoring.
6. On DEX Application Pages, select New.
7. Complete the new record form as follows:

Field

Description

Page
Name

Application page name.

Domain

Web address that is used to launch the application and access its features and
functions.

Application Name of the application being monitored.
Pattern
Type

The page URL pattern type: Exact or Wildcard.

Page Path

The URL for the page or pages using exact path or single-segment or multisegment wildcard.

Full URL

The full URL automatically populated from the Domain and Page Path fields.

Using a wildcard, you can include not just a specific page but also its nested
pages. For example, /github.com/pricing/*. Use a single-segment
wildcard (*) for predictable one-level variations, and a multi-segment wildcard
(**) when the structure beneath a path can vary widely.

Metric
Check box to initiate monitoring the page.
Monitoring
This check box is selected by default.
8. Select Submit.

Result

When the metrics for the page are collected, you can see them from the Metrics analyzer. See
View collected metrics with Metrics analyzer for more details.

Managing DEX metrics collection and metric rules
Create, activate, and edit metric rules for your organization. Manage metrics you collect using
DEX, and set up alerts.
Create metric rules
Create metric rules to establish criteria and thresholds for performance metrics, enabling timely
alerts and proactive system management.
To create a metric rule, you must perform the following steps.
1. Specify the configuration item for metric rules.
2. Define alert metric criteria.
3. Add an alert action.
4. Define metric rule name and status.
Specify the configuration item for metric rules
Choose an application or device and define filter conditions for the metric rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the Metric rules card.
The list of metric rules appears.
4. Select Create new rule.
A new tab opens for the Create metric rule window, with the Select the CI option pre-selected
in the navigation pane.
5. Select one of the following types of configuration items that you want to monitor.
◦ Device
◦ Saas/web application
◦ Installed application (.exe, .app, etc.)
6. For Saas/web application or Installed application, select the application to monitor.

Note: If you select Device, the option to choose an application wouldn’t be available.
7. Select the Applicable for Non-persistent VDIs toggle switch to apply this metric rule to all the
non-persistent Virtual Desktop Infrastructures (VDIs).

Note: When this toggle switch is on, only the Location option is available in the Apply
filtering for devices field.

8. Optional: Apply conditional filtering on the configuration items.
The predetermined filtering choices include Device, Department, Location, OS, User, and
Version, with the Version option designed for installed applications.
(Optional) To add additional filters, select + New condition set.

Note:
◦ DEX Admins can filter by selecting any available column from the Device
(cmdb_ci_computer) or User (sys_user) tables. Once a column is used as a
filtering condition in any MR, it automatically becomes an enriched field.
◦ Enriched fields are already synced to end-user devices. However, if you select a nonenriched field as a filter condition, the data may take up to 24 hours to sync across all
devices.
◦ You can select up to 15 non-enriched fields in addition to the default enriched values.
9. Select Next.
The Add criteria option is selected in the navigation pane.
◦ Static metric rule: This metric rule processes real time data. Lists all metric rules that are
stored on the server.
◦ Zscore (Running average): Zscore is a measurement that indicates how many deviations a
data point is away from the mean value of its dataset. It’s a dynamic value specific for each
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
device or user. Data is evaluated from the end-user computer. Data from the last 7 days is
collected. The default values are 5 to -5.

Note: When you select Zscore, the alert is triggered only for the sampled value. Alerts
for the average of sample are not available.

What to do next

Define alert metric criteria.
Define alert metric criteria
Specify alert metric criteria by choosing alert severity, defining thresholds, and specifying
conditions for when the alert must be triggered.

Before you begin

Role required: sn_dex.admin

Procedure
1. In the Alert severity field, select a severity for the alert.
2. Define the thresholds for the alert.
The predetermined metrics are based on the configuration item (CI) type, such as Device,
SaaS/web application, or Installed application.

Note: You can select the following network stability metrics on Windows devices:
◦ Application Crashes
◦ Application Domain Jitter
◦ Application Domain Network Latency
◦ Application Domain Packet Loss
3. Optional: Add another alert severity level by selecting Add another alert severity.
4. Optional: Select the Set the threshold for users (optional) check box and define the criteria
based on the number of impacted users to trigger the alert.
5. In the Alert when section, perform one of the following steps.
◦ Select a time period for the All sampled values must breach the criteria in the following
time period option.
◦ Select a time period for the Average of sampled values in the following time period must
breach the criteria option.
6. Optional: If you want to define the conditions for when to clear the alert, under Clear the alert
when, define the conditions.
(Optional) The condition fields are enabled when you create at least one condition.
7. Select Next.
The Set alert action (optional) option is selected in the navigation pane.

What to do next

Define metric rule name and status.
Add an alert action
Set up an alert action with Proactive Engagement for Digital End-User Experience to detect the
digital experience issues and automate resolution actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
Before you begin
• Confirm that the Proactive Engagement plugin (sn_pren) for Digital End-User Experience (DEX)
is installed.
• Make sure that the configuration items for the metric rule are specified and the alert metric
criteria are defined. For more information, see Specify the configuration item for metric rules
and Define alert metric criteria.
Role required: sn_dex.admin

Procedure
1. From the Add alert action (optional) page, select Add resolution.
2. On the Proactive resolution content page, fill in the fields.
For a description of the field values, see Resolution for Proactive Engagement.
3. Select Continue to Engagement Settings.
4. Configure the engagement settings to facilitate self-resolution of issues through predefined
solutions.
For more details about the engagement settings, see Engagement Settings for Proactive
Engagement.
5. Select Add Resolution.
Define metric rule name and status
Define metric rule attributes, including the name and state, such as active or inactive.

Before you begin

Role required: sn_dex.admin

Procedure
1. In the Name field, enter a name for the rule.
The metric rule is active by default.
2. For setting the status of the metric rule, use the Active slider (

) to enable or disable the rule.

3. Select Finish.
A metric rule is created and displayed in the Metric rules page.
Edit metric rules
Modify metric rules to fine-tune monitoring criteria and thresholds.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the Metric rules card.
The list of metric rules appears.
4. Select the name of the metric rule that you want to update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
5. Modify the values as needed, selecting Next to navigate between the pages.
6. Select Update.

Note: If you edit an existing alert action or proactive resolution, the changes are saved
even if the metric rule is closed without saving.

Result

The metric rule is updated.
Activate or deactivate metric rules
Activate or deactivate metric rules to streamline monitoring and adapt to changing needs,
enhancing operational efficiency.

Before you begin

Role required: sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the Metric rules card.
The list of metric rules appears.
4. On the Update metric rule page, select Name the rule.
5. Under Rule status, use the Active slider (

) to enable the rule.

If you want to deactivate an active metric rule, simply slide the toggle switch to the off position.
6. Select Update.
Delete metric rules
Remove metric rules to adjust monitoring criteria and thresholds.

Before you begin

Role required: sn_dex.admin

About this task

Deleting any rules results in their permanent removal, and they can’t be retrieved.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the Metric rules card.
The list of metric rules appears.
4. Select the check box preceding the name of the metric rule to select it for deletion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
5. Select Delete.
6. In the confirmation window, select Delete.
The metric rule is removed from the list.
Collecting DEX metrics
Manage which Digital End-User Experience (DEX) metrics are collected for a DEX agent policy.
Stop collecting a metric, or change how frequently metrics are collected for specific criteria.
Digital End-User Experience collects numerous metrics associated with the specific
configuration items (CIs). Such CIs include endpoints or the devices and applications used in
your organization. You can collect the following types of metrics with DEX:
• Windows device performance
• Windows application performance
• macOS device performance
• macOS application performance
Collecting metrics helps you proactively identify and resolve problems with your devices,
applications, and systems. Use the metrics to monitor, analyze, and improve performance, health,
and reliability.
You can view and manage the metrics collected under DEX policies, such as an agent policy.
Modify the metrics that you want to collect for a CI or scenario, or change how often a metric is
collected.
For details on how to create an agent policy, see Create an agent policy.
Change metrics collection frequency
Change how often the DEX metrics are collected for specific criteria.

Before you begin

Role required: sn_dex_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. In the Device and application configuration section, select Manage policies on the Agent
policies card.
4. Select the policy for which you want to modify the frequency.
5. In the policy record, select Edit in Sandbox.

Note: Make sure you're editing in the correct application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
6. In the Check Instances related list, select the name of the appropriate instance.
7. In the Override interval(sec) field, update the value as needed.
8. Select Update, then select Return to Policy.
9. Select Republish.
Modify collected metrics under a child policy
Turn off an existing DEX metric for certain configuration item (CI) criteria by creating a child
policy.

Before you begin

Role required: sn_dex_admin

About this task

Metric collection on any device is managed using agent policies. Agent policies are downloaded
on the devices when the list of metrics is downloaded. The metrics are collected based on the CI
filter criteria of the policy, and you can modify which metrics are collected. For example, in one of
the policies available with the base system.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. In the Device and application configuration section, select Manage policies on the Agent
policies card.
4. Select the policy for which you want to create a child policy.
5. Select Create Child.
A child policy inherits the parent policy configuration.
6. Modify the parent name and description to indicate which new criteria are added to the child
policy.

Note: In the Publish status field, the value is set to Draft. After you create and save the
policy, the value changes to Ready to publish.
In the Hierarchy field, the value is set to None. If you create a child for the current policy,
the value changes to Parent.
7. Update the criteria for the child policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
8. Select Save.
9. In the Check Instances related list, select the applicable instance name.
10. In the Check Instance form, navigate to Related Links > Check Parameter.
11. Select metrics.
12. In the Check Parameter form, modify metrics as needed.

13. Select the Update button.
14. Select Return to Policy.
15. Select Publish.
The Publish status value changes to Queued. When the publishing job runs, the value
changes to Published, and the policy becomes active on the agent.

Managing DEX Agent policy
Create and manage agent policies for your organization based on the device criteria defined to
manage the DEX metrics that are tracked.
You can perform actions on checks and policies to enhance the monitoring of your device.
Policies contain Configuration Item (CI) that are monitored by Agent Client Collector (ACC) and
checks that run on those CIs.
Create an agent policy
Create an agent policy by configuring a filter that determines the Configuration Items (CI) to run
the checks and the metrics that are collected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. In the Device and application configuration section, select Manage policies on the Agent
policies card.
4. Select New.
5. Provide a descriptive name and description for the policy.

Note: In the Publish status, the value is set to Draft. After you create and save the
policy, the Publish status value changes to Ready to publish. In the Hierarchy
field, the value is set to None. If you create a child for the current policy, the value
changes to Parent.
6. On the Monitored CIs tab, select one of the following options.
Option

Description

Select to exclude the policy from scheduled policy calculation, ignor­
ing any changes to the policy impacted CIs.
Manual calculation

Monitored CI type
by filter

Select this option when the policy monitors a single CI. The option en­
ables you to avoid a long completion time for the Refresh and Publish
Monitoring Policies scheduled job.
a. In the Monitored CI type field, select the CI type, which you want
the policy checks to monitor.
b. In the Filter field, configure a filter so that the policy checks monitor
only CI types, which meet the specified criteria. CI tags are includ­
ed in the available criteria.
Specify the monitored CIs using a script.

Monitored CI type
by script

Using a script enables you to create a CI filter for several tables re­
lated to each other. For example, you can set a filter in both a Linux
servers table and an Oracle table when searching for a CI.
Specify the monitored CIs by using CMDB group queries.

Monitored CI type
by CMDB Group

When selected, the Monitored CMDB group drop-down list of CMDB
groups appears.

7. On the Checks tab, select checks in the Available cell and use the arrow to move them to the
Selected cell.
Checks can be selected multiple times when you’re monitoring more than one process. You
can also select a group of checks in the Filter checks by groups field, which presents checks
of the selected group in the Available cell.
8. Optional: On the Proxy Settings tab, configure a proxy server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
(Optional) Configure a proxy server only when using the agent as a proxy to report data on
remote machines.
9. On the Scheduling tab, select one of the following options.
Option

Steps

Interval-based
scheduling

Configure the time interval (in seconds) to indicate the frequency with
which the policy's checks run.
Enables configuring the policy to be active only during a specific time or
time frames.
a. Select the Unlock icon (

) to enable selecting cron expressions.

b. Select the search icon (
sion.

), then select New to create a cron expres­

Cron-based
scheduling

You can also select one of the following cron expressions that come
with the base system:
▪ Every hour nightly 5:00pm-7:00am
▪ Every minute daily 8:00am-4:59pm
▪ Every minute Mon-Fri 8:00am-4:59pm
The specified cron expression operates in the time zone of the ma­
chine hosting the agent.

Note: If an Interval or Cron value was specified for the check definition, that value
overrides the value configured in either of these fields.
10. On the Credentials tab, select one of the following.
Options

Steps

Credential
name

Select credentials to be assigned to the policy. The available credentials are
displayed on the associated check definition's Check Secure Parameter
Definitions tab.

Credential
alias

Select the Search icon
to select a credential alias to be used by the poli­
cy's checks to connect to the monitored CI. The available options are creat­
ed on the Connection & Credential Aliases page.

11. Select Save.
The following buttons appear:
◦ Publish: Publishes the Draft policy, moving its Publish status to Queued. A queued policy is
processed by the policy publishing job. The job calculates which agents run the policy and
then sends the policy to the relevant MID Servers. The job then moves the policy's Publish
status to Published. A published policy is active on the agent.
◦ Delete: Deletes the policy.

DEX remedial actions
Create and manage your custom remedial actions from Check Definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
Remediate an issue on the device
You can create a remedial action or modify an existing one once you configure the remedial
action framework. Remedial action enables you to trigger an action on the impacted device.

Single device remedial action
You can execute a remedial action on a single device by navigating to the device health page to
resolve the issue. To access the Device health page;
1. Navigate to Workspaces > Service Operation Workspace > Devices.
2. Select the device that you want to view the details.
3. Select Action

library.
4. Choose the remedial action that you want to run and select Run action. If the remedial action
is applied for the first time, the end-user approval is required.
5. Provide your approval on the user approval check and select

Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

.

1640


<!-- page 1641 -->
Note: All remedial actions that you run from the device page are added to a playbook.
You can monitor current and past remedial actions or cancel ongoing actions from the
playbook. For more information, see Monitor or cancel remedial actions in DEX device page
Playbook.

Bulk remedial action
Remedial actions on multiple devices enable DEX engineers and the computing teams to
manage the health of the end-user experience proactively. The DEX engineers can select
multiple devices to execute the remedial action at the same time. Remedial actions are available
for bulk remediation when DEX Admin configures the option Available for bulk remediation for a
remedial action. Once the bulk remedial action is executed, the DEX engineers should be able to
view the status of the remedial action executed on the selected devices.

Create a remedial action
Create your custom remedial actions from Check Definitions to resolve end-point related issues
using Playbook.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
Before you begin

Role required: admin, dex_admin

Note: To learn more about different remedial actions, see Digital End-User Experience
Remedial Actions.

Procedure
1. Navigate to All > Workspaces > Services Operations Workspace > DEX Administration.
2. Select Create new in the Create Remedial Actions section.
3. Select Create new or Map to an existing remedial action according to the requirement.
Option

Description

Create net new action

Select this option to create a net new remedial action
from a Check Definition.

Map to an existing remedial action

Select this option when a remedial action exists for a
particular operating system (OS) and you want to map
the same action to another OS by choosing a Check
Definition.

4. Enter a name in Remedial action name if you choose to create a net new action.
5. If you choose to map to an existing remedial action, select from the existing remedial actions.
6. Add a short description.
7. Select the roles for those who can execute the remedial action.
This option is available for sn_dex.engineer and sn_dex.service_desk_user.
8. Select the origin of remediation.
This setting indicates where the remedial action should be executed from the device health
page or alert details.
9. Select the Remedial Action check box if it’s available for bulk remediation.
10. Select the operating system of the impacted device from the drop-down menu.
11. Select the base Check Definition for this remedial action and select Save.

Note:
◦ Confirm that the selected Check Definition is applicable for the selected OS.
◦ Depending on the Check Definition selected, the related Check Definition parameters
are listed.
DEX system tables for remedial actions
Definitions for any remedial action are predetermined based on the rules and criteria that store
configuration settings for remedial actions. Each execution of the remedial action is maintained
in the DEX tables to track the progress of remedial action executions.

Remedial action configuration
Stores the configuration settings for remedial actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
dex_remedial_action_configuration
Field

Description

OS

Operating system compatibility (macOS, Windows, all)

source

Origin of the remedial action (alert, configuration_item)

playbook_type

Type of playbook (generic, tailored)

check_definition

Reference to associated check definitions

is_bulk_action

Flag for bulk action capability

active

Status of the configuration

Remedial action execution
Tracks the progress of remedial action executions.
dex_remedial_action_execution
Field

Description

state

UI progress state

device_list

List of target devices

source_record_table

Source table reference

source_record_id

Source record identifier

M2M remedial action execution
Maps the relationship between tracking and actual execution.
dex_remedial_action_execution_m2m
dex_remedial_action_execution

Links to UI execution record

remedial_action_execution

Links to actual execution record

Note: For more information on the base system remedial actions, see Digital End-User
Experience Remedial Actions.
Terminate a process on your device
Terminate a process on your device to boost performance and free up valuable resources for
smoother operation.

Before you begin

Role required: sn_dex.engineer or sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Devices icon (

).

3. Select the device for which you want to terminate a process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


<!-- page 1644 -->
4. Select Running processes.
5. In the contextual side panel, select the Action library icon (

).

6. In the End process card, select Start.
7. Select the End process card that shows the process state as New.
8. In the Get user approval card, select I received approval to trigger this action, then select
Submit.
9. In the Process ID (PID) field, enter the corresponding ID obtained from the PID column.
10. Select Submit.

Result

The process is terminated.

What to do next
In the contextual side panel, select the Playbook icon ( ) to access the current action of the
device and to review the action execution history of the device.
Monitor or cancel remedial actions in DEX device page Playbook
Use the Playbook Experience in a device page to view current and past remedial actions
executed from different sources, and monitor or cancel actions initiated from the device page
Action library.

Before you begin

Role required: sn_dex.engineer, sn_dex.admin

About this task

Remedial actions executed from the following sources are displayed in the playbook panel of the
device page.
• Action library within a DEX device page
• Action library within an incident record associated with a DEX monitored device
• DEX Self-service for employees
• Proactive Engagement
Each action card in the playbook panel displays information such as the action name, source,
status, start time, and name of user who initiated the action.

Note: You can only monitor current and past remedial actions and cancel ongoing actions
run from the Action library on a device page.

Procedure
1. Navigate to Workspaces > Service Operation Workspace > Devices.
2. Select the device to open the device page and view its details.
3. Select the Playbook icon

from the contextual side panel.

4. Optional: Monitor actions with the status of New or In Progress by selecting View Playbook
on the action card.
5. Optional: Cancel an ongoing action by selecting Cancel on the action card.
6. Optional: View history of past remedial actions with the status of Completed, Canceled, or
Failed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
a. Select the History tab.
b. To track stages of past actions initiated from the device page Action library, select View
Playbook on an action card.

Monitoring non-persistent VDIs
Monitoring non-persistent Virtual Desktop Infrastructures (VDIs) with Digital End-User Experience
(DEX) enables your organization to track performance issues and troubleshoot efficiently.
Non-persistent VDIs provide end users with a fresh desktop environment each time they log in.
VDIs are an attractive choice for organizations requiring standardized and secure desktops, such
as those in healthcare, education, or customer support.
When a VDI is initialized for the first time, it completes the standard registration process and
downloads a certificate from the ServiceNow cloud. The certificate is then backed up to the
persistent storage for future sessions.
During subsequent active sessions, the Agent Client Collector (ACC) continuously collects
performance and usage data. Before a session ends, the log-off script pushes any residual
metrics to the ServiceNow cloud, helping to prevent data loss. In subsequent sessions, the
log-on script restores the certificate from persistent storage, enabling local authentication and
eliminating the need to download certificates again. This process minimizes the load on the
ServiceNow instance and promotes efficient operation.

Benefits of monitoring non-persistent VDIs
Monitoring non-persistent VDIs with Digital End-User Experience addresses these challenges by
enabling the following.
Enhanced user experience
You can identify performance issues such as slow logging in, crashes, or sluggish
application and device performance, even after the desktop session has ended.
Efficient troubleshooting
You can analyze device and application metrics data to pinpoint issues reported by
employees, reducing guesswork in problem resolution.
Configure non-persistent VDIs monitoring
Learn how to start non-persistent Virtual Desktop infrastructure (VDI) monitoring by creating a
golden image on the base instance. This process enables DEX Service Desk agents to collect
and view non-persistent data from VDIs.

Before you begin

Make sure you have the following on the reference device:
• Installed DEX plugin
• Installed Agent Client Collector plugin
• Retrieved login and logout scripts provided by ServiceNow
Role required: admin

About this task

When a VDI starts for the first time, the standard registration process is completed and a
certificate is downloaded from the ServiceNow cloud. The certificate is then backed up to the
persistent storage for future sessions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


<!-- page 1646 -->
Procedure
1. On the reference device, update the acc.yml file as follows:
persistence_type = non_persistent
2. Create a golden image and configure the VDI pool with post-synchronization and power-off
scripts.
3. Depending on the tool your organization uses for authentication, modify authentication steps
in the login and logout scripts.

DEX insights and lists
DEX enables visibility and insight into the state and performance of the user applications and
devices. You can view system compliance, manage files, and perform other operations as
needed.
Set up Windows registry keys
Track and manage the Windows registry keys that are configured for monitoring with DEX on enduser devices.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the Windows registry management card.
4. On the Windows registry management page, select Add registry keys.
5. In the Add registry keys form, enter a full path name for a registry key and an expected value.
The expected value can’t be a JSON object and must be a single primitive value, such as a
string or integer.

Note: The maximum character limit for a registry key path and an expected value is
1024.
6. Add one or more keys by selecting Add.
You can manage up to 20 keys.
7. Select Save.
Set up file management
Set up files you want to track and manage with DEX on your organization devices. For example,
you can identify and remove any dangerous .exe files that pose a security risk.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the File management card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1646


<!-- page 1647 -->
4. On the File management page, select Add files.
5. In the Add files form, enter a file name and select one of the following categories for the file:
◦ Application
◦ Malicious
◦ Security
◦ Development tools
◦ System
◦ Others
◦ Installers
◦ Potentially Unwanted Programs

Note: Files you want to monitor must end in .exe. The maximum character limit for the
file name is 256 characters, including the .exe extension.
6. Add one or more files by selecting Add.
You can manage up to 20 files.
7. Select Save.

Result

The data for the files you set up appears after the next policy run.
Manage your system compliance report
Configure the DEX policy metrics and the applications to monitor for your organization's
compliance report. Set up the compliance-related rules and actions for your organization's
devices based on defined thresholds.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure on the System compliance card.
4. Choose one or more of the following options to configure how you want to monitor the
compliance of your organization's IT devices.
Option

Steps

Manage compliance policy

a. Select a check box by the system policy value that you
want to use for monitoring.
b. In the Actions drop-down list, select Turn on monitoring.

Manage applications

a. Select a check box by the system policy value that you
want to use for monitoring.
b. In the Actions drop-down list, select Turn on monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1647


<!-- page 1648 -->
Option

Steps

Note: To learn more about adding or editing an applica­
tion to monitor, see Add an application for monitoring or
New web or installed application form.
Select a metric rule name to customize. The rules trigger ac­
tions based on specific metric thresholds.
Manage metric rules

Note: To edit or add a metric rule, see Create metric
rules.

Note: You can enable multiple compliance policy values simultaneously by selecting a
check box next to Metric name. Adjust your selection as needed by selecting individual
check boxes for each value.
For more information on the compliance report, see DEX Insights.
Build custom queries
Build and run custom queries to uncover insights across your digital workspace. Use custom
query builder to generate reports on any of the performance metrics on your device.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Insights icon (

).

3. Select Query builder on the Insights page.
4. Select the option to filter the query.
5. Add the custom metrics to generate the query output.
6. Select View results.

Result

The custom query results appear.

Note: You can choose to export the query result and access the download file from the
downloaded reports.

Setting up DEX Desktop Assistant
Set up Desktop Assistant to give end users quick access to self-service and diagnostic tools,
timely notifications about outages and announcements, and support options like Employee
Center, Virtual Agent, or live agents.

Configuration overview
You must have the Desktop Assistant administrator role [sn_dex_desktop.admin] role to
configure Desktop Assistant.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1648


<!-- page 1649 -->
1. Download and install Desktop Assistant.
2. Configure Open Authorization details.
3. Customize Desktop Assistant home page.
4. Enable or disable notifications.
5. Enable Virtual Agent or chat.
6. Map a card to a section or Delete a card from the Desktop Assistant home page.
7. Add a section in the Desktop Assistant home page or Delete a section from the Desktop
Assistant home page.

Note: If you experience issues with Desktop Assistant, troubleshoot them by accessing
the logs at these locations:
• macOS: Users/[username]/Library/Application Support/
desktop_assistant_app/logs
• Windows: Users\[username]\AppData\Roaming
\desktop_assistant_app\logs
Download and install Desktop Assistant
Download and install Desktop Assistant by using operating system-specific installer commands,
Desktop Assistant installers, or endpoint management solutions.

Before you begin
• Make sure that you have installed the Digital End-User Experience application. For more
information, see Install Digital End-User Experience.
• Make sure that you install Desktop Assistant client version 2.6.0 or higher on end-user
computers, as this is the minimum version supported by this version of the Desktop Assistant
application.

Note: You can install Desktop Assistant on 75000 devices for each instance.
Role required: admin, sn_dex_desktop.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1649


<!-- page 1650 -->
Procedure
1. Navigate to All > Desktop Assistant > Deployment > Installer and Uninstaller.

2. Download and install Desktop Assistant by using installer commands, Desktop Assistant
installers, or endpoint management solutions.
Option

Steps

Note: You must have administrator privileges to run the single-line
OS-specific
single-line in­
staller com­
mands

installer commands.
a. Select the copy command icon (
ecute.

) to copy the command or script to ex­

b. On your computer, open Terminal.app (macOS) or run PowerShell (Win­
dows) as administrator.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1650


<!-- page 1651 -->
Option

Steps

c. Paste the command and press Enter.
d. When prompted for a password, enter your active directory password
and press Enter.
Desktop Assistant is installed, and the instance URL from the installer is au­
tomatically populated in the Instance URL field of the Desktop Assistant lo­
gin page.
Desktop Assis­
a. For Windows devices, see Download Desktop Assistant installer on Win­
tant installer
dows devices.
specific to your
operating sys­ b. For macOS devices, see Download Desktop Assistant installer on mac­
OS devices.
tem

Note: You must have administrator privileges to install Desktop As­
sistant on multiple devices using endpoint management solutions.
a. Log in to your ServiceNow instance and download Desktop Assistant.
Jamf or Mi­
crosoft End­
b. Deploy the Desktop Assistant installation file on multiple devices using
point Configu­
an endpoint management solution.
ration Manag­
For deployment on Windows devices using Microsoft Intune, refer to arti­
er (MECM) to
cle KB2324452
on the Now Support Knowledge Base.
install on multi­
ple devices
c. Update the Desktop Assistant instance URL for all the devices on which
you have installed Desktop Assistant.
For more information, see Update instance URL in the Desktop Assistant
configuration file.

Result

Desktop Assistant is downloaded and installed.
Download Desktop Assistant installer on Windows devices
Download the Desktop Assistant installer on your Windows device to install the Desktop
Assistant application.

Before you begin

Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Deployment > Installer and Uninstaller.
2. In the Windows Download section of the Desktop Assistant Downloads page, select the
download icon (
) for the MSI [x64 arch] installer.
The Desktop_Assistant_<Version>.msi file is downloaded to your computer.
3. Double-click the setup file and follow the steps in the installation wizard to complete the
installation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1651


<!-- page 1652 -->
Result

Desktop Assistant is installed. You see the Desktop Assistant application on the Start Menu and
the Desktop Assistant icon (

) on the system tray.

When you install Desktop Assistant by using the installer, the instance URL field on the login
page is not populated automatically. As a system administrator, you can update the instance URL
in the Desktop Assistant configuration file. For more information, see Update instance URL in the
Desktop Assistant configuration file.

Note: Only the system administrator must update the configuration file or make changes
to it while deploying Desktop Assistant on devices.
Download Desktop Assistant installer on macOS devices
Download the Desktop Assistant installer on your macOS device to install the Desktop Assistant
application.

Before you begin

Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Deployment > Installer and Uninstaller.
2. In the macOS Download section of the Desktop Assistant Downloads page, select the
download icon (

) for the installer you want to download.

◦ For macOS devices with Intel chips: Select the Intel [x64 arch] installer.
◦ For macOS devices with Apple Silicon chips: Select the Apple Silicon [x64 arch] installer.
◦ For macOS devices with either Intel or Apple Silicon chips: Select the Universal Build
installer.
The installer is downloaded to your computer.
3. Double-click and open the downloaded installer file.
◦ For macOS devices with Intel chips: Open the .x64.pkg file.
◦ For macOS devices with Apple Silicon chips: Open the -arm64.pkg file.
◦ For macOS devices with either Intel or Apple Silicon chips: Open the -universal.pkg
file.
4. On the installation wizard, select Continue to proceed with the installation.
5. Select the destination folder and then select Continue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1652


<!-- page 1653 -->
6. In Installation Type, select Install.
7. When prompted for a password, select Use Password, enter your password, and then select
Continue.

Result

The Desktop Assistant application is installed on your macOS device.
When you install Desktop Assistant by using the installer, the instance URL field on the login
page is not populated automatically. As a system administrator, you can update the instance URL
in the Desktop Assistant configuration file. For more information, see Update instance URL in the
Desktop Assistant configuration file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1653


<!-- page 1654 -->
Note: Only the system administrator must update the configuration file or make changes
to it while deploying Desktop Assistant on devices.
Update instance URL in the Desktop Assistant configuration file
As a system administrator, update the instance URL in the Desktop Assistant configuration file to
automatically populate the Desktop Assistant login page instance URL on devices on which it is
installed.

Before you begin

Role required: admin

Note: Only the system administrator must update the configuration file or make changes
to it while deploying Desktop Assistant on devices.
Desktop Assistant users can update the instance URL when logging in to the application.
For more information, see Open and log in to Desktop Assistant.

Procedure
1. On your computer, navigate to the folder that contains the settings.json file.
◦ On Windows devices: Navigate to the C:\Users\user_name\AppData\Roaming
\desktop_assistant_app folder.
◦ On macOS devices: Navigate to the Users/user_name/Library/Application
Support/desktop_assistant_app folder.

Note: If you don’t see a folder, use Command+Shift+period (.) key to show hidden
folders.
2. Find and open the settings.json file.
3. Enter the Desktop Assistant instance URL in the instanceURL field of the JSON file.
In addition to the instance URL, system administrators can also customize the Desktop
Assistant login page by changing the loginHeader, loginBody, and companyLogoSvg values in
the configuration file.
4. Save and close the JSON file.
Configure Open Authorization details
Edit the Open Authorization (OAuth) field values, as required.

Before you begin

Verify that you have set up the SSO provider and configure it in the instance to ensure its
functionality.
Role required: sn_dex_desktop.admin

Procedure
1. In your instance, navigate to System OAuth > Application Registry.
2. From the list, select Desktop Assistant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1654


<!-- page 1655 -->
Application Registries form

3. On the form, edit the required fields.
To learn more about each field and the corresponding descriptions, see Application Registries
form.
4. Optional: Customize to avoid SSO Screen during logging in to DEX Desktop Assistant:
a. Include oauth_login.do in the login_url field.
b. Remove the client secret and save the page.

Note: If the Login URL field doesn't appear on the form by default, select and hold (or
right-click) the header, select Configure > Form Layout, then add Login URL.
5. Select Update.

Result

The OAuth client application details are updated.
Uninstall DEX Desktop Assistant
Uninstall Desktop Assistant effortlessly using single-line commands for a clean system.

Before you begin

Make sure you have administrator privileges for the operating system to run the one-liner script.
Role required: sn_dex_desktop.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1655


<!-- page 1656 -->
Procedure
1. Navigate to All > Desktop Assistant > Deployment > Installer and Uninstaller.

2. In the Single-line Uninstall Commands table, select the copy command icon (
operating system to copy the command.

) next to your

3. On your computer, open Terminal.app (macOS) or run PowerShell (Windows) as administrator.
4. Paste the command and press Enter.
5. When prompted for a password, enter your active directory password and press Enter.

Result

Desktop Assistant is uninstalled.
Customize Desktop Assistant home page
Modify the Desktop Assistant home page as required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1656


<!-- page 1657 -->
Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Application.

2. On the Desktop Assistant form, edit the required fields.

Field

Description

Title

Title of the home page.

Description

Brief overview of the content and purpose of the
product.

Employee Center URL

URL to the Employee Center where employees can
access important resources, information, and tools
related to their work.

Notifications enabled

Option to enable or disable the notification bell icon.

Theme

Option to apply theme to the Desktop Assistant
application. The default theme is Employee Center
(EC) Theme.
You can customize themes by modifying specific
CSS variables. For more information, see Customize
themes for Desktop Assistant.

Virtual Agent enabled

Option to enable or disable the chat icon.

3. Optional: Customize the logo for the Desktop Assistant home page.

Note: By default, the ServiceNow logo is applied.
a. In the Logo field, select Update.
b. Select Choose File and select an image from your system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1657


<!-- page 1658 -->
c. Select OK.
d. Optional: To delete the logo, select Delete in the Logo field.
4. Select Update.
Customize themes for Desktop Assistant
Customize themes for the Desktop Assistant application by applying available themes or
modifying specific theme CSS variables to align with your organization's branding.

Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Application.
2. Customize the Desktop Assistant theme.

Note: Employee Center (EC) Theme is the default theme applied for Desktop Assistant.
Method

Steps

a. In the Desktop Assistant form, select the
Lookup using list icon
field.
Apply another available theme

in the Theme

b. On the Themes page, select a theme from
the themes list.
The selected theme is updated in the
Theme field of the Desktop Assistant form.
c. Select Update.
a. In the Desktop Assistant form, select
the Preview this record icon
Theme field.

near the

b. In the preview dialog box, select Open
Record.

Customize the default theme by modifying
specific CSS variables

c. In the CSS variables section, modify the
predefined variables in one of the following
ways:
▪ Direct value assignment: Assign values
directly to the variables. For example,
$sp-space—xl: 4px;
▪ Indirect value assignment: Create a ref­
erence to an existing variable by assign­
ing to a variable the value of another vari­
able. For example, $badge-color:
$text-white;

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1658


<!-- page 1659 -->
Method

Steps

▪ Using the ceil () function: Calcu­
late a variable value and use the ceil
() function to round up the value to
the nearest whole number. For exam­
ple, ceil(($font-size-base *
1.125)) // 18px;
d. Select Update.
a. In the Desktop Assistant form, select the
Lookup using list icon
field.

in the Theme

b. On the Themes page, select a theme from
the themes list.
The selected theme is updated in the
Theme field of the Desktop Assistant form.
c. Select the Preview this record icon
the Theme field.

near

d. In the preview dialog box, select Open
Record.
Customize a theme other than the default
theme

e. In the CSS variables section, modify the
predefined variables in one of the following
ways:
▪ Direct value assignment: Assign values
directly to the variables. For example,
$sp-space—xl: 4px;
▪ Indirect value assignment: Create a ref­
erence to an existing variable by assign­
ing to a variable the value of another vari­
able. For example, $badge-color:
$text-white;
▪ Using the ceil () function: Calcu­
late a variable value and use the ceil
() function to round up the value to
the nearest whole number. For exam­
ple, ceil(($font-size-base *
1.125)) // 18px;
f. Select Update.

For more information, see Variables to customize a theme for Desktop Assistant.
Enable or disable notifications
Enable notifications to stay informed and engaged receiving timely updates and notifications
about important events and activities within the system.

Before you begin

Role required: sn_dex_desktop.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1659


<!-- page 1660 -->
Procedure
1. Navigate to Desktop Assistant > Configuration > Application.

2. On the Desktop Assistant page, select or clear the Notifications Enabled check box.
3. Select Update.

Result
A bell icon (
) appears on the Desktop Assistant header if you enable notifications. If you
disable notifications, the bell icon disappears from the header.
When enabled, push notifications are sent to employees using Desktop Assistant. For more
information, see Desktop Assistant notifications and View Desktop Assistant notifications.
Enable Virtual Agent or chat
Enable Virtual Agent to find solutions to your inquiries quickly and seamlessly, without having to
wait on hold or speak with an agent by phone.

Before you begin

Ensure you have installed the Virtual Agent plugin [com.glide.cs.chatbot] and the plugin is active.
Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Application.
2. On the Desktop Assistant page, select the Virtual agent enabled check box.
For information on how to configure Virtual Agent, see Configuring Virtual Agent

.

3. Select Update.
The Virtual Agent or chat icon (

) appears on the Desktop Assistant header.

4. To open the chat window, select the Virtual Agent or chat icon (
).
For information on how to configure the chat branding, see Set up your Virtual Agent bot's
branding .
Create a hyperlink card in Desktop Assistant
Create a hyperlink card in Desktop Assistant to provide direct access to a targeted site, page, or
records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1660


<!-- page 1661 -->
Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Create Hyperlink Card.
2. On the form, fill in the fields.
Hyperlink Card form
Field

Description

Name

Unique name for the card title.

Header

Unique name for individual pages in the card.
This name appears as the header or title of the related details page.

URL

URL of the site or page that opens when you select the card.

Note: The available options are:
◦ Relative URL: Setting the URL to /esc automatically opens
the Employee Center for the same ServiceNow instance that
Desktop Assistant is connected to.
◦ Public URL: The full URL. For example, https://
www.servicenow.com/ .
Description

Short description of the card.

3. Add a URL to the card.
a. Select the Edit URL icon

.

b. In the URL field, enter the URL.
c. Select the Lock URL icon

.

4. Optional: Add an image to the card.
a. In the Icon field, select Click to add.
b. Select Choose File and select an image from your system.
c. Select OK.
5. Select Submit.

What to do next

Map the card to the section under which it should appear. For more information, see Map a card
to a section.
Map a card to a section
Map a card to the section under which it must appear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1661


<!-- page 1662 -->
Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.admin

About this task

By default, Desktop Assistant provides: My resources and Quick links.

Procedure
1. Navigate to Desktop Assistant > Configuration > <section_name>.
2. In the Section to Card Mappings section, select New.

3. In the Desktop Assistant Card field, select the card you have created.
4. In the Order field, select an order number for the card.
The order number is the sequence in which the card is positioned in the section.
5. Select Submit.

Result

The card is displayed under the specific section that you have selected.
Delete a card from the Desktop Assistant home page
Delete a card from the Desktop Assistant home page when you no longer need it.

Before you begin

Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Home.
2. Select the home page name from which you want to remove the card.
3. Under Desktop Assistant Section, select the section name under which the card is
positioned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1662


<!-- page 1663 -->
4. From the Desktop Assistant Card column, select the check box that appears before the
name of the card that you want to remove.
5. From the Actions on selected rows drop-down list, select Delete.

6. In the Confirmation window, select Delete.
Add a section in the Desktop Assistant home page
Add a section to the Desktop Assistant home page to organize related cards under that section
for easy navigation.

Before you begin

Confirm that the DEX Desktop Assistant [sn_dex_desktop] application has been installed. For
more information, see Install Application and Device Health and Download and install Desktop
Assistant.
Role required: sn_dex_desktop.admin

Procedure
1. Navigate to All > Desktop Assistant > Configuration > Home.
2. Select the name of the home page for which you want to add a section.
3. Select the application scope.
a. Select the globe icon

on the top navigation bar.

b. Select Application scope and then select DEX Desktop Assistant from the drop-down list.
4. In the Tab to Sections Mappings section, select New.

5. Select an existing section or create a section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1663


<!-- page 1664 -->
◦ Select an existing section.
a. In the Desktop Assistant Section field, select the magnifying glass icon (

).

b. Select the section name and select Submit.
The section is created on the Desktop Assistant home page.
◦ Create a section.
a. In the Desktop Assistant Section field, select the magnifying glass icon (
then select New.

) and

b. In the Name field, enter the name of the section.
c. Select the Show Title check box to display the title on the home page.
d. Select Submit.
You’re directed to the Tab to Section Mapping page where you can see the section name
in the Desktop Assistant Section field.
e. Select Submit.

Result

The section is created on the Desktop Assistant home page.
Delete a section from the Desktop Assistant home page
Delete a section from the Desktop Assistant home page when you no longer need it in.

Before you begin

Role required: sn_dex_desktop.admin

Procedure
1. Navigate to Desktop Assistant > Configuration > Home.
2. Under Desktop Assistant Section, select the check box that appears before the name of
the section that you want to remove.
3. From the Actions on selected rows drop-down list, select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1664


<!-- page 1665 -->
4. In the Confirmation window, select Delete.

Result

The section is removed from the home page.

Configuring DEX for Microsoft 365
DEX for Microsoft 365 gets installed automatically when you install Digital End-User Experience.

Configuration overview
1. Integrate the ServiceNow instance and Microsoft Azure by creating a custom application in
Microsoft Azure portal to authenticate ServiceNow requests. To enable call quality monitoring
for Microsoft Teams, do the following:
◦ Register a custom application in Microsoft Azure portal
◦ Configure a connection for DEX for Microsoft 365
2. Enable application monitoring
Enable application monitoring to gain insights into call quality metrics and diagnose issues to
enhance performance.
Register a custom application in Microsoft Azure portal
Provide authorization for the ServiceNow instance by registering a custom application with Azure
Active Directory.

Before you begin

Role required: Azure Active Directory admin

Procedure
1. Log in to the Microsoft Azure portal

.

2. Under Azure services, select App registrations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1665


<!-- page 1666 -->
3. Under App Registrations, select New registration.

4. Provide a name and select Register.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1666


<!-- page 1667 -->
The application is registered and essential application details are displayed.
5. Copy and record the value of Application (client) ID and Directory (tenant) ID for later use.
6. Select Certificates & secrets, and select New client secret.
7. In the form, provide the Description and select Add.

8. Copy the Value of client secret for later use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1667


<!-- page 1668 -->
9. Select API permissions.
10. Under Configured permissions, select Add a permission.
11. Under Request API permissions, select Microsoft Graph.

12. Select Application permissions.
13. Ensure that these permissions are provided to your custom app:
◦ User.Read.All
◦ CallRecords.Read.All
For more information about the API permissions, see Add permissions to access your web
API
in Microsoft Learn .
14. Select Add permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1668


<!-- page 1669 -->
15. Select Grant admin consent.

The system prompts you to confirm your consent.
16. Select Yes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1669


<!-- page 1670 -->
A confirmation message is displayed that admin consent is granted for the requested
permissions.

Configure a connection for DEX for Microsoft 365
Add and configure the Microsoft Teams connections to authenticate ServiceNow requests in the
DEX for Microsoft 365.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Process Automation > Flow Designer.
2. Select the Integrations tab.
3. Select the Connections tab.
4. Configure the DEX for Microsoft 365 connection.
a. Locate the DEX for Microsoft 365 connection alias and select View Details.

Note: Don't select Add Connection.
b. Select Edit or, if you are configuring the DEX for Microsoft 365 for the first time, select
Configure.
c. In the Configure Connection form, fill in the fields.

Field

Description

Name

Name to identify the alias record associated with this connection.
This is set to DEX for Microsoft 365.

Connection
URL

Connection URL.

API Version

The value is set to v1.0 by default.

Enter https://graph.microsoft.com.

If you are using any other API version, update the version number here.
Token URL

OAuth server token endpoint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1670


<!-- page 1671 -->
Field

Description

Enter https://login.microsoftonline.com/<DirectoryID>/oauth2/v2.0/token.
Client ID

Application ID created during application registration.

OAuth Client
Secret

Client secret created during application registration.

d. Select Configure and Get OAuth Token.

Configuring DEX for Zoom
The DEX for Zoom gets installed automatically when you install Digital End-User Experience.
1. Integrate your Zoom account with your ServiceNow instance so that you can use the DEX for
Zoom to perform various actions on your Zoom account. You can also create a custom OAuth
application in the Zoom account to authenticate requests from your instance.
To enable call quality monitoring for Zoom, do the following:
◦ Create a connected Zoom application.
◦ Add Zoom connection.
2. Enable application monitoring to gain insights into call quality metrics and diagnose issues to
enhance performance.
Create a connected Zoom application
Create a connected application in your Zoom account to establish an OAuth 2.0 level of
authentication between the Zoom APIs and the DEX for Zoom on the ServiceNow AI Platform.
After creating the connected app, you can add scopes that enable you to perform different
actions from the DEX for Zoom.

Before you begin
1. Create a Zoom account
2. Role required: Zoom admin

About this task

Creating the connected app is a one-time activity.

Procedure
1. Log in to Zoom marketplace

.

2. Navigate to Develop > Build App.
3. Select General App.
4. Select Create.
5. Optional: Double-click the default name of the app and update the name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1671


<!-- page 1672 -->
6. Select Admin-managed.
7. Select Save.
8. Under the App Credentials section, copy the Client ID and Client secret and store them at a
secure place.

9. Under the OAuth Information section, complete the following steps.
a. In the OAuth Redirect URL field, enter the redirect URL in this format: https://
<ServiceNow-Instance-Name>.service-now.com/oauth_redirect.do.
b. Under OAuth Allow List, add a ServiceNow instance redirect URL in this format: https://
<ServiceNow-Instance-Name>.service-now.com/oauth_redirect.do.
A token is generated. This token is used by the OAuth app to give the Zoom spokes access
to the Zoom APIs.
c. Optional: To add another URL to the allow list, select Add New List.
The following example shows the screen that you use to generate credentials for the OAuth
app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1672


<!-- page 1673 -->
Note: To learn more about the difference between the Redirect URL for OAuth and the
URL that is mentioned in the OAuth allow list, see Zoom Developer Forum

.

10. Select Access.
11. Under the Access section, copy the Secret Token.
12. Select Scopes.
13. Select + Add Scopes and add the following scopes:
◦ report:read:user:admin
◦ dashboard:read:list_meeting_participants_qos:admin
◦ dashboard:read:meeting_participant_qos:admin
◦ dashboard:read:list_zoomrooms:admin
◦ dashboard:read:issues_zoomroom:admin
◦ user:read:user:admin
14. In the Search scope field, enter the granular scope.
An example of a granular scope is meeting:delete:meeting:admin.
The granular scope appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1673


<!-- page 1674 -->
15. Select the scope and then select Done.
The granular scope is added.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1674


<!-- page 1675 -->
16. Optional: Repeat the steps to add more granular scopes.
Add Zoom connection
Use the information generated during Zoom account configuration to register DEX for Zoom as an
OAuth provider and enable the instance to request OAuth 2.0 tokens. Add the Zoom connection
in Workflow Studio to perform actions in Zoom.

Before you begin

Role required: admin

Procedure
1. From your ServiceNow instance, navigate to Process Automation > Workflow Studio.
2. Select the Integrations tab.
3. In the Search all connections field, enter DEX for Zoom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1675


<!-- page 1676 -->
Note: The Outbound tab is selected by default. Confirm that the Outbound tab is
already selected.
4. In the Zoom card, select View Details.
◦ To configure the default connection and credential alias record that is shipped along with
the DEX for Zoom spoke, select View Details.
◦ To manage more than one DEX for Zoom connection records, create a child alias record
by selecting Add Connection. For more information about using multiple connections, see
Supporting multiple connections .
If you’re configuring the spoke for the first time, select Configure. Otherwise, select Edit.
5. On the form, fill the following values.

Field

Description

Connection
Name

Name to identify the connection record.

Connection
URL

Base URL to connect to your Zoom instance. Enter https://
api.zoom.us.

OAuth Entity Name to identify the application registry record.
Name
OAuth Client Client ID created during application registration.
ID
OAuth Client Client secret created during application registration.
Secret
OAuth
OAuth callback endpoint. Enter https://<instanceRedirect URL name>.service-now.com/oauth_redirect.do.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1676


<!-- page 1677 -->
6. Select Configure and Get OAuth Token.
A confirmation message is displayed that the token is

available.

Device location determination
Identify and determine the number of impacted devices based on the location by defining a
custom logic.
Identify and determine the number of impacted devices based on the location by configuring
a custom logic for location determination. Device location can be set using three predefined
configurations. DEX administrators can select an option in the system properties and
sn_dex.location_determination. The property controls how DEX identifies the
positioning of the device used to establish the device's location (in the cmdb_ci_computer table)
and throughout DEX for reporting and alerting purposes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1677


<!-- page 1678 -->
default_gateway_determined_location
Location determination logic: DEX uses the default gateway of the device to determine the
location.
• Identify the default gateway IP address of the device.
• Match this gateway to the switches in cmdb_ci_ip_switch.
The assigned location of the switch is identified as the device’s location. If not, the device is
marked as Remote (see Remote location format logic).

device_user_assigned_location
Location determination logic: DEX prefers the device’s assigned location and falls back to the
employee’s location if needed.
• Use the device’s location from cmdb_ci_computer.
• If unavailable, use the owner’s location from sys_user.
If neither of the option is set, the device is marked as Remote (see Remote location format logic).

geoIP_determined_location
geoIP_determined_location is the default option.
Location determination logic: DEX uses GeoIP based on network connectivity to determine the
location using the GeoIP data.
When a device is marked as Remote, DEX uses GeoIP to determine the Region or State and
Country. With an admin role, you can set the format (Remote, State, Country, or Remote, Country)
in sys_property sn_dex.remote_location_config.
• The country format: Remote, Country (For example, Remote, USA), where the country is
determined by GeoIP.
• The include_state format: Remote, CA, USA, where state and country are determined
by GeoIP.

DEX Alerts
Digital End-User Experience (DEX) Alerts provide details on the active alerts, their severity,
impacted services, and the duration.
On the Service Operations Workspace home page, Active alerts, Impacted devices, and Active
devices are displayed. The Active alerts section displays the number of active alerts as of that
selected time. Select the Active alerts section to view all the active alerts list or Navigate to
Workspaces > Service Operation Workspace > Express List.
Role Required: Event_management_user or Event_management_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1678


<!-- page 1679 -->
By selecting a specific alert, you can find the details of the alert in different tabs that are listed in
the table.

Tab name

Description

The Overview tab

Provides a summary, impact, and cause of the
alert.

The Details tab

Provides alert details like the alert name,
metric name, history.

The Related records

Provides details on the affected services,
remediation tasks, impacted devices, and
possible root causes.

The Remediate issue on devices

Lists all the available remedial actions for the
impacted device.

View alerts for both your device and its applications in the Alerts section of the Devices page.

Note: For details on the active alerts listed see, Monitor incoming alerts

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1679


<!-- page 1680 -->
The Overview tab
• Displays an overview of the alert, the summary, impact of the alert, and the cause for the alert
created.
• You can view the impacted devices and impacted users section. When you select the refresh
icon on the Impacted devices or Impacted users, refresh the number impacted at that selected
time.
• Details related to the impacted Configuration Item (CI) are displayed under the impact section
and opens up to the related records.
• It displays any impacted services caused due to the alert.
• The cause section displays the probable root cause and also shows the number of alerts
created due to this cause.

The Details tab
Access the Details tab to learn more about the history of the alert, metric name, and other
metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1680


<!-- page 1681 -->
Related records tab
• All the related record information (Impacted services, configuration items, Impacted devices,
Impacted users, repeated alerts, and so on) is displayed.
• To access the related lists information displayed on the impacted devices and impacted users
tabs, install the latest version (26.3.1) of the Service Operations Workspace alert management
plugin (sn_sow_em) store plugin.
• You can view the history of the bulk remedial action from the related records. All the remedial
actions executed and their respective states are displayed.

Remediate issue on devices
• Displays all the impacted devices that are up and active for the DEX engineer to remediate
issues on multiple devices at once.
• Categorizes the impacted devices based on the operating system and the status.
• Based on the device selected. If one device is selected, remedial actions applicable for
a single device are displayed. If multiple devices are selected, it displays all the available
remedial actions for bulk remediation.
• Enables you to execute a remedial action for a single device or multiple devices. To view the
history of remedial action execution, access the related records tab (remedial action history).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1681


<!-- page 1682 -->
Incidents from alerts
As an agent or IT operator, you can create an incident from the Digital End-User Experience
(DEX) alerts which is addressed by the L1 agent.
As a response to the alerts, you can create an incident. The DEX alert-related information is
available on the origin card of the incident. You can view the number of Impacted devices and
impacted users. To access the DEX alert information, you need the Incident management for
Service Operations Workspace plugin (com.snc.uib.sow_incident) version 7.1.0 and
above.

DEX alert grouping
When several alerts are triggered from events governed by the same metric rule in Digital EndUser Experience (DEX), the alert grouping mechanism automatically consolidates them. This
mechanism reduces the need to manage individual alerts, streamline their response process,
and enable faster issue resolution.
When alerts are grouped, you see the total count of secondary alerts grouped next to the primary
alert number.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1682


<!-- page 1683 -->
DEX events and alerts representation
In the Events table [em_event], any event with the Source field value as DEX is classified as
a DEX event. For DEX, the Type field displays DEX Metric Rules as DEX alerts are generated
based on DEX metric rules. When for any event, the State of the event is Processed, an alert is
generated and saved in the Alerts table [em_alert].
In the Alerts table [em_alert], select any alert to access its details. An alert that is created from
a DEX event, displays the Source field value as DEX. The Metric name field value appears as
either DEX App Metric or DEX Device Metric. For an alert, the Metric name field value is DEX
Device Metric. The Configuration item field shows the name of the corresponding application
or device. For the alert whose corresponding Group field shows Rules-based, are the DEX alert
groups.

Rule for alert correlation
In All > Event Management > Rules > Alert Correlation Rules, the DEX Metric Correlation Rule
determines when alerts must be grouped and provides necessary details.

Note: For one application and one metric rule, there’s only one alert in DEX. DEX creates
alert groups when the metric rule is the same, regardless of whether the configuration items
are the same or different. When the problem is resolved, closing the primary alert also
closes the secondary alerts within the same group.

Time-based alert grouping
Time-based alert grouping automatically groups alerts according to predefined time intervals,
which is advantageous for services generating numerous alerts. Consolidated alerts result in
fewer disruptions for responders and contribute to shorter resolution times.
In the System Properties table [sys_properties], the property

sn_dex.alert.correlation_rule.device.period defines the time period in
seconds for grouping and correlating similar metric rule-based DEX alerts. In the Value field, you
can enter the desired time duration in seconds. For example, to set a 5-minute gap between alert
groupings, enter 300. Entering 0 disables the rule.
Let's consider an example: Alert A1 is generated for rule R1 from device D1. After two minutes,
alerts A2 and A3 are generated for the same rule R1, but from devices D2 and D3 respectively.
With A1 being the first alert, it's designated as the primary alert, and A2 and A3 are grouped as
secondary alerts under A1.
Now, suppose you have set the time duration to 300 seconds (5 minutes). If no alerts for rule R1
are generated within five minutes, and then after this period, alerts A4, A5, and A6 are generated
for the same rule, a new group is formed. Alert A4 becomes the primary alert, and A5 and A6 are
grouped under A4.
However, if any alert is generated for rule R1 within five minutes, it's considered as a secondary
alert to A1 and grouped accordingly.
Deactivate DEX alert grouping
Deactivate DEX alert grouping to enable individual alert visibility, aiding in detailed analysis and
targeted response.

Before you begin

Role required: sn_dex.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1683


<!-- page 1684 -->
Procedure
Perform one of the following options.
Options

Actions

System Properties table [sys_proper­
ties]

Alert Correlation Rules

Open the property

sn_dex.alert.correlation_rule.device.period
and in the Value field, enter 0.
Under All > Event Management > Rules > Alert Cor­
relation Rules, in DEX Metric Correlation Rule, clear
the Active check box.

Monitoring devices and applications with DEX Application and
Device Health
Application and Device Health is a powerful solution for monitoring and managing your IT
environment from an end-user perspective. It offers a variety of features that provide valuable
insights into how users interact with the technology they rely on every day.
The DEX Application and Device Health product enables IT to monitor applications, networks,
and devices on end-user systems, allowing proactive issue detection to minimize downtime and
productivity loss.
The Application and Device Health addresses the challenge of limited visibility into end-user
experiences by providing insights to identify and resolve performance issues before they impact
users. The suite includes tools for self-service diagnostics, IT notifications, and streamlined
support to enhance both monitoring and user engagement.

DEX Application and Device Health
Get information and entry point into different Digital End-User Experience Application and Device
Health features by exploring tabs within the application.
Navigate to Workspaces > Service Operations Workspace and select one of the tabs in the
primary navigation pane.
Digital End-User Experience Application and Device Health pages
Page

Description

Landing page

The landing page offers access to information on active alerts, impacted
devices, active devices, and the devices world map.

DEX Insights

The Insights page provides a simplified view for device performance,
compliance, user interactions, and network health to help you identify issues
and remedies before they slow users down.

Applications

The Application list provides insight into monitored installed and web
applications, the quantity of incidents and alerts linked to each application,
and impacted devices for each application.

Devices

The Device list provides information on the device, its assigned user, last login,
matching assignments, status, active alerts, and incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1684


<!-- page 1685 -->
Digital End-User Experience Application and Device Health pages (continued)
Page

Description

Device details The Device details page provides information on the device, its assigned user,
last logged-in user details and location, matching assignments, status, active
alerts, incidents, and host data collection.
DEX
The Administration page provides tools for application management, agent
Administration policies, metric rules, active users, administrator count, agent downloads,
service status, usage metrics, and system compliance.
Open DEX Application and Device Health
DEX Application and Device Health provides proactive visibility that helps you understand your
organization end-user experience and diagnose any issues. With features such as application
and user navigation, trend analysis, and other useful metrics, the DEX Application and Device
Health enables you to identify the root cause of an issue, rather than just treating the symptoms.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.user

Procedure
Navigate to Workspaces > Service Operations Workspace.

Result
The home page icon (

) is selected by default. For more information, see Landing page cards.

Landing page
The DEX landing page serves as the starting point for the information on the total number of
alerts, impacted devices, and a device world map.
To access the landing page, navigate to Workspaces > Service Operations Workspace.
The Home icon ( ) is selected by default and you can view the landing page of the Service
Operations Workspace Performance Analytics dashboard.

Note: The graphs display the latest data from the last two hours.
For more details on each card, see Landing page cards.

Employee experience overview
The Employee experience overview section provides details such as active alerts, impacted
devices, and active devices.

Devices
The devices world map shows device counts by location, allows you to drill down into specific
regions, and redirects to the Devices page for detailed insights.
DEX Insights
The Digital End-User Experience (DEX) Insights tab provides access to the battery health,
compliance, system performance, and system time reports, enabling you to track user devices
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1685


<!-- page 1686 -->
and take remedial actions. Use the Insights reports to gain early information about issues before
they can slow down the users.
To access the Insights tab, navigate to Workspaces > Service Operations Workspace and
select the Insights icon (

) in the primary navigation pane.

DEX Insights reports
Category

Description

Query
builder

Helps you build and run custom queries to uncover insights across your digital
workplace.

Battery
health

Provides information about the battery of the monitored devices, including its
capacity, serial number, and condition.

File
Lists the files that you set up to be monitored on the user devices.
management
The list identifies the file name, the category to which it belongs, and the
number of devices that have the file.
This page appears on Windows machines only.

Note: If you select the number in the Device count column, you can see
the list of all devices where that file is present.
System
compliance

Helps you monitor whether the devices across your organization are adhering to
the established application and policy metric compliance rules.

System
Provides a view into device performance across your organization, including the
performance CPU, memory, and disk usage over the last 7 or 14 days.
System time

Provides information about the various time-related metrics, including boot time,
up time, and device age.

Windows
registry

Provides you a view of the Windows registry keys on your organization devices
set up for monitoring.
Set up Windows registry keys to receive this report.
This page appears on Windows machines only.

Note: If you select the number in the Device count column, you can see
the list of all devices where that key is present.
For more details on fields in each report category, see DEX Insights reports.
Applications
Manage the active applications in your organization to enhance user productivity and
engagement. The Application list serves as a central hub, offering visibility into monitored
applications. Access details such as the name of an application, its type, the number of alerts
and incidents associated with each of those applications, and impacted users.
To access the Applications list, navigate to Workspaces > Service Operations Workspace and
select the Applications icon (

) in the primary navigation pane.

You can also access the application health from an incident platform view by selecting a service
or a service offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1686


<!-- page 1687 -->
To refine your search based on applications, use the Applications filter. The application data is
sorted in a decreasing order based on the number of impacted users.
Select the column filtering row icon (
) to choose the desired filter condition from the dropdown list of the filter section and enter the desired value. In the following field, select Web or
Installed and then select Apply. For example, if you want to choose all applications that begin
with the letter "M", select the "starts with" option from the drop-down menu. Then enter "M" in the
subsequent field and select Apply.
To learn details of any application, select the name of the application. For more details on each
field, see Applications list.
Devices
Access the Device tab to obtain detailed information on each device, including user assignment
status, last login timestamp, matching assignments, device status, active alerts, and incidents.
To access the Devices tab, navigate to Workspaces > Service Operations Workspace and
select the Devices icon (

) in the primary navigation pane.

The device view is segregated into All devices and Devices by ACC status tab. The All devices
tab provides the device details such as its assigned user, last logged user details, last logged-in
user location, matching assignments, active alerts, and incidents.
The Devices by ACC status tab displays device status, indicating whether each device is active
or inactive, the status of host data collection, and other relevant device information.
Use the View agents table button to see detailed agent lists and attributes.
For more details on each field, see Devices list.

Note: Select a device to view the device details page. Similarly, select a device on the
user details page to view specific information about the device. For more details on a user's
device, see Device details and related subtopics.
Device details
Monitor the health of the user device, installed or web applications, running processes on the
device, application and device performance metrics, network configuration, user access details,
and the ability to run custom SQL queries to retrieve OS information.
To access a user and device details, Workspaces > Service Operations Workspace and select
the Devices icon (

) in the primary navigation pane, then select a device from the list.

Note:
• Devices are categorized as Up or Down based on their current operational status.
• Select Computer details to access comprehensive information about the device.
The information includes the asset tag, serial number, model ID, manufacturer, and
configuration details of connected components.
To learn more, see Device details pages.
DEX Administration
The DEX Application and Device Health Administration tab provides you with essential tools to
manage and monitor the system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1687


<!-- page 1688 -->
To access the Administration tab, navigate to Workspaces > Service Operations Workspace
and select the Administration icon (

) in the primary navigation pane.

Note: To view the Administration tab, you must have the sn_dex.admin role.
Use the DEX Administration tab to monitor and manage applications. Use Application
management, Agent policies, User roles, System compliance, Metric rules, File management,
Windows registry management, Remedial Actions, and Administrator cards to find more
information. Track Agent Client Collector installations in Agent health. For more information on
each card, see Administration cards.
View Desktop Assistant usage metrics to monitor your Desktop Assistant connection status
verifying communication with the ServiceNow instance. For more information on Desktop
Assistant, see Use DEX Desktop Assistant.

Monitor system performance
Monitor your organization's system performance effectively by tracking CPU, memory, disk, and
I/O metrics. This helps prevent application bottlenecks and verifies resource availability. Disk
performance monitoring identifies potential storage issues, such as slow read or write speeds,
while I/O monitoring helps detect delays in data transfer.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Insights icon (

) in the primary navigation pane.

3. Select System performance.
For more information on the system performance metrics, see DEX Insights reports.

Monitor your user apps network
Monitor your app's network to ensure top performance, reduce latency, and improve security.
Track key metrics to spot issues early, optimize resource use, and fix problems before they
impact users.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and select the Devices icon(
from the primary navigation pane.

)

2. Select a device from the list.
3. In the Network experience section, select one of the following options:
◦ Connection details: Information about the user's Wi-Fi, wired, and VPN connection.
◦ App connection stability: Information about the network stability related to latency, packet
loss, and jitter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1688


<!-- page 1689 -->
This option is applicable only to Windows OS.
◦ App connection path: Network path data for a selected application.
This option is applicable only to Windows OS.
◦ Live application hops: List of hops between the user's device and an application server that
can help you identify and fix network bottlenecks.
For more details, see Network experience pages.

View metrics of an installed application
View and monitor the CPU and memory usage of your applications to optimize performance and
promoting efficient resource allocation.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.user

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Select an installed application name.
4. Select Performance under Application metrics.
You can view information on the number of crashes, CPU usage, memory and I/O performance,
and memory usage trends. For more information on the metrics, see Installed application —
Performance page.

View metrics of a web application
View metrics of a web application to get a comprehensive view of the performance of the
application. Tracking these metrics over time can help you gauge the impact of changes made to
the application and monitor its long-term performance.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.user

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Select a web application name.
4. Select Performance under Application metrics.
You can view information on the users, sessions, response time, page load time, and
availability. For more information on the metrics, see Web application — Performance page.

Note: If you set up a page-level monitoring for specific application pages, you can see

the collected metrics in the Metrics analyzer. Select one or more pages under Pages and
narrow down your data by location, OS, or date range.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1689


<!-- page 1690 -->
View collected metrics with Metrics analyzer
Use the Metrics analyzer to view metrics collected for a given device or application during a
specific time.

Before you begin

Role required: sn_dex.admin

About this task

Use DEX Metrics analyzer to view key performance metrics collected for specific Configuration
Items (CIs), in a single location. The Metrics analyzer enables you to select specific metrics for a
device or application and see the aggregated metrics in a single consolidated time series.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Devices icon (

) or the Applications icon (

).

3. Select a device or an application from the list.
4. Select the Open in Metrics Analyzer button.
5. In the Metrics analyzer window, search for or select up to five metrics to display as a graph.
To learn more, see Metrics analyzer form.
6. Optional: Filter your data by page name, location, OS, or date range.
The Location and OS fields are available only on the Metrics analyzer page for applications.
7. Optional: Select Unselect all to remove the results.

View client health with MCM
View client health metrics with the Microsoft Configuration Manager (MCM) application. The
metrics include MCM metrics by device count, MCM versions installed on user devices, and
device count where MCM action hasn't run in the last 24 hours.

Before you begin
• Add or enable MCM for monitoring.
For more details, see Add an application for monitoring.
• Configure Advanced monitoring for MCM.
For more details, see Enable application monitoring.
Enable application monitoring.
Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Select Microsoft Configuration Manager (MCM).
4. Select Client health.
For more information, see Installed application — Client health page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1690


<!-- page 1691 -->
View the domain or URL for a web application
View the domain or web address of a web application to access the application and use it
effectively.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: sn_dex.user or ITIL

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Configure applications on the Application management card.
The list of monitored applications appears.
4. Select the application for which you want to view the application URL.
The URLs appear in the What domains should be monitored? field.

View agent policies
View the agent policies used during check runs on the associated Configuration Items (CI).

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the DEX Administration icon (

).

3. Select Manage policies on the Agent policies card.

Advanced monitoring Overview
Advanced monitoring in DEX provides comprehensive visibility into your organization's digital
environment. Use advanced monitoring capabilities to track client health metrics through
Microsoft Configuration Manager (MCM), analyze Microsoft Teams call quality, view detailed
Zoom call and Zoom room metrics, and manage application monitoring settings.

Advanced Monitoring key capabilities
Advanced monitoring enables you to proactively identify performance issues and optimize the
digital employee experience across your enterprise tools and devices. The key capabilities of
advanced monitoring are listed below:
• Client health management: Track Microsoft Configuration Manager (MCM) client health,
version distribution, and action execution status across your device fleet.
• Communication quality: Monitor Microsoft Teams and Zoom call quality with detailed network
metrics and real-time detection of audio, video, and screen sharing issues.
• Network performance: Measure latency, jitter, and packet loss to identify connection
problems.
• Environment analysis: Compare performance by device type, operating system, location, and
connection type (Wi-Fi vs. Ethernet).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1691


<!-- page 1692 -->
Advanced monitoring benefits
benefits
Benefit

Feature

Maintain complete device management
coverage and detect MCM client failures
before they impact operations.

Users

IT administrators,
Configuration
managers

Ensure reliable Microsoft Teams
communication and justify network
investments with objective quality data.

Microsoft Teams call
quality monitoring
overview

IT administrators,
Network
administrators

Diagnose quality issues across devices,
locations, and networks to deliver consistent
Zoom meeting experiences.

Zoom call quality and
Zoom room issues
monitoring

IT administrators,
Network
administrators

Gain visibility into Zoom room issues across
View Zoom room
your organization to proactively address
metrics
equipment problems before they disrupt Zoom
calls.

Facilities managers,
AV support teams

How to configure and use advanced monitoring
To configure advanced monitoring, you must Enable application monitoring.

What to explore next
To learn more about configuring and using application monitoring, see:
• View client health with MCM
• Configuring DEX for Microsoft 365
• Configuring DEX for Zoom
• Monitor Microsoft Teams call quality
• Monitor Zoom call quality using DEX
Microsoft Teams call quality monitoring overview
Analyze user‑level call performance for Microsoft Teams. View call quality, network metrics like
jitter and packet loss, and session details to identify and fix communication issues.

Watch: Microsoft Teams call quality Overview video
<Add the video when it gets ready>.

Benefits of monitoring Microsoft Teams call quality
DEX advanced monitoring for Microsoft Teams call quality provides the following benefits:
• Quickly identify and troubleshoot issues that impact audio, video, and meeting performance to
ensure consistent, high‑quality communication.
• Access real‑time and historical call analytics to pinpoint network, device, or configuration
problems without lengthy investigation cycles.
• Detect patterns or recurring issues early, such as poor Wi‑Fi coverage or bandwidth
constraints, and take corrective action before they affect a wide user base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1692


<!-- page 1693 -->
• Use call quality data to assess network performance and make informed decisions about
bandwidth planning, routing, or infrastructure upgrades.
• Ensure Teams operates at optimal performance across locations by monitoring packet loss,
jitter, latency, and device health.
• Gain actionable insights through dashboards and reports, enabling IT teams to validate
improvements, and track organizational communication health.
• By resolving root causes proactively, organizations can decrease the number of help‑desk
tickets related to meeting and calling issues.

How to configure and use
To configure Microsoft Teams call quality monitoring, do the following:
• Enable application monitoring
• Configuring DEX for Microsoft 365
To monitor Microsoft Teams call quality, see Monitor Microsoft Teams call quality.
Zoom call quality and Zoom room issues monitoring
Track Zoom call quality for users and monitor your organization's Zoom room performance. View
call quality metrics, network performance data like jitter and packet loss, and room issues to
troubleshoot communication problems and improve user experience.

Benefits of monitoring Zoom calls and Zoom rooms
DEX advanced monitoring for Zoom call quality and Zoom rooms provides the following benefits:
• Track Zoom calls for users assigned to a device or logged in within the past 15 days.
• Access audio, video, and screenshare quality data for all calls.
• Review jitter, latency, and packet loss to identify connectivity issues.
• Sort calls by quality (Good, Fair, Poor, Bad) and apply filters for device type, version, network
type, and location.
• View calls over time and identify patterns in call quality issues.
• Track room performance, view issue counts, and identify problems across your organization's
Zoom rooms.
• Drill into individual calls to review connection type, operating system, camera usage, and other
session details.
• Use aggregated metrics and detailed call information to diagnose and resolve issues
efficiently.

How to configure and use
To configure Zoom call quality monitoring, do the following:
• Enable application monitoring
• Configuring DEX for Zoom
To monitor Zoom call quality, see Monitor Zoom call quality using DEX.
View Zoom room metrics
To view Zoom room issues, see View Zoom room metrics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1693


<!-- page 1694 -->
Monitor Microsoft Teams call quality
Enable advanced monitoring of Microsoft Teams call quality with DEX for Microsoft 365. Track
and analyze call performance for a specific user.

Before you begin

Role required: admin
• Configure advanced monitoring for Microsoft Teams. For more details, see Enable application
monitoring.
• Set up DEX for Microsoft 365 application. For more information, see Configuring DEX for
Microsoft 365.

About this task

View detailed metrics for a employee's Microsoft Teams calls, including call quality, network
metrics, and session data for a particular user.

Note: All the data displayed in this page are based on the information received from
Microsoft.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Select Teams.
4. Select Call quality under Application metrics.
5. Select a User.

Note: Only users with a valid email address can be selected.
6. Select a Start date/time and End date/time, then select Go.

Note: The date range is limited to a maximum of 48 hours within the past 30 days.
7. Select Summary.
The following details appear:
◦ Call Quality: A Pie chart shows the percentage of calls with Good quality, Poor quality, or
Unclassified.
◦ Call Types: A Pie chart shows the percentage of calls types: audio, video, or other.
◦ Calls over time: A line graph shows the number of Good, Poor, or Unclassified quality calls
over the selected time period.
◦ Network Experience: A line graph shows average packet loss and average jitter over the
selected period.
◦ Metrics: The following metrics appear in a table.
Metric

Description

Average jitter

Measure of the variation in packet delay over a network.

Average packet
loss rate

Shows how often data disappears on its way. Lower loss means better
sound, video, and performance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1694


<!-- page 1695 -->
Metric

Description

Average roundtrip time

Average time it takes for a data packet to travel from the source to the
destination and back again. The lower the round-time trip, the faster the
network.

Average audio
degradation

Average decline in audio quality experienced during a call or voice
transmission, due to network issues like packet loss, jitter, latency, or
codec problems.

Average video
frame loss
percentage

Average percentage of video frames lost as is displayed to the user.

Average
bandwidth
estimate

Average estimated bandwidth available between two endpoints in bits
per second.

8. Select call quality metrics to get session details.
A number of total calls, good calls, and poor calls appears with a timeline chart of calls. The
following session details appear:
◦ Session Quality Breakdown: A pie chart shows the percentage of Microsoft Teams sessions
with Good, Poor, or Unclassified quality.
◦ Connection Type: A bar chart shows calls from various connection types.
◦ Media Type: A bar chart shows audio and video calls.
◦ Video codecs used: A bar chart based on the video codecs used.
◦ Audio codecs used: A bar chart based on the audio codecs used.
◦ Operating system: A bar chart based on the user’s operating system.

Monitor Zoom call quality using DEX
View detailed metrics for the Zoom calls made by users assigned to this device or logged in
within the past 15 days.

Before you begin

Role required: admin
• Set up DEX for Zoom. For more information, see Configuring DEX for Zoom.
• Configure advanced monitoring to monitor Zoom calls quality with DEX. For more details, see
Enable application monitoring.

About this task

The detailed Zoom call metrics include call quality, network performance, and call details to help
you troubleshoot issues quickly and improve end-user experience visibility.
• Each time a user disconnects and rejoins a call, the subsequent joining is counted as a new
call.
• Zoom monitoring doesn’t include webinars or breakout rooms.
• All the metrics are the aggregated data of all the calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1695


<!-- page 1696 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Devices icon (

).

3. Select a device.
4. Select Zoom call quality under Advanced app metrics.
5. Select a User.

Note:
◦ Only users with a valid email address can be selected.
◦ The users list includes assigned users and logged-in users (those who logged in within
the past 15 days).
6. Select start and end dates, then select Go.

Note: The date range is limited to a maximum of 48 hours within the past 30 days.
The zoom calls appear in cards categorized as: All calls, Bad calls, Poor calls, Fair calls, and
Good calls. By selecting one of these cards, you can see the filtered data in Summary and Call
quality metrics. You can also use Additional filters listed below the cards.

Tip: Apply Additional filters (Device type, Version, Network type, Location) to narrow
results and quickly find call details.
7. Select the Summary tab.
The following call details appear:
◦ Call quality
◦ Call issues
◦ Calls over time
◦ Jitter
◦ Latency
◦ Packet loss

Note:
▪ For the Summary metrics description, see Metrics monitored by DEX for Zoom.
▪ Clicking anywhere on the Call quality or Call issues pie chart opens the Details
page and displays the calls associated with the selected metric. For descriptions of
the fields on the Details page, see Zoom call quality metrics on the Details page.
8. Select Call quality metrics to get call details.
The following call quality breakdown appears:
◦ Audio quality
◦ Video quality
◦ Screenshare quality
◦ Version
◦ Operating System
◦ Location
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1696


<!-- page 1697 -->
◦ Connection Type
◦ Device Type
◦ Camera
◦ Screenshare

Note:
◦ For Call quality metrics description, see Metrics monitored by DEX for Zoom.
◦ Clicking anywhere on the bar graph or pie chart for any call quality metric opens the
Details page and displays the calls associated with the selected metric. For field
descriptions on Details page, see Zoom call quality metrics on the Details page.

View Zoom room metrics
View detailed metrics for your organization's Zoom rooms using DEX.

Before you begin

Role required: admin
• Set up DEX for Zoom. For more information, see Configuring DEX for Zoom
• Configure advanced monitoring to monitor Zoom calls with DEX. For more details, see Enable
application monitoring.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Applications icon (

).

3. Select Zoom.
4. Select Zoom rooms under Application metrics.
5. Select start and end dates, then select Go.

Note: The date range is limited to a maximum of 48 hours within the past 30 days,
based on the UTC time.
The Zoom rooms details appear in a table that includes the room name, room ID, and the total
number of issues. A pie chart also shows the distribution of the Zoom room issues.
6. Select the issue count link to open the Details tab, where you can view the issues and the time
they occurred.

View system compliance
View whether the devices are adhering to your organization's application and policy compliance
rules. Use this data to identify potential security risks.

Before you begin

Confirm that the DEX plugin (sn_dex) is installed.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1697


<!-- page 1698 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Insights icon (

).

3. Select System compliance.
For more information on the system compliance metrics, see DEX Insights reports.

Using metric rules for Digital End-User Experience
Metric rules set criteria and thresholds, triggering alerts when performance metrics deviate
from specified parameters and facilitating effective system monitoring and management. This
comprehensive approach to generating alerts enables you to identify and address potential
issues, which helps enhance system reliability and operational efficiency.
To access the metric rules page, navigate to Workspaces > Service Operations Workspace and,
in the primary navigation, select the Administration icon (

). Select the Metric rules card.

Note: When you initially install Digital End-User Experience (DEX), a set of preconfigured
metric rules is available with the base system. These rules remain inactive on installation.
For more information on how to activate them, see Activate or deactivate metric rules. If you
delete these rules, they're permanently removed and can't be retrieved.
If you installed the DEX Proactive Engagement application and added an alert action for any of
the rules, the Action field shows the action that you added for that metric rule.
For details about the fields and their descriptions on the metric rules page, see Metric rules
page.
View alerts generated from metric rules
Easily track performance insights with alerts from metric rules.

Before you begin

Role required: sn_dex.user or sn_dex.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation pane, select the Express list icon (

).

Note: When multiple alerts are triggered for events that are part of the same rule, these
alerts are automatically grouped.
For more information on alert grouping, see DEX alert grouping.

Agentic AI in DEX
Use the Digital End-User Experience (DEX) agentic workflow to diagnose and resolve issues on
DEX monitored devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1698


