# Zurich IT Operations Management — Agent Client Collector deployment - shared between servers and endpoints

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4278–4329 of 4823

Sections: Agent Client Collector deployment - shared between servers and endpoints (p4278)

---

<!-- page 4278 -->
Note: Choosing an application scope is possible only when selecting All patterns in
the Pattern Selection section.
4. Select Generate Allowlist.
5. Select Copy to copy the generated allow list.
6. Append the copied allow list into the existing check-allow-list.json allow list on the
agent.
The patterns specified in the allow list are permitted to run on the agent.

Note: The pattern allow list generator does not add an entry for commands nested
under EVAL() in the pattern steps.

Agent Client Collector deployment - shared between servers and
endpoints
When deploying the Agent Client Collector, there are components which are shared between
servers and endpoints.

Checks and policies
A check is a combination of a command and its configuration. The check is executed on the
Agent Client Collector's devices to gather data from those devices.

Checks
Checks are provided with the base system, and their commands execute scripts which provide
monitoring data for your operating systems and applications. A check's default name indicates
what is being monitored and measured, the entity, and the monitoring data. For example, a
check named os.linux.check-system-cpu checks the CPU data on a Linux system. The
identified command in the check runs on the monitored device, providing an output and status.
Each individual check is referred to as a check definition. After being associated with policies,
check definitions are then referred to as check instances.
You can customize check instances to meet your needs. For example, customize the running
interval or the parameters specific to the policy, such as the login credentials to access a MySQL
database. Customization of a check instance takes effect only on the check instance associated
with the policy, which does not affect the original check definition or already created check
instances in other policies.
The following check types are provided with the Event Management base system:
• Event: The check's result is transformed into an Event Management event.
• Metric: The values from the check result are transformed to metrics.
For details on the Agent Client Collector Framework default checks, see Agent Client Collector
Framework default checks.
For details on the Agent Client Collector Monitoring default checks and policies, see Agent
Client Collector Monitoring default checks and policies.
For details on the Agent Client Collector for Visibility - Content default checks and policies, see
Agent Client Collector for Visibility - Content default checks and policies.
If checks are not running on the agent's devices, your agent may be in CPU protection mode.
CPU protection mode is activated when a device's CPU consumption is too high. To view a list
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4278


<!-- page 4279 -->
of all disabled checks related to the agent, navigate to the agent record on the Agent Client
Collectors page (All > Agent Client Collector > Agents), select an agent and select the Disabled
Checks tab at the bottom of the page.
In the acc.yml configuration file, you can modify the CPU protection mode thresholds which
determine when a check is disabled. To re-enable a check, select the check and select Reenable disabled check in the Actions on selected rows... drop-down. For details on the CPU
protection mode thresholds, see Agent Client Collector CPU protection thresholds. For details on
manually turning off data collection, see Pause Agent Client Collector data collection.
Configure the cpu_protection_behavior property to determine whether all checks enter CPU
protection mode, or only the check that crosses the configured cpu_percentage_limit value with
the highest CPU usage within the monitoring interval. For details, see Agent Client Collector CPU
protection thresholds.
A check is marked as Stale if it is no longer associated with a policy. To remove a stale check,
renable it by selecting the box next to the check and selecting Re-enable disabled checks from
the Actions on selected rows... cell.
In the base system, the event's exit status indicates its severity, as follows:
• 0 = OK
• 1 = WARNING
• 2 = CRITICAL
You can add additional severities (such as MAJOR and MINOR) by running a customized script.
The following exit statues indicate these severities:
• 13 = MAJOR
• 14 = MINOR

Privileges for running check commands
If the servicenow base system user does not have privileges to run specific check commands,
do the following for the relevant operating systems:
• In a Linux system: Enable the servicenow user to run the command with sudo permissions.
Ensure that the following sudo configuration requirements are met:
◦ Disable tty and password requirements
◦ Preserve all environment variables
◦ Support dynamic PATH for executing commands
Example configuration in the /etc/sudoers file:
Cmnd_Alias ACC_F = /usr/sbin/dmidecode -s
baseboard-serial-number, /usr/sbin/dmidecode -s
chassis-serial-number, /usr/sbin/dmidecode -s
system-serial-number, /usr/sbin/dmidecode -s
system-uuid, /usr/sbin/ss -tanp
servicenow ALL=(root)
SETENV: /
var/cache/servicenow/agent-client-collector/osquery/bin/osque
ryi *, ACC_F
Defaults:servicenow !requiretty
Defaults exempt_group += servicenow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4279


<!-- page 4280 -->
Note: Command paths may vary. Consult the sudoers manual for special
considerations.
◦ The SETENV: string enables the servicenow user to preserve environment variables.
◦ The !requiretty string disables tty.
◦ Adding the servicenow user to the exempt_group bypasses password requirements
and enables dynamic PATH for executing sudo commands.
Ensure that you configure the must_sudo check parameter with a value of true in the
check command parameters section of the check definition.
• In a macOS system: Ensure that the user running the agent service belongs to a user group
with privileges to query all tcp connections on the host.
• In a Windows system: Using Windows User Management, add the servicenow user to the
groups with the relevant privileges, enabling the user to execute the required commands.

Policies
A policy is a combination of the CIs being monitored by the Agent Client Collector and the check
definitions that run on those CIs.
To enable a single policy to support multiple credentials, assign a credential alias to the policy.
For example, if you have MySQL servers for both Linux and Windows with different credentials,
you must create separate policies for each credential type. However, if you use a credential alias,
you can assign a single policy to the alias. The agent then matches the relevant credential to
the application being monitored. For details on credential aliases, see Create a Connection and
Credential alias .
Alerts generated by policies with an event-type check are automatically closed when the CI
monitoring stops due to any of the following:
• De-activating the policy
• De-activating the check that caused the alert
• Deleting the check from the policy
• Deleting the policy
• Modifying the policy filter that determines the monitored CIs

Agent Client Collector configuration data files
Configuration data files store dynamic instance data, such as virtual machine details, that check
definitions use during execution. This ensures that checks are executed with up-to-date and
accurate information about the instance being monitored.

Configuration data files structure
• Attachment based: A configuration data file contains a single attachment with instance data,
such as Azure VM details.
• Synchronization: When an attachment is added or deleted, the data file is synchronized across
all MID Servers configured with the Agent Client Collector. If a file or its attachment is deleted,
it is also removed from the MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4280


<!-- page 4281 -->
• Access point: The configuration data files can be accessed on the MID Server at \static
\acc_config.
• Size: Configuration data files cannot be larger than 10MB.

Check definitions used by configuration data files
• Check definition: Individual check entries are referred to as check definitions. For instance,
os.linux.check-system-cpu checks the CPU on Linux systems.
• Accessing check definitions: Check definitions can be accessed from All > Agent Client
Collector > Configuration > Check Definitions.

File association
• Download process: When a check executes, the agent downloads the configuration data file
associated with that check.
• Domain-Specific Synchronization: Files are synchronized only with agents within the same
domain, ensuring secure and localized data handling.

Working with configuration data files
Configuration data files serve as a repository for dynamic instance data that is used by check
definitions when they are executed. These files ensure that checks are run with accurate, realtime information about the systems or instances being monitored. Configuration data files work
as follows:
• Store instance-specific data: Configuration data files store dynamic instance data, such as
virtual machine details, server configurations, and other system-specific information. This data
is used by check definitions during execution to ensure the latest information is available.
• Create check definitions: A check definition is created with an associated configuration data
file. For example, a check definition monitoring system CPU data may include configuration
data detailing the system's environment, ensuring checks use accurate and relevant instance
data.
• Synchronize with MID Servers: When a configuration data file is added or updated, it
synchronizes across all MID Servers communicating with the Agent Client Collector. If the file
or attachment is deleted, it is also removed from the MID Servers, ensuring consistency and
up-to-date data availability.
• Execute with updated data: During execution, the Agent Client Collector agent downloads the
relevant configuration data file from the MID Server. The agent uses this data to execute the
check, ensuring access to the most current and accurate instance information.
• Store and access data: Configuration data files are stored on the MID Server in the static/
cache/config-files directory. This storage location facilitates easy access and
management, ensuring the necessary data for checks is always available when needed.

Agent Client Collector API
Use the Agent Client Collector (ACC) API to create a flow that executes an osquery command
on agents and processes the results. By leveraging the ACC API, you can automate the querying
of agent data and streamline the processing of results, making it easier to monitor and manage
system performance.
The system supports osquery 5.7.0, providing compatibility with a range of queries for efficient
data collection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4281


<!-- page 4282 -->
The ACC API enables seamless integration and automation for executing queries and managing
agents. Here's how it works:
1. Execute osquery commands: You can use the ACC API to send osquery commands to agents.
These commands collect a wide range of system and performance data from the target
machines.
2. Process results: After the osquery command is executed on the agents, the ACC API
processes the results and returns the necessary data. This data can be used for monitoring,
troubleshooting, or reporting purposes.
3. Support for osquery 5.7.0: The ACC API is compatible with osquery 5.7.0, which ensures it
supports the latest features and improvements, enabling you to leverage advanced query
capabilities for enhanced data collection.
4. Enable API features: To use the ACC API, enable the agent and policy APIs. This allows you to
configure and manage various aspects of your agents, including their communication, data
collection, and query execution.
For details on agent APIs, see Enable agent APIs

.

For details on enabling policy APIs, see Enable policy APIs

.

Agent Client Collector health instance scan suite
The Agent Client Collector (ACC) health instance scan suite consists of checks that detect
anomalies and other issues that might occur on your instance. These checks are designed to
ensure the overall health and performance of the ACC, proactively identifying potential problems
before they impact system operations.
The ACC health instance scan suite consists of the following checks.
ACC Health Instance Scan Suite checks
Check name

Description

ACC duplicate agent for host CI

Identifies configuration items (CIs) associated
with multiple active agents, indicating
potential issues with CI identification.
Requires importing the
global.ACCInstanceScanUtil for
instances associated with the Xanadu release
or earlier.

ACC Error Framework

Verifies whether the ACCErrorManager has
been created, which enables associating
errors to the relevant ACC scoped app.
Detects whether an automation source
application, automation error category, and
automation error code exist for the Agent
Client Collector Framework application.

ACC find modified script includes

Detects modified Agent Client Collector
Framework script includes that might have
been altered post-upgrade.
Requires importing the
global.ACCInstanceScanUtil for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4282


<!-- page 4283 -->
ACC Health Instance Scan Suite checks (continued)
Check name

Description

instances associated with the Xanadu release
or earlier.
ACC skipped upgrades

Reports upgrades that were skipped since the
last upgrade.
Requires importing the
global.ACCInstanceScanUtil for
instances associated with the Xanadu release
or earlier.

ACC verify plugin folder hierarchy

Validates the correct creation of ACC Plugin
folders and flags duplicate folders that may
cause synchronization issues.

ACC active policies count

Counts the number of active published
policies, and if the number is above 300,
recommends policy consolidation to improve
performance.

ACC agent to MID Connection

Verifies the connection of 1000 agents per 1GB Java Virtual Machine (JVM) to ensure the
MID Server isn't overloaded. If overloaded,
configure additional JVMs or redistribute
agents to other MID Servers.

ACC verify sn_agent CI counts match

Ensures the records in the
sn_agent_ci_extended_info and
sn_agent_cmdb_ci_agent tables match,
confirming data consistency for agents.

For details on importing the global.ACCInstanceScanUtil script include, see the Script
Include ACCInstanceScanUtil [KB1630132]
article in the Now Support Knowledge Base.
For details on instance scans, see Instance Scan

.

For details on executing the Agent Client Collector health instance scan suite, see Execute a
suite scan .

Agent Client Collector certificates
Agent Client Collector certificates verify the authenticity of your agents, servers, and users. Using
Agent Client Collector certificates ensures the safety of your environment.
Manually refresh Agent Client Collector certificates
Pull self-signed certificates from the ServiceNow install server, instead of waiting for the
scheduled MID Server synchronization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4283


<!-- page 4284 -->
Before you begin
• Ensure that the self-signed certificate is placed in a .zip file on the MID Server in the
following location: agent\static\cert
• Ensure that the certificate authority is part of the agent host's truststore, as the certificate chain
is validated before the customer plugin signature.
• Role required: agent_client_collector_admin

About this task

The MID Server checks for updates once each day, or after being restarted.

Procedure
1. Navigate to All > Agent Client Collector > MID Servers.
2. Select a MID Server.
3. In the Related Links section, select Trigger ACC certificate sync.
4. Restart the MID Server.

Result

When an agent fails to perform a certificate check, the agent synchronizes certificates available
on the MID Server. Synchronization is carried out for certificates on the ServiceNow install server
and the self-signed certificates placed in the .zip file on the MID Server's agent\static
\cert folder. Certificates are downloaded by the Agent Client Collector if the agent fails to
validate a check definition's associated plugin assets.
Enable OpenSSL secure signing for plugins
Create a self-signed certificate for an Agent Client Collector plugin. The following procedure
gives an example of how to create an x509 certificate using OpenSSL. For other certificate types,
consult OpenSSL documentation.

Before you begin
• Ensure that the verify-plugin-signature property is set to True in the agent's
acc.yml file to verify plugin signing.
• Ensure OpenSSL is installed on your system.
Role required: agent_client_collector_admin

About this task

Enabling an OpenSSL secure signing mechanism for plugins works with an Agent Client
Collector installed on a Linux system.

Procedure
1. Create a plugin file with a tar.gz extension.
For more information, see Create and edit Agent Client Collector plugins.
2. Generate your own secure self-certificate for the plugin file.
a. Create an x509 certificate.
openssl req -nodes -x509 -sha256 -newkey rsa:2048 -keyout
"sign.key" -out "sign.crt" -days 365 -subj
"/C=<CountryName>/ST=<StateOrProvinceName>/L=<Locality>/O=<O
rganization>/OU=<OrganizationalUnit>/CN=sign"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4284


<!-- page 4285 -->
b. Sign the plugin file.
openssl dgst -sha256 -sign "sign.key" -out sign.txt.sha256
<plugin-name>.tar.gz
Alternatively, you can sign plugins using a certificate authority. When doing so, assign the
certificate .pem format and place it in the agent's cert directory.
c. Verify that the signature is configured correctly.
openssl dgst -sha256 -verify <(openssl x509 -in
"sign.crt" -pubkey -noout) -signature sign.txt.sha256
<plugin-name>.tar.gz
If the file is valid, the output is Verified OK.
d. Encode the signature's certificate with base64 coding.
base64 sign.txt.sha256 > sign.txt.sha256_encode64.sig
A sign.txt.sha256_encode64.sig file is created.
3. Run the following commands to create a new directory and insert the tar.gz and
sign.txt.sha256_encode64.sig files.
a. mkdir signed-plugin
b. mv <plugin-name>.tar.gz signed-plugin
c. mv sign.txt.sha256_encode64.sig signed-plugin
d. cd signed-plugin
4. Create another tar.gz file by running the same commands as you ran for the first tar.gz
file.
a. tar -C . -zcvf ../<plugin-name>.tar.gz *
b. cd..

Note: Save the new file as ../<plugin-name>.tar.gz to avoid naming
collisions with the original <plugin-name>.tar.gz file that exists in the current
directory.
5. Upload the new tar.gz plugin file to the instance.
6. Set the plugin file as active=true.
7. Place the sign.crt file in the agent's cert directory, which is located in the config folder.
8. In the acc.yml file, set verify-plugin-signature to true.
Add a self-signed certificate to your operating system's truststore
Add a self-signed certificate to the truststore of your operating system (OS). By adding a
certificate to the truststore, you can verify that the certificate is authentic and that your
connections are secure.

About this task

The procedure for adding a certificate to a truststore depends on the host's OS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4285


<!-- page 4286 -->
Adding a self-signed certificate to the truststore instructs the operating system to trust
the certificate when it’s establishing secure connections. This way, the applications can
communicate securely with services that use the self-signed certificate. If you add a certificate
that isn't trustworthy, you might compromise your system's security.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. On a Windows OS:
a. Press the Windows button + R on your keyboard.
The Run field opens.
b. Enter the string certmgr.msc and press Enter.
The Certificate Manager opens.
c. Expand the Trusted Root Certification Authorities directory.
d. Select and hold (or right-click) Certificates.
e. Select All tasks > Import.
The Certificate Import Wizard opens.
f. Follow the steps in the Certificate Import Wizard.
For details, see Import a self-signed certificate.
Alternatively, you can add a Windows certificate using PowerShell by running the following
command as an administrator:
Import-Certificate -FilePath <path to your certificate file>
-CertStoreLocation Cert:\LocalMachine\Root
2. On a macOS:
a. Import the certificate into a keychain by running the following command in a terminal
window:
bash
code:
sudo security add-trusted-cert -d -r trustRoot -k
"/Library/Keychains/System.keychain" <path to your
certificate file>
b. Enter the administrator password when prompted.
c. Open the Keychain Access application to verify that the certificate has been added.
A successfully added certificate is labeled as, This certificate is marked as trusted
for...plugin verification.
3. On a Linux OS:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4286


<!-- page 4287 -->
a. Prepare the self-signed certificate file as a Privacy Enhanced Mail (PEM) file.
b. Copy the certificate to the Certificate Authority (CA) directory, which is the directory where
the certificates are stored.
▪ On a Debian/Ubuntu-based system, run the following command:
sudo cp <path to certificate
file> /usr/local/share/ca-certificates/
▪ On a Red Hat/Fedora-based system, run the following command:
sudo cp <path to certificate
file> /etc/pki/ca-trust/source/anchors
c. Update the CA certificates:
▪ On a Debian/Ubuntu-based system, run the following command:
update-ca-certificates
The command reads the certificate bundle in the /usr/local/share/cacertificates directory, updates the certificate bundle, and stores it in /ext/ssl/
certs/ca-certificates.crt.
▪ On a Red Hat/Fedora-based system, run the following command:
sudo update-ca-trust extract

Result

Your self-signed certificate is on the OS that you are working with.
Import a self-signed certificate
Import a self-signed certificate in a Windows system by using the Certificate Import Wizard. The
Certificate Import Wizard is required to complete the self-signed certificate import process on a
Windows Operating System (OS).

Before you begin

Ensure that you have followed the procedure for importing a self-signed certificate in a Windows
system, as described in Add a self-signed certificate to your operating system's truststore.
Role required: agent_client_collector_admin

Procedure
1. On the first page of the wizard, select Next.
The truststore is typically located in the Trusted Root Certification Authorities directory of the
certificate manager.
2. Browse to the location where you have the self-signed certificate file.
The file is typically located in the agent's config/cert directory.
3. Select and hold (or right-click) the certificate file and select Install certificate.
4. Select Next.
5. Select the option to place the certificate in the Trusted Root Certification Authorities truststore.
6. Select Next and Finish to complete the wizard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4287


<!-- page 4288 -->
Result

The certificate is imported into the truststore.

What to do next

If a security warning appears, select Confirm to confirm the import.
Revoke Agent Client Collector certificates
Stop communication between the agent and ITOM cloud services by removing an Agent Client
Collector certificate. For example, there might be a security breach due to which you want to stop
communication by revoking the agent's certificate.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select the agent for which you want to revoke the certificate.
3. Select the Revoke Agent Certificate button.
4. Select the reason for certificate revocation.
For a list and explanation of the available revocation reasons, see Agent Client Collector
certificate revocation reasons.
5. Select OK.
The agent's certificate is revoked and the ITOM cloud services layer has its certificate
revocation list (CRL) updated.

Result

Communication between the agent and ITOM cloud services is stopped.
Related topics
Add a self-signed certificate to your operating system's truststore
Agent certificate rotation
The Agent Client Collector certificate is valid for two years and must be rotated before it expires
to avoid issues with agent connectivity. When expiration is approaching, the agent initiates a
certificate rotation request.
When an Agent Client Collector's certificate expiration is approaching, system properties verify
that a valid certificate is in place when the existing certificate expires.
• certificate-rotation-days-out: Indicates the number of days before certificate
expiration that an agent attempts to rotate its certificate. Configured in the acc.yml
configuration file. Default = 28.
• sn_agent.certificate_rotation_days_out: Indicates the number of days before
certificate expiration that the system accepts a certificate rotation request for a specific agent.
Configured on the System Properties page (All > System Properties > All Properties). Default
= 28.
Related topics
View the Agent Client Collector configuration file for an agent
Configuration file options

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4288


<!-- page 4289 -->
Run Certificate Discovery via Agent Client Collector for Visibility - Content
Discover TLS/SSL certificates used by ports running on the agent's server. The Certificate
Inventory and Management application uses this information to manage TLS/SSL certificates.

Before you begin

Verify that the latest version of Agent Client Collector for Visibility - Content (ACC-VC) is installed.
Verify that the latest version of Certificate Inventory and Management is installed.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Enable the TLS SSL Certificate Capture policy.
3. Navigate to All > System properties > All properties.
4. To discover certificates on specific ports:
a. Locate and select the sn_acc_vis_content.tls_ssl_scanner_ports property.
b. Enter a comma-separated list of port numbers on which to scan for certificates in the
Choices field.
By default, the values are identical to those values configured for the tls_ssl_certs
property.
5. To discover certificates on all available open ports:
a. Locate and select the sn_acc_vis_content.tls_ssl_scan_all_open_ports
property.
b. Assign the value true.
6. Optional: To store the original certificate in the instance, set the
sn_acc_vis_content.tls_ssl_keep_original property to true.

Result

The Agent Client Collector collects the data and discovers the TLS/SSL certificates. This data is
the same as what is gathered by the IP-based tls_ssl_probe property.
The TLS/SSL certificates are populated in the following tables:
• Discovered Certificates [sn_disco_certmgmt_certificate_history]
• Unique Certificates [cmdb_ci_certificate]
• Installed Certificates [sn_disco_certmgmt_cmdb_installed_certificate]
A CI relationship is created between the discovered certificates and the corresponding Host CI
(in this case, the agent's server).
Related topics
Certificate Inventory and Management
Run Certificate Discovery via port scans

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4289


<!-- page 4290 -->
Collecting data from your system devices
Run a check command on your server or database to gather data from those devices. Depending
on the check that is invoked, collected data may be monitoring data, visibility data, log data, or
user metrics.

Policies
A policy consists of the Configuration Items (CIs) monitored by the Agent Client Collector, and
the checks that run on those CIs. Policies define which checks to run, as well as when and on
which CIs to run them.

Checks
A policy runs a set of checks. Each check is defined with the following attributes:
• Command to run
• Check type
• Command timeout
• Plugins to be used (tar.gz files that are securely and automatically downloaded to the
agent)

Determining when checks run
Policy checks run based on one of the following scheduling models:
• Interval-based scheduling: The minimum number of seconds between each check run. For
example:
◦ An interval value is at least once per hour (at least once every 3,600 seconds).
◦ The agent was down during the scheduled interval when the check was to run.
When the agent is back up, it runs the check within one hour.
If a check interval is less than one hour, the check is executed based on the indicated amount
of time since the check's most recent run. For example, for a check scheduled to run once
every eight hours:
◦ The check runs at 00:00 (midnight)
◦ The check runs again at 08:00 (8 AM)
However, if the agent is down at 8:00 and is back up at 09:03, the check runs within an hour;
that is, between 09:03 and 10:03. If the check runs at 09:57, the next run is at 17:57 (5:57 PM).
In these cases, the check picks the running time at random to ensure running of once every
eight hours.
A check completes its run when the results are sent to the MID Server (in a MID deployment)
or ITOM Cloud Services (ICS) Pod (in a MID-less deployment).
• Cron-based scheduling: Runs at fixed times or intervals (for example, every day at 6:00 PM or
every two hours).

Determining where checks run
Policies monitor the configuration items (CIs) that are mapped to the agent hosts. To determine
the specific CI types to be monitored, you can create filters. For details on configuring policy
filters, see Create a service filter for a policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4290


<!-- page 4291 -->
Updating policy mappings
When activating a policy, Agent Client Collector Framework maps monitored CIs to a policy. This
policy mapping repeats every seven days after the initial mapping. Every 15 minutes (by default),
the Agent Client Collector monitors the CMDB for any changes matching the filter conditions,
and updates the mapping accordingly. To modify the frequency by which mapping between the
CMDB and CI is updated, modify the sn_agent_sync_filters_interval_min property on the System
Properties page (All > System Properties > All Properties).
Verify data collection in Agent Client Collector
Collect data by gathering essential information from an agent's host system before executing any
checks or policies. This process ensures that the Agent Client Collector has accurate and up-todate data on the infrastructure, processes, and applications running on the host.

Before you begin

Role required: agent_client_collector_admin

About this task

Collected data is stored as Configuration Item (CI) data, which serves as a foundation for
®
monitoring, alerts, and Metric Intelligence in the ServiceNow instance.
Before checks and polices can be executed, Agent Client Collector collects data on:
• Host system details (such as hardware and the system's OS version)
• Installed applications and services
• Running processes
• Resource usage metrics (such as CPU, memory, and disk utilization)
Collected data is stored in the ServiceNow instance in either the CMDB (Configuration
Management Database) or events table.

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. On the Agent Client Collectors page, locate the Host Data Collection column for an agent.
A green Collected icon
indicates successful data collection for the specific agent.
Create a new Agent Client Collector policy
Policies consist of the CIs monitored by the Agent Client Collector and the checks that run on
those CIs. When creating a policy, you configure a filter which determines the CIs on which the
checks are to run. For example, a policy to run checks on all Apache web servers. You can create
new policies or edit the default policies.

Before you begin

Role required: agent_client_collector_admin

About this task

When associating a check definition with a policy, a copy of the definition is created as a check
instance. These values appear on the Check Instances tab on the bottom of the Policy form. Any
changes you make to a check instance affect only the instance in the policy; the original check
definition remains unchanged. When changing the original check definition, the changes do
not apply to already created check instances. It is recommended you make a copy of a check
definition if you are changing its default parameters after having initiated one or more check
definitions in a policy.
Some policy checks require credentials, while others do not. For example:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4291


<!-- page 4292 -->
• The Agent Client Collector does not require credentials for checks that run on its own server.
However, when accessing software requiring root or administrator access (such as MySQL),
credentials are required.
• When the Agent Client Collector is used as a proxy:
◦ Credentials must be invoked to allow the agent to connect to the remote device over SNMP
or other protocols.
◦ Increase the agent's cpu_percentage_limit value in the acc.yml file, as indicated in
the blue box on the Proxy Settings tab.
• When the Agent Client Collector uses the HTTP endpoint:
◦ If the URL does not require logging in (such as with a public website), no credentials are
required.
◦ If the URL does require logging in (such as with an API endpoint), credentials are required.
You assign a credential alias in the policy's Credentials tab, as described in the following
procedure.

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Click New.
The Policy page appears.
3. Enter values in the fields on the page, as described in the following table:
Policy Definition Form
Field

Description

Name

A descriptive name for the policy.

Description

Description of the policy.

Publish status

Hard coded as Draft, which means that
the policy has not yet been published. You
cannot edit this field.

Hierarchy

Hard coded as None. When a child policy
is added to the policy, the value changes to
Parent. Child policies have a value of Child.

4. On the Monitored CIs tab, select one of the following options:
◦ Manual calculation: Select to exclude the policy from scheduled policy calculation, ignoring
any changes to the policy's impacted CIs.
Select this option when the policy monitors a single CI. Otherwise, the Refresh and Publish
Monitoring Policies scheduled job takes an abnormally long time to complete.
◦ Monitored CI type by filter: Configure the following sub-fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4292


<!-- page 4293 -->
▪ Monitored CI type: Select the CI type which you want the policy's checks to monitor.
▪ Filter: Configure a filter so that the policy's checks monitor only CI types meeting the
specified criteria. Included in the available criteria are a CI's tags.
Tags

◦ Monitored CI type by script: Enables you to specify the monitored CIs using a script. Using
a script allows you to create a CI filter for tables related to each other, and not just for a single
table. For example, you can set a filter in both a Linux servers table and an Oracle table when
searching for a CI. You return an object containing the table and filter at the end of the script.
An example of a script appearing in the Monitored CI Script field is:

◦ Monitored CI type by CMDB Group: Enables you to specify the monitored CIs by using
CMDB group queries. When selecting this option, the Monitored CMDB group field
appears, where you select a CMDB group to associate with the policy.
▪ For details on CMDB groups, see CMDB groups

.

▪ For details on building a CMDB query using the CMDB query builder, see Build a CMDB
query using the CMDB query builder .
5. Select checks in the Available cell on the Checks tab, and move them to the Selected cell for
them to be included in the policy.
Checks can be selected multiple times, when you are monitoring more than one process. You
can also select a group of checks in the Filter checks by groups field, which presents checks
of the selected group in the Available cell.
6. Optional: Configure a proxy server on the Proxy Settings tab.
(Optional) Configure a proxy server only when using the agent as a proxy to report data on
remote machines. For details, see Configure an agent on a proxy server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4293


<!-- page 4294 -->
7. On the Scheduling tab, select one of the following:
◦ Interval-based scheduling: Configure the time interval (in seconds) to indicate the
frequency with which the policy's checks will run.
◦ Cron-based scheduling: Enables configuring the policy to be active only during a specific
time or time frames.
a. Select the unlock icon (
) to enable selecting cron expressions.
) to select a cron expression. Select New to create a new cron
b. Select the search icon (
expression, or select one of the cron expressions that come with the base system, which
are:
▪ Every hour nightly 5:00pm-7:00am
▪ Every minute daily 8:00am-4:59pm
▪ Every minute Mon-Fri 8:00am-4:59pm
When creating a new cron expression, you must enter it in valid cron format.
The specified cron expression operates in the time zone of the machine hosting the agent.

Note: If an Interval or Cron value was specified for the check definition, that value
overrides the value configured in either of these fields.
8. In the How to send the check results field, select the frequency with which check results are
to be sent.
◦ When event severity changes (default for event checks)
◦ Always send check results (default for non-event checks)
◦ Do not send check results
◦ When the check results change
◦ (Advanced) Based on exit codes of the check: Send results only if the exit code is 240 (OK),
241 (Warning), or 242 (Critical). However, if the command output is empty, then even if one of
these codes are part of the exit code, check results are not sent.
9. On the Credentials tab, select one of the following:
◦ Credential name: Select credentials to be assigned to the policy. The available credentials
are those displayed on the associated check definition's Check Secure Parameter
Definitions tab.
◦ Credential alias: Select the search icon
to select a credential alias to be used by the
policy's checks to connect to the monitored CI. The available options are those created on
the Connection & Credential Aliases page. For details on credential aliases, see Credential
aliases for Discovery .
10. Click Save.
The following buttons appear:
◦ Publish: Publishes the Draft policy, moving its Publish status to Queued. A queued policy is
processed by the policy publishing job. The job calculates which agents run the policy and
then sends the policy to the relevant MID Servers. The job then moves the policy's Publish
status to Published. A published policy is active on the agent.
◦ Delete: Deletes the policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4294


<!-- page 4295 -->
Related topics
Create a policy hierarchy
Create a policy hierarchy
Policies are attached to groups of related CIs. If you have a subgroup of related CIs, you can
attach a new policy to the subgroup using a policy hierarchy, without creating the new policy from
scratch.

Before you begin

Role required: agent_client_collector_admin

About this task

Policy hierarchy enables you to use a policy as a template to create a new policy, which is then
attached to a subgroup of the original policy's CIs. The original policy is the parent policy, and
the new policy is the child policy.

Note: You cannot create a child policy when a proxy agent is in place for the parent policy.
Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. On the Policies page, select a published policy with a Hierarchy value of either None or
Parent.
3. Select the Create Child button at the top of the page or underneath the Monitored CIs tab.
A new (child) policy opens with the same parameters as the original policy. The name of the
policy is <Policy name><date and time created>.

Note: The child policy inherits the parent policy's parameters only when it is first
created; there is no continuous inheritance from the parent to the child.
The following fields appear hard-coded with the indicated values:
Child policy fields
Field

Value

Publish status

Draft

Hierarchy

Child

Parent

<Name of the parent policy>

The Order field value indicates the priority by which the agent attaches itself to the policy. A
lower number indicates higher priority, and each created child policy takes on a higher value
than the policy preceding it. You can modify this value, as needed.
4. Modify the policy's parameters, as needed.
The following buttons appear on the child policy page:

Button

Description

Compare to Parent

Select to display the differences between the
child policy and its parent policy.

Return to Parent

Select to leave the child policy page (without
saving) and return to the parent policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4295


<!-- page 4296 -->
The following buttons appear on the parent policy page:

Button

Description

Deactivate

Appears for an active policy. Enables you to
select from the following:
◦ Deactivate the parent policy and all of its
child policies
◦ Deactivate only the parent policy

Activate

Appears for an inactive policy. Enables you to
select from the following:
◦ Activate the parent policy and all of its child
policies
◦ Activate only the parent policy

Delete

Enables you to select from the following:
◦ Delete the parent policy and all of its child
policies
◦ Delete only the parent policy

5. Select Save.
Child policies appear on the Child Policies tab of the parent policy.
Edit a published policy
A policy with a status of published has been passed through the MID Server and sent to the
agent. To edit a published policy, you must enable editing.

Before you begin

Role required: agent_client_collector_admin

About this task

You select a Published policy and then select the Edit in Sandbox option to enable editing of
the policy. You edit the policy in the sandbox and then save, republish, or delete the policy, as
needed. The following diagram illustrates the flow of editing a published policy:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4296


<!-- page 4297 -->
Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Click a policy for which the Publish status is Published.
3. Activate or deactivate the policy, as needed, by clicking the Activate or Deactivate button.
4. Select the Edit in Sandbox button.
The policy is now in Draft view, and its fields are editable.

Note:
◦ When you select this option, the policy's check instances are also editable.
◦ Although the policy is in Draft view, its Publish status remains Published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4297


<!-- page 4298 -->
While editing the policy's fields, you can select the following options, as needed:
Edit policy buttons
Button

Description

Revert All Changes

Reverts the changes you entered into the
Sandbox policy fields to the most recently
published values. The policy's Publish status
returns to Published, and remains in Draft
view for editing.
This button appears only after entering
updates into the Sandbox policy fields.

View Published

Returns to the most recently published policy.
The policy returns to Published view.

Save

Saves the changes you entered into the
Sandbox policy fields.
The policy remains in Draft view, and the
Publish status is Published*. The asterisk
indicates that the current published version
is not the most up to date, since there are
changes that have not yet been published.

Republish

Publishes the updates you entered into
the Sandbox policy fields. The policy is
saved with your updates and opens as the
published policy.
◦ The published policy's Publish status is set
to Queued if the policy changes result in
either:
▪ A change in which agents are running
the policy (that is, a change to the
monitored CI filter).
▪ A change in the policy’s check instances.
The policy's publishing job recalculates
Queued policies and sends them to the
relevant MID Servers.
◦ The published policy's Publish status is
set to Ready to publish if the changes
to the policy do not require any agent
recalculation (that is, a change to the policy
interval).
The policy's publishing job sends Ready
to publish policies to the relevant MID
Servers, without recalculating those
policies. After the policy publishing job
processes a policy, the policy Publish
status moves to Published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4298


<!-- page 4299 -->
Button

Description

This button appears only after entering
updates into the policy fields, for a policy
whose Publish status is Published*.
Delete

Deletes the policy.
This button appears only when viewing
the published policy, and deletes both the
Published and Sandbox policies.

5. Select checks in the Available cell of the Checks tab, and move them to the Selected cell for
them to be included in the policy.
Checks can be selected multiple times, when you are monitoring more than one process. You
can also select a group of checks in the Filter checks by groups field, which presents checks
of the selected group in the Available cell.
6. In the Check Instances table, view the check instances that are configured for the policy, or
select a check instance to edit it.
7. On the Agents tab, view the agents that are executing the policy.
The list of agents is calculated based on the monitored CIs.
This tab appears only when viewing a published policy.
Create a service filter for a policy
Configure a service filter so that the policy monitors only those services that match the filter.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
The Policies page appears.
2. Select a policy.
The details page of the policy appears.
3. Select the Edit in Sandbox button to enable editing the form.
4. On the Monitored CIs tab, select the Filter Monitored CIs by service check box.
The Application Service filter section appears.
Application Service filter section

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4299


<!-- page 4300 -->
5. Configure conditions in the fields and select Save at the bottom of the page.
The policy is configured with the indicated service filter. Only CIs matching the service filter are
included in the policy's logs.
Export and import an Agent Client Collector policy
You can move a single or multiple Agent Client Collector policies from one ServiceNow instance
to another by exporting the policy and then importing it into the target instance. Only published
policies can be exported.

Before you begin

Ensure that you published the policies you want to export on the source instance.

Note: When working in a domain separated environment, imported policies are moved
from the source instance domain to the identical domain on the target instance. Therefore,
you must ensure that you have defined the same domains on the target instance as you
have on the source instance, either by cloning the source instance or by exporting and
importing domains from the source to the target instance.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Select the check box of the published policies you want to export.
3. In the Actions on selected rows... list underneath the list of policies, select Export policies.
A confirmation dialog box appears.
4. Click Yes.
The selected policies are exported as an update set file in XML format, which is
downloaded to your browser. The generated update set has the following name convention:
AccPolicyExport <Current Date and Time>. For example, AccPolicyExport
2020-08-11 15:35:05.
5. Import the policy to the target instance.
a. Navigate to System Update Sets > Retrieved Update Sets.
The Retrieved Update Sets page appears.
b. Right-click on one of the table headers and select Import XML.
The Import XML page appears.

c. Click the Choose File button and select the previously downloaded update set to import.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4300


<!-- page 4301 -->
d. Click Upload.

Note: When the exported content is in a scope, the imported update set appears on

the Retrieved Update Sets page as multiple records. The Global scope record is the
parent, and the other records appear with the Global record as their parent update set.
Only the Global update set record can initiate the import process.
e. Select the Global update set.
f. On the Retrieved Update Sets page, click Preview Update Set Batch to verify whether there
are any conflicts with existing policies on the target instance.
Resolve any conflicts, as needed.
g. If no conflicts exist, click Commit Update Set Batch to validate and commit the update set.
h. Navigate to Agent Client Collector > Policies and verify that the imported policies appear on
the Policies list.
The imported policies are synchronized with the relevant MID Servers on the target instance
and are ready for immediate use.

Note: The import process overrides any existing policies on the target instance and

sets the imported policies to Published. However, draft copies of policies created on the
target instance are not modified. Therefore, delete draft records of the imported policies
after completing the import process, as these records are not synchronized with the
published policies on the target instance.
Create and edit checks
You can select a check based on the type of entity (such as a server or an application) you want
to monitor. You can view and edit the default checks or create new checks, as needed.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Check Definitions.
2. Click New.
The Check Definition page appears.

Note: Using Ruby scripts in a Windows environment causes high CPU consumption.
3. Enter values in the fields on the page, as described in Agent Client Collector check definition
page.
4. On the Parameters tab, enter parameter definitions, as needed.
Parameters are used for the Command field when the Simple template is used, as described in
Agent Client Collector check definition page.
The information you can add for parameters is described in Check definition form parameters
tab.
Test a check definition or check instance
When working with a check definition or check instance, you can test the check against its
assigned agent to ensure that the check is configured properly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4301


<!-- page 4302 -->
Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Check Definitions.
2. Select a check definition from the list.

Note: When running a Test Check in a check instance:
a. Navigate to Agent Client Collector > Policies.
b. Select a policy.
c. Select a check instance in the policy.
Continue with the following steps in this procedure.
3. In the Related Links section, click Test Check.
The Test Check dialog box appears.

4. Configure the fields in the dialog box.
Test Check dialog box fields
Field

Description

Check Definition

Displays the name of the selected check
definition.

CI

Select the CI on which to run the check. The
available options are those CIs which meet
both of the following criteria:
◦ Belong to the group specified in the Check
group field.
◦ Belong to an agent with Up status.
If the Check group field is empty, the value
defaults to cmdb_ci_computer.

Credentials

Select the credentials of the user whom you
want the agent to connect with.
This field appears only if you have configured
secure check parameters on the Check

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4302


<!-- page 4303 -->
Field

Description

Secure Parameter Definitions tab in the
Check Definition.
Proxy agent

Select a proxy agent to be associated with
the check.
This field appears only when working with a
check instance and when one of the options
has been selected on the Proxy Settings tab
in the instance's policy.

Create secure parameters for a check
When creating a check definition or check instance, you can configure the parameters you
want to be secured when the agent executes the check. During check execution, the secured
parameters are obfuscated, securing their information. Only credential information is obfuscated.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Check Definitions.
2. Select a check definition from the displayed list.
The Check Definition page for the selected check appears.
3. Scroll to the bottom of the page and select the Check Secure Parameter Definitions tab.
4. Click New.
The Check Secure Parameter Definition New Record page appears.

5. Configure the fields on the page.
Field Name

Description

Name

The name of the parameter, formatted as a ref­
erence prefix. For example, cred_ is a refer­
ence prefix for the credentials table.

Check Definition

The name of the check definition connected
to the parameter.

Order

A number indicating the order in which the pa­
rameter is sent to the check command/script.
For example, if you configure the following pa­
rameters:
◦ Name=cred_user_name, Order=1
◦ Name=cred_password, Order=2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4303


<!-- page 4304 -->
Field Name

Description

The username parameter is sent first to the
standard input, and the password parame­
ter is sent second to the standard input.
The READ command is performed first on
the username parameter and then on the
password parameter. You can then use
$username and $password in your Bash
script.
Active

Select the check box to activate the secure
parameter.

6. Click Submit.
The configured parameter appears in the table on the Check Secure Parameter Definitions
tab.
Repeat this procedure to enter multiple secure parameters.
7. Enter the secure parameters into the Command prefix field of the check definition.
Create a check type
Create a check type to execute the osquery command on the Agent.

Before you begin

Role required: agent_client_collector_integration or agent_client_collector_admin

Procedure
1. In an Event Management instance, enter sn_agent_check_type.list into the
navigation bar.
The Check Types page appears.
2. Click New.
The Check Type - New Record page appears.
3. In the Name field, enter osquery.
4. In the Instance Script field, enter the following script:
for (var index = 0; index < checkResults.length; index++) {
var check = checkResults[index].check;
gs.info('result ' +
index + ': requestId: ' +
check.requestId + ' agent_name: ' +
checkResults[index].agent_id +
' ci_id: ' + check.ci_id +
' status: ' + check.status +
' output: ' + check.output);
}
You can modify this script, as needed, but this initial script helps you to verify that your setup
was successful.
5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4304


<!-- page 4305 -->
Create a check definition
Create a check definition to execute the osquery command on the Agent.

Before you begin

Role required: agent_client_collector_integration or agent_client_collector_admin

Procedure
1. In an Event Management instance, navigate to Agent Client Collector > Check Definitions.
2. Click New.
3. In the Name field, enter util.osquery.
4. In the Check type field, enter osquery.
5. In the Command field, enter the following script:
osqueryi --logger_min_status 1 --json
"{{.labels.params_query}} "
6. In the Plugins field, enter the osquery plugin.
7. In the Parameters section, enter the following values for a check parameter definition.
Column

Value

Name

query

Default value

select * from logged_in_users

Mandatory

true

8. Click Test check and select one of the available agents.
The test result appears, indicating its success or failure.
Enable checks from the community for Agent Client Collector
You can take checks from the github community and customize them for use in the Agent Client
Collector (ACC), or you can compose your own scripts. Create a plugin with the customized
Sensu check and install it on a ServiceNow instance.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Copy a check from the github community to your local machine.
2. Create a tar.gz file to be appended to your plugin:
a. Create a folder on your local machine.
b. Create a sub-folder called bin.
c. Place the checks you want to run (scripts and executables) in the bin folder.
d. In a Linux environment, give executable permissions to the checks by running chmod +x
filename on each of the checks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4305


<!-- page 4306 -->
e. Navigate to the parent folder (above the bin folder).
f. In a Linux environment, run the tar -C <parent_folder_name> --zcvf
<my_plugin_name>.tar.gz * command.
In a Windows environment, use an archiving utility that supports the tar.gz format.
g. In a Windows environment, ensure that you include the following scripts in the bin folder:
▪ A batch script configured to run on the check command and initiate the run. For example,

powershell <%~dp0>\test.ps1

The <%~dp0> variable directs to the drive (d) and path (p) of the batch file.
▪ The relevant script (for example, test.ps1) to be executed in the batch script.
3. Create a new ACC plugin, as described in Create and edit Agent Client Collector plugins.
4. Test the new plugin.
a. Create a new check definition for the customized Sensu check.
For details, see Create and edit checks.
b. On the Check Definition page, navigate to the Related Links section and select Generate
allow list content.
c. Copy the entries you want to include in the allow list and add them to the agent's checkallow-list.json file, either manually or using an automation tool.
The location of this file is indicated in the allow-list parameter of the agent's acc.yml
file.
d. Create a new policy and add the newly created check definition.
For details on creating a policy, see Create a new Agent Client Collector policy.
e. Select the check definition and in the Related Links section, select Test check.
5. Enable credentials when testing a check:
a. Navigate to Connections & Credentials > Credentials.
b. Click New.
c. Select the type of credentials you want to create.
For details on creating credentials, see Create a Connection and Credential alias

.

d. Enter values in the fields on the page to assign credentials to your selected credential type.
e. Click Submit.
6. Create secure parameters for your check, as described in Create secure parameters for a
check.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4306


<!-- page 4307 -->
Verify agent functionality
Verify that an agent is running properly by performing a self-test on the agent. If one or more of
the tests fail, you can diagnose the agent problem and view a potential resolution.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select an agent that is running (Status = Up).
3. In the Related Links section, select Run self-test.
4. The Agent Self Test Runs page appears, displaying the previous self-tests run on the agent.
If the current test doesn’t appear, refresh the page.
5. Hover next to the entry for the current test and select the info icon
The Agent Self Test Run pop-up window appears.

.

6. Select Open Record.
The Agent Self Test Run page appears, displaying information on the self test.
7. In the Agent Self Test Results table at the bottom of the page, locate a test with Status = Fail.
8. Hover next to the entry for the failed test and select the info icon
The Agent Self Test Results pop-up window appears.

.

9. Select Open Record.
The Agent Self Test Results page appears, displaying information on the failed test.

Result

In the Agent Self Test Logs table on the bottom of the page, you can view the level of the failed
test (ERROR or WARNING), and a resolution for the failed test.
View the agent feature matrix
The agent feature matrix displays the availability of Agent Client Collector features. The matrix
displays data in a graph and a table.

Before you begin

Role required: agent_client_collector_admin

About this task

The agent feature matrix displays the granularity of Agent Client Collector features that are
fully supported, partially supported, and not supported. A partially supported feature may have
instance and framework requirements met, but runs on at least one agent version which does
not meet the feature requirements.

Procedure
1. Navigate to All > Agent Client Collector > Agent Feature Matrix.
The Agent feature matrix appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4307


<!-- page 4308 -->
Agent feature matrix

The matrix shows the support status of Agent Client Collector features that are fully supported,
partially supported, and not supported (Unsupported).
2. Select one of the categories on the graph.
A list of all features in the category appears on the Agent Feature Support Status page.
Agent Feature Support Status Page

3. Select one of the features.
The Agent Feature Support Status page for the specific feature appears:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4308


<!-- page 4309 -->
Agent Feature Support Status Details page

The page displays the following:
◦ Sections indicating the support status of the feature, and the various instance requirements
of the feature. The Action Items field displays the actions you need to take to fully support a
feature that is either partially supported or unsupported.
◦ Instance requirements and agent framework version requirements that have been met by
the agent feature.
View agent errors
Agent Client Collector (ACC) errors are visible in logs related to the agent and the ServiceNow
instance. This feature provides improved visibility of agent errors, enabling faster error resolution.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agent Issues.
The ACC Error Messages page appears and lists the agents containing

errors.
The following columns display the indicated information about the errors.
ACC Error Messages page
Column

Description

CI ID

The name of the agent containing the error, or
a configuration item (CI) with an issue.

Code

Error code assigned to the issue.

Message

A message describing the error.

Source application

The application triggering the error.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4309


<!-- page 4310 -->
Column

Description

Error status

Indicates the state of the error: Active or
Resolved.

Category

The error category which the error is
classified under.

Key

Internal value used to identify the error.
For data collection errors, specifies the
agent_id value.

Key extension

Internal value used to identify the error.
For check execution errors, specifies the
check name.

Command

The command executed when the error
occurred (if applicable).

Stack trace

A reference to the ecc_queue record that
was processed and triggered the error (if
applicable).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4310


<!-- page 4311 -->
Note:
◦ Not all columns are visible by default on the page.
◦ Select the info icon (
about the error.

) next to an error to view a pop-up window with full information

ACC Error Message pop-up window

The info icon is visible when hovering under the search icon (
entry.

) next to the error

2. Optional: To view errors for a specific agent:
a. Select All > Agent Client Collector > Agents.
The Agent Client Collectors table appears.
b. Select an agent.
c. Select the Automation Error Messages tab at the bottom of the page to view errors relating
to the agent.

Result

If an error causes an agent's registration to fail, the agent's Status column displays Registration
Failure on the Agent Client Collectors page (All > Agent Client Collector > Agents).

Using Agent Client Collector logs
Use Agent Client Collector logs to track events in your system. Log levels indicate the severity of
each event.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4311


<!-- page 4312 -->
Configure Agent Client Collector log levels
You configure the log levels that you want the Agent Client Collector logs to contain. All events
that match or exceed the specified log level display in the Agent Client Collector logs.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Specify the desired log level in the acc.yml configuration file.
Alternatively, you can specify the log level as an argument in the --loglevel command-line
flag, as follows:
acc start --log level debug
2. Restart the agent using the service manager:
◦ Linux:
sudo service acc restart
◦ Windows:
sc.exe stop AgentClientCollector
sc.exe start AgentClientCollector
◦ macOS:
sudo launchctl load
-w /Library/LaunchDaemons/com.sn.acc.plist

Note: You must restart the service after changing the log level.
View the Agent Client Collector logs
You can view the activity logs for an Agent Client Collector.

About this task

Agent Client Collector logs are accessible from:
• Linux: /var/log/servicenow/agent-client-collector/acc.log
• Windows: The location specified by the log-file configuration flag. The default location is:
C:/ProgramData/ServiceNow/agent-client-collector/log/acc.log
If the C:/ProgramData directory is hidden (such as on older Windows versions), change
the Explorer filter to show hidden elements.
• macOS: The default location is: /Library/Application\ Support/servicenow/
agent-client-collector

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
The Agent Client Collectors page opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4312


<!-- page 4313 -->
Agent Client Collectors page

The displayed columns are those selected when clicking the Settings icon

.

The Host column indicates the host name of the agent.
The Class column indicates the agent's CI type.
2. Select an agent.
The Agent Client Collector page opens.
3. In the Related Links section, click Grab Agent Log.
The Queues page opens for the selected Agent.
4. Refresh the page and click the relevant entry with the value Queue = input.
The Payload section on the Queue form displays the log for the Agent Client Collector.
Related topics
Enable log monitoring in a Linux environment
Enable log monitoring in a Windows environment
Set the agent log level
®

Configure the agent log level directly from your ServiceNow instance, without needing to
access the acc.yml configuration file.

About this task

Configuring the agent log level from the instance changes the log level temporarily, and doesn’t
update the log level in the acc.yml configuration file. When restarting the agent, the log level
reverts to its status as set in the acc.yml configuration file.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select an agent.
3. In the related links, select Set Log Level.
4. In the Set Log Level dialog box, select the log level to invoke for the agent, and select OK.
5. Reset the log level to its originally configured level by doing one of the following actions:
◦ In the related links, select Reset Log Level.
◦ Restart the agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4313


<!-- page 4314 -->
Enable metrics collection and evaluation
To enable a ServiceNow instance to collect and evaluate metrics, you must create a distributed
MID Server cluster, associate MID Servers with the cluster, and enable Metric Intelligence for
your MID Server.

Before you begin

Ensure that the following plugins are installed on your instance:
• Event Management (com.glideapp.itom.snac)
• Metric Intelligence - com.snc.sa.metric plugin
• MetricBase
To verify that the MetricBase plugin has been installed correctly:
1. Enter stats.do in the instance navigation pane.
2. Search for the MetricBase Statistics section and verify that the following appears:
◦ Status: ONLINE
◦ Name: clotho
Role required: agent_client_collector_admin

Procedure
1. Create a distributed MID Server cluster in your instance:
a. Navigate to MID Server > Clusters.
The MID Server Clusters page opens, displaying the list of configured MID Server clusters.

b. Click New.
The MID Server Cluster - New record page opens.
c. In the Name field, assign a descriptive name for the cluster.
d. In the Type field, select Distributed.
e. Click Submit.
The distributed MID Server appears on the MID Server Clusters page.
2. Assign MID Servers to the distributed MID Server cluster:
a. On the MID Server Clusters page, select the distributed MID Server cluster.
The following page appears:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4314


<!-- page 4315 -->
b. On the Includes MID Servers tab, click Edit.
The Edit Members page appears.

c. Select the relevant MID Servers from the left cell and click the right arrow button
to move
them to the right cell.
In a staging environment, it is acceptable to have only one MID Server in the cluster.
d. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4315


<!-- page 4316 -->
The Includes MID Servers tab displays the MID Servers that are part of the cluster.

3. Enable Metric Intelligence for your MID Server:
a. Navigate to MID Server > Extensions > Metric Intelligence.
The Metric Intelligence Metrics Contexts page appears.
b. Click New.
The Metric Intelligence Contexts - New record page appears.

c. In the Name field, enter a descriptive name for the Metric Intelligence metrics extension.
d. In the MID Server field, select the MID Server to which you want to associate the Metric
Intelligence metrics extension.
e. Select the ACC Dedicated MID check box to assign the specified MID Server as the only
MID Server in the distributed cluster.
Selecting this option helps conserve system resources and memory.
f. In the Related Links section at the bottom of the page, click Start.
A message appears, indicating the status of the extension.
g. Click Submit.
h. Click Start.
Related topics
Limit metrics collection and evaluation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4316


<!-- page 4317 -->
Limit metrics collection and evaluation
You can limit the metrics you send from the MID Server to the instance, either by de-activating a
specific CI or an entire CI type.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. To limit metrics collection and evaluation for specific CIs:
a. Navigate to Event Management > Anomaly Detection > Metric to CI.
The Metric to CI Mappings page appears.
Metric to CI Mappings

Note: The Metric to CI Mapping is identified by both its metric identifier and its
configuration item.
b. To prevent sending metrics for a specific metric and CI, set the value of the Active column to
false.
2. To limit metrics collection and evaluation for an entire CI type:
a. Navigate to Event Management > Anomaly Detection > Metric Types.
The Monitoring System Metric Types page appears.
Monitoring System Metric Types

b. To prevent sending metrics for a metric type, set the value of the Active column to false.

Configure the Google Cloud Platform (GCP) configuration data file
Configure the Google Cloud Platform (GCP) configuration data file to monitor metrics in your GCP
environment.

Before you begin

Role required: agent_client_collector_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4317


<!-- page 4318 -->
About this task

The GCP configuration data file is a .json file which contains all of the metrics collected from
your GCP environment. Metrics that you add to the acc_gcp_metrics_list.json file are
monitored by the check to which the file is attached.

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Configuration Files.
2. Locate the acc_gcp_metrics_list.json configuration file.
3. Download and add the GCP metrics to the configuration file that you want to be monitored.
For details on the available GCP metrics, see Google Cloud Platform (GCP) metrics.
4. Select the Manage Attachments icon (

) to attach the updated configuration file.

Configure the action level for anomaly detection
Create a configuration setting rule that refines the level of anomaly detection processing and
analysis that is applied to specific CIs and metrics. Set a processing level that reflects the
importance of metrics at different stages of implementation, to reduce data load if needed.
Anomaly detection consists of multiple levels of processing. At the lowest level, metric data is
gathered from data sources. At the highest level, statistical models are created, anomaly scores
are calculated, and anomaly alerts and IT alerts are created. You can apply the full anomaly
detection process or a reduced level of processing, for specific data series.
Use the anomaly_detection_action_level configuration setting in a configuration
setting rule to set the level of processing for specific CIs and metrics. For example, you can
initially set only a small percentage of CIs and metrics to generate anomaly alerts, and later
increase that percentage.

Action levels
The anomaly_detection_action_level configuration setting provides action levels
starting at 'Metrics only' for basic anomaly processing, and ending at 'IT Alerts' for full processing
and analysis.
Action levels from lowest to highest:
Metrics Only
Only gather metrics from the data source without any further processing.
Bounds
'Metrics Only' processing level and in addition creates statistical model and show
bounds in Insights Explorer.
Anomaly Scores
'Bounds' processing level and in addition calculates and display anomaly scores.
Anomaly Alerts
'Anomaly Scores' processing level and in addition creates anomaly alerts as
applicable.
IT Alerts
'Anomaly Alerts' processing level and in addition creates IT alerts which are based
on anomaly alerts, as applicable.
Related topics
Create a configuration settings rule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4318


<!-- page 4319 -->
Create Azure policies for metric collection
Create your own policies to enable Azure to collect the metrics for the resources that have
policies that don’t come with the base system. The Azure Metrics Collector check brings the
metrics to the agent through the Azure Metrics Batch API.

Before you begin
• Ensure that the configuration Items (CIs) that you want to collect the metrics for are included in
the CMDB. CIs are typically populated during Discovery.
• Ensure that the sn_agent.multi_ci_dev_mode property is set to true on the System
Properties page (All > System Properties > All Properties).
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Select New.
3. Select the application scope icon
Monitoring scope.

and verify that you are in the Agent Client Collector

4. In the Name field, enter a name for the policy.
5. Configure a filter that determines which CIs are to be monitored by the policy by selecting
the Monitored CIs tab and the Monitored CI type by filter check box, as described in the
following table.
Monitored CIs filter
Option

Action

Monitored CI type

Select the CI type to be monitored.
The CI type must match the resource that you
entered in the .json script file that contains
the metrics to be monitored.

<Filter fields>

Configure the conditions that must be met for
the resources in the specified Monitored CI
type to be monitored.
Ensure that you set the following conditions:
◦ Object ID = <name of the resource entered
in the .json script file that contains the
metrics to be monitored>
◦ State = Available
The Available state indicates that
resources must be available to be
monitored.

Preview

Select to view the number of resources that
match the specified condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4319


<!-- page 4320 -->
Option

Action

The number of matching results appears next
to the Preview button. Select the result to
view all CI records that match the condition.
6. Add the Azure Metrics Collector check to the policy.
a. On the Checks tab, locate the Azure Metrics Collector check in the Available cell.
b. Select the right arrow button to move the check to the Selected cell.
7. Configure a proxy server to access the Azure metrics.
a. On the Proxy Settings tab, select Single proxy agent.
b. In the Proxy agent field, select the proxy agent to execute the policy and retrieve the Azure
metrics.
8. Configure the credentials for the policy.
a. Select the Credentials tab.
b. In the Credential name field, select the azure_metrics_collector.
9. Select Save.
10. Add secure parameters to the check instance.
a. In the policy's Check Instances section, select the Azure Metrics Collector check instance.
b. On the Check Secure Parameters tab, select New.
c. Add the secure check parameters that are described in the following table.
Secure check parameters
Name

Order value

cred_tenant_id

1

cred_client_id

2

cred_secret_key

3

Ensure that the Active check box is selected for each parameter.
d. Select Update.
11. Add the .json configuration file to the check instance.
The file sends the list of Azure resources to the agent.
a. Select the Azure Metrics Collector check instance.
b. Select the Check Parameters subtab.
c. Select New.
d. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4320


<!-- page 4321 -->
Check Parameter form
Field

Description

Name

Descriptive name for the .json file to be
added to the instance's configuration files
(Agent Client Collector > Configuration
Files).

Value

String that indicates the name of the .json
file.
For example:
acc_azure_vm_metrics_config.json

Flag

Value that you enter (-c) to indicate
that the check retrieves the name of
the configuration file. The configuration
file contains a namespace and a list of
metrics. The value must indicate the
name of the file that was uploaded to
the list of configuration files (Agent
Client Collector > Configuration
Files), in .json format. For example:
acc_azure_vm_metrics_config.json.

Ensure that the Active, Mandatory, and Value required check boxes are selected.
e. Select Submit.
12. Create a .json file that indicates the metrics that you want your policy to monitor.
The following example displays a .json file for retrieving load-balancer metrics.

Add the .json file to the list of configuration files at Agent Client Collector > Configuration
Files.
13. Create a .json file to indicate the resources that you want your policy to monitor.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4321


<!-- page 4322 -->
a. On the Proxy Settings tab, select Multi-CI Mode.
b. Copy a script from one of the Azure cloud policies that comes with the base system.
▪ Cloud policies that come with the base system are described in Create Azure policies for
metric collection.
▪ The script is located in the Config file creation script field of the policy's Proxy Settings
tab.
c. Paste the script into the Config file creation script field of your policy.
d. At the end of the script, configure the resource_id, region, and sys_id parameters
with the values of the CI that you want the policy to monitor.
14. Select Save and then publish the policy by selecting Publish.

Result

The configured policy retrieves the resources and their metrics from the specified Azure CI and
sends them to the agent.

Block event creation for non-existent entities
Invoke the skip_events_for_nonexistent parameter to block event creation when
specific process, service, or log does not exist. Invoke this parameter if you do not want to be
notified about these non-existent entities.

Before you begin

Role required: agent_client_collector_admin

About this task

A process, service, or log does not exist when the following checks do not contain valid values
for the indicated parameters:
Check parameters
Check

Parameter

os.linux.check-process

file_pid, daemon_name

util.check-windows-service

service

os.windows-check-log

file

util.checks-logs

file

util.checks-logs-sudo

file

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Check Definitions.
2. Locate the check definition for which you want to block events.
3. On the Check Parameter Definitions tab, select skip_events_for_nonexistent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4322


<!-- page 4323 -->
4. Select the Active check box to enable the parameter and prevent alert creation when the
process, service, or log isn’t located for the specified check.
If you want to receive notification about the missing process or service, leave the
skip_events_for_nonexistent parameter with its default value of false.

Enable viewing HAProxy metrics
Configure the HAProxy metrics stats page to enable monitoring your system devices by viewing
HAProxy metrics.

Before you begin

Role required: agent_client_collector_admin

About this task

HAProxy provides load balancing and reverse proxy capabilities for both HTTP and TCP
requests. The HAProxy checks remove backend servers that fail several health checks in a row,
and transfer incoming traffic to backend servers as part of load balancing.

Procedure
1. Access the HAProxy configuration file, located at: /etc/haproxy/haproxy.cfg.
2. Add the following to the bottom of the file:
listen frontend *:8080
#Haproxy
Monitoring run on port 8080
mode http
option forwardfor
option httpclose
stats enable
stats show-legends
stats refresh 5s
stats uri /stats
#URL for HAProxy monitoring
stats realm Haproxy\Statistics.
#Title for pop up window
stats auth admin:admin
#User and Password for login to the
monitoring dashboard
stats admin if TRUE
default_backend backend
#This is optional for monitoring
backend
3. Run the following command to restart the HAProxy:
sudo service haproxy restart
4. View the HAProxy metrics on your system by viewing the HAProxy metrics stats page,
accessible from the following URL:
http://<HAProxyServer>:8080/stats
Related topics
HAProxy default checks and policies

Enable Apache Kafka health monitoring
Set configurations in the Apache HTTP server application to enable the Agent Client Collector to
perform Apache Kafka HTTP server monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4323


<!-- page 4324 -->
Before you begin
• Enable Java Management Extensions (JMX) for Kafka metric collection by running the
following command:
Environment=”JMX_PORT=9999”
• Role required: agent_client_collector_admin

Procedure
1. Enable collecting Apache Kafka performance metrics using Java Management Extensions
(JMX) by running the following command:
JMX_PORT=9999 bin/kafka-server-start.sh config/server.properties
2. Configure the admin server port by modifying the port number of the admin.serverPort
property in the zookeeper.properties file.
The default port is 8080.

Enable running of Varnish checks
Use application fingerprints to discover the Varnish CI, to enable running Varnish checks.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Home.
2. Select the Application Fingerprints tile.
The Application Fingerprints dashboard appears.
3. Select the All Suggested Applications tile.
4. On the Application Suggestions page, select the varnishstat entry in the Suggested Group
Name column.
The varnishstat details appear on the Application Suggestion page.
5. Select Discover Application.
Discovery locates an application CI for the varnishstat entry. The CI appears on the Application
Fingerprints dashboard in the Created Applications section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4324


<!-- page 4325 -->
Created applications section of Application Fingerprints dashboard

6. Run basic Discovery on the host machine.

Result

The varnishstat CI is discovered and a record is created in the u_cmdb_ci_varnishtat table.
The Varnish policies and checks are available to run.

Detecting portable applications using push-based discovery
Portable applications are those applications that don’t need to be installed on the target system.
Starting in ACC-VC version 2.3.0, push-based Discovery can detect portable applications, such
as Firefox, VLC, Notepad++ etc, for Windows only.

Note: Only portable applications listed in https://portableapps.com/

are supported.

When the portable application is executed, it creates a running process. The application creates
a path similar to the following for the configuration file 'appinfo.ini':
-\ <--- Directory with FirefoxPortable.exe
+\App
+\firefox
+\Data
+\profile
+\settings
+\plugins\ (optional)

Note: ServiceNow users must have Local account access to get the data in order to read
appinfo.ini file.
Name, Version, and Vendor attributes are fetched from the Portable software and are found in
the appinfo.ini files. appinfo.ini is the mandatory file to execute any portable application. If SAM
is installed, the information is displayed in Software installation [cmdb_sam_sw_install] table. If
SAM is not installed, the information shows in the Software instance [cmdb_software_instance]
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4325


<!-- page 4326 -->
Cloud Native Operations for Visibility
Cloud Native Operations for Visibility (CNO for Visibility) has been renamed Agent Client
Collector for Kubernetes – Visibility. The term Cloud Native Operations for Visibility has been
deprecated.
For the Kubernetes Visibility Agent documentation, see Kubernetes Visibility Agent.

Enabling Agent Client Collector data collection
You can perform actions which enhance data collection from the hosts on which Agent Client
Collector is running.
Create a call API to send an osquery request
Create a background script to send an osquery request. The osquery request enables data
collection from your host's operating system.

Before you begin

Role required: administrator

Procedure
1. Create the following background script:
◦ "MTLV9DE22016" is the name of the server running an agent
◦ "c8bf9072539333003e76ddeeff7b12c5" is the sys_id of the previously created
check definition
cis = new GlideRecord("cmdb_ci_server");
cis.addQuery("name", "MTLV9DE22016");
cis.query();
check = {
"checkDefId": "c8bf9072539333003e76ddeeff7b12c5",
"params": {
"query": "select pid,cmdLine from processes limit
4"
}
};
var agentNow = new sn_agent.AgentNowHandler();
gs.info('request_id: ' +
agentNow.runCheckForCis(cis,check,'1',60000));
2. Run the script to print the request ID:
request_id: eefbff7ab75733003e766068de11a981
3. Check the system logs for messages coming from the instance script.
result 0 requestId: 06c6c887b79733003e766068de11a912
agent_name: MTLV9DE22016 ci_id:
00726c36539333003e76ddeeff7b12db status: 0 output: [
{"cmdline":"","pid":"0"},
{"cmdline":"","pid":"1"},
{"cmdline":"","pid":"45"},
{"cmdline":"","pid":"46"}
]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4326


<!-- page 4327 -->
View host data collection for an agent
Run data collection on an agent's host to discover the components that are running on the host.

Before you begin

Role required: agent_client_collector_admin

About this task

The Refresh Host Data for Agents scheduled job collects host data and runs every hour on the
following:
• Hosts which have not been discovered in the past 12 hours.
• Host for which Discovery failed.

Procedure
1. Navigate to All > Agent Client Collector > Agents.
In the Host data collection column, view the status of data collection on the agent's host. The
possible statuses are:
Host data collection statuses
Status

Description

<empty>

Indicates that the agent has been added
within the past minute and the Refresh and
Publish Monitoring Policies scheduled job
has not yet run to initiate data collection. The
job runs every minute.

Collected (green)

Host data collection is complete.

Collecting (yellow)

Host data collection is in progress.

Collection failed (red)

Host data collection failed.

2. Optional: Locate the Host data last collected column to view when data collection was last
performed on the host.
Generate an Agent Client Collector allow list
Specify the checks to be included in the list of checks that are enabled to run on the agent.

Before you begin

Role required: agent_client_collector_admin

About this task

The default allow list includes all validated checks, and is included in the base system policies. If
the allow list cannot be read correctly, no checks run on the agent.

Procedure
1. Navigate to All > Agent Client Collector > Check Definitions.
The Check Definitions page appears.
2. In the Related Links section at the bottom of the page, click Generate allow list.

Note: Alternatively, you can click a check definition or check instance record and click
Generate allow list to generate a complete allow list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4327


<!-- page 4328 -->
The Agent Client Collector Command Allow-list Generator page appears, with the list of
checks scanned from the Command field of the check instance records.
The values appear with the following attributes:
Command attributes
Attribute

Description

exec

The executing command.

args

Possible argument strings.

skip_arguments

Boolean. Determines whether to verify that
the argument was added to the allow list.
◦ true: Skips argument validation and checks
only for illegal characters, specifically |;
\<>&'$()
◦ false: Executes argument validation to
ensure that the argument is included in the
allow list. If it is not, the command cannot
execute.

3. Copy the entries you want to include in the allow list and add them to the agent's checkallow-list.json file, either manually or using an automation tool.
The location of this file is indicated in the allow-list parameter of the agent's acc.yml
file.
Run host data collection for an agent
Collect data on the host being monitored by an agent. Manually collecting host data ensures that
the host's files are up to date.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Underneath the check box icon
, hover next to an agent and select the check box that
appears.
Repeat this step for all agents for which you want to collect data.
3. Select the arrow next to the Actions on selected rows... drop-down and select Collect host
data.

Result

Data is collected for the specified agents. The collection status is indicated in the page's Host
data collection column.
Run host data collection on demand
You can perform host data collection on demand, if you need to perform data collection before
the job is scheduled to run.

Before you begin

Ensure that you have sufficient permissions to create CIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4328


<!-- page 4329 -->
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
The Agent Client Collectors page appears.
2. Select an agent with Status = Alive.
3. On the agent form, click the Collect Host Data button.
Pause Agent Client Collector data collection
If CPU consumption on your server is getting too high, you can manually turn off the Agent Client
Collector data collection to pause all checks performed by the agent, except for the agent's keep
alive messages.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
The Agent Client Collectors page appears, displaying the list of configured agents.
2. Select the checkbox next to the relevant agents.
3. In the Actions on selected rows... dropdown, select Pause data collection to pause data
collection on the agents (Data Collection = Off (manual)).
Select Resume data collection to resume data collection on the agents.
Alternatively, you can set the status of an agent by selecting the agent and in the Related
Links section, select the Pause data collection link to pause data collection on the agent. To
resume data collection on the agent, select the Resume data collection link.
Clear Agent Client Collector plugins
Clear the plugin and configuration file cache folder and control plugin downloads. Clearing the
cache folder removes unwanted plugins that have synced to the agent.

Before you begin

Ensure that the following are installed on your system:
• Agent Client Collector Framework (ACC-F), starting with version 3.5.5
• MID Server
• CMDB
• Agent Client Collector agent, starting with version 3.5.5
• ACC Global Utilities
Ensure that the disable_assets system property in the acc.yml configuration file is set to false.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select an agent.
3. In the Related Links section, select Clear ACC Plugins.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4329


