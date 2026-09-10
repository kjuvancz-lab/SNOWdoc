# Zurich IT Operations Management — Preparing for Agent Client Collector implementation

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4132–4151 of 4823

Sections: Preparing for Agent Client Collector implementation (p4132); Exploring Agent Client Collector Framework (p4135)

---

<!-- page 4132 -->
Agent Client
Collector shared
deployment

Agent Client Collector Log Analytics

Live CI View

Stream log data from Linux and Windows
hosts to a ServiceNow instance.

View live data
for incident
related CIs to help
resolve incidents.

Deploy selected
Agent Client
Collector
components
on both servers
and endpoints.

Preparing for Agent Client Collector implementation
Successful Agent Client Collector (ACC) implementations, especially involving large numbers
of endpoints or servers, require careful deployment. When proceeding with a large-scale ACC
deployment, follow the steps described in the planning and deployment checklists.

Agent Client Collector planning checklist
Successful Agent Client Collector (ACC) implementations, especially involving large numbers
of endpoints or servers, require careful planning. Before proceeding with a large-scale ACC
deployment, follow the steps described in the planning checklist.
Agent Client Collector planning
Step number

Action

Description

1

Define use cases, targeted devices,
and success metrics

Typical ACC use cases include
ITOM Visibility, ITAM (SAM/HAM),
ITSM (DEX), ITOM Health (HLA/
Metric Intelligence). Many customers
have success metrics targeting a
percentage of devices with successful
data collection for a use case over a 7
to 14-day window (for example, “95%
of endpoints report software usage
over a 14-day period”).

2

Identify Key Stakeholders

Involve network, security, and device/
software management teams (such
as jamf/Intune experts) as early as
possible during planning.

3

Assess ServiceNow License, Store
App and Instance Requirements

Ensure that you have all license
entitlements for your use cases.
Determine which software updates
or configuration changes to your
production and sub-production
instances are needed to support your
targeted number of devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4132


<!-- page 4133 -->
Agent Client Collector planning (continued)
Step number

4

Action

Assess Software Requirements

Description

1. Ensure that all CPU architectures
and operating systems for your
use cases are supported. If not,
determine whether non-ACC
solutions such as Service Graph
Connector or Discovery Patterns
can be used.
2. Determine whether your use
cases require elevated system
privileges on endpoints or servers
(for example, root access on Linux
for device serial number tracking).

5

Assess Network Requirements

Verify whether there are VPN, firewall,
or proxy restrictions that prevent ACC
from sending data to your ServiceNow
instance.

6

Assess Device Management
Requirements

Verify which internal solutions are
available for deploying software within
your organization on all targeted
devices. For example, Intune and
Jamf for endpoints; Chef, Puppet, or
Ansible for servers.

7

Draft ACC Solution Architecture

Work with your ServiceNow account
team to define how ACC agents send
data to the ServiceNow instance,
based on your use cases and
differences in server and endpoint
deployment techniques. Verify
whether direct connections are made
using ITOM Cloud Services or MID
Servers.

8

Define and Segment your ACC
Deployment Plan

Define evaluation, pilot, and broad
rollout stages and the number of
devices targeted in each phase. Align
each segment with risk tolerance
and business goals. ACC must be
rolled out gradually, with no more than
5,000 agents per hour.

9

Internal Compliance and Security
Review

Work with internal teams and
your stakeholders to review
your deployment plan, solution
architecture, and to obtain approvals.

Agent Client Collector deployment checklist
Successful Agent Client Collector (ACC) implementations, especially involving large numbers
of endpoints or servers, require careful deployment. When proceeding with a large-scale ACC
deployment, follow the steps described in the deployment checklist.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4133


<!-- page 4134 -->
Agent Client Collector deployment
Step number

Action

Description

1

Update production and sub-production
instances

Ensure that all instances are
updated to the most recent
store applications, family
releases, or both.

2

Assess instance capacity

Open support tickets if
additional instance capacity
is needed for the projected
number of ACC agents.

3

Deploy and configure MID Servers when
required

If connecting over 1,000
ACC agents to a single MID
Server, assess performance
and whether a load balancer
in front of a MID Server is
needed.

4

Verify whether ITOM Cloud Services
(ICS) is required and, if so, whether it is
configured

Some use cases (such as
DEX) always require ICS.

5

Download appropriate installer files from
the instance

Installer files may be in one of
the following formats:
• .rpm
• .msi
• .pkg

6

Define a deployment calendar

Share deployment groups and
group size, assignments, start/
stop, success gates, go/no-go
signers, and rollback criteria
with stakeholders.

7

Package ACC in appropriate software
management tools

Software management tools
include:
• Intune
• jamf

8

Deploy pilot and test environments on
sub-production instances using your
preferred software management tool

In test and pilot environments,
you can test multiple
operating systems and
hardware combinations (such
as server vs. laptop).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4134


<!-- page 4135 -->
Agent Client Collector deployment (continued)
Step number

9

Action

Monitor the ServiceNow instance and the
software management solution

Description

• On the instance, monitor the
performance and rate limit
violations.
• On the software
management solution,
monitor the deployment
success rate.

10

Assess data collection, install success
rate, and instance performance over the
next 2-3 business days

Workloads and data collection
can vary significantly,
depending on the time of day;
therefore, monitor deployment
success over several days.

11

Update deployment calendar and
continue with next install cohorts

After successful deployment,
continue with data collection.

Exploring Agent Client Collector Framework
The Agent Client Collector Framework (ACC-F) is a powerful solution for monitoring the
performance and health of infrastructure components by using agents installed on servers and
devices. It collects and sends critical system data to ServiceNow for analysis, enabling proactive
management and troubleshooting of Configuration Items (CIs).

Agent Client Collector Framework overview
The Agent Client Collector Framework enables organizations to monitor and manage the
health of their infrastructure through agents installed on key systems. These agents execute
predefined commands on the machines they are installed on, sending the resulting data back
®
to the ServiceNow instance via a dedicated MID Server. The framework enables seamless
management of both the Agent Client Collector and MID Server, storing event data and
performance metrics in the appropriate database. By providing insights into CI performance,
ACC-F helps organizations identify and resolve issues quickly, improving operational efficiency
and system reliability.

Agent Client Collector Framework workflow
The following illustration describes the layout and data flow within the Agent Client Collector
Framework application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4135


<!-- page 4136 -->
Collecting and distributing data with ACC-F

1. Agent Installation: The agent is installed on infrastructure components, such as servers,
devices, and network equipment. These agents are responsible for executing system
commands and gathering performance data from the host machine. ACC-F is deployed on the
®
customer's ServiceNow instance.
2. Data collection: The agent runs predefined scripts or queries (checks) on the infrastructure
components to collect various system metrics and events. This includes performance data
such as CPU usage, memory utilization, disk space, and network activity. The agent also
collects error logs and system alerts.
3. MID Server communication: The agent sends the collected data to the ServiceNow instance
through a dedicated MID Server. The MID Server acts as a secure communication bridge
between the infrastructure and the ServiceNow platform, ensuring data is transmitted reliably
and securely.
4. Data Storage: Upon receiving the data, the ServiceNow instance stores the events and
performance metrics in the relevant database. This data is then associated with the respective
Configuration Items (CIs) within the ServiceNow CMDB Configuration Management Database
(CMDB), enabling efficient tracking and reporting.
5. Data Analysis and Reporting: The collected data is analyzed within the ServiceNow instance,
where it is used for monitoring, troubleshooting, and reporting purposes. This analysis helps
identify potential issues or areas of improvement, triggering alerts or actions to resolve
problems proactively.
6. Feedback Loop: Based on the analysis, the system can trigger remediation actions, such as
running corrective scripts, reconfiguring settings, or notifying responsible teams for further
investigation. The feedback is looped back into the system, allowing for continuous monitoring
and optimization.

Agent Client Collector Framework benefits
Agent Client Collector Framework provides data to other Agent Client Collector components.

Benefit

Feature

Users

Monitor your system’s health, performance,
and availability through automated collection
of events and metrics, leveraging automated
configurations.

Enable metrics
collection and
evaluation

NOC User, Event
Management
administrator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4136


<!-- page 4137 -->
Benefit

Feature

Users

Track server inventory, software installations
and usage continuously with non-admin
access and minimal network communication.

How Agent Client
CMDB/Discovery
Collector for Visibility - administrator
Content works

Gather detailed inventory data of devices
not connected to your network or running in
isolated environments (air-gapped).

Agent Client Collector CMDB/Discovery
Framework Air
administrator
Gapped Configuration
Item Management
Solution

Minimize triage time of incidents by direct
access of live device details and interactions
to remediate.

View live CI data with ITSM user
Agent Client Collector

Stream log data into your instance to predict
Agent Client Collector Agent Client Collector
problems and solve them before they happen, Log Analytics
administrator
to minimize user impact.

Agent Client Collector Framework use case
The Agent Client Collector Framework use case demonstrates how a financial organization can
use Agent Client Collector Framework to assist in IT asset discovery.

Use case overview
A leading financial organization needed a robust IT discovery solution to maintain compliance,
secure critical systems, and manage a growing remote workforce. While the organization
initially relied on agentless discovery methods — where MID Servers interrogate systems and
populate the CMDB—it faced significant challenges. These limitations affected their ability to
monitor secure environments and remote endpoints effectively, leading to potential security and
compliance risks.

Challenges
• Restricted server access: The financial organization’s security policies restricted MID Servers
from initiating connections to core banking servers and sensitive financial databases. This
made agentless discovery insufficient for these high-security assets.
• Remote workforce visibility: The company’s growing remote workforce meant many employee
laptops and mobile devices operated outside the corporate network. Agentless discovery
couldn’t capture data from these endpoints, creating blind spots in asset tracking and
compliance monitoring.
• Regulatory compliance: Financial institutions face stringent regulations (such as PCI, DSS and
SOX) requiring detailed and auditable asset data. Agentless discovery struggled to meet these
requirements, especially for in-depth monitoring and policy enforcement.

Solutions
To address these challenges, the financial organization implemented an agent-based discovery
approach.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4137


<!-- page 4138 -->
• Agent deployment on critical servers: Agents were installed on core banking servers and
sensitive financial databases. This allowed continuous, secure monitoring without violating
access restrictions.
• Remote endpoint management: Agents deployed on remote employee laptops provided realtime data collection and monitoring, regardless of location. This ensured that all devices, even
those outside the corporate network, were included in asset discovery.
• Enhanced data collection: The agents collected detailed system information and enforced
security policies directly on each asset, ensuring compliance with regulatory standards and
improving audit readiness.

Outcomes
• Comprehensive asset visibility: The organization achieved full visibility across its IT
environment, including secure data centers and remote endpoints. This reduced blind spots
and improved decision-making for IT operations and security teams.
• Improved compliance and audit readiness: Agent-based discovery provided granular,
auditable data that met stringent regulatory requirements. This streamlined compliance
reporting and reduced the risk of regulatory penalties.
• Enhanced security posture: By enforcing policies at the endpoint level, the organization
strengthened its cybersecurity defenses, protecting sensitive financial data from potential
threats.
This approach enabled the financial institution to maintain control over its IT environment,
support its remote workforce effectively, and ensure compliance with industry regulations critical factors in safeguarding sensitive financial operations and maintaining customer trust.

Agent Client Collector architecture
The Agent Client Collector is a ServiceNow agent installed on your Windows, Linux, and macOS
devices to monitor your company’s infrastructure and installed applications.

Agent Client Collector architecture - overview
The Agent Client Collector is built on a Sensu framework and comes installed with monitoring
capabilities for servers, databases, application servers, and middleware. It also supports
extending monitoring through additional checks from the Sensu community or Nagioscompatible plugins, allowing you to customize monitoring to your needs.

Monitoring with checks and policies
The agent runs checks on the host to gather relevant data, transforming it into events or metrics.
These checks are defined within ServiceNow and are associated with monitoring policies. A
policy is a combination of the Configuration Items (CIs) being monitored and the checks that run
on those CIs. The checks are associated with policies to monitor different aspects of the system.
You can customize check instances - such as adjusting the frequency or specifying
parameters like login credentials for databases - without affecting the original check definition.
Customization of a check instance takes effect only on the check instance associated with the
policy and does not change the global check definition. This customization ensures flexibility in
monitoring various CIs under different scenarios.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4138


<!-- page 4139 -->
Data collection and transmission
After installation, the agent collects information on its host and processes. The agent pushes the
collected data to the ServiceNow instance through the MID Server. The MID Server serves as a
bridge between the agent and the ServiceNow instance, ensuring the data is transformed and
securely sent for processing.
On the instance, CIs are created for the host and applications classified from the running
processes (such as Microsoft SQL Server). Once these CIs are created, the active monitoring
policies associated with the CIs are downloaded to the agent’s MID Server, which then pushes
the policies to the agent for execution.

Data storage and use
The results from the checks are stored in the ServiceNow instance:
• CI data: CMDB for Configuration Items.
• Event data: Events table (for example, alerts triggered by threshold breaches).
This data can be leveraged for monitoring, alerting, and reporting. Integration ensures real-time
visibility into the health of your infrastructure and applications, while also enabling proactive
issue detection and remediation.

1. Define a monitoring policy in the ServiceNow instance.
2. The MID Server fetches the check instances from the instance and passes them to the agent.
3. The agent runs the checks, collects data, and sends the results back to the MID Server.
4. The MID Server sends the collected data to the ServiceNow instance, where it is stored in the
CMDB or events tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4139


<!-- page 4140 -->
The commands and their configurations that run on the Agent are called checks. The Agent
comes by default with check definitions, which determine a specific command and the default
frequency with which it runs. Checks are defined on the instance and are passed to the Agent
via the MID Server.
A policy is a combination of the CIs being monitored by the Agent Client Collector and the
checks that run on those CIs. You associate check definitions with policies. Those check
definitions are then referred to as check instances. You can customize check instances to meet
your needs. For example, customize the running interval or the parameters specific to the policy,
such as the login credentials to access a MySQL database. Customization of a check instance
takes effect only on the check instance associated with the policy, which does not affect the
original check definition or already created check instances in other policies.

Domain separation and Agent Client Collector
Domain separation is supported for Agent Client Collector (ACC). Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

How domain separation works in Agent Client Collector
Domain separation in ACC allows the isolation of data collected by the Agent Client Collector
to a particular domain. As a result, only users within that domain can access and view this data.
Similarly, agents and their associated configurations are tied to specific domains, ensuring that
operations within one domain do not affect or leak into others. This creates a more organized and
secure environment for managing multiple groups, business units, or regions.
• Data Security and Privacy: Restricting data access based on domains reduces the risk of
unauthorized access and cross-domain data leakage, ensuring that sensitive information stays
within its designated domain.
• Access Control: By isolating domains, organizations can enforce strict access controls,
allowing only designated users or teams to view or interact with the data relevant to their
domain.

Use cases for domain separation in Agent Client Collector
• Multi-department collaboration with data isolation: IT and Finance departments can
independently monitor their respective systems without data overlap. For example, if there’s an
issue with a server in the payment processing system, Finance can run specific checks in their
domain without interference from IT.
• Regulatory compliance: Domain separation helps comply with regulations like GDPR or SOX
by ensuring that only authorized personnel can access sensitive data. For instance, the
Compliance department can monitor regulatory checks while being restricted from accessing
IT infrastructure data.
• Incident management and troubleshooting: IT can troubleshoot network issues, while
Finance monitors transaction systems. Domain separation allows both departments to work
independently, ensuring faster resolution and preventing data exposure.
Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4140


<!-- page 4141 -->
Use case: Optimizing data isolation and monitoring with domain separation
Optimizing data isolation and monitoring with domain separation ensures financial institutions
protect sensitive information, improve operational efficiency, and maintain compliance by
securely segregating departmental data.

Use case overview
In a large financial institution, departments like IT, Finance, Compliance, and HR need to manage
their systems independently while keeping sensitive data protected. The Agent Client Collector
(ACC) collects data from various agents on servers and devices, and domain separation ensures
that each department's data is securely isolated. This allows departments to manage their
own monitoring, troubleshooting, and reporting, greatly reducing the risk of cross-domain
interference or unauthorized access.

Challenges without domain separation
• Data privacy and security risks: Sensitive data could be exposed to unauthorized users. For
example, IT staff could inadvertently access financial or payroll data, violating privacy policies.
• Operational inefficiency: Departments would have to share configurations, making it harder to
manage and troubleshoot issues, leading to confusion and inefficiencies.
• Compliance issues: Meeting regulatory requirements for data isolation would be difficult,
risking compliance violations.
• Increased risk of data corruption: Shared environments can lead to accidental data corruption,
as changes in one department could affect others.

Solution
• Data isolation: Each department has a dedicated domain, ensuring that data collected by
agents is accessible only within that domain.
• Independent configuration and monitoring: Departments set their own checks, policies, and
tasks without affecting others.
• Access control: Role-based access control (RBAC) restricts user access to data within their
domain. For example, IT can access only infrastructure data, while Finance can access only
financial transaction data.
• Enhanced security: Domain separation ensures that users in one department cannot access
data from other departments, reducing the risk of unauthorized access.

Outcome
• Improved data security: Sensitive data is protected, reducing unauthorized access risks.
• Operational efficiency: Departments operate independently, managing configurations and
monitoring without conflicts.
• Regulatory compliance: Easier adherence to data privacy regulations (GDPR, SOX) due to
secure data segregation.
• Reduced data corruption: Isolated environments prevent unintended cross-departmental
impacts, enhancing system stability.
Use case: Regulatory compliance in a financial services solution
A financial institution needs to ensure that its data is accessible only to the departments that
have authorization for the indicated data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4141


<!-- page 4142 -->
Challenge
The financial institution must comply with regulations that require strict data separation between
departments (such as HR, IT, or Finance).

Solution
1. Create separate domains for each department (IT, Finance, HR, Compliance, and so forth) in
the Agent Client Collector (ACC) configuration.
2. Apply access controls so that sensitive data (such as employee records and financial
transactions) is accessible only to authorized departments.
3. Use ACC health instance scans to ensure that data separation is maintained, especially when
updating or troubleshooting systems.
4. Periodically audit domain separation settings to ensure compliance with data privacy
regulations such as GDPR, SOX, or PCI-DSS.

Outcome
Compliance with legal and regulatory requirements is ensured, and sensitive data is protected
from unauthorized access.

Agent Client Collector plugins
An Agent Client Collector (ACC) plugin is a script or group of scripts that extend the Agent
Client Collector's capabilities. Plugins enhance monitoring by collecting metrics, performing
specialized checks, and triggering events based on conditions, like monitoring an application's
queue size when it reaches 60% or 80%. Plugins ensure scalable, customizable monitoring to
adapt to evolving infrastructure or application needs.

Plugin-check dependency
Plugins are tightly integrated with checks in the Agent Client Collector Framework. A
dependency is created between the plugin and the check to ensure that the plugin is executed
alongside the associated check.
• Plugin Dependency: A plugin can be associated with one or more checks, and vice versa,
where checks can depend on multiple plugins.
• Execution: Plugins and checks run on the same agent, working in unison to gather data,
perform specialized tasks, or trigger necessary events

Plugin-agent compatibility
ACC agents must be within two store releases (N-2) of your installed Agent Client Collector
Framework (ACC-F) version. Each release includes security and performance improvements.
ACC-F release notes highlight any changes or critical fixes requiring immediate action.

Creating and managing plugins
You can create Agent Client Collector plugins as needed to customize the monitoring to your
specific environment. These plugins are typically formatted as tar.gz files, which contain the
scripts that define the plugin's functionality.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4142


<!-- page 4143 -->
• Plugin creation: Custom plugins are developed and packaged into tar.gz files.
• Integration with checks: Once created, the plugin is integrated with checks by establishing the
appropriate dependencies, ensuring that the plugin and check run together.
• Customization: Plugins can be customized to meet the specific requirements of your
monitoring needs, whether it's adding more detailed metrics, checking system thresholds, or
generating custom events.

Pre-installed plugins
Agent Client Collector Framework includes a set of pre-installed plugins that provide basic
functionalities for common monitoring tasks, such as gathering standard metrics or monitoring
key system parameters. For more detailed information on the plugins that come with the Agent
Client Collector as part of ITOM AIOps, see Plugins or applications installed with ITOM AIOps.

Secure parameters in the Agent Client Collector
Secure parameters in the Agent Client Collector (ACC) refers to securely passing sensitive data,
such as user names, passwords, and API keys, during check execution, without exposing the
sensitive data in the command line. Parameters are passed to the script through standard input
(STDIN), hiding them from logs or any process that might capture command-line arguments.
Depending on the coding language in use, implementation of secure parameters may vary. For
example, in Linux’s Bash, the read command (read <variable_name>) is used, populating
<variable_name> with the value entered in STDIN.

Secure parameters data flow
1. Create secure parameters: Define secure parameters in the instance, referencing credentials
that need protection (such as usernames and passwords). For details, see Create secure
parameters for a check.
2. Configure secure parameters: Set an Order value to determine the sequence in which
credentials are passed to the standard input.
3. Pass credentials: Transfer credentials from the MID Server to the agent, based on the check to
which they are assigned. When the check executes, the agent passes the secured parameters
to the script using STDIN, in the order specified by the Order value configured in the instance.
4. Execute the check: Upon execution, the agents send the secure parameters to the script via
STDIN, following the specified order.
5. Run the script: The script retrieves and uses the secure parameters from STDIN to execute with
the secured credentials.

Secure parameters benefits
• Enhanced security: Passing sensitive data like usernames and passwords directly in the
command line is a security threat, as they could be exposed to unauthorized access or
malicious users. Secure parameters ensure that such data is securely handled and hidden
from view.
• Prevent data exposure: When using secure parameters, the credentials are not written in plain
text in the command line, avoiding the risk of them being captured in logs or process listings.
• Data flow control: Secure parameters enable controlled and customizable passing of
credentials to the script, ensuring the correct handling and timing of sensitive information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4143


<!-- page 4144 -->
Agent Client Collector logs
Agent Client Collector (ACC) logs play a critical role in monitoring the activity and performance of
the agent. Logs offer valuable feedback that helps identify potential issues, especially when the
agent's performance is suboptimal. By providing insights into areas of concern, these logs are
essential for troubleshooting and resolving issues, ultimately improving the overall effectiveness
of the agent.
Agent Client Collector (ACC) logs offer key benefits for monitoring and maintaining agent
performance.
• Configurable severity levels: Agent Client Collector logs enables you to configure the severity
levels for monitoring, including Error, Debug, and Info. This flexibility helps focus on
specific areas, such as tracking errors or diagnosing issues.
• Log retention management: You can set up log retention policies, determining how often to
delete logs to preserve system resources. This ensures that the logs remain manageable and
do not negatively impact system performance.
• Performance issue identification: Logs provide valuable insights to identify areas where the
agent may be experiencing issues, helping to improve agent performance.
For details on locating and managing Agent Client Collector logs, see View the Agent Client
Collector logs.

Operating system and application monitoring using Agent Client Collector
IT Operations Management (ITOM) monitoring for the Agent Client Collector is installed on
®
the ServiceNow instance. It monitors the specific operating system and applications that are
installed on the host machine.
The Agent Client Collector monitors the following applications.
ACC Applications
Operating System/Application

Configuration description

Windows

No special configuration required.

Linux

No special configuration required.

Apache HTTP Server

See Configure Agent Client Collector Apache
HTTP server monitoring.

Apache Tomcat

See Configure Agent Client Collector Apache
Tomcat monitoring.

IBM WebSphere

No special configuration required. Accessed
through JMX. Default management port is
9100.

IIS

No special configuration required.

JBoss/WildFly

No special configuration required. Default
port is 9990. For troubleshooting information,
see Monitoring performance
in the Red Hat
customer portal.

Microsoft SQL Server

No special configuration required. Ensure
that the instance name is populated in the
CI record, either by running Discovery or by
manually populating the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4144


<!-- page 4145 -->
ACC Applications (continued)
Operating System/Application

Configuration description

My SQL

No special configuration required. Default port
is 3306.

Oracle Database

No special configuration required. Ensure that
the SID and Oracle Home path are populated
in the CI record, either by running Discovery
or by manually populating the record. Default
port is 1521.

Oracle WebLogic

No special configuration required. Accessed
via a JMX port. Default port is 7001. Ensure
that the WebLogic home (wls_home)
parameter is populated in the CI record,
either by running Discovery or by manually
populating the record.
Ensure that the user running the agent has
sufficient permissions to access the JAR files
in the Weblogic installation directories.

When using the Microsoft SQL Server, Oracle Database, and Oracle WebLogic applications,
you must run Discovery to configure CI fields on the instance. Ensure that the Discovery plugin
(com.snc.discovery) is installed to enable running Discovery.
When the application is running on a port other than the default, ensure that you update the port
number in the check instance's parameters.
Configure Agent Client Collector Apache HTTP server monitoring
To configure the Agent Client Collector to perform Apache HTTP server monitoring, set the
following configurations in the Apache HTTP server application.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. On the Apache HTTP Server host, navigate to one of the following locations:
◦ In a Linux environment:
▪ /etc/httpd
▪ /etc/httpd/conf
▪ /etc/apache2
▪ /etc/apache2/conf
◦ In a Windows environment: The conf directory in the Apache installation location.
2. Locate either the httpd.conf or apache2.conf file.
3. Ensure that the following line is uncommented:
LoadModule status_module modules/mod_status.so
4. Configure the check instance port to be identical to the port on which Apache is listening
(default for both is 80).
5. To ensure a secure connection, configure SSL, as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4145


<!-- page 4146 -->
a. Ensure that the following line is uncommented:
LoadModule ssl_module modules/mod_ssl.so
b. Activate the ssl_secure_connection parameter in the check instance.
c. Configure the check instance port to be identical to the port on which Apache is listening to
secure connections (default is 443).
Related topics
Apache Module
Apache SLL/TLS Strong Encryption: How-to
Configure Agent Client Collector Apache Tomcat monitoring
To configure the Agent Client Collector to perform Apache Tomcat monitoring, set the following
configurations in the Apache Tomcat application.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Open a management JMX port when starting the server:
a. In a Linux environment:
i. In bin directory in the Tomcat home directory, create a setenv.sh file.
ii. Ensure that the file contains the following:
export CATALINA_OPTS=$CATALINA_OPTS"
-Dcom.sun.management.jmxremote=true
-Dcom.sun.management.jmxremote.port={PORT NUMBER}
-Dcom.sun.management.jmxremote.rmi.port={PORT NUMBER}
-Dcom.sun.management.jmxremote.ssl=false
-Dcom.sun.management.jmxremote.authenticate=false
-Djava.rmi.server.hostname=127.0.0.1"
iii. Run chmod 755 setenv.sh to give the setenv.sh file executable permissions.
b. In a Windows environment:
i. In bin directory in the Tomcat home directory, create a setenv.bat file.
ii. Ensure that the file contains the following:
@echo=off
if defined CATALINA_OPTS (
set CATALINA_OPTS=%CATALINA_OPTS% Dcom.sun.management.jmxremote=true
) else (
set CATALINA_OPTS=Dcom.sun.management.jmxremote=true
)
set CATALINA_OPTS=%CATALINA_OPTS% Dcom.sun.management.jmxremote.port={PORT NUMBER}
set CATALINA_OPTS=%CATALINA_OPTS% © 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4146


<!-- page 4147 -->
Dcom.sun.management.jmxremote.rmi.port={PORT NUMBER}
set CATALINA_OPTS=%CATALINA_OPTS% Dcom.sun.management.jmxremote.authenticate=false
set CATALINA_OPTS=%CATALINA_OPTS% Dcom.sun.management.jmxremote.ssl=false
set CATALINA_OPTS=%CATALINA_OPTS% Djava.rmi.server.hostname=127.0.0.1
{PORT NUMBER} represents the number of the port you open for JMX RMI monitoring. The
default value created by the check definition is 9000.
2. Restart Tomcat.
a. In a Linux environment: Run the shutdown.sh script, followed by the startup.sh script.
b. In a Windows environment: Run the shutdown.bat script, followed by the
startup.bat script.
Monitor HTTP points
Use the Monitoring HTTP Entry Points and Monitoring HTTP Entry Points Metrics policies that
come with the ITOM Monitoring scoped app to monitor http and https entry points and entry
points metrics. You can customize these policies as needed, or you can configure a new policy to
monitor service entry points.

Before you begin

Role required: agent_client_collector_admin

About this task

An entry point is the access point for a service. In an Agent Client Collector policy, you specify
the service you want to monitor, and the policy monitors the service's entry points.

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Select either the Monitoring HTTP Entry Points or Monitoring HTTP Entry Points Metrics
policy.
The relevant Policy - Monitoring HTTP Entry Points page opens.
3. On the Monitored CIs tab:
a. In the Table field, ensure that the sn_itmon_http_entrypoint database view table is selected
for the Agent Client Collector to retrieve http and https entry points for monitoring.
b. In the Filter section, configure a filter for the services and entry points to be taken from the
sn_itmon_http_entrypoint database view table.
4. Click the Proxy Settings tab and select the type of proxy you want to enable for the entry point
monitoring.
◦ Single proxy agent: Select to enable monitoring a single agent, which you select in the
Proxy agent field that appears after selecting this option.
◦ Multi-proxy agents by filter: Select to enable monitoring multiple agents. Configure a filter
in the Proxy filter section that appears after selecting this option to monitor only the agents
that match the filter's conditions.
◦ Script based proxy: Select to enable monitoring an agent based on a script.
You must configure a proxy to run an HTTP policy.
5. Click the Checks tab and in the Filter checks by groups field, select HTTP to display all of the
http checks in the Available cell.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4147


<!-- page 4148 -->
6. Select the relevant checks and click the right arrow button to move them to the Selected cell.
7. Select the Active check box at the top of the page to activate the policy.
8. Click Update.
The policy monitors the entry points specified by the policy's configurations.

Agent-based data flow
The Agent Client Collector gathers information on the health of the CI that the Agent is installed
on, and the applications that run on the hosts. The Agent runs several checks and pushes the
checks' results to the MID Server, where they are converted into events or metrics.
Events are stored in the instance's Events database, while metrics are stored in the Metrics
database.
The following image displays the data flow from the Agent Client Collector to the instance.

The numbered entries in the flow indicate the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4148


<!-- page 4149 -->
1. Specified checks run on the agent. Data, including metrics, is pushed to the MID Server.
2. The MID Server analyzes the data and classifies the results as events or metrics. MID Server
uses REST API to send the results to the instance.
3. The instance receives the data and stores it in the relevant database.

Agent Client Collector Monitoring use case
The Agent Client Collector Monitoring use case demonstrates how organizations can achieve
unified monitoring across hybrid IT environments.

Use case overview
Many enterprises today operate in a hybrid IT environment, where some resources are hosted
on-premises, while others reside in the cloud. This complexity often leads to fragmented
monitoring, making it difficult to obtain a unified view of IT service health. Agent Client Collector
Monitoring (ACC-M) bridges this gap by providing a comprehensive and converged picture
of the organization's services, regardless of where they’re hosted. ACC-M is a lightweight
monitoring solution that integrates seamlessly into its existing ServiceNow platform.

Challenge
An IT operations team struggled to cohesively monitor service health, due to the disparate
nature of its infrastructure. On-premises resources, such as databases and ERP systems, were
monitored using traditional methods, while cloud services had separate monitoring tools. This
fragmentation resulted in:
• A lack of real-time visibility into overall service health.
• Delayed issue identification and troubleshooting.
• Multiple monitoring dashboards, increasing complexity for the IT team.
• Difficulty in correlating on-premises and cloud alerts, leading to inefficiencies.

Solution
ACC-M enables real-time, unified visibility across a hybrid IT environment. It improves
operational efficiency, reduces downtime, and creates a more resilient IT infrastructure capable
of supporting both on-premises and cloud-based services.
ACC-M streamlines the monitoring of on-premises and cloud resources into a single, unified
display by offering the following solutions:
Solutions implemented by ACC-M
Solution

Unified monitoring across
environments

Description

Outcome

ACC-M collects health
metrics, performance data,
and alert statuses from both
on-premises and cloud
infrastructure components.
ACC-M uses lightweight
agents installed on servers,
VMs, and cloud resources
to gather relevant data,
providing:

Improved response:
With a unified view of all
resources, the IT operations
team can quickly identify
where issues are occurring
and prioritize them based
on overall service impact,
reducing their mean-time-toresolution (MTTR).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4149


<!-- page 4150 -->
Solutions implemented by ACC-M (continued)
Solution

Description

Outcome

• CPU and memory utilization
for on-premises servers.
• Network performance
metrics.
• Availability and
performance metrics for
cloud services, such as
databases and storage.
Converged health view

ACC-M provides the
company’s IT team with a
converged health dashboard
within the ServiceNow
platform, providing:
• A unified view of both
on-premises and cloud
resources.

Proactive monitoring and
maintenance:
ACC-M’s real-time health
metrics enable proactive
monitoring of services,
avoiding outages by
identifying and resolving
issues before they escalate.

• Real-time updates on
service health, ensuring
that hybrid services are
monitored together and not
in isolation.
• Integrated insights into
service dependencies,
correlating incidents that
impact both on-premises
and cloud systems.
Hybrid Alerting and
Automation

ACC-M enables setting up
automated alerts for both
on-premises and cloud
environments, streamlining
their incident response
processes. When a service
in the hybrid environment
experiences an issue, ACC-M
does the following:

Operational efficiency:
The convergence of
on-premises and cloud
monitoring into a single
platform eliminates the need
for multiple monitoring tools.
This reduces complexity and
frees IT resources to focus on
more strategic tasks.

• Automatically generates
alerts with enriched context,
identifying whether the
issue originated from the
on-premises infrastructure
or cloud services.
• Triggers automated
workflows for remediation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4150


<!-- page 4151 -->
Solutions implemented by ACC-M (continued)
Solution

Description

Outcome

based on the alert
type, reducing manual
intervention.
Service Health Visualization

Using the ServiceNow Service
Map enables visualizing
how services are performing
across the entire hybrid
infrastructure. ACC-M feeds
this with continuous, real-time
data, helping the IT team do
the following:

Enhanced Business
Continuity:
With a full view of the hybrid
infrastructure health, IT can
ensure that critical business
services are up and running,
improving overall business
continuity.

• Track dependencies
between on-premises and
cloud services.
• Identify potential points of
failure before they impact
the business.
• See at a glance which
services are healthy,
degraded, or at risk,
wherever they’re hosted.

Windows event log monitoring
Windows event log monitoring tracks, analyzes, and manages event logs generated by various
Windows OS components.
The Windows OS Events policy includes the os.windows.check-event-log check, which measures
the Windows event log against thresholds specified in the check's parameters. For details on the
configurable check parameters, see Windows event log filter parameters.

How Agent Client Collector for Visibility - Content works
Agent Client Collector for Visibility - Content (ACC-VC) requires installation of ServiceNow Agent
Client Collector (ACC) on the target host. ACC is a derivative of Sensu-Go, an open-source
software.

ACC-VC use cases
ACC-VC applies Checks and Policies to schedule and collect host data. ACC-VC is triggered in
the following cases:
• Periodic scheduling: A policy-based approach where Discovery is triggered on a periodic
basis.
• On CI delete: When the computer or server CI record is deleted.
• MID Server cycle: When the MID Server goes down and comes back up.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4151


