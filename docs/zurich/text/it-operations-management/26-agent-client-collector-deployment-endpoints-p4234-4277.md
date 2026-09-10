# Zurich IT Operations Management — Agent Client Collector deployment - endpoints

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4234–4277 of 4823

Sections: Agent Client Collector deployment - endpoints (p4234)

---

<!-- page 4234 -->
Agent Client Collector deployment - endpoints
When deploying the Agent Client Collector, perform deployment and management tasks on your
endpoints.
®

Endpoint deployment connects agents directly to the ServiceNow cloud through ITOM
Cloud Services (ICS). Agents on laptops, remote offices, and distributed sites reach ICS over
®
the internet using a secure connection, without a MID Server. ServiceNow manages the
infrastructure and issues certificates automatically.
Choose endpoint deployment when your agents operate beyond the data center, where
maintaining MID Servers isn't practical. Digital End-User Experience (DEX) requires this
architecture, and Agent Client Collector for Visibility - Content (ACC-VC) supports it in specific
use cases.

Configuring MID-less Agent Client Collector
Configure MID-less Agent Client Collector to enable sending information through the cloud.
Sending information through the cloud allows the MID Server to be used for more persistent
resources.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4234


<!-- page 4235 -->
Flag

Type

Description

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
Installing MID-less Agent Client Collector
Installing MID-less Agent Client Collector enables you to send data from the agent to the
instance through the cloud. Sending information through the cloud allows the MID Server to be
used for more persistent resources.
Before using MID-less Agent Client Collector, do the following:
1. Ensure that your ServiceNow instance has migrated from an F5 load balancer to Application
Delivery Controller, version 2 (ADCv2) and has mTLS support.
a. Enter the following command in your terminal: curl -v https://
<instance>.service-now.com/stats.do 2>&1 | grep "< Server".
▪ If the system returns snow_adc, the instance is on ADCv2/ADCv3.
▪ If the system doesn't return snow_adc, the instance isn’t on ADCv2/ADCv3. To migrate the
instance to ADCv2/ADCv3, contact Customer Support.
b. Navigate to <instance_url>/adcv2/supports_tls
If the URL returns a value of true, mTLS is supported.
2. Install the ITOM Cloud Services Core (sn_itom_cloud_svc) scoped app plugin.
If you’re using Agent Client Collector for Visibility - Content, install the Agent Client Collector
for Visibility - Content (sn_acc_vis_content) plugin.
3. Configure an agent registration key on the instance. For details, see Configure an agent
registration key.
If registration fails between the agent and the instance, the registration key is cleared from the
acc.yml configuration file.
Install MID-less Agent Client Collector using a single-line command in a Windows
environment
Install MID-less Agent Client Collector on a Windows machine to enable sending data from the
agent to the instance through the cloud. Sending information through the cloud allows the MID
Server to be used for more persistent resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4235


<!-- page 4236 -->
Before you begin
• Install the ITOM Cloud Services Core (sn_itom_cloud_svc) plugin.
• Onboard your instance to use ITOM Cloud Services. For details, contact Customer Support.
• Configure an agent registration key. For details, see Configure an agent registration key.
• Role required: agent_client_collector_admin

About this task
For details on sending data through the cloud in a MID-less deployment, see DEX Architecture

.

Procedure
1. Retrieve the publicly accessible gateway URL, based on your location.
◦ AMER (Americas): itomcnc-prod-gateway-amer.sncapps.servicenow.com:443
◦ EMEA (Europe): itomcnc-prod-gateway-emea.sncapps.servicenow.com:443
◦ APAC (Asia Pacific): itomcnc-prod-gateway-apac.sncapps.servicenow.com:443
2. On the Windows server where the agent is installed, enter the following command:
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4236


<!-- page 4237 -->
Parameter

Description

disable the verification of the installer certification validation. By
default, validation is enabled.

Note: Disable the certification validation only when using
non-standard signature validation tools.
Related topics
Agent Client Collector MID-less installation command parameters
Install MID-less Agent Client Collector manually in a Linux environment
Install MID-less Agent Client Collector manually on a Linux machine to enable sending data from
the agent to the instance through the cloud. Sending information through the cloud allows the
MID Server to be used for more persistent resources.

Before you begin
• Install the ITOM Cloud Services Core (sn_itom_cloud_svc) plugin.
• Onboard your instance to use ITOM Cloud Services. For details, contact Customer Support.
• Configure an agent registration key. For details, see Configure an agent registration key.
• Role required: agent_client_collector_admin

About this task
For details on sending data through the cloud in a MID-less deployment, see DEX Architecture

.

Procedure
1. Download the relevant installation package.
a. Navigate to > Agent Client Collector > Deployment > Agent Downloads.
b. Download the relevant .rpm or .deb installation file.
c. Download the relevant signature files to validate the installation files.
2. Optional: Verify the package signature.
a. Extract the installation file (if it is compressed) by running the following command:
unzip agent_client-collector-<version_number>-x86_64-rpmrpm.zip
b. Validate the installation file signature by running the indicated commands.
▪ On an RPM-based system:
openssl dgst -sha256 -verify {<ServiceNow
DGST pem key>} -signature {<signature file>}
agent-client-collector-<version number>-x86_64.rpm
Where <ServiceNow DGST pem key> is the .pem file extracted from the .zip file,
and <signature file> is the .bin file extracted from the .zip file.
For example:
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-x86_64.rpm
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4237


<!-- page 4238 -->
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-x86_64-rpm-rp
m.zip
$ unzip agent-client-collector-3.0.0-x86_64-rpm-rpm.zip
Archive: agent-client-collector-3.0.0-x86_64-rpm-rpm.zip
inflating: ServiceNow_Digicert_DGST.pem
extracting: agent-client-collector-3.0.0-x86_64.bin
$ openssl dgst -sha256 -verify ServiceNow_Digicert_DGST.pem
-signature agent-client-collector-3.0.0-x86_64.bin
agent-client-collector-3.0.0-x86_64.rpm
Verified OK

Note: Each command must appear on a single line.
▪ On a Debian-based system:
(Optional) gpg --import ServiceNow_Digicert_Public.gpg
sudo gpg --verify agent-client-collector-<version number><distro>_amd64.deb
For example:
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-debian-9_amd6
4.deb
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-debian-9_amd
64-deb-deb.zip
$ unzip
agent-client-collector-3.0.0-debian-9_amd64-deb-deb.zip
Archive:
agent-client-collector-3.0.0-debian-9_amd64-deb-deb.zip
extracting: ServiceNow_Digicert_Public.gpg
$ gpg --import ServiceNow_Digicert_Public.gpg
gpg: /home/admin/.gnupg/trustdb.gpg: trustdb created
gpg: key 985DD52C6A0ABB45: public key "ServiceNow, Inc.
(Signing) <seceng@servicenow.com>"
imported
gpg: Total number processed: 1
gpg: imported: 1
$ dpkg-sig --verify
agent-client-collector-3.0.0-debian-9_amd64.deb
Processing
agent-client-collector-3.0.0-debian-9_amd64.deb...
GOODSIG _gpgbuilder 9B928FB49771DF6C047430DD985DD52C6A0ABB45
1665054068

Note: Each command must appear on a single line.
3. Install the Agent Client Collector package using the package manager associated with Linux
distribution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4238


<!-- page 4239 -->
OS

Command

RHEL-based

yum / dnf localinstall

SLES

zypper install

Debian-based

apt-get install

Alternatively, if these commands are not configured correctly, you can use the core commands
that are configured to run with the package manager commands.
◦ RPM-based system: # rpm -vi agent-client-collector-<version
number>-x86_64.rpm
◦ Debian-based system: # dpkg -i agent-client-collector-<version
number>-<distro>_amd64.deb
Verify that the package commands are configured correctly with your system administrator.

Note: Some file systems may have restrictions enabled; for example, /var/ may be
mounted with a noexec flag. Because the agent must execute Agent Client Collector
plugins that are normally store in the /var/cache directory, you must deploy the
application into specific folders by customizing the installation paths using the -relocate option as an .rpm parameter.
For example: rpm -i --relocate /var/cache=/opt/cache agentclient-collector-<version_number>-x86_64.rpm
The following paths can be relocated:

Path

Notes

/etc

When updating, you must also update the
allow-list parameter in the acc.yml
file with the new path.

/usr/share

N/A

/var/cache

Updating the /var directory retains all /
var subdirectories, nested under the new
directory.

/var/log
/var/run
/var

Review the paths in /usr/lib/systemd/system/acc.service to ensure that
they appear as expected.
4. Run the relevant package upgrade command, based on the cpu your machine runs with:
◦ Intel cpu:
sudo installer -pkg agent-client-collector-<version
number>-macos_x64.pkg -target /
◦ Apple silicon cpu:
sudo installer -pkg agent-client-collector-<version
number>-macos_arm64.pkg -target /
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4239


<!-- page 4240 -->
This command also backs up and restores the agent-id and configuration files before
upgrading.
5. In the acc.yml configuration file:
a. Set the following parameters:

Parameter

Value

backend-url

"<gateway URL>"

connect-without-mid

true

instance-url

"<instance URL>"

registration-key

"<regsitration-key>"

insecure-skip-tls-verify

false

b. Comment out the api-key parameter.
6. Save the configuration file.
7. Configure sudoers.
Configuration is typically automated by your Linux sysadmin. To configure manually if you want
to ensure correctness before full configuration, run the following.
# visudo -f /etc/sudoers.d/01_servicenow
User_Alias ACC_USERS = servicenow
Cmnd_Alias ACC_CMD = /usr/sbin/dmidecode -s
baseboard-serial-number,/usr/sbin/dmidecode
-s chassis-serial-number,/usr/sbin/dmidecode
-s system-serial-number,/usr/sbin/dmidecode -s
system-uuid,/usr/sbin/ss -tanp
ACC_USERS ALL = (root) NOPASSWD:ACC_CMD
Defaults:ACC_USERS !requiretty
8. Configure the agent to run as a service.
a. Safeguard resource consumption by adding the indicated values to the /usr/lib/
systemd/system/acc.service file.
▪ CPUShares=128
▪ CPUQuota=10%
▪ MemoryLimit=192M
▪ BlockIOWeight=10
▪ LimitNICE=15
For example:
# vi /usr/lib/systemd/system/acc.service
[Unit]
Description=Agent-Now acc
After=network-online.target
[Service]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4240


<!-- page 4241 -->
Environment=AGENT_ROOT=/usr/share
Environment=AGENT_CACHE_ROOT=/var/cache
Environment=AGENT_CONFIG_ROOT=/etc
Environment=AGENT_LOG_ROOT=/var/log
Environment=AGENT_RUN_ROOT=/var/run
Environment=RUBYOPT=-Eutf-8
User=servicenow
Group=servicenow
ExecStart=/usr/share/servicenow/agent-client-collector/bin/a
cc-service start acc
KillMode=process
Restart=on-failure
RestartSec=1min
CPUShares=128
CPUQuota=10%
MemoryLimit=192M
BlockIOWeight=10
LimitNICE=+15
[Install]
WantedBy=network-online.target
b. Run the reload daemon command If you modified the service file after enabling the acc
service.
# systemctl daemon-reload
c. Enable and start the service by running the following commands.
# systemctl enable acc
# systemctl start acc
Install MID-less Agent Client Collector using a single-line command in a Linux environment
Install MID-less Agent Client Collector on a Linux machine to enable sending data from the agent
to the instance through the cloud. Sending information through the cloud allows the MID Server
to be used for more persistent resources.

Before you begin
• Install the ITOM Cloud Services Core (sn_itom_cloud_svc) plugin.
• Onboard your instance to use ITOM Cloud Services. For details, contact Customer Support.
• Configure an agent registration key. For details, see Configure an agent registration key.
• Role required: agent_client_collector_admin

About this task
For details on sending data through the cloud in a MID-less deployment, see DEX Architecture

.

Procedure
1. Retrieve the agent registration key:
a. Navigate to All > Agent Client Collector > Deployment > Agent Registration Key.
b. Select the relevant agent registration key.
c. Copy the registration key value and store it in a place where you can easily retrieve it, when
needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4241


<!-- page 4242 -->
2. Retrieve the publicly accessible gateway URL, based on your location.
◦ AMER (Americas): itomcnc-prod-gateway.amer.sncapps.servicenow.com:443
◦ EMEA (Europe): itomcnc-prod-gateway.emea.sncapps.servicenow.com:443
◦ APAC (Asia Pacific): itomcnc-prod-gateway.apac.sncapps.servicenow.com:443
3. On the Linux server where the agent is installed, enter the following command:
CONNECT_WITHOUT_MID="true" ACC_CNC="<gateway_endpoint>"
REGISTRATION_KEY="<registration_key>"
INSTANCE_URL="https://<instance_url>" bash -c "$(curl -L
https://<instance_url>/api/sn_agent/agents/install_agent)"
For details on the parameter values in the command, see Agent Client Collector MID-less
installation command parameters.
Install MID-less Agent Client Collector manually in a macOS environment
Install MID-less Agent Client Collector manually on a macOS machine to enable sending data
from the agent to the instance through the cloud. Sending information through the cloud allows
the MID Server to be used for more persistent resources.

Before you begin
• Install the ITOM Cloud Services Core (sn_itom_cloud_svc) plugin.
• Onboard your instance to use ITOM Cloud Services. For details, contact Customer Support.
• Configure an agent registration key. For details, see Configure an agent registration key.
• Role required: agent_client_collector_admin

About this task
For details on sending data through the cloud in a MID-less deployment, see DEX Architecture

.

Procedure
1. Download the installation files to your local machine.
curl -L <download link from the Agent Downloads page on the
instance>
2. Validate the installation file signature.
pkgutil --check-signature agent-client-collector-<version
number>-macos-catalina_x64.pkg

Note: Ensure that the pkg certificate chain has the ServiceNow developer ID installer
certificate.
3. Install the Agent Client Collector package.
sudo installer -pkg agent-client-collector-<version
number>-macos-catalina_x64.pkg -target /
4. Copy the installation files.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4242


<!-- page 4243 -->
a. Sample configuration file:
sudo cp -p /Library/Application\ Support/servicenow/agentclient-collector/acc.yml.example /Library/Application\ Support/
servicenow/agent-client-collector/acc.yml
b. Sample allow list file:
sudo cp -p /Library/Application\ Support/servicenow/agentclient-collector/check-allow-list.json.default /Library/
Application\ Support/servicenow/agent-client-collector/checkallow-list.json
5. Optional: To create new check definitions to be included in the allow list, first disable the allow
list by commenting out the allow-list parameter in the acc.yml file.
(Optional) sudo -H -u _servicenow vi /Library/Application\ Support/
servicenow/agent-client-collector/acc.yml

Note: This action compromises your system's security and is recommended only as a
temporary measure until you finish updating the allow list. After completing the update,
uncomment the allow list parameter in the configuration file to re-activate the allow list.
For details on adding custom checks to an allow list, see Generate an Agent Client Collector
allow list.
6. In the acc.yml configuration file:
a. Set the following parameters:

Parameter

Value

backend-url

"<gateway URL>"

connect-without-mid

true

instance-url

"<instance URL>"

registration-key

"<regsitration-key>"

insecure-skip-tls-verify

false

b. Comment out the api-key parameter.
7. Save the configuration file.
8. To ensure that the configuration file points to a valid endpoint, run the following commands to
restart the Agent Client Collector:
sudo launchctl unload
-w /Library/LaunchDaemons/com.sn.acc.plist
sudo launchctl load -w /Library/LaunchDaemons/com.sn.acc.plist

Note: By default, exiting the installation program causes the program to restart
immediately. To ensure that the program remains stopped after exiting, set the KeepAlive
property in the /Library/LaunchDaemons/com.sn.acc.plist file to false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4243


<!-- page 4244 -->
Install MID-less Agent Client Collector using a single-line command in a macOS environment
Install MID-less Agent Client Collector on a macOS machine to enable sending data from the
agent to the instance through the cloud. Sending information through the cloud allows the MID
Server to be used for more persistent resources.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4244


<!-- page 4245 -->
Parameter

Value

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

Configure an agent registration key
Configure an agent registration key so that you can deploy MID-less Agent Client Collector.
Deploying MID-less Agent Client Collector enables you to use the MID Server for more persistent
resources.

Before you begin

Install the plugins necessary for deploying MID-less Agent Client Collector.
Role required: agent_client_collector_admin

About this task

The Cleanup Agent Registration Keys scheduled job runs daily and deletes expired
registration keys. The length of time for which a registration key is valid is controlled by the
sn_agent.registration_key_validity.days property, based on when the key was
created. The amount of time that the customer is notified prior to upcoming key expiration is
controlled by the sn_agent.registration_key_notification.days property.
If a key's expiration date is approaching, create a new registration key and enter it into any
existing automation jobs to prevent registration outage.

Procedure
1. Navigate to All > Agent Client Collector > Deployment > Agent Registration Key.
2. Select New.
3. In the Name field, enter a descriptive name for the registration key.
4. Optional: To receive notifications when a registration key is soon to expire, select a group with
a valid email address in the Ownership Group field.
When keys are deleted via the Cleanup Agent Registration Keys scheduled job, the indicated
group receives an email notification.
5. Select Submit.

Result

The new agent registration key is ready to use for installation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4245


<!-- page 4246 -->
Related topics
Installing MID-less Agent Client Collector
Agent Client Collector Framework configuration properties

Agent Client Collector installation on macOS system
Install Agent Client Collector on a system that uses macOS. You can either use a single-line
command script or follow a manual installation procedure if the agent is not connected to the
instance or you want enhanced customization options.
To enable privileged access to information on the macOS system, add the _servcienow user
account to the admin group (or equivalent).
Incorporating the Agent Client Collector into a custom base image for mass deployment is not
supported on macOS.
Perform a single-line Agent Client Collector installation on macOS
Use an efficient single-line command script to install Agent Client Collector on a machine
that uses macOS operating system. Use the manual installation procedure if the agent is not
connected to the instance or you want enhanced customization options.

Before you begin
• Ensure that you have configured the Agent Client Collector web server.
• Verify that your server's OS and version matches the list of supported OS versions as
described in Agent Client Collector installation.
• Ensure that you have the pkgutil packages available, to be used by the install script.
• Ensure that the target agents have connectivity to the following:
◦ ServiceNow install server [install.service-now.com]
◦ ServiceNow instance
◦ The MID Server to which the agent will connect
Role required: agent_client_collector_admin

Procedure
1. Retrieve the MID Server websocket URL parameters.
a. Navigate to Agent Client Collector > Websocket Endpoint.
b. Select the relevant websocket endpoint.
c. Copy the Endpoint URL field value to be used in the installation command.
2. Retrieve the API Key.
a. Navigate to Agent Client Collector > Deployment > MID Web Server API Key.
b. Copy the API Key value, to be used in the installation command.
3. Run the following command on the server where the Agent Client Collector is being installed.
ACC_API_KEY=<api_key>
ACC_MID=wss://<mid_ip>:<websocket_port>/ws/events
bash -c "$(curl -L https://<instance
URL>/api/sn_agent/agents/install_agent)"
Enter the following values in the command line:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4246


<!-- page 4247 -->
Command line parameters
Parameter

Value

ACC_API_KEY

Replace the <api_key> string with the
API key used to access the MID Server
websocket. If no value is specified, you will be
prompted to enter the API key value during
the script's execution.

ACC_MID

Replace the <mid_ip> string with the
URL of the MID Server websocket. When
specifying multiple MID Servers, enter a
string separated by commas for each MID
Server.

ACC_ALLOW_LIST

(Optional) Add the string
ACC_ALLOW_LIST=0 to disable the allow
list. By default, the allow list is enabled.

Note: Disabling the allow list
compromises your system's security
and is recommended only as a
temporary measure until you finish
updating the allow list. After completing
the update, re-activate the allow list by
removing ACC_ALLOW_LIST=0 from
the single-line command string.
ACC_VALIDATE_SIG

(Optional) Add the string

ACC_VALIDATE_SIG=0 to disable
verifying the installer certificate validation. By
default, validation is enabled.
Default: Validation is enabled.

Note: Disable certification validation
only when using non-standard signature
validation tools.

Manually install Agent Client Collector on macOS
Install Agent Client Collector manually on a machine that uses macOS when the agent is not
connected to the instance or you want enhanced customization options.

Before you begin
• Ensure that you have configured the Agent Client Collector web server.
• Verify that your server's OS and version matches the list of supported OS versions as
described in Agent Client Collector installation.
• Navigate to Agent Client Collector > Deployment > Agent Downloads and download the
signed .pkg relevant for your OS.
• Store the .pkg installation package on one of your installed agents.
Role required: agent_client_collector_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4247


<!-- page 4248 -->
Procedure
1. Download the installation files to your local machine.
curl -L <download link from the Agent Downloads page on the
instance>
2. Validate the installation file signature.
pkgutil --check-signature agent-client-collector-<version
number>-macos-catalina_x64.pkg

Note: Ensure that the pkg certificate chain has the ServiceNow developer ID installer
certificate.
3. Install the Agent Client Collector package.
sudo installer -pkg agent-client-collector-<version
number>-macos-catalina_x64.pkg -target /
4. Copy the installation files.
a. Sample configuration file:
sudo cp -p /Library/Application\ Support/servicenow/agentclient-collector/acc.yml.example /Library/Application\ Support/
servicenow/agent-client-collector/acc.yml
b. Sample allow list file:
sudo cp -p /Library/Application\ Support/servicenow/agentclient-collector/check-allow-list.json.default /Library/
Application\ Support/servicenow/agent-client-collector/checkallow-list.json
5. Optional: To create new check definitions to be included in the allow list, first disable the allow
list by commenting out the allow-list parameter in the acc.yml file.
(Optional) sudo -H -u _servicenow vi /Library/Application\ Support/
servicenow/agent-client-collector/acc.yml

Note: This action compromises your system's security and is recommended only as a
temporary measure until you finish updating the allow list. After completing the update,
uncomment the allow list parameter in the configuration file to re-activate the allow list.
For details on adding custom checks to an allow list, see Generate an Agent Client Collector
allow list.
6. Save the configuration file.
7. In the configuration file, connect the agent with the MID Server.
a. Set the MID Server connection.
"wss://<MID Server IP>:<Web Socket Port>/ws/events"
The web socket port was configured on the MID Server when it was set as an Agent Client
Collector listener.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4248


<!-- page 4249 -->
b. Locate the api-key parameter and specify the API key value inside double quotation
marks, as follows:

api-key:"111111111"
The specified API key is encrypted the first time the agent runs.
8. To ensure that the configuration file points to a valid endpoint, run the following commands to
restart the Agent Client Collector:
sudo launchctl unload
-w /Library/LaunchDaemons/com.sn.acc.plist
sudo launchctl load -w /Library/LaunchDaemons/com.sn.acc.plist

Note: By default, exiting the installation program causes the program to restart
immediately. To ensure that the program remains stopped after exiting, set the KeepAlive
property in the /Library/LaunchDaemons/com.sn.acc.plist file to false.
Upgrade Agent Client Collector manually on a macOS system
Perform a manual upgrade of your existing Agent Client Collector version on a system running
a macOS. Manual upgrade is useful if the single-line command script isn’t connected to the
instance or you want to use enhanced customization options.

Before you begin
• The upgrade procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

Procedure
1. Optional: Manually back up the agent-id and acc.yml configuration files by running the
following commands.
mkdir -p /tmp/acc-upgrade-backup
cp -rp /Library/Application\
Support/servicenow/agent-client-collector/acc.yml /
tmp/acc-upgrade-backup
cp -rp /Library/Application\
Support/servicenow/agent-client-collector/check-allow-list.js
on /tmp/acc-upgrade-backup
cp -rp /Library/Application\
Support/servicenow/agent-client-collector/agent_now_id /
tmp/acc-upgrade-backup
Manually backing up the configuration files provides an added layer of security by ensuring
that your files are backed up before beginning the upgrade process.
2. Navigate to All > Agent Client Collector > Deployment > Agent Downloads.
3. In the macOS Downloads section, download the relevant agent package and signature .pkg
files.
4. Perform package upgrade, based on the cpu your macOS runs with.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4249


<!-- page 4250 -->
◦ Intel cpu:
sudo installer -pkg agent-client-collector-<version
number>-macos_x64.pkg
◦ Apple silicon cpu:
sudo installer -pkg agent-client-collector-<version
number>-macos_arm64.pkg
This command also backs up and restores the agent-id and configuration files before
upgrading.
5. Verify that the upgrade was successful.
a. Navigate to All > Agent Client Collector > Agents.
b. Verify the following values for your agent:
▪ Host data collection = Collected
▪ Version = <Relevant version number>
Uninstall Agent Client Collector from macOS using a single-line command
Uninstall Agent Client Collector from macOS machine by running an efficient single-line
command. If the agent is connected to the instance, uninstall Agent Client Collector manually.

Before you begin
• The uninstall procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

Procedure
Run the following command.
bash -c "$(curl -L https://<Instance
URL>/api/sn_agent/agents/install_agent)" -s "--remove"

Note: Uninstalling the Agent Client Collector removes the acc.yml file and its directory
from your machine. The user and group _servicenow, created as part of the installation
process, is also removed.
Uninstall Agent Client Collector from macOS machine manually
Uninstall Agent Client Collector from macOS machine manually instead of using the single-line
procedure when the specific agent is not connected to the instance.

Before you begin
• The upgrade procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

Procedure
1. In a command window, disable and stop the service:

sudo launchctl unload -w /Library/LaunchDaemons/com.sn.acc.plist

2. Delete the following files/directories:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4250


<!-- page 4251 -->
sudo rm /Library/LaunchDaemons/com.sn.acc.plist
sudo rm -rf /opt/servicenow/agent-client-collector
sudo rm -rf /var/run/servicenow/agent-client-collector
sudo rm -rf /Library/Application\
Support/servicenow/agent-client-collector
3. Remove the _servicenow user and group.
sudo /usr/bin/dscl . -delete /Users/_servicenow
sudo /usr/bin/dscl . -delete /Groups/_servicenow
4. Remove the pkg from the list of installed packages.
sudo pkgutil --forget com.servicenow.agent-client-collector

Perform Zscaler remediation
If the Zscaler application installed on your Windows or macOS agent is not running efficiently,
you can stop and start the app. This process is called remediation. Running remediation
automatically creates an incident on the agent. You can also view Zscaler statuses on the Zscaler
dashboard as a graph.
By default, the Zscaler Monitoring Policy monitoring check runs every 30 minutes to check
the status of the Zscaler app running on your agent. The Zscaler monitoring policy contains the
following checks:
• zscaler-monitoring-check: Checks the status of the Zscaler app running on your
agent.
• zscaler-remediation-check: Invoked only when the Zscaler app is not running
efficiently. This check shuts down and restarts the app, and automatically creates an incident.
Only one incident is created every 24 hours for a Zscaler app that does not remediate properly.
For example, if the remediation check runs multiple times on an agent, new remediation
records are created which are associated with the same incident until 24 hours have passed,
at which time a second incident is created. When the Zscaler app restarts successfully, the
incident closes.
Zscaler remediation produces the following output:
◦ Amount of data produced per remediation: 2KB
◦ Maximum number of remediations that can run in a day: 48 (one every 30 minutes)
◦ Maximum amount of data produced by a single agent, per day: 96KB
◦ Maximum amount of data produced by a 20K agents, per day: 1.92GB
Check Zscaler monitoring
Check the monitoring status of your Zscaler app, to verify that it is running properly.

Before you begin

Role required: agent_client_collector_admin

About this task

If the monitoring app is down, the Zscaler tunnel status is either 51(SERVICE-DOWN-ERROR)
or 56(SYSTEM_SOCKETS_EXHAUSTED_ERROR). When that happens, a remediation check
runs, which shuts down and then starts the Zscaler app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4251


<!-- page 4252 -->
By default, the Zscaler monitoring check (zscaler-monitoring-check) runs automatically
every 30 minutes. If you are experiencing problems with your Zscaler app, you may want to run
the check more often or immediately. For details, see Customize the Zscaler monitoring check.

Procedure
1. Navigate to All > Remediate Zscaler VPN > Monitoring Status.
The Application Monitoring Status page appears.
Application Monitoring Status page

◦ If the Zscaler app is running properly, the Application Status column displays the Up value.
◦ If the Zscaler app is not running properly, the Application Status column displays the Down
value.
2. If the Application Status column displays the Down value, the remediation check (zscalerremediation-check) runs.
◦ For details on customizing the amount of time after which the system verifes the Zscaler
status, see Customize the Zscaler remediation wait time.
◦ For details on monitoring Zscaler remediation checks, see Check Zscaler remediation.
Customize the Zscaler remediation wait time
Configure the amount of time (in seconds) by which the Zscaler remediation check verifies the
Zscaler status. This amount of time indicates how often the system checks the Zscaler status
after the remediation check runs.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to Agent Client Collector > Agents > Configuration > Check Definition.
2. Select zscaler-remediation-check.
3. In the Command field, modify the value to: zscaler_app_remediator.rb -wait_time=<time_in_sec>, where <time_in_sec> is the number of seconds the
system waits before checking the Zscaler status.
By default, the system waits 30 seconds.
4. Select Save.
◦ If the Zscaler app is running within the configured wait_time, the remediation result is
Success.
◦ If the Zscaler app is not running within the configured wait_time, the remediation result is
Failed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4252


<!-- page 4253 -->
Customize the Zscaler monitoring check
Customize the frequency by which the Zscaler monitoring check runs. By default, the Zscaler
monitoring check runs every 30 minutes. If your Zscaler app is not working efficiently, you can set
the check to run more frequently.

Before you begin

Role required: agent_client_collector_admin

About this task

For details on customizing the Zscaler monitoring check, see Perform Zscaler remediation.

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Policies.
2. Select the Zscaler Monitoring Policy entry.
3. Select the Scheduling tab.
4. In the Interval (sec) field, modify the value to the number of seconds for the monitoring check
to wait in between executions.
The default value is 1800.
To run the monitoring check immediately, enter a value of 1.

Result

Zscaler monitoring checks run according to the frequency specified in the Interval (sec) field.
Check Zscaler remediation
Verify that Zscaler remediation stops and starts the Zscaler app after the remediation monitoring
check fails.

Before you begin

Verify that the Zscaler monitoring check returns an Application Status value of Down, indicating
that the Zscaler app isn’t working properly.
Role required: agent_client_collector_admin

Procedure
Navigate to All > Remediate Zscaler VPN > Remediation Result.
The Application Remediation Status page appears.
Application remediation status page

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4253


<!-- page 4254 -->
When remediation successfully shuts down and restarts Zscaler, the Remediation Result
column has a value of Success. The Task Associated column displays a link to the incident
created on remediation. When remediation is successful, the incident closes automatically.
Use the Zscaler dashboard
Use the Zscaler dashboard to view Zscaler monitoring and remediation statuses in graph format.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Remediate Zscaler VPN > Dashboard.
The Zscaler Remediation Dasbhoard appears.
Zscaler Dashboard

The dashboard displays graphs divided according to the following sections:
Zscaler Remediation Dashboard sections
Section

Description

Application Monitoring Status

Displays a bar graph of the number of Zscaler
apps by date, and their statuses (Up, Down,
Unknown, Other).

Remediation Result

Displays a line graph of the number of Zscaler
remediations, and their statuses (Success,
Failed, Not Required).

Zscaler Incidents

Displays a line graph of the number of
Zscaler incidents created, and their statuses
(Opened, Closed).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4254


<!-- page 4255 -->
2. Optional: In the Host CI window on the upper right side of the page, select the CI whose data
you want to view.
The default value is All, indicating that the dashboard displays data from all of the CIs on the
host.

Choose and configure metrics to monitor
Metric Intelligence uses data sources that can be monitoring hundreds of metrics for all CIs.
Choose for each data source type which details are important for which CIs, and then activate or
deactivate the respective monitor type to control the amount of data that is being processed.

Before you begin

See Get started with Metric Intelligence for the high level steps of setting up Metric Intelligence.
Role required: evt_mgmt_admin

About this task

The SCOM data source, available by default, collects about 400 metric types from discovered
devices such as '% Available Memory' and '% of Free Space'. Processing data from all metric
types can overload the system and impact performance. It might be necessary to deactivate
selected metric types for selected CIs to reduce that load.
The overall number of metrics that can be processed, depends on the number of MID Servers
and their hardware configuration. For details about hardware requirements and metrics
scalability, see MID Server and MID Server distributed cluster for Metric Intelligence.

Note: The Active setting (true or false) for a metric in the Monitoring System
Metric Types [sa_source_metric_type] table takes precedence over the setting for the
corresponding metric in the Metric To CI Mappings [sa_metric_map] table. If a metric
type in the Monitoring System Metric Types [sa_source_metric_type] table is disabled, all
records related to the corresponding metrics are removed from the Metric To CI Mappings
[sa_metric_map] table.

Procedure
1. Navigate to All > Event Management > Metrics > Metric Types.
The Monitoring System Metric Types displays the metric types that are being collected per
data source, per CI type.
2. Review the Monitoring System Metric Types list, and set the value in the Active column to
false or true, as necessary.

Column

Description

Source

Data source monitoring the metric type.

Source Metric Type

Metric such as '% Free Space' that is being
monitored for the CI type.

Anomaly Detection Action Level

The level of anomaly detection processing
and analysis applied to CIs and metrics. The
available options are:
◦ Metrics Only: Only gather metrics from the
data source without any further processing.
◦ Bounds: Includes the Metrics Only
processing level, and also creates a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4255


<!-- page 4256 -->
Column

Description

statistical model and shows bounds in
Insights Explorer.
◦ Anomaly Scores: Includes the Bounds
processing level, and also calculates and
displays anomaly scores.
◦ Anomaly Alerts: Includes the Anomaly
Scores processing level, and also creates
anomaly alerts, as applicable.
◦ IT Alerts: Includes the Anomaly Alerts
processing level, and also creates IT alerts
which are based on anomaly alerts, as
applicable.
Monitored Object Type

CI type that is being monitored.

Active

Determines whether the metric data is
processed by Event Management alert
aggregation and RCA metrics.

Unit

Unit type that is associated with the
source metric type, displayed in the Metric
Intelligence reports.

Create a configuration settings rule
Configuration settings affect how metric data is processed. Configuration settings rules override
the default metric processing behavior to determine the system actions when an anomaly is
detected.

Before you begin

Role required: evt_mgmt_admin

About this task

A number of configuration settings determine the behavior of Metric Intelligence MID Servers. In
the base system, these configuration settings are configured with default values, data types, and
range of valid values. You cannot directly modify these configuration settings or add new ones.
However, you can create a metric configuration rule with new configuration settings that override
the default values on the MID Servers.
Then, manually apply these rules to all Metric Intelligence MID Servers in a single
synchronization operation, or rely on an hourly system job to perform the synchronization.
To take effect, Metric Intelligence MID Servers must be synchronized with the updates to the
configuration settings rules.
It is valid to have multiple rules for a setting that affect the same CIs, in which case:
• Rules in which a filter is defined take precedence over a global rule in which no filter has been
defined.
• If multiple rules that affect the same set of CIs have the same priority, then only the latest rule
to be defined is applied.
• If multiple rules with different priorities affect the same set of CIs, then rules with the highest
priority are applied.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4256


<!-- page 4257 -->
Procedure
1. Navigate to All > Event Management > Anomaly Detection > Metric Config Rules.
2. On the Metric Configuration Rules pane, click New, and fill out the form.
Metric Configuration Rules form
Field

Description

Name

Rule name.

Order

Rule priority within all other rules. Higher numbers represent higher
priorities.

Filter by

Check box for displaying the Rule field, where you can specify
conditions that CIs must meet for the rule to apply. For example, in
the choose field list, select Add Related Fields and then add the
filter [class][is][Linux Server].
If clear, the rule applies globally to all CIs in the Metric To CI Mapping
[sa_metric_map] table.

3. Right-click the form title, and click Save.
4. In the Metric overridden configurations form section click New, fill out the form, and then click
Submit.
Metric overridden configurations form
Field

Description

Name

Configuration setting for which to override its value.
Click the

icon to display the list of all configuration settings.

Click the
icon to display the Metric Settings dialog with details
such as range of possible values.
See the following tables (Configuration Settings and Internal
Configuration Settings) for details about configuration settings.
Rule

Rule to which the created configuration setting applies.

Value

New value that overrides the default value for the specified
configuration setting.

You can modify the following configuration settings in the Name field.

Note: The filter specified in the metric configuration rule does not apply to settings with
a global scope.
Configuration Settings
Name and Description

anomaly_detection_enabled

Values

Default

Data Type

Scope

N/A

true

boolean

CI/Metric

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4257


<!-- page 4258 -->
Name and Description

Values

Default

Data Type

Scope

choice

CI/Metric

Enable/disable anomaly
detection.

Note: If
anomaly_detection_action_level
is set, then
anomaly_detection_enabled
is ignored.

anomaly_detection_action_level

choices:

◦ New records:
◦ Metrics Only
Bounds

Action level of anomaly analysis ◦ Bounds
and processing.
◦ Anomaly
Scores
For more information, see
Configure the action level for
◦ Anomaly
anomaly detection.
Alerts

◦ Upgraded
records:
Anomaly
Alerts

◦ IT Alerts
buffer_anomaly_eviction_size

60–1440

60

integer

Global

60–1440

60

integer

Global

60–1440

60

integer

Global

30–60

30

integer

Global

10–100

30

integer

Global

Maximum number of anomalies
at individual metric level that
can be stored in internal buffer
before sending them to instance
for every CI/Metric pair.
buffer_ci_score_eviction_size
Maximum number of anomalies
at CI level that can be stored in
internal buffer before sending
them to instance (Currently not
being used)
buffer_metric_eviction_size
Maximum number of metrics
that can be stored in internal
buffer before sending them to
instance for every CI/Metric pair.
connection_login_timeout_secs
Maximum time in seconds to log
in to the local database on MID
Server.
corrupt_data_count_threshold

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4258


<!-- page 4259 -->
Name and Description

Values

Default

Data Type

Scope

false

boolean

Global

10-120

10

integer

CI/Metric

10–50

25

integer

Global

1–1440

1

integer

CI/Metric

50–100

90

double

Global

sparse_gap_fraction_threshold 0–100

50

double

Global

14-90

15

integer

CI/Metric

2-90

3

integer

CI/Metric

Minimum number of training
points (15-minute averages)
required to do any statistical
analysis.
N/A
deprioritize_early_batching_of_anomalous_ci
Send anomalous CI information
immediately or at regular
interval.
mad_model_min_days
Number of days for which data
must be available to consider
a Median Absolute Deviation
based model.
max_pool_connections_size
Maximum number of
connections for local database
pool.
observation_time_min
Expected minimum metric
observation interval.
robust_central_percentage
Percentage of the residual
data to compute the residual
standard deviation, used for
outlier detection. When set to
100 - uses the regular sample
standard deviation.

If more than this percentage of
data is missing and no other
class has been identified,
classify as SPARSE. Do not
attempt to fit a WEEKLY model.
weekly_model_min_days
Number of days for which data
must be available in order
to consider only a WEEKLY
seasonality decomposition.
daily_model_min_days

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4259


<!-- page 4260 -->
Name and Description

Values

Default

Data Type

Scope

N/A

true

boolean

CI/Metric

0 – 1e9

5000

integer

Number of days for which
data must be available in
order to consider only a DAILY
seasonality decomposition.
build_snpm_model
Enable/disable building an
SNPM data model.
snpm_minimum_data_count

CI/Metric

Minimum number of data points
required for building a stationary
nonparametric model.
The following configuration settings are for internal usage.
Internal Configuration Settings
Name and Description

anomaly_memory_time_min

Values

Default

Data Type

Scope

1–600

45

double

CI/Metric

0–3

0.8

double

CI/Metric

0.5–5

1

double

Global

0–100

50

double

Global

0.0000000001–
0.0001
0.001

double

Global

0–100

double

Global

Anomaly score calculator
parameter: Memory time for
abnormal situation.
excess_z_score
Anomaly score calculator
parameter: Minimal anomalousness
accumulated for outlier.
linear_accumulator_threshold
Decision Tree Threshold:
ACCUMULATOR analysis
low_freq_power_threshold
Decision Tree Threshold: WEEKLY
analysis
low_variability_threshold
Decision Tree Threshold: TRENDY
analysis
mid_freq_power_threshold

33

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4260


<!-- page 4261 -->
Name and Description

Values

Default

Data Type

Scope

1–1000

40

integer

Global

0–100

5

double

Global

1–600

1

double

CI/Metric

1–600
normal_probability_ewma_timescale_min

15

double

CI/Metric

0–1

1

double

CI/Metric

0–5

2.1

double

CI/Metric

0–5

1.2

double

CI/Metric

0–0.001

0.0000000001
double

Global

7–14

10

Global

Decision Tree Threshold: WEEKLY
analysis
multinomial_count_threshold
Decision Tree Threshold:
MULTINOMIAL analysis
non_zero_diff_threshold
Decision Tree Threshold:
NEAR_CONSTANT analysis
normal_memory_time_min
Anomaly score calculator
parameter: Memory time for normal
situation.

Anomaly score calculator
parameter: Normal assessment
time-scale.
normal_probability_weight
Anomaly score calculator
parameter: Normal assessment
adjustment factor.
sigmoid_offset
Anomaly score calculator
parameter: Anomalousness to score
conversion.
sigmoid_weight
Anomaly score calculator
parameter: Anomalousness to score
conversion.
tiny_variability_threshold
Decision Tree Threshold:
NEAR_CONSTANT analysis
weekly_peak_hi_limit

double

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4261


<!-- page 4262 -->
Name and Description

Values

Default

Data Type

Scope

0.5–7

0.7

double

Global

200

double

200

double

200

double

50

double

6–24

12

double

N/A

true

boolean

Decision Tree Threshold: WEEKLY
analysis.
weekly_peak_lo_limit
Decision Tree Threshold: Weekly
analysis.
100–1000
weekly_vs_daily_log_likelihood_threshold

CI/Metric

By how much log likelihood of
weekly needs to be larger than
daily, to be the preferred statistical
model.
20–1000
daily_vs_noisy_log_likelihood_threshold

CI/Metric

By how much log likelihood of daily
needs to be larger than noisy, to be
the preferred statistical model.
100–1000
weekly_vs_noisy_log_likelihood_treshold

CI/Metric

By how much log likelihood of
weekly needs to be larger than
noisy, to be the preferred statistical
model.
10–1000
trendy_vs_noisy_log_likelihood_threshold

CI/Metric

By how much log likelihood of
trendy needs to be larger than
noisy, to be the preferred statistical
model.
seasonal_loess_width_in_hours

CI/Metric

Applied to the seasonal component
of a weekly or daily model before
making a forecast of future
behavior. If set to 0, each data point
in the seasonal model becomes
independent of the rest of the data
points.
robustness

CI/Metric

Affects how outliers contribute to
seasonal and trend calculations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4262


<!-- page 4263 -->
Name and Description

snpm_min_value_threshold

Values

Default

Data Type

-1e9 – 1e9

0

double

120

integer

0.2

double

true

boolean

Scope

CI/Metric

Minimum value of data required for
building an SNPM model.
60 –
snpm_max_observation_interval_in_sec
600000

CI/Metric

Maximum expected observation
interval required for building an
SNPM model.
min_std_jump_fraction

0.0 – 1.0

CI/Metric

Minimum ratio of locally calculated
observation noise level to typical
jump size that justifies recalculating
a larger observation noise variance.
N/A
dynamic_threshold_error_smoothing

CI/Metric

Whether to use exponentially
weighted moving average to smooth
the residuals in the dynamic
threshold analysis.
ewma_alpha

1e-15 – 1.0

0.02739726027
double

CI/Metric

The alpha value of the exponentially
weighted moving average in
dynamic threshold analysis.
0 – 10000
250
dynamic_threshold_beginning_smoothing_length

integer

CI/Metric

Number of smoothed data points
to set to the mean of double the
smoothing length.
1 – 1000
dynamic_threshold_error_buffer_minutes

30

integer

CI/Metric

Number of data points around each
outlier to group together.
dynamic_threshold_search_start

0.5 – 20.0

3.0

double

CI/Metric

Start value at which the optimal
control factor is looked for.
dynamic_threshold_search_interval

0.1 – 5.0

0.5

double

CI/Metric

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4263


<!-- page 4264 -->
Name and Description

Values

Default

Data Type

1 – 50

19

integer

1 – 20
dynamic_threshold_error_sequence_limit

5

integer

5000

integer

1000

integer

Scope

Interval between search values of
optimal control factor.
dynamic_threshold_search_count

CI/Metric

Number of values required for
searching for optimal control factor.
CI/Metric

Maximum number of error groups
for a particular control factor value
when searching.
1 – 10000
dynamic_threshold_minimum_data_count

CI/Metric

Minimum number of raw data points
needed before attempting dynamic
thresholding.
10-5000
linear_seasonal_log_likelihood_threshold

CI/Metric

Threshold used in deciding whether
to prefer a fitted model with linear
seasonality over a model with a
periodic component.
Related topics
Configure multiple MID Servers to work with Agent Client Collector Monitoring
Synchronize configuration settings rules
Metric Intelligence configuration settings rules contain user specified values that override
default values that currently exist on Metric Intelligence MID Servers. To take effect, the Metric
Intelligence MID Servers must be synchronized with the updated set of configuration settings
rules.

Before you begin

Role required: evt_mgmt_admin

About this task

You can manually initiate a synchronization to immediately apply the updates on all Metric
Intelligence MID Servers. Or, you can rely on a system job, that runs on an hourly recurring
schedule, checking for updates to the metric configuration rules. If it is determined that there are
updates, the system job sends these updates to the Metric Intelligence MID Servers.

Procedure
1. Navigate to All > Event Management Rules > Anomaly Detection > Metric Config Rules.
2. On the Metric Configuration Rules pane, click Sync to MID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4264


<!-- page 4265 -->
What to do next

Verify that all Metric Intelligence MID Servers have been synchronized with the updated set of
configuration settings rules:
1. Navigate to Output and Artifacts > ECC Queue.
2. In the Queues pane, search the Topics column for MetricConfigProbe.
3. Check the Agent column and verify that all MID Servers are updated.

Understanding the Monitoring Technology Dashboard
The Monitoring Technology Dashboard enables you to monitor server resources for the platform
you select. The dashboard enables you to identify the CIs and servers in your system with the
highest resource consumption, and the most recent active alerts.
You can customize the appearance of individual widgets on the Monitoring Technology
Dashboard. For example, you could change the data parameters displayed for the CPU Utilization
(Linux) metric, like the date range. You can include the customized widgets when creating a
custom dashboard. For more information, see Customize the Monitoring Technology Dashboard.
The Monitoring Technology Dashboard shows the five CIs and servers with the highest metric
readouts during the past six hours, and the 50 most recent active alerts on your OS's servers.
To enable viewing the Monitoring Technology Dashboard, ensure that you have installed clotho
version 23.1.0.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select the OS whose metrics you want to view.
Select the arrow next to the dashboard name to enabled choosing a different dashboard to view:

Monitoring Technology Dashboard for Linux
With the Linux Monitoring Technology Dashboard, you can monitor the health and performance
of your Linux infrastructure. The dashboard enables you to identify the CIs and servers in your
system with the highest resource consumption, and also the most recent active alerts.

Overview of the dashboard
The Monitoring Technology Dashboard shows the five CIs and servers with the highest metric
readouts during the past six hours. The dashboard also shows the 50 most recent active alerts
on your OS's servers.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select Linux Server.

Using the Monitoring Technology Dashboard for Linux
Before using the Monitoring Technology Dashboard for Linux:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4265


<!-- page 4266 -->
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the Linux OS Events and Linux OS Metrics policies are enabled.
Enabling these policies activates metric to CI mapping.
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
Point to the relevant widget to view a specific point of data and all of its details in a pop-up
window. Select the Alerts tab to view the 50 most recent active alerts for CIs.
You can filter the dashboard data according to the following filters:
Dashboard filters
Filter name

Description

Time range filter

The time range for which you want metric data
to display on the dashboard.

Metrics by selected CI filter

The CIs for which you want metric data to
display on the dashboard.

Metrics by selected OS filter

The OS for which you want metric data to
display on the dashboard.

On the right side of widgets displaying a single metric, you can select the More options icon (
and select Change group by. Select the category you want to view the metric by: Host name,
Class, Operating System, or OS Version.

)

Linux server dashboard

The Metrics subtab displays the top five performing CIs and servers over the past six hours,
according to the following metrics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4266


<!-- page 4267 -->
• CPU Utilization
• System Uptime
• CPU Usage
• Load Average
• Memory
• Memory Distribution
• Processes
• Network Utilization
• Swap
• Disk Usage
You can customize the appearance of the individual widgets on the Linux Monitoring Technology
Dashboard. For example, you could change the timeframe for which the alerts appear. You
can also include customized widgets when you are creating a custom dashboard. For more
information, see Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for Windows
With the Windows Monitoring Technology Dashboard, you can monitor the health and
performance of your Windows infrastructure. The dashboard enables you to identify the CIs and
servers in your system with the highest resource consumption, and also the most recent active
alerts.

Overview of the dashboard
The Monitoring Technology Dashboard for Windows shows the five CIs and servers with the
highest metric readouts during the past six hours. The dashboard also shows the 50 most recent
active alerts on your OS's servers.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select Windows Server.

Using the Monitoring Technology Dashboard for Windows
Before using the Monitoring Technology Dashboard for Windows:
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the Windows OS Events and Windows OS Metrics policies are enabled:
Enabling these policies activates metric to CI mapping.
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select Windows Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4267


<!-- page 4268 -->
Point to the relevant widget to view a specific point of data and all of its details in a pop-up
window. Select the Alerts tab to view the 50 most recent active alerts for CIs.
You can filter the dashboard data according to the following filters:
Dashboard filters
Filter name

Description

Time range filter

The time range for which you want metric data
to display on the dashboard.

Metrics by selected CI filter

The CIs for which you want metric data to
display on the dashboard.

Metrics by selected OS filter

The OS for which you want metric data to
display on the dashboard.

On the right side of widgets displaying a single metric, you can select the More options icon ( )
and select Change group by. Select the category that you want to view the metric by: Host name,
Class, Operating System, or OS Version.

Windows server dashboard

The Metrics subtab displays the top five performing CIs and servers over the past six hours,
according to the following metrics.
• Processor Queue Length
• CPU Load
• System Uptime
• CPU Core
• RAM Usage
• Network Bandwidth
• Memory Distribution
• Network Flow
• Disk Usage
• Disk Read/Write
• Disk Distribution
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4268


<!-- page 4269 -->
You can customize the appearance of the individual widgets on the Windows Monitoring
Technology Dashboard. For example, you could change the timeframe for which the alerts
appear. You can also include customized widgets when you are creating a custom dashboard.
For more information, see Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for HTTP
With the HTTP Monitoring Technology Dashboard you can monitor the response time of your
http and https URLs. By using the dashboard, you can identify the URLs with the highest
metric readouts in your system's infrastructure, and view the most recent active alerts on those
URLs.

Overview of the dashboard
The HTTP Monitoring Technology Dashboard shows the five URLs with the highest metric
readouts during the past six hours. The dashboard also shows the 50 most recent active alerts
on those URLs.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select HTTP.

Using the Monitoring Technology Dashboard for HTTP
Before using the Monitoring Technology Dashboard for HTTP:
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the HTTP Entry Points Events and HTTP Entry Points Metrics policies are
enabled.
Enabling these policies activates metric to CI mapping.
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
The Azure Monitoring Technology Dashboard contains the tabs that are listed in the following
table.
HTTP Monitoring Technology Dashboard tabs
Tab

Description

Metrics

Displays the top 5 performing metrics that are
associated with the URLs in your system.

Alerts

Displays the 50 most recent alerts that are
associated with the URLs in your system.
Alerts help you to remediate your system by
providing information on problematic behavior.

On the right side of widgets displaying a single metric, you can select the More options icon (
and select Change group by. Select the category you want to view the metric by: Host name,
Class, Operating System, or OS Version.

)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4269


<!-- page 4270 -->
Point to the relevant widget to view a specific datapoint and all of its details in a pop-up window.
Use the Time range filter to filter the time range for which you want metric data to display on the
dashboard.
You can customize the appearance of the individual widgets on the HTTP Monitoring Technology
Dashboard. For example, you could change the data parameters that display for the Response
Time metric, like the time range that the response time is displayed. You can also include the
customized widgets when you’re creating a custom dashboard. For more information, see
Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for Azure
With the Azure Monitoring Technology Dashboard, you can monitor the health and performance
of your Azure infrastructure. By using the dashboard, you can identify the configuration items
(CIs) and servers with the highest metric readouts, and view the most recent active alerts on
those CIs.

Overview of the dashboard
The Azure Monitoring Technology Dashboard shows the five CIs and servers with the highest
metric readouts during the past six hours. The dashboard also shows the 50 most recent active
alerts in your Azure environment. Based on the dashboard metrics, you might want to resize your
CIs and servers to improve your system performance and efficiency.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select Azure Monitoring.

Using the Monitoring Technology Dashboard for Azure
Before using the Monitoring Technology Dashboard for Azure:
• Create an Azure credential. For details on creating Azure credentials, see Create Azure cloud
credentials.
• Create a Discovery schedule, using the credential created in the previous step. For details on
creating a Discovery schedule, see Discovery for Microsoft Azure Cloud.
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the Azure VM Metrics, Azure Storage Account Metrics, Azure Load Balancer
Metrics, Azure Gateway Metrics, and Azure Redis Cache Metrics policies are enabled
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
The Azure Monitoring Technology Dashboard contains the tabs that are listed in the following
table.
Azure Monitoring Technology Dashboard tabs
Tab

Description

Virtual Machines

Displays the metric data from the virtual
machines in the Azure environment.

Storage Accounts

Displays the metric data from the storage
accounts in the Azure environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4270


<!-- page 4271 -->
Azure Monitoring Technology Dashboard tabs (continued)
Tab

Description

Load Balancer

Displays the metric data from the load
balancers in the Azure environment.

Application Gateway

Displays the metric data from the application
gateway in the Azure environment.

Redis

Displays the metric data from the Redis cache
in the Azure environment.

Point to the relevant widget to view a specific datapoint and all of its details in a pop-up window.
You can filter the dashboard data according to the following filters:
Dashboard filters
Filter name

Description

Time range filter

The time range for which you want metric data
to display on the dashboard.

Metrics by selected CI filter

The CIs for which you want metric data to
display on the dashboard.

You can customize the appearance of the individual widgets on the Azure Monitoring Technology
Dashboard. For example, you could change the time that the CPU usage on virtual machines
is displayed. You can also include the customized widgets when you’re creating a custom
dashboard. For more information, see Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for AWS
With the AWS Monitoring Technology Dashboard, you can monitor the health and performance
of your AWS infrastructure. By using the dashboard, you can identify the configuration items (CIs)
and servers with the highest metric readouts, and view the most recent active alerts on those CIs
and servers.

Overview of the dashboard
The AWS Monitoring Technology Dashboard shows the five CIs and servers with the highest
metric readouts during the past six hours. The dashboard also shows the 50 most recent active
alerts in your AWS environment.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select AWS Monitoring.

Using the Monitoring Technology Dashboard for AWS
Before using the Monitoring Technology Dashboard for AWS:
• Create an AWS credential. For details on creating AWS credentials, see Setting up AWS
service accounts.
• Create a Discovery schedule, using the credential created in the previous step. For details on
creating a Discovery schedule, see Access setup for AWS service accounts.
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4271


<!-- page 4272 -->
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the AWS Metrics, AWS EC2 Metrics, and AWS DynamoDB Metrics policies are
enabled.
Enabling these policies activates metric to CI mapping.
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
The AWS Monitoring Technology Dashboard contains the tabs that are listed in the following
table.
AWS Monitoring Technology Dashboard tabs
Tab

Description

EC2

Displays the metric data from the EC2 (virtual
machines) in the AWS environment.

EC2 Alerts

Displays the active EC2 (virtual machine) alerts
in the AWS environment.

EBS

Displays the metric data from the EBS (storage
volume) in the AWS environment.

S3

Displays the metric data from the S3 (cloud
object storage) in the AWS environment.

RDS

Displays the metric data from the RDS (cloud
database) in the AWS environment.

ELB

Displays the metric data from the ELB (cloud
load balancing) in the AWS environment.

Dynamo DB

Displays the metric data from the Dynamo DB
(cloud database) in the AWS environment.

ECS Cluster

Displays the metric data from the ECS cluster
in the AWS environment.

ECS Service

Displays the metric data from the ECS service
in the AWS environment.

On the right side of widgets displaying a single metric, you can select the More options icon (
and select Change group by. Select the category you want to view the metric by: Host name,
Class, Operating System, or OS Version.

)

Point to the relevant widget to view a specific datapoint and all of its details in a pop-up window.
Select the Alerts tab to view the 50 most recent active alerts in your environment. Alerts help
you to remediate your system by providing the information on problematic behavior.
Use the Time range filter to filter the time range for which you want metric data to display on the
dashboard.
Use the Metrics by selected CI filter to select the CIs for which you want to view metrics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4272


<!-- page 4273 -->
You can customize the appearance of the individual widgets on the AWS Monitoring Technology
Dashboard. For example, you could change the time that the EC2 metrics appear. You can
also include the customized widgets when you are creating a custom dashboard. For more
information, see Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for GCP
With the GCP Monitoring Technology Dashboard, you can monitor the health and performance
of your GCP infrastructure. By using the dashboard, you can identify the configuration items (CIs)
and servers with the highest metric readouts, and view the most recent active alerts on those CIs
and servers.

Overview of the dashboard
The GCP Monitoring Technology Dashboard shows the five CIs and servers with the highest
metric readouts during the past six hours. The dashboard also shows the 50 most recent active
alerts in your GCP environment.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select GCP Monitoring.

Using the Monitoring Technology Dashboard for GCP
Before using the Monitoring Technology Dashboard for GCP:
• Create a GCP credential and use it to create a Discovery schedule. For details on creating GCP
credentials, see Discovery for Google Cloud Platform.
• Create a Discovery schedule, using the credential created in the previous step. For details on
creating a Discovery schedule, see Discovery for Google Cloud Platform.
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the GCP GCE Metrics policy is enabled.
Enabling this policy activates metric to CI mapping.
• Ensure that the clotho plugin version 1.19.0.10 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
The GCP Monitoring Technology Dashboard contains the tabs listed in the following table.
GCP Monitoring Dashboard tabs
Tab

Description

GCP

Displays graphs of the top 14 performing
OS resources, such as CPU, Memory, Disk
Operations and Network.

Alerts

Displays the 50 most recent alerts that are
associated with the URLs in your system.
Alerts help you to remediate your system by
providing information on problematic behavior.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4273


<!-- page 4274 -->
On the right side of widgets displaying a single metric, you can select the More options icon (
and select Change group by. Select the category you want to view the metric by: Host name,
Class, Operating System, or OS Version.

)

Point to the relevant widget to view a specific datapoint and all of its details in a pop-up window.
Use the Time range filter to filter the time range for which you want metric data to display on the
dashboard.
Use the Metrics by selected CI filter to select the CIs for which you want to view metrics.
You can customize the appearance of the individual widgets on the GCP Monitoring Technology
Dashboard. For example, you could change the timeframe for which the alerts appear. You
can also include customized widgets when you are creating a custom dashboard. For more
information, see Customize the Monitoring Technology Dashboard.
Monitoring Technology Dashboard for VMware vSphere
With the VMware vSphere Monitoring Technology Dashboard, you can monitor the health and
performance of your VMware vSphere infrastructure. By using the dashboard, you can identify
the configuration items (CIs) and servers with the highest metric readouts, and view the most
recent active alerts on those CIs and servers.

Overview of the dashboard
The VMware vSphere Monitoring Technology Dashboard shows the five CIs and servers with the
highest metric readouts during the past six hours. The dashboard also shows the 50 most recent
active alerts in your VMware vSphere environment.
To view the dashboard, navigate to All > AIOps Dashboards > Monitoring Technology
Dashboards and select VMWare vSphere Monitoring.

Using the Monitoring Technology Dashboard for VMware vSphere
Before using the Monitoring Technology Dashboard for VMware vSphere:
• Create a VMware vSphere credential and use it to create a Discovery schedule. For details on
creating VMware vSphere credentials, see Discovery for VMware Cloud.
• Create a Discovery schedule, using the credential created in the previous step. For details on
creating a Discovery schedule, see Discovery for VMware virtualization.
• Ensure that you’re working in the Agent Client Collector Monitoring scope in your ServiceNow
instance.
• Ensure that the agent_client_collector_admin and dashboard_admin roles are enabled.
• Enable Metric Intelligence on the MID Server.
• Ensure that the VSphere Datacenter Metrics, VSphere Datastore Metrics, VSphere ESX
Server Metrics and VSphere VirtualMachine Metrics policies are enabled.
Enabling these policies activates metric to CI mapping.
• Ensure that the clotho plugin version 1.1.0 or above is enabled.
• After upgrading from a previous version, follow the procedure described in the ACCM Dashboard Filters are not working when upgraded from Tokyo/Utah to Vancouver
[KB1438042]
article in the NOW Support Knowledge Base.
The VMware vSphere Monitoring Technology Dashboard contains the tabs listed in the following
table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4274


<!-- page 4275 -->
VMware vSphere Monitoring Dashboard tabs
Tab

Description

VirtualMachine

Displays graphs of the top VMware vSphere
VMs by metric type.

ESX Server

Displays graphs of the top VMware vSphere
ESX servers by metric type.

Datacenter

Displays graphs of the top VMware vSphere
datacenters by metric type.

Datastore

Displays graphs of the top VMware vSphere
datastores by metric type.

Alerts

Displays the 50 most recent alerts that are
associated with the URLs in your system.
Alerts help you to remediate your system by
providing information on problematic behavior.

On the right side of widgets displaying a single metric, you can select the More options icon (
and select Change group by. Select the category you want to view the metric by: Host name,
Class, Operating System, or OS Version.

)

Point to the relevant widget to view a specific datapoint and all of its details in a pop-up window.
You can filter the dashboard data according to the following filters:
Dashboard filters
Time range filter

The time range for which you want metric data
to display on the dashboard.

Metrics by selected CI filter

The CIs for which you want metric data to
display on the dashboard.

You can customize the appearance of the individual widgets on the VMware vSphere Monitoring
Technology Dashboard. For example, you could change the timeframe for which the alerts
appear. You can also include customized widgets when you are creating a custom dashboard.
For more information, see Customize the Monitoring Technology Dashboard.
Customize the Monitoring Technology Dashboard
Customize the Monitoring Technology Dashboard widgets in the Data Visualizations library so
your dashboard displays information exactly as you want to see it.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to the OS dashboard whose widgets you want to customize.
◦ To access the Windows Server Dashboard, navigate to All > AIOps > Monitoring
Technology Dashboard > Windows Server.
◦ To access the Linux Server Dashboard, navigate to All > AIOps > Monitoring Technology
Dashboard > Linux Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4275


<!-- page 4276 -->
2. Select Analytics Center > Data Visualizations.
3. View all available widgets by selecting the All tab.
4. Select the widget that you want to change.
5. Select the (

) icon, and select Duplicate.

6. In the New name field in the dialog box, enter a name for your duplicated widget, and select
Duplicate.
7. In the widget's Configuration tab on the right, expand the relevant options and customize the
information for the widget to display.
Configuration tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4276


<!-- page 4277 -->
For details on working with data visualizations, see Data visualizations in the Analytics Center
Data visualizations in the Analytics Center .
8. Select Save and close.

Result

Your customized widgets are saved in the Data Visualizations library, and can be used to
configure a customized dashboard (see Create a dashboard with the In-line editor ).

Setting exclusion lists for IPs and NICs
Agent Client Collector for Visibility - Content (ACC-VC) version 1.3.0 supports exclusion list for IPs
and Network Interface Controllers (NICs) with a flexible mechanism for filtering out values for IPs
and or NICs when creating or updating the host CI and related items.
The property [sn_acc_visibility.network_adapter_exclusion_list] contains
the list of regular expressions for the names and IP addresses that are excluded in the
Network Adapter and IP Address tables. The value of this property is comma-separated regular
expressions. Make sure that there is no comma in the regex and nic and ip_addr should be in
different lines.
Sample format of the value should be:
• nic = nameRegex1, nameRegex2, nameRegex3
• ip_addr = IPRegex1, IPRegex2

Generate a Pattern allow list
Generate an allow list for a specific scope or selection of patterns.

Before you begin

Ensure that the following plugins are installed on your instance:
• Discovery (com.snc.discovery)
• Pattern Designer Enhancements (com.sn_itom_pde)
Role required: discovery_admin or agent_client_collector_admin

Procedure
1. Navigate to All > Pattern Designer > Patterns allowlist for ACC.
The Pattern Allowlist Generator page appears.
2. Select the type of pattern selection in the Pattern Selection section.
◦ All patterns: The allow list generates for all patterns on the agent.
◦ Specific patterns: The allow list generates on the agent only for the patterns you select.
After selecting this option, choose the patterns from which you want the allow list to be
generated.
3. Select an application scope from which to choose patterns to be included in the allow list.
◦ All
◦ Discovery and Service Mapping Patterns
◦ Global

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4277


