# Zurich IT Operations Management — Certificate Inventory and Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1373–1449 of 4823

Sections: Certificate Inventory and Management (p1373)

---

<!-- page 1373 -->
Firewall Audits and Reporting Quick Start Test
Test

Description

Firewall Discovery

Firewall Discovery is performed on a firewall
endpoint. Discovery brings the firewall
manager, policies and devices, and persists
them to the cmdb_ci tables. This test validates
the firewall manager, policies, and devices
data in the cmdb_ci tables and output and
discovery errors during the discovery run.

To learn more, see Firewall Audits and Reporting.
Related topics
Quick start tests

Certificate Inventory and Management
With Certificate Inventory and Management, you can discover, conduct an inventory, and
proactively manage all TLS certificates. Certificate Inventory and Management supports IPv6,
providing comprehensive coverage for your certificate management needs.

Get started

Explore

Manage

Certificate Inventory
and Management

Certificate Inventory
and Management

Leverage Certificate
Inventory and
Management to create
and manage certificates

Learn how to set up
Certificate Inventory
and Management

Certificate Inventory and
Management reference

Familiarize yourself with
dashboards, tables,
patterns, and terms

Troubleshoot and get help
• What is certificate management?
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Certificate Inventory and Management
Certificate Inventory and Management serves as a centralized and automated solution for
handling the complexities of certificate management. It enhances security, ensures compliance,
and provides a streamlined approach to managing the lifecycle of digital certificates within an
organization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Certificate Inventory and Management overview
Certificate Inventory and Management is a centralized and automated solution designed
to streamline the tracking and management of digital certificates in an IT infrastructure. By
automating the discovery, inventory, and monitoring processes, Certificate Inventory and
Management enables organizations to maintain a comprehensive record of certificates,
including essential details like expiration dates and issuers.
The system facilitates real-time tracking, automates routine tasks such as renewals, and
supports customization to align with specific organizational needs. With integration capabilities
into existing CI-based Discovery schedules and support for IPv6, Certificate Inventory and
Management offers flexibility and efficiency in managing the entire lifecycle of certificates. Rolebased access control ensures secure and tailored usage, while alerts and notifications keep
administrators informed about critical events, contributing to enhanced security, compliance,
and operational efficiency in certificate management.

Certificate Inventory and Management workflow
Certificate Inventory and Management streamlines the process of scanning for certificates by
automatically detecting them on specific ports through your established Configuration Item (CI)based Discovery schedules. Additionally, Certificate Inventory and Management empowers
users with the flexibility to generate new Discovery schedules tailored for scanning individual
URLs. This dynamic approach ensures a robust and adaptable method for discovering and
managing certificates, contributing to a secure and well-organized IT infrastructure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
Process flow diagram

For more information on how Certificate Inventory and Management works, see Certificate
Inventory and Management process flow.

Certificate Inventory and Management benefits
Benefit

Feature

Users

Management of TLS certificates by
Configuring Certificate Certificate
maintaining a centralized inventory, prioritizing Inventory and
Administrator
certificates, and leveraging renewal workflows Management
[sn_disco_certmgmt.pki_admin]
to prevent costly outages and ensure a secure
environment.
Automated features to streamline tracking,
preventing manual oversight of a large volume
of certificates. Embrace a proactive approach
by staying informed about impending
expirations, contributing to a well-managed
and secure certificate environment.

Automated Certificate
Renewal

Certificate User

A secure and compliant certificate
environment is maintained by overseeing,
approving, validating, and authorizing

Approve certificate
tasks

Certificate Approver

[sn_disco_certmgmt.pki_user]

[pki_approver]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
Benefit

Feature

Users

necessary actions related to certificate tasks
and flows. This comprehensive approach
ensures that certificate renewal tasks
and incidents for expired certificates are
appropriately addressed, contributing to a
robust security framework.
Certificate Inventory and Management process flow
Certificate Inventory and Management allows Discovery to automatically scan for certificates on
specific ports through your existing CI-based Discovery schedules. In addition, you can create
new Discovery schedules to scan individual URLs.

How Certificate Inventory and Management works
In Version 1.1.7 Certificate Inventory and Management, you can also scan for certificate
authorities (CA) and import certificates from files.
With the Zurich release, you can download Version 1.2.0 Certificate Inventory and Management.
You can discover certificates used in the HTTP(s) Endpoint [cmdb_ci_endpoint_http] table and
bulk import a list of SSL Certificates. You can create events and alerts for expiring and expired
certificates and be notified in Slack of expiring and expired certificates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
Process flow diagram

The Certificate Inventory and Management process flow is segmented into two distinct phases:
• Pre-discovery phase: The initial segment of the process varies based on the source of
certificate discovery. This phase focuses on actions required for identifying certificates from
different sources within the IT infrastructure.
• Post-discovery phase: This phase involves subsequent actions taken after the certificates
have been successfully discovered. It includes processes such as cataloging, tracking, and
managing certificates to ensure their secure and efficient integration into the system.
Pre-discovery phase
The pre-discovery phase involves preparatory steps, such as defining scanning parameters and
configuring credential details, to ensure a smooth initiation of the certificate discovery process.

Discovery via Ports
The port probe [tls_ssl_certs] automatically scans 14 default preauthorized ports. The port probe
[tls_ssl_certs] automatically scans 14 default preauthorized ports.
• Typical ports for SSL: 443, 8443, 9443, 636 (ldaps), 993 (imaps), 995 (popssl), 989, 990
• StartTLS ports: 25 (smtp), 110, 143, 389, 21, 587 (smtp)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
As part of the CI Discovery process during Shazzam, the MID Server uses scanners to
gather certificate chain information from the IP port number, capturing diverse attributes,
including the certificate hierarchy. The MID Server then transforms these certificates
into an XML payload, sharing it with the instance. The Shazzam sensor, in turn, detects
the ECC queue entry and inserts a new record into the Discovered Certificate table
[sn_disco_certmgmt_certificate_history].
The following fields are pulled from the XML payload and verified in java code from the Shazzam
TLS port probe for discovered certificates: certificate id, revocation_status, subject, issuer, sans/,
is_self_signed, is_ca, valid_from, valid_to, signature_algorithm, fingerprint_algorithm, key_size,
serial_number, and version.

Discovery via URL
The Certificate URL [sn_disco_certmgmt_cert_url] table holds a list of URLs to target for
certificate discovery. Each record also has an optional reference to the Unique Certificate
[cmdb_ci_certificate] table, to see what certificate is related to the given URL definition. The
necessary parameters from the Discovery Schedule are combined to create and initialize
the Discovery status. The [CertificateDiscoveryFromURLScan] probe discovers the certificate
chain for each of the URLs in the batch and outputs an XML payload that contains the
certificate chain for each certificate. It also adds a new record into the Discovered Certificate
[sn_disco_certmgmt_certificate_history] table.

Discovery via Import Certificates (Version 1.1.7 Certificate Inventory and
Management)
The Import certificates are discovered through the Import SSL Certificate pattern, which relies on
the following parameters.
• Host name/IP where the certificates are hosted
• Folder where certificates are located
• TLS_keepOriginalCertificate: Setting this parameter to true may lead to increased payload size,
potentially causing out-of-memory issues.
• Mid_temp_folder: The temporary folder on the MID Server where files will be temporarily
copied.

Note: Auto-select MID Server option is NOT supported for Windows and Linux mid
combinations. If the MID Server is used for storing the original certificates files, then Host
name/IP should be set to blank or localhost and the particular MID Server should be
selected for the Discovery schedule.

Discovery via CA authority (Version 1.1.7 Certificate Inventory and Management)
Once the Certificate Inventory and Management credential is set up with either GoDaddy,
DigiCert, Entrust, or Sectigo Certificate Authority and the Discovery schedule runs, the
specific CA pattern makes REST API calls to (GoDaddy, DigiCert, Entrust, or Sectigo), collects
certificate information, retrieves the list of certificates, and stores it in the [cmdb_ci_certificate],
[certificate_domain], and [sys_attachment] tables.
ca_api_url and ca_api_version are optional parameters. If these parameters are left empty inside
pattern parameters, default values will be used. The default values include:
• DigiCert - Certificate Management (ca_api_version = v2, ca_api_url = https://www.digicert.com/
services/)
• Entrust - Certificate Management (ca_api_version = v2, ca_api_url = https://api.entrust.net/
enterprise/)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
• GoDaddy - Certificate Management (ca_api_version = v1, ca_api_url = https://
api.godaddy.com/)
• Sectigo - Certificate Management (ca_api_version = v1, ca_api_url = https://cert-manager.com/
api/ssl/)
The arguments for GoDaddy, DigiCert, Entrust, and Sectigo patterns are as follows. Starting from
Version 1.2.0, you have the capability to scan Sectigo and Entrust Certificate Authorities (CAs).
• Start_offset: The offset position for reading certificates from CA authorities, with a default value
of 0.
• Limit: The number of certificates to be read from the start_offset, with a default value of 1500.
• CredentialAlias: The name of the Credential Alias or Tag linked to the CA credentials, added in
the serverless execution pattern configuration.
If the TLS_keepOriginalCertificate parameter is set to true, the certificate file is attached to the
Certificate CI. This may increase payload size, potentially causing out-of-memory issues.
• IncludeCertStatus: A parameter for specifying additional certificate states to discover, in
addition to the defaults.
Certificate states by certificate authorities
Certificate Authority

Default States Discovered

Sectigo

◦ Issued
◦ Expired

DigiCert and GoDaddy

◦ Active
◦ Expired
◦ Revoked
◦ Canceled

Entrust

◦ Active
◦ Expired
◦ Revoked

You can include multiple certificate statuses by separating each with commas.

Note: The state field in the Unique Certificate [cmdb_ci_certificate] table denotes the life
cycle state of the certificate, not the raw state from the API. If the API returns states such
as issued, valid, expired, or canceled, they are stored as "issued" in the Unique Certificate
[cmdb_ci_certificate] table.
Once the pre-discovery phase is completed, move on to the post-discovery phase.
Post-discovery phase
Following the discovery phase, the system manages TLS certificates, offering flexibility for
both manual and automated request options, catering to various certificate-related tasks and
processes.
The TLS certificate chains, signed by the certificate authority and root,
populate the Unique Certificate [cmdb_ci_certificate] and Installed Certificate
[sn_disco_certmgmt_cmdb_installed_certificate] tables. Subsequently, a scheduled job reviews
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
the Unique Certificate table for expiring and expired certificates, initiating the creation and
assignment of certificate tasks and incidents.
You have the option to manually request new certificates and renew existing ones. For more
information, see Manual flow for certificate requests.
In Version 1.3.8, the capability to automate requests for new certificates, renewals, or revoking
certificates has been introduced. For more information, see Automated certificate management
for TLS certificates.
To optimize system performance, a table cleaner automatically removes old certificate records
from these two tables after a specified number of days:
• Discovered Certificate [sn_disco_certmgmt_certificate_history] table: older than 30 days
• Installed Certificate [sn_disco_certmgmt_cmdb_installed_certificate] table: older than 90 days

Note: You can toggle various behaviors related to Certificate Inventory and Management
depending on your needs, using specific certificate properties as shown in Discovery
properties and System properties .
The system scans for certificates that are expired or archived for more than six months. If
a replacement certificate exists, the system removes outstanding tasks for these obsolete
certificates.
The same six-month grace period applies for expired and archived certificates and certificate
tasks in the failed state.
Certificate Inventory and Management roles and responsibilities
Dedicated users with specialized roles are assigned to optimize the monitoring and tracking of
requests for new and renewing certificates.
The Certificate Inventory and Management dashboard and certificate configuration settings are
activated or deactivated depending on the assigned roles.

Role

Certificate Administrator
[sn_disco_certmgmt.pki_admin]

Responsibilities

The headless user (an account not tied to a specific
user) is included in the base system and equipped
with the sn_disco_certmgmt.pki_admin role.
It serves as the caller for automatically generated
renewal certificate tasks and incidents. To customize this
user, adjust the user ID using the Discovery property:

glide.discovery.certs.cert_admin_user_id
instead of leaving it as the default headless user.
Responsible for changing non-standard attributes in the
original certificate record, this role can modify attributes
like state, status, assigned to, assignment group,
renewal tracking, and service type. The certificate's
inherent attributes remain unaltered. The default state
for discovered certificates is installed, but this role
can manually adjust it to other states such as issued,
installed, revoked, and retired. Additionally, users with
this role have the capability to view diverse dashboards
and possess read/write access to certificates and
certificate tasks associated with certificate Discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
Role

Responsibilities

Note:
• The sn_disco_certmgmt.pki_admin role contains
the sn_disco_certmgmt.pki_user role.
• Any user with the pki_admin role can be added to
the approver field in the certificate request form.
Users with pki_admin role should be assigned
with the approval_admin role manually to approve
or reject requests from the certificate task form.
This approver does not need to login to approve
the task. In a certificate task form or related list,
system admin or a user with approval_admin role
or pki_admin role can add multiple approvers or
edit the existing one.
• The approver_user role is required if the user
wants to approve a request by logging in. Without
the approver_user role, a user doesn't have the
option to navigate to My Approvals where the
requests can be approved.
Certificate User
[sn_disco_certmgmt.pki_user]
Certificate Approver
[sn_disco_certmgmt.pki_approver]

Responsible for overseeing certificate discovery, this
role is granted the ability to access diverse dashboards
and has read/write permissions for certificates and
associated certificate tasks.
Responsible for certificate requests, a user with this role
(normal user) can initiate certificate requests through the
Service Catalog form.

Certificate Requester

Responsible for submitting certificate requests, this role
is granted the ability to request and renew certificates
[sn_disco_certmgmt.certificate_requester]
from the Service Catalog.

Configuring Certificate Inventory and Management
Establish a streamlined process for gaining insights into Certificate Inventory Management,
covering key aspects like certificate discovery, bulk upload functionality, maintenance of
certificate chain relationships, configuration of Credential Identifiers, customization of the
system, creation of new/renewal requests, archiving tasks, automation of TLS certificate
management, integration with Event Management, Slack notifications for alerts, and leveraging
cert-Manager for efficient certificate generation.

Configuration overview
Before using Certificate Inventory and Management, it's crucial to set up the necessary plugins,
ensure activation, upgrade your instance to the latest version, and download the Certificate
Inventory and Management application from ServiceNow Store. For additional details, see Get
started with Certificate Inventory and Management.
After the prerequisites are met, you can proceed with the following tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
Certificate Inventory and Management tasks
Task

Description

Visibility to TLS certificates

Establish an efficient Certificate Inventory
Management system by configuring certificate
discovery, enabling bulk certificate uploads,
managing chain relationships, configuring
secure access, and customizing the system to
meet specific organizational needs.

Manual flow for certificate requests

Enable the creation of new certificate requests
or certificate renewals within the system,
adhering to defined policies. Implement a
process to archive completed certificate tasks,
maintaining a historical record for auditing and
compliance purposes.

Automated certificate management for TLS
certificates

Set up automation processes to manage TLS
certificates, including renewal, updates, and
revocation as needed.

Certificate integrations and notifications

Establish integration between Event
Management systems and Certificate Inventory
Management for real-time monitoring and
response to certificate-related events.
Configure notifications to be sent to Slack
channels, keeping stakeholders informed about
critical certificate events and changes.

Certificate generation through Cert-Manager
Integration

Utilize Cert-Manager or a similar tool to
automate the certificate generation process,
ensuring efficient and secure issuance based
on predefined policies.

Get started with Certificate Inventory and Management
Prior to diving into the Certificate Inventory and Management application's functionality, meet
the necessary requirements by installing and activating the plugin, upgrading your instance, and
obtaining the Certificate Inventory and Management application from the ServiceNow Store.

Before you begin

Role required: admin

About this task
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Note: The ServiceNow Store regularly releases new applications and updates to
applications that are created by ServiceNow. If you already have the application, you can
download the latest version to enhance your existing experience with our products. Since
different features are available or enhanced each time an application is released in the
Store, the content and features available in a particular release are indicated by version
number in this document.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
Procedure
1. Ensure the following plugins are installed and activated.
◦ ITOM Visibility [com.snc.itom.vis.license] plugin
◦ Discovery [com.snc.discovery] plugin
◦ Configuration Management for Scoped Apps (CMDB) [com.snc.cmdb.scoped] plugin
2. Confirm that your system has been upgraded to Zurich or a later version.
During the upgrade process, the Certificate Inventory and Management
[com.sn_disco_certmgmt] plugin is automatically installed if the ITOM Visibility
[com.snc.itom.vis.license] and Discovery [com.snc.discovery] plugins are already installed.
3. Download the Certificate Inventory and Management application from ServiceNow Store.

Result

You are ready to get started with Certificate Inventory and Management.

Note: The MID Server needs access to the following endpoints based on your use case:
• Entrust: Discover Certificate URL: https://api.entrust.net/enterprise/
• Entrust Download root Certificate URL: https://web.entrust.com/rootcertificates/
• DigiCert: https://www.digicert.com/services/
• Sectigo: https://cert-manager.com/api/ssl/
• GoDaddy: https://api.godaddy.com/
Visibility to TLS certificates
The Certificate Inventory and Management application allows Discovery to automatically scan
for certificates on specific ports through your existing CI-based Discovery schedules. In addition,
you can create Discovery schedules to scan for specific URLs.
The ServiceNow Store regularly releases new applications and updates to applications that are
created by ServiceNow. If you already have the application, you can download the latest version
to enhance your existing experience with our products. Since different features are available or
enhanced each time an application is released in the Store, the content and features available in
a particular release are indicated by version number in this document.
In Certificate Inventory and Management, you can add a list of imported certificates to Run
Certificate Discovery via certificate file import, and scan for certificates from your Certificate
Authority (CA) such as GoDaddy and DigiCert. You can also scan Sectigo and Entrust CAs.
The existing certificate authority patterns for DigiCert to collect the following fields as part of the
CA Trust Certificate discovery. These fields are required to create an automated flow (request,
renew, or revoke) for certificates discovered by Digicert CA Discovery and are stored in the
Certificate Extensions [sn_disco_certmgmt_certificate_extension] table.
• Certificate Id
• Order id
• Thumbprint
• Serial Number
• Certificate Status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
Using the Certificate Inventory and Management, you can Run Certificate Discovery via port
scans, Run Certificate Discovery via individual URL scans, and Run IP-Based Certificate
Discovery.
To Import Certificates or Discovery CA Trust with more than 1500 certificates, create the
discovery schedule with more than one serverless patterns configured. Each pattern execution
supports a maximum of 1500 certificates discovery.

To discover all the certificates, the limit (defaults to 1500) and start_offset (defaults to 0), must
be configured accordingly. For example, to fetch up to 6,000 certificates, add four serverless
patterns with start_offset 0, 1500, 3000, and 4500. Start_offset and limit parameters are
configured as shown.

Run Certificate Discovery via port scans
When the TLS port probe [tls_ssl_certs] is enabled, Discovery automatically scans 14 preauthorized ports as part of your existing CI Discovery schedules.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
Before you begin

Role required: discovery_admin or admin

Procedure
1. Activate the TLS port probe [tls_ssl_certs].
a. Navigate to Discovery Definition > Port Probes.
b. Open tls_ssl_certs.
c. To enable the probe, select the Active check box.
By default, the checkbox for any new installation is unchecked.
d. Save your changes.
2. Add IP service to help configure the TLS port probe.
a. Navigate to Discovery Definition > IP services.
b. Create a new IP service with a port.
3. Configure the TLS port probe.
Edit the Port Probe definition to add up to 138 additional ports or remove existing ones.
a. Navigate to Discovery Definition > Port Probes.
b. Open tls_ssl_certs.
c. Unlock the Triggered by services field by selecting the lock icon next to it.
d. Remove any ports from the list or add additional ones from the search area.
e. Save your changes.

Result

Your existing Discovery schedules should then automatically scan for any certificates on the
specified ports.
Run Certificate Discovery via individual URL scans
To initiate certificate discovery through URL scans, you must manually include individual URLs
and configure a new certificate Discovery schedule.

Before you begin

Role required: discovery_admin or admin

About this task

Only the certificates that are available on the server during URL scans can be discovered. To
confirm the available certificates, use the following command:
openssl s_client -showcerts -connect <URL>:<PORT> </dev/null

Procedure
1. Navigate to All > Certificate Management > Certificate Discovery Source URLS.
2. To add individual URLs to the table, select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
Ensure accurate results by entering URLs in the following format: scheme://host:port. The port
is optional, and defaults are used if not provided. For example: https://www.servicenow.com or
https://servicenow.com:443, ldaps://myldap.com or ldaps://myldap.com:636.
3. Create a Discovery schedule with the following fields.
For more information on setting up your Discovery schedules, see Schedule a horizontal
discovery.
a. Select Discovery: Certificates.
b. Select Certificate Discovery Type: URL Certificate Discovery.
Keep the batch size as is, unless there is a specific recommendation to change it.
4. To add or delete other URLs, from the Certificate URLs tab, select Edit.
5. Select Submit.
6. Select the checkbox to include URLs from the HTTP(s) Endpoint [cmdb_ci_endpoint_http] table
in the discovery process.

Result

When your Discovery schedule runs, it automatically scans for any certificates on the specified
URLs and fetches all URLs from the cmdb_ci_endpoint_http table. It then creates a mapping
between the URL and the schedule in the sn_disco_certmgmt_cert_url_sched_m2m.
With Service Mapping enabled, by default, it creates a relationship between the HTTP endpoint
and application when it creates an entry in cmdb_ci_endpoint_http. For example, the Amazon
application is automatically connected to amazon.com.
The relationship is: cmdb_ci_endpoint_http[parent] --> [Implement End Point To::Implement End
Point From] --> cmdb_ci_appl[child].
If the above relationship exists, the URL certificate discovery creates an additional relationship
between the certificate and application. This relationship is: cmdb_ci_appl[parent] -->
[Uses::Used by] --> cmdb_ci_certificate[child].

Note: URL discovery schedules do not generate server configuration items (CIs).
Run IP-Based Certificate Discovery
Enable the Transfer Layer Security (TLS) port probe [tls_ssl_certs] and scan for certificates on an
IP address or multiple IP addresses.

Before you begin

Know the IP address, range of IP addresses, or list of IP addresses you want to perform
Certificate Discovery on.
Role required: Certificate administrator, discovery_admin, or admin

Procedure
1. Activate the TLS port probe [tls_ssl_certs].
a. Navigate to All > Discovery Definition > Port Probes.
b. Open tls_ssl_certs.
c. To enable the probe, select the Active check box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
By default, the check box for any new installation is cleared.
d. Confirm the Triggered by services has the services you need.
By default, the following services trigger the tls_ssl_certs probe: HTTPS, tomcat-ssl,
IBM Websphere SSL, Idaps, IMAPS, pop3s, ftps-data, ftps, smtp, pop3, imap, Idap, ftp,
submission.
e. Select Update.
2. Create an IP-Based Certificate Discovery Schedule.
a. Navigate to All > Discovery > Discovery Schedules.
b. Select New.
c. Fill out each text field with its corresponding value.
For more information on the fields and values, see IP-Based Discovery Schedule Form Table.
d. Select and hold (or right-click) above Discovery Schedule and select Save.
By selecting Save, additional configuration options are available.
e. Select the Use SNMP text field.
f. In the new tabs that appear, select Discovery IP Ranges.
g. Select New.
h. Fill each field with its corresponding value.
For more information on the fields and values, see Setting Your IP Addresses Form and
Fields Table.
i. Select Submit.
The port tls_ssl_certs will look for Certificates available inside your selected IPs at the next
time interval (daily, weekly, monthly, etc.).
3. Create an IP-Based Certificate Quick Discovery for immediate discovery (optional).
a. Navigate to All > Discovery > Discovery Schedules.
b. Select Quick Discovery.
c. Enter your Target IP into the Target IP field.

Warning: Make sure that your IP address is accessible to the MID Server you’re
using. If it doesn’t, you have to set Credential aliases for Discovery

.

d. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
Result

The probe tls_ssl_certs searches for Certificates inside your selected IP immediately, and reports
the certificates it finds.
Use bulk certificate upload
In Certificate Inventory and Management version 1.2.0 and later, you have the option to efficiently
import SSL certificates in bulk, allowing you to upload up to 5000 certificates within a single .xlsx
file for time and resource savings.

Before you begin

Role required: pki_user or pki_admin
The default admin is assigned both the pki_user and pki_admin roles. The users with the
following roles have access to bulk certificate upload.
• sn_disco_certmgmt.pki_user
• sn_disco_certmgmt.pki_admin

Procedure
1. Navigate to All > Certificate Management > Bulk Upload Certificates.
2. From the Bulk Upload page, select Download Template File (.xlsx) link to download the
sample_cmdb_ci_certificate.xlsx file.
3. Open the downloaded sample_cmdb_ci_certificate.xlsx file.
4. Refer to the sample values in the columns as a guide, and add the SSL certificate's properties
into the corresponding columns.
Each entry in the Excel sheet corresponds to a CI certificate. Ensure the following mandatory
columns are filled in.
◦ root_issuer
◦ issuer
◦ subject_common_name
◦ issuer_common_name
◦ fingerprint
◦ issuer_distinguished_name
◦ subject_distinguished_name
◦ fingerprint_algorithm
◦ valid_to: Cannot be less than valid_fom. By milliseconds. For example, 1586789478000
represents 13 April 2020 14:51:18
◦ valid_from: By milliseconds. For example, 1586789478000 represents 13 April 2020 14:51:18
◦ signature_algorithm
◦ key_size
◦ state: issued, installed, revoked, retired, or other

Note: For maintaining the certificate’s chain relationship, every certificate must have the
fingerprint of its root certificate in the root_issuer column and the fingerprint of its issuer
in the issuer column. For self-signed certificates, both root_issuer and issuer must have
the value of the certificate's fingerprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
5. Save the sample_cmdb_ci_certificate.xlsx file.
6. Navigate to Certificate Management > Bulk Upload Certificates.
7. Select Browse File and choose the complete sample_cmdb_ci_certificate.xlsx
file.
8. Select Upload.

Result

If any errors occur while uploading, a warning message and link to the error logs appears. Only
users with the admin role can view these logs. Errors can occur when a mandatory field is left
empty or a valid_from epoch value is greater than that of valid_to.
After the file is successfully uploaded, you can see a success message displayed with a View
All redirect link. You can view a list of the certificates that were added to the Unique Certificate
[cmdb_ci_certificate] table.
Run Certificate Discovery via certificate file import
In Certificate Inventory and Management, you can discover certificates by importing certificate
files into the system using pattern-based Discovery.

Before you begin

Ensure that TLS_keepOriginalCertificate is set to False.
Ensure the certificate is in one of the following formats: .cert, .pem, .txt, .der.
Role required: discovery_admin or admin

About this task

The import certificates are discovered using the Import SSL Certificate pattern, which relies on
the following parameters:
• Server: The host name or IP address where the certificates are hosted. If importing from the
MID Server, specify localhost and leave temp_certificate_folder empty.
• server_certificates_folder: The folder path on the server containing the certificates.
• TLS_keepOriginalCertificate parameter: Set to false to avoid potential out-of-memory issues
due to increased payload size.
• temp_certificates_folder: Temporary folder on the MID Server where the files are copied.

Procedure
1. Create a Discovery schedule with the following fields.
For more information on setting up your Discovery schedules, see Schedule a horizontal
discovery.
a. Select Discovery: Import Certificates
b. Select Certificate Discovery Type: Import Certificates.
c. Select MID Server selection method: Specific MID Server.
d. Select MID Server: Select the preferred MID Server.
e. Add the credentials for the Windows or Linux host machine where the certificates are
located.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
f. Fill out any other necessary fields.
g. Select Save.
2. To add the Import SSL Certificate pattern, from the Serverless Execution pattern tab, select
New.

Result

When your Discovery schedule runs, it then automatically scans your files.
Connect an intermediate certificate to its root certificate
Connect intermediate certificates to recently imported certificates or to root certificates located
outside the servers to complete the certificate chain of trust.

Before you begin

If your root certificate is outside your server, you must first Discover root certificates hosted
outside your server. If you need to import certificate files, Run Certificate Discovery via certificate
file import.

Note: If your root certificates are already in your servers, they're discovered and
connected to the certificate chain using the standard Discovery probes deployed to your
servers.
Role required: Admin, discovery_admin, Certificate administrator

About this task

Your intermediate certificate and your end-entity certificate are on your server. Discovery scans
and establishes a certificate chain of trust for these certificates. If your root certificate is stored
outside your server, perform a special Discovery on it and connect it to your intermediate
certificate. Failure to connect might result in intermediate certificates being identified as the root
certificate.

Procedure
1. Navigate to System Properties > All Properties.
2. Select sn_disco_certmgmt.find_and_attach_root_certificate.
3. Set the Value to true in the System Property record.
4. Save the record by selecting Update.
5. Rerun the Certificate discovery
You can rerun the discovery using a port probe or a URL based Discovery.

Result

Your intermediate certificate identifies its root certificate, completing Discovery of your certificate
chain of trust.
Maintaining Certificate chain relationships via certificate import
Maintaining certificate chain relationships via certificate import ensures the integrity and security
of digital certificates, validating their authenticity in a system.
To maintain the certificate chain relationships, the industry standard .txt extension is used.
Certificate chain relationships are not maintained with any other file extensions. The expected
order of certificates in a .txt certificate chain file is: Server certificate, Intermediate certificate, and
Root certificate.
Use cases:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
• If two or more certificates are found in formats like .cert or .pem, only the first certificate is
considered. The other certificates are not processed and no certificate chain relationships are
maintained.
• If there is a .txt extension containing only one certificate, it is considered as a server certificate
and no certificate relationship are maintained.
• If there is a .txt extension, containing two certificates, the first certificate is considered
as server certificate and the second certificate is considered as root certificate, with no
intermediate certificates.

Note: The certificate chain relationship is dependent on the latest URL/IP Discovery run.
Importing a file without certificate chain relations disrupts any existing chain relationships
associated with the same certificate (fingerprint).
Configure Credential Identifier for Certificate Management credential type
Ensure unique identification and effective management of credentials by configuring credential
identifier for Certificate Inventory and Management.

Before you begin

Role required: admin

About this task

To enable external storage credential support for TLS certificate discovery from CA types such
as GoDaddy, DigiCert, and Sectigo, set up the credential identifier within the instance for the
respective Certificate Management credential type.

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. Select a credential type labeled as Certificate Management Credential.
4. In the Credential form, select the External Credential Store check box.
5. Fill in the Credential Alias and Credential ID fields.

Note:
Ensure that the Credential ID and Arg_ID in the Credential Resolver file match.
Based on the Certificate Authority you choose, the appropriate fields will appear
requesting the specific information required by each CA. For additional information, refer
to KB article for Digicert , Entrust , Let’s encrypt , Microsoft CA .
6. Select Submit.
Run Certificate discovery via Certificate Authority query
Running Certificate discovery via Certificate Authority query allows for systematic identification
and import of TLS certificates from specific Certificate Authorities, ensuring comprehensive
tracking, management, and security of the certificate inventory. Discover TLS certificates from
Certificate Authorities (CA) with Certificate Inventory and Management, using Patterns for
diverse certificate authority vendors.

Before you begin

Role required: pki_admin or discovery_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
About this task

In Certificate discovery, the Certificate Authorities (CA) pattern uses specific API elements.
The user added to the instance credentials needs permissions for these queries. For more
information on the Certificate Authorities (CA) pattern and the associated API elements, see
Certificate authorities pattern API elements and permissions.

Procedure
1. Generate a credential alias if needed.
For more information, see Credential aliases for Discovery . Create a new credential alias for
new credentials. In case multiple credentials share the same alias, Discovery prioritizes the
Credential and initiates the process.
2. Create a new credential type specific to the Certificate Authority (CA).
a. Navigate to Discovery > Credentials then select New.
b. Select Certificate Management Credentials.
c. To unlock the Credential alias list, select the lock icon.
The alias is mapped to the credential.
d. Select Specify Type: Credential.
e. Select CA Type.
The available CA types are: GoDaddy, Digicert, Entrust, or Sectigo.
f. Fill in the fields that are specific to the CA type you selected.
Each Certificate Authority (CA) requires specific form field entries. For more information, see
API Key credentials .
See the following examples of forms for each CA.
GoDaddy form

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
DigiCert form

Entrust form

Sectigo form

3. Create a Discovery schedule with the following fields.
For more information on setting up your Discovery schedules, see Schedule a horizontal
discovery.
a. Select Discovery: Certificates.
b. Select Certificate Discovery Type: CA Trust Discovery.
c. Select MID Server selection method: Auto Select or Specific MID Server.
d. Fill out any other necessary fields.
e. Select Save.
4. To add CA pattern you need, from the Serverless Execution pattern tab, select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
If you enable the Include cert status option, you can specify multiple certificate statuses by
separating them with commas.
5. Select Submit.

Result

When your Discovery schedule runs, it automatically scans your files.
Discover root certificates hosted outside your server
Collect information about root certificates stored outside your server. Create a specialized
Discovery schedule.

Before you begin

Role required: Admin, discovery_admin, Certificate administrator

About this task

To discover root certificates stored outside your server, create a special Discovery schedule to
target them.

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. From the Discovery Schedule page, select New.
3. On the Discovery Schedule form, fill in the fields.
For a description of the field values, see Discovery schedule form table.
4. Save this record by selecting Update.
5. Select the Serverless Execution Patterns tab.
6. Create a Serverless Execution Pattern.
a. Select New.
b. In the New Record page, select the search icon (

) in the Pattern field.

c. Fill in the Name field.
d. Find and select Import SSL Certificate.
e. Select Submit.
You're redirected back to the Discovery Schedule page created in step 4.
7. Select the Serverless Execution Patterns tab.
8. Select the Name of the new pattern that you just made.
9. Select the (empty) value field, and add a value for each parameter.
For guidance on what values to set, see Run Certificate Discovery via certificate file import.
10. Collect information on your root certificate by making a unique certificate file.
a. Navigate to the Discovery Schedule record that you created.
b. Select the link Discover now to begin Discovery that collects your root certificate.
11. Navigate to All > Unique Certificates.
12. After the Discovery is complete, find your root certificate to confirm that it's there.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Result

Your Discovery collects information on your root certificate located outside a server.

What to do next

Connect an intermediate certificate to its root certificate to complete your certificate chain.
Customize Certificate Inventory and Management
Customize various aspects within Certificate Inventory and Management using Discovery
properties, enabling you to tailor the solution to your specific needs and enhance the overall
management of TLS certificates.

Before you begin

Role required: discovery_admin or admin

Procedure
To edit Discovery properties, navigate to All > Discovery Definition > Properties.
• glide.discovery.certs.cert_admin_user_id
• glide.discovery.certs.days_before_expiration_to_create_renewal_task
• glide.discovery.certs.enable_incident_creation_for_expired_certificates
• glide.discovery.certs.enable_renewal_task_creation_for_discovered_certificates
• glide.discovery.certs.slack_channel_id
Manual flow for certificate requests
Certificate renewal requests and incidents are automatically created when certificates are about
to expire or have expired. For added flexibility and control, you can also manually create requests
using the Service Catalog.
A scheduled job examines the Unique Certificates [cmdb_ci_certificate] table on a daily basis
and triggers renewal certificate tasks when a certificate is either expired or nearing expiration.
Things to consider for renewal of certificates:
• Tasks for certificate renewals are automatically generated 60 days prior
to expiration. To modify the timeframe, update the Discovery property:

glide.discovery.certs.days_before_expiration_to_create_renewal_task.

Note: It's enough to configure the

glide.discovery.certs.days_before_expiration_to_create_renewal_task
system property for the automatic creation of manual certificate tasks. You don’t
need to custom configure the CertificateNotifier or other prefilters.
• Certificate tasks are automatically assigned a Priority 3 - Moderate. Modify the priority by
opening the task if necessary.
• If a certificate task already exists for the current certificate, no additional tasks are created.
• For renewal certificate tasks and incidents, various fields are automatically pre-populated
based on the certificate CI.

Note: The fields assigned_to and requested_for in the renewal task are derived from
the assigned_to field in the targeted certificate. Additionally, the assignment_group is
carried over from the certificate to the renewal task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
• If a certificate expires and isn't replaced, a new incident is created. However, only one incident
is generated for each expired certificate.
• To view the certificate incidents list, navigate to Service Desk > Incidents.
Create new certificate requests
Create new certificate requests manually through Service Catalog for a personalized and
efficient procurement of certificates, providing greater flexibility and control.

Before you begin

Ensure that the Certificate Management catalog is enabled.
Role required: pki_admin

Procedure
1. Navigate to All > Service Catalog > Certificate Management.
2. Select Request New Certificate.
3. Provide the necessary information for the following mandatory fields.
◦ Certificate Signing Request
◦ Certificate Authority
◦ Certificate Type
◦ Validity period
◦ Approver
4. Enter or select additional details on the form as needed.
5. Select Submit.

Result

The Certificate task is generated and submitted for approval. The approval field is view-only for
pki_user and editable for pki_admin.
Create a renewal certificate request
Manually initiate renewal requests for certificates using the Service Catalog for added flexibility
and control.

Before you begin

Ensure that the Certificate Management catalog is enabled.
Role required: pki_admin

Procedure
1. Navigate to All > Service Catalog > Certificate Management.
2. Select Renew Certificate.
3. Select a Certificate CI.
4. Provide the necessary information for the following mandatory fields.
◦ Certificate Signing Request
◦ Requested for
◦ Approver
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
5. Enter or select additional details on the form as needed.
6. Select Submit.

Result

The Certificate task is generated and submitted for approval. The approval field is view-only for
pki_user and editable for pki_admin.

Note: The notification process for certificate renewal exclusively supports manual flow
and does not involve automated certificate management. For CSR information, you must
use automated certificate management.
When monitoring the status of a certificate order, if there's a configuration-related issue,
the task may get stuck in "work in progress." The PKI Admin is responsible for resolving
such issues. For example, if the MID Server is down during the scheduled job tracking
the certificate order status, the system waits for the next scheduled job instead of logging
an error. If the MID Server is brought back up before the subsequent job, the certificate
retrieval proceeds accordingly.
Archive certificate tasks
In Version 1.1.7 Certificate Inventory and Management, the Data Archiver [com.glide.auxdb] plugin performs daily operations to transfer data that is no longer required from primary tables to a
designated set of archive tables.

Before you begin

Role required: pki_user or pki_admin

About this task

Certificate Inventory and Management actively checks and archives certificate tasks that
surpass one year in age. To facilitate this, the corresponding plug-in must be enabled and
activated for the scheduled archival tasks to execute. It's important to note that the Certificate
Task Archive rule, which is included with the Certificate Inventory and Management application,
is inactive by default.

Procedure
1. Activate Certificate Task Rule.
2. Navigate to Archive Rules > Certificate Task Archive.
3. Select the Active check box.

Result

Upon activation, this rule archives data from the Certificate Task table
[sn_disco_certmgmt_certificate_task] under the following conditions:
• State is Closed Complete
• Last update occurred more than twelve months ago
Automated certificate management for TLS certificates
From Certificate Inventory and Management Version 1.3.8, you can automate the request flow for
new certificates, renewals, and revoking certificates.
Certificate Inventory and Management automatically fetches certificates from Certificate
Authorities (CAs) without requiring manual intervention from the PKI team. Starting in Version
2.1.0, this feature supports DigiCert and Entrust CA Gateway for seamless automatic fulfillment
flows, with the limitation that only OV DigiCert certificates can be requested. Version 2.3.2
introduces support for the Microsoft CA. For more information, refer to the respective provider
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


<!-- page 1398 -->
documentation. For automated flows with DigiCert or Entrust CA Gateway in Certificate Inventory
and Management, you must have permissions to request, renew, and revoke certificates.
The Microsoft CA user requires the following permissions:
Microsoft Gateway user permissions
Permission

Action

CredSSP on CA, intermediate
server, and MID Server

Set up CredSSP on CA, intermediate server, and MID
Server.
For CredSSP configuration steps, see the Now Support
Knowledge Base documented in the KB article
KB1632624 .

Membership in Enterprise
Admins

Ensure the user holds membership in the Enterprise
Admins group.

Security Group Inclusion for
Template

Ensure the user is included in the Security Group of the
template.

Specific Permissions in CA

Grant the user permissions: Read, Issue and Manage
Certificates, Manage CA, and Request Certificates in the
CA.

Use automated flow for certificate management
Certificate and Management streamlines your TLS certificate processes, offering benefits such
as improved efficiency and enhanced security. Automating certificate management ensures
timely renewal of certificates, which minimizes the risk of expired certificates.

Before you begin

To use the Microsoft Certificate Authority automated flow, you must install the ServiceNow
IntegrationHub Action Step - PowerShell plugin and must have an Integration Hub subscription.
See Integration Hub usage and subscription
for more information.
Role required: pki_admin or admin

Procedure
1. Set the system property

sn_disco_certmgmt.cert_task_default_approval_group to the default
Approval Group name.
If the certificate request moves into manual mode, the approval group name is the default
group used. For instance, the default group is used if there's no matching policy or more than
two matching policies. You can add more than one approval group, separated by commas. The
first group on the list, which belongs to the task domain, is used for approval. If no domainspecific group is found, the first name in the global domain list is used.

2. To set the validity period of the certificate order, update the system property

sn_disco_certmgmt.default_cert_order_validity_period.
The default is 730 days (2 years).

3. Add the IP of the Microsoft CA Server.
◦ Add the ca_host_ip field of the routing policy.
◦ Add the IP of an intermediate server in ca_host_ip field of the routing policy.
The intermediate server can be any Windows server in the same domain as the Microsoft
CA Server, and has access to the certutil and certreq commands available on Powershell.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
When an intermediate server is used, the MID Server executes a Powershell script on the
intermediate server using Invoke-Command. This command uses a Remote Procedure Call
(RPC) to run the certutil and certreq commands on the CA Server.
4. Create the certificate credential and map it to the credential alias.
Each credential should map using a unique credential alias. For more information, see
Credential alias for Discovery .
5. Confirm the Certificate and Certificate URL information are in the Certificate Authority
[sn_disco_certmgmt_ca] and Certificate Authority API URL [sn_disco_certmgmt_ca_api_url]
tables.
The default URL for DigiCert and Entrust CA Gateway provide all validation type URLs. You can
also add additional URLs.
6. Set the task priority.
The change requests priority and type are mapped based on the priority of the task. Change
requests have the same priority as a task priority, except a change request doesn’t have P5 so
in this case it's mapped to P4.
To change the type of change requests, the change management property

com.snc.change_management.change_model.type_compatibility must be
set to true. The default is False.
a. If needed, set the task and change the system property

sn_disco_certmgmt.default_cert_task_priority to configure New and
Renew task priorities.
The priority defaults to P3. The possible values are 1, 2, 3, 4, 5. If the value is 1, the priority
sets to P1, and so on. If any invalid value is provided, the priority resets to the default of P3.

b. If needed, set the task and change the system property

sn_disco_certmgmt.default_revoke_cert_task_priority to configure
Revoke task priorities.
The priority defaults to P1. The possible values are 1, 2, 3, 4, 5. If the value is 1, the priority
sets to P1 and so on. If any invalid value is provided, the priority resets to the default of P1.

7. Optional: Install the Integration hub plugin [com.glide.hub.integrations].
(Optional) The [com.glide.hub.integrations] plugin isn't required for requesting the DigiCert or
Entrust CA Gateway Certificate and tracking the certificate order status. However, if you want to
debug the certificate subflow actions or add your own customization flow for DigiCert or Entrust
CA Gateway, install this plugin.
Set up the routing policy for automated certificate management
Set up a routing policy to automate your Certificate Inventory and Management. Creating a
policy based on Certificate Authority (CA), environment, and other features ensures efficient TLS
certificate management.

Before you begin

Role required: pki_admin or admin

About this task

The routing policy decides which CA must be contacted for certificate operations. It contains
the CA, CA URL, Credential, Approval Group, Assignment Group, and CSR attributes. The routing
policy triggers the flow for requesting certificates for specific CAs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Note: A certificate request is considered a duplicate if there is another certificate task
with the same domain name that is still in progress. Duplicate certificate requests are not
allowed. However, you can override this setting by checking the Allow duplicate requests
check box. Approvals are only supported in the Fulfiller approval experience at this time.
See a table of fields that go into the routing policies at, Certificate routing policy form table.

Procedure
1. Navigate to All > Certificate Management > Certificate Routing Policies.
2. Select New and fill in the required fields on the form.
While requests for new certificates and certificate renewal can be automated, many PKI teams
prefer human validation before fulfillment. If so, select the Approval required check box.

Note:
Organization, Organizational Unit, Locality, State, Country, and Email accept commaseparated values. * will be considered as any. Subject common name and Subject
alternative name are supported with RegEx. The RegEx format has the following
restrictions:
◦ It should not contain commas.
◦ It should not start and end with a forward slash (/) and * matches any.
◦ For more inforamtion about the fields and values on a routing policy form, see .
3. The following CSR attributes are matched with the entries in the Routing Policy
[sn_disco_certmgmt_routing_policy] table:
◦ Organization
◦ Organizational Unit
◦ Locality
◦ State
◦ Country
◦ Email
◦ Environment
◦ Certificate Purpose(internal/external)
◦ Subject common name
◦ Subject alternative name

Note: For Entrust CA Gateway, there are also these fields: Certificate Authority Identifier,
Certificate Profile, and Certificate Format. For Microsoft CA also use these fields:
Certificate Authority, CA template name, CA Host IP, Credential, and CSR attributes. For
DigiCert, the routing policy also requires a Certificate Authority API URL field to handle
automated processes and revocation flows.
4. The following options may occur.
Option

Description

If a single routing policy matches

Verify the following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Option

Description

◦ Validate the subject common name using
the RegEx pattern provided in the Routing
Policy table, domain name, or *.
◦ Check for certificate request validity period
not greater than the maximum validity peri­
od in the Routing Policy table.
◦ Check for duplicate Certificate Request is
allowed flag in the Routing Policy table.
If multiple routing policies are eligible

The task is assigned to the default approver
group.

If there is no routing policy found

The task is assigned to the default approver
group.

If single policy matches and approval need­
ed flag is true

The task is assigned to the task approval
group defined in the routing policy.

Result

The approval group is assigned to the routing policy and contains the role: pki_approver and
at least one of the active group members available in that group. If the routing policy requires
manual approval, then approval is requested from those in the approval group.

What to do next

The following knowledge base articles guide you through the process of producing the
credentials required and configuring routing policies for different certificate authorities:
For Digicert, see [Digicert] Configure automated certificate management for TLS certificates
[KB2166364] .
For Entrust, see [Entrust] Configure automated certificate management for TLS certificates
[KB2173533] .
For Let's Encrypt, see [Let's Encrypt - ACME] Configure automated certificate management for
TLS certificates [KB2197962] .
For Microsoft CA, see [Microsoft CA] Configure automated certificate management for TLS
certificates [KB2198094] .
Routing policy details
Routing policies are essential for automated certificate management in TLS certificates as they
define specific criteria, such as CA and environment, enabling efficient handling of different
scenarios during the certificate lifecycle.
There are three different scenarios for how routing policies work for automated certificate
management for TLS certificates.
• Scenario 1: A single routing policy matches and manual approval is required. The approver can
verify the task details and approve the certificate request. Once approved, this triggers the
automated flow.
• Scenario 2: No routing policy matches OR there are multiple routing policies that match. The
approver can verify the task details and select Choose Routing Policy & Approve. The approver

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
needs to manually select the routing policy. The updated routing policy then displays. The
approver selects the routing policy which then triggers the automated flow.
• Scenario 3: A single routing policy matches, manual approval is not required, and Approval
Required flag is inactive. This triggers the automatic flow.

Note:
If the approver has rejected the certificate request task, the task is marked as Failed. A
single approval is enough for triggering the automated flow progress.
Request new certificate using automated certificate management
Request a new certificate and automatically retrieve the certificates for an application using
automated certificate management. Certificate Inventory and Management Version 2.1.0
supports requesting certificates from DigiCert and Entrust CA Gateway. Version 2.3.2 also
supports Microsoft CA.

Before you begin

Ensure the Certificate Management catalog is enabled and that a Routing Policy is created.
For DigiCert only: You need to get the API key from DigiCert with the domain already validated by
DigiCert. If you submit a certificate request with a new domain that is not validated by DigiCert,
the request will show as Pending, the automated flow will not be able to fetch the certificate
information, and the request will be marked as Failed.
Role required: Certificate requester, PKI Admin, PKI User, or Admin
Certificate requester is a user who does not have the PKI Admin or PKI User role.

Note: Approvals are only supported in the Fulfiller approval experience at this time.
Procedure
1. Navigate to All > Service Catalog > Certificate Management.
2. Select Request New Certificate - Automated flow.
3. Provide details for the mandatory fields: CSR and Validity Period.
4. Fill in or choose additional information on the form, and then click Submit to proceed with the
order.
The Routing Policy [sn_disco_certmgmt_routing_policy] table helps to fetch the CA routing
policy ID. If a single routing policy ID is not returned, then the approver must select the routing
policy and approve the task. For more information, see Approve certificate tasks.
This creates a New Certificate Task which then triggers the automated flow. In the routing
policy, if Approval Required field was checked, the task requires approval before the
automated flow begins.

Result
• Once the request is submitted, the automated flow makes the request to the CA to get the
certificate.

Note: Powershell Step is used for Microsoft CA. This requires the plugin:
com.glide.hub.action_step.powershell.
• A record is created in the Certificate Extension [sn_disco_certmgmt_certificate_extension]
table once the certificate is successfully fetched.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
• Every 30 minutes, the following scheduled job runs and checks for status: DigiCert – Track
Certificate Order Status.

Note: There are no scheduled jobs for Entrust CA Gateway and Microsoft CA.
• If the certificate is available, it is attached to the certificate task.
• The certificate task is then marked Completed and a change request is created.
• If multiple tasks are created for the same CSR and Allow Duplication is not checked in the
routing policy, the task fails.
• If the validity period exceeds the matched routing policy validity period, the task fails.
Automatically generate a Certificate Signing Request
You can generate a Certificate Signing Request (CSR) on the instance by providing the required
information on the catalog form.
Creating a CSR manually can be a cumbersome and error-prone process. Automatic CSR
generation can be enabled on the Request New Certificate and Request New Ceriticate
(Automated) forms. This feature is disabled by default for security.
To enable automatic CSR generation, set the system property
sn_disco_certmgmt.enable_csr_generation to true. See Discovery properties for more
information.
Once enabled, a Want to generate CSR? checkbox is displayed in the certificate request form.
Selecting the checkbox enables the required input fields to generate the CSR. Provide the
necessary information and select Generate. The input data is validated and the CSR is formated
accordingly.
The CSR is generated in the Certificate Signing Request (CSR) field, and a private key is
generated in the Private Key field. Select the Download link to save the private key for later
use. By default, the private key size is 2048 but can be changed using the system property
sn_disco_certmgmt.private_key_size. See Discovery properties for more information.
When selecting Submit, the form provides a warning to download and save the private key. For
security, ServiceNow does not store private keys, so the private key must be saved before leaving
the form or else it is lost.
Approve certificate tasks
Sometimes you need to manually approve a certificate task to ensure the validity and security of
TLS certificates.

Before you begin

Role required: admin

About this task

If the approval is requested for a routing policy, select the routing policy created. Approvals are
only supported in the Fulfiller approval experience at this time.

Procedure
1. Navigate to All > Self-Service > My Approval.
2. Open the automatically created approval task.
3. Check the new certificate details and Choose Routing Policy & Approve.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
Result
1. The automated flow for requesting a new certificate is initiated.
2. You can open the certificate task by navigating to Certificate Management > New Certificate
Task.
3. Ensure that the automated flow is triggered.
4. If the CA approves the certificate request, both the Order ID and Certificate ID are retrieved for
the newly requested certificate. If the CA does not approve, only the Order ID is fetched.

Note: For Entrust CA Gateway, Certificate Serial Number and Enrollment Id are fetched.
Renew a certificate using automated certificate management
Request renewal for a certificate and automatically retrieve the certificate for an application. This
maintains secure and uninterrupted services as you extend the validity period of the certificate,
preventing potential service disruptions due to expired certificates.

Before you begin

Set up the routing policy for automated certificate management to ensure the Certificate
Management catalog is enabled.
To renew an existing certificate, make sure the certificate has its extension details populated
in the [sn_disco_certmgmt_certificate_extension] table. Currently, these details populate
automatically by the Discovery DigiCert CA Pattern or for any certificates created through the
automated flow. However, for Entrust certificates, this only works if you Request new certificate
using automated certificate management.
Role required: PKI Admin, Admin, Certificate Owner, or Users that are part of the Certificate
Owner Group.
The Certificate Owner and Certificate Owner group contains the Certificate Requester role
(minimal role).

Note: Approvals are only supported in the Fulfiller approval experience at this time.
About this task

To renew an existing certificate, request a new certificate with the same details as the original
certificate. Currently, there is no Renew API available for Entrust CA Gateway and Microsoft CA
certificates. During a renewal request, a new certificate is generated internally with the same
attributes as the selected certificate.
For renewing an existing certificate, CSR is mandatory. The requester can use an existing CSR if
available or use a new CSR. If you want to use an existing CSR, use the same CSR to request a
new certificate from the CA. If fields are entered using vault and java APIs, the CSR is generated.

Procedure
1. Navigate to All > Service Catalog > Certificate Management.
2. Click Renew Certificate – Automated flow.
3. Provide details for the mandatory fields: CSR and Validity Period.
4. Fill in or choose additional information on the form, and then click Submit to proceed with the
order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Result
1. The Routing Policy [sn_disco_certmgmt_routing_policy] table helps fetch the CA routing policy
ID.
◦ If a single routing policy isn't matched, the approver must select the CA and trigger the flow.
◦ If the CSR contains a different domain name than the issued certificate domain name, the
task requests approval.
◦ If a single routing policy is matched but renewal certificate information isn't available in the
Certificate Extension [sn_disco_certmgmt_certificate_extension] table, the task requires
approval.
◦ Certificates can't be renewed if the Certificate Authority and Order id or
thumbprint details are missing for the certificate in the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table. Discover the certificate via Certificate
Authority query to populate the required details in the Certificate Extension table. After
Discovery, select the routing policy and approve the task.
2. This creates a task for the ordered certificate which triggers the flow to request renewal
certificates.
3. Once the request is submitted, the automated flow makes the request to the CA to get the
certificate.

Note: Powershell Step is used for Microsoft CA. This requires the plugin:
com.glide.hub.action_step.powershell.
4. The Order id is stored in the Certificate Task [sn_disco_certmgmt_certificate_task] table and
Certificate Extension [sn_disco_certmgmt_certificate_extension] table.

Note: For Entrust CA Gateway, Certificate Serial Number and Enrollment
Id are fetched. The Serial Number is stored in the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table.
5. Every 30 minutes, the “DigiCert – Track Certificate Order Status” scheduled job runs and
checks for status.

Note:
The system fetches details about the selected certificate from the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table and makes the request to the CA to
renew the certificate. Certificates can't be renewed if the Certificate Authority, Order id, or
thumbprint are missing from this table. If additional details are missing for renewing the
certificate, the system logs a message and suggests what to do. In this case, you must
discover the certificate using CA-based discovery. For more information, see Run Certificate
Discovery via Certificate Authority query to populate these details to the Certificate
Extension table.
Revoke a certificate using automated certificate management
Revoke certificate for an application. Revocation doesn't require approval if order Id
and certificate Id are present in the Certificate Extension table. If order Id and
certificate Id aren't present in the Certificate Extension table, then you need approval.

Before you begin

Set up the routing policy for automated certificate management to ensure the Certificate
Management catalog is enabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
To revoke an existing certificate, make sure the certificate has its extension details populated
in the [sn_disco_certmgmt_certificate_extension] table. You don't need to include an endpoint
URL. The system will automatically hardcode the revoke URLs for the discovery. Currently,
these details populate automatically by the Discovery DigiCert CA Pattern or for any certificates
created through the automated flow. However, for Entrust certificates, this only works if you
Request new certificate using automated certificate management.
Role required: pki_admin or admin

Note: Currently, approvals are only supported in the Fulfiller approval experience.
Procedure
1. Navigate to All > Service Catalog > Certificate Management.
2. Select Revoke Certificate – Automated flow.
3. Enter the Issued Certificate which you want to revoke (for instance: www.undefined.com).
Multiple Certificates can be selected for revoking.
4. Provide an appropriate reason for revoking the certificate.
For Microsoft CA the reason should be an integer. If any other value is given, a default value of
0 will be used which means unspecified.
5. To place the revoke order, select Submit.
6. In the confirmation pop-up, select OK.

Result
1. A task is automatically created when you request a revocation.
◦ If order Id and certificate Id are present in the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table, revocation does not require approval.
◦ If order Id and certificate Id aren't present in the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table, then the task requests approval.
◦ If the serial number for Entrust CA Gateway isn't present in the Certificate Extension
[sn_disco_certmgmt_certificate_extension] table, then the task requests approval.
2. Once the PKI team provides approval, the mapping between the certificate and CA occurs
based on the Routing policy selected.
3. This triggers the revocation operation for the CA selected which uses the CA APIs.
4. Details are stored in the Certificate Extension table.
5. Every 30 minutes, the following scheduled job runs and checks for status: DigiCert – Track
Certificate Order Status.

Note: There are no scheduled jobs for Entrust CA Gateway and Microsoft CA.
6. The status of the certificate is marked as revoked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Note:
Certificates can't be revoked if Certificate Authority or Certificate Id details are missing
in the Certificate Extension [sn_disco_certmgmt_certificate_extension] table. For Entrust
CA Gateway, certificates can't be revoked if the Serial number is missing. Discover the
certificate via Certificate Authority query to populate the required details in the Certificate
Extension table. After that, Discovery selects the routing policy and approves the task.
Revoke certificate API request. If "skip_approval" is true, the revoke process is completed
faster. If "skip_approval" is false, the revoke process is completed when the DigiCert or
Entrust CA Gateway admin has approved or rejected the revoke request. To skip the
approval step, the API key must have admin privileges.
Certificate integrations and notifications
From version 1.2.0 onward, Certificate Inventory and Management seamlessly integrates with
Event Management, providing a unified solution for streamlined operations. This integration
enables the generation of events and notifications, with the added capability of sending alerts to
Slack, enhancing communication and alerting mechanisms within the Certificate Inventory and
Management system.
Integrate Event Management with Certificate Inventory and Management
In Certificate Inventory and Management version 1.2.0 and later, Event Management can create
events and alerts for both expiring and expired certificates, enhancing the system's monitoring
capabilities.

Before you begin

Ensure the Event Management Store application is installed.
Role required: admin

About this task

The integration leverages the Workflow Studio feature to initiate events. It utilizes a pre-existing
daily Discovery schedule designed to identify expired or expiring certificates, activating a
subflow. Upon subflow activation, it verifies the installation of the Event Management Store
application. If the application is installed, the subflow generates an event for expiring or expired
certificates.

Procedure
1. To view all the generated alerts or events, navigate to All > Event Management > All Alerts or
All > Event Management > All Events.
2. To exclude specific Certificate events and prevent alert triggers, navigate to Event
Management > Rules > Event Rules and perform the following steps.
a. Select the Certificate Expired/Expiring Events rule.
b. Select the Event Filter tab.
c. Select Ignore events that match this filter.
d. Add any other necessary details as needed.
e. Select Save.
Receive certificate notifications on Slack
In Version 1.2.0 of Certificate Inventory and Management, set up Slack notifications to stay
informed about expiring and expired certificates. Receive detailed alerts with convenient URL
links for additional information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
Before you begin

Role required: admin

About this task

A scheduled job in Certificate Inventory and Management regularly checks the expiry dates of
certificates stored in the valid_to field of the cmdb_ci_certificate table. When certificates are
either expired or nearing expiration, the job initiates the subflow Process Slack Message, which
subsequently sends notifications to the designated Slack channel.

Procedure
1. Set up Slack spoke

.

2. Create a Slack bot

and add it to a Slack channel.

3. Configure default Slack credentials

.

4. Configure custom Slack credentials

.

If your Slack spoke version is 1.2.0, you can bypass the next step concerning the retrieval of the
Channel ID.
5. Get the ID for your Slack channel.
a. Go to Slack.
b. Right-click the Channel.
c. Select Additional options > Copy link.
d. From the provided link, copy the string following <archive/>.
6. Configure the Slack Channel ID property.
a. Navigate to Discovery > Properties.
b. Enter value in the Slack Channel ID property

glide.discovery.certs.slack_channel_id.

7. Select Save.

Result

Notifications are directed to the Slack channel specified in Discovery properties. If a certificate
is assigned to a user, and their configured email matches the Slack email, the user is tagged in
the Slack message. The Slack scheduled job runs weekly, and you can adjust its frequency by
modifying the Certificate Notification scheduled job settings.
Receive certificate notifications via email
The certificate owner and certificate administrator receive email notifications when any new
manual certificate renewal task is created by the Certificate Inventory and Management
application. The certificate administrator also receives a daily digest of all manual renewal tasks
generated by the system over the last 24 hours.

Before you begin

Role required: Certificate administrator (glide.discovery.certs.cert_admin_user_id) or PKI Admin.

About this task

When a new manual certificate task is generated, the certificate owner and the certificate
administrator receive an email notification. The certificate administrator also receives a daily
digest of all email notifications generated for manual renewal tasks that day.

Note: If there’s no certificate owner mentioned for a certificate, the certificate
administrator receives the notification.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
Procedure
1. Configure the Certificate administrator to the desired email address.
a. Navigate to Organization > Users.
b. Select Certificate Adminstrator.
c. Enter the email address into the Email text field.
d. Select Update.
2. Navigate to All > System Properties > Email properties.
3. Select Yes in the check box Email sending enabled in the Outbound Email Configuration
form.
4. Select Save.

Result

The certificate administrator receives a daily digest of email notifications. The certificate admin
and certificate owner receive email notifications for certificate renewal tasks generated by the
system.
Certificate generation through Cert-Manager Integration
Request a certificate through Kubernetes cert-manager using the ServiceNow External Issuer
(sn-external-issuer) and save the certificate and its related information securely within the
Kubernetes cluster as a secret. In Kubernetes, a secret is an object that allows you to store and
manage sensitive information, such as passwords, API keys, and certificates.
For information on building an external issuer, see Building and Deploying External Issuer For
Certificate Management [KB1435392] .

Deployment Requirements
• Deploy cert-manager in your Kubernetes environment. Update manager.yaml with Instance
URL, Certificate Owner Group, Certificate Owner, Environment, and Renewal Tracking.
• Deploy the ServiceNow External Issuer (sn-external-issuer) in your Kubernetes environment.
Create a Kubernetes secret clusterissuer-servicenow-credentials with the
instance username and password, ensuring the user has the necessary roles to request a
certificate.
• The ServiceNow External Issuer supports amd64 architecture along with the latest version of
Kubernetes, 1.33.3.

ServiceNow External Issuer (sn-external-issuer)
• External issuers expand cert-manager functionality to issue certificates through non-core APIs
and services.
• The ServiceNow External Issuer is a ServiceNow-specific implementation of an External Issuer.
• When a new certificate task is created, its Certificate Request UID and Certificate Task Sys Id
are stored in the local JSON cache and the Certificate Request UID to Task Map table on the
instance.
• The ServiceNow External Issuer polls the instance to monitor the status of the certificate task.
• If the certificate task is in the Work in progress state, its Certificate Request UID and Certificate
Task Sys Id are added to the External Issuer UID Map table on the instance and the local JSON
cache. During this time, Cert-manager automatically attempts to request the certificate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
• Upon receiving a certificate request, Cert-manager checks for a matching task in the local
JSON cache. If found, it polls the same task; otherwise, it queries the instance for records from
the External Issuer UID Map table and populates the local JSON cache.
• Once the task is marked as complete and the certificate is generated, the ServiceNow External
Issuer sends another request to the instance, downloads the certificate attachment, and
updates the certificate resource and corresponding secret in Kubernetes.

Deploying the ServiceNow External Issuer in Kubernetes
Deploying the ServiceNow External Issuer in Kubernetes involves the following steps:
1. From the ServiceNow instance download page, obtain the Helm Chart or YAML zip package.
2. Customize the manager.yaml or values.yaml files as needed for your specific use case.
These files may include essential information such as the Instance URL and Certificate Owner
Group.
3. Create a Kubernetes secret named clusterissuer-servicenow-credentials with
the instance username and password.
Example command:
◦ Create a Kubernetes secret named clusterissuer-servicenow-credentials
with the instance username and password. Example command:
kubectl create secret generic
clusterissuer-servicenow-credentials
--from-literal=user=<user_name>
--from-literal=password=<password> -n
system
◦ Ensure that the user has the necessary roles to request certificates.
4. Execute the following commands for deployment.
kubectl create ns system
kubectl apply -f crd
kubectl apply -f rbac
kubectl apply -f issuers
kubectl apply -f manager/manager.yaml
5. (Optional) Customize any additional configurations in the files to suit your specific
requirements.
6. Ensure that the deployment is successful and the ServiceNow External Issuer is up and
running.

Request new certificate flow
After deployment, submit a certificate resource with the following information in a file named
certificate_clusterissuer.yaml.
• issuerRef : clusterissuer-servicenow
• issuer : issuer-servicenow
• kind : ClusterIssuer
• issuerRef : servicenow-issuer.servicenow.com
Here's a sample Certificate Resource:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
name: certificate-by-clusterissuer
spec:
commonName: certificate-by-clusterissuer.servicenow.com
secretName: certificate-by-clusterissuer
dnsNames:
- servicenow.com
- foo.servicenow.com
issuerRef:
name: clusterissuer-servicenow
group: servicenow-issuer.servicenow.com
kind: ClusterIssuer
Apply the certificate resource using kubectl apply -f
certificate_clusterissuer.yaml

Automated Certificate Management Environment
Automated Certificate Management Environment (ACME) is a protocol for automating the
management of SSL/TLS certificates.

Get started

Explore

Configure

Use

Learn about ACME
and its benefits.

Set-up and
configure ACME.

Use ACME to automate
the interaction
between a certificate
authority and a server.

Exploring ACME
The Automated Certificate Management Environment (ACME) is a communication protocol that
automates the interaction between a certificate authority (CA) and a server. It streamlines the
processes of requesting, renewing, and revoking SSL/TLS certificates.

ACME overview
ACME uses JSON-formatted messages transmitted over a secure HTTPS connection. This
communication enables for automated certificate life-cycle management, reducing manual
intervention and the risk of errors.
ACME is a widely adopted standard used by public key infrastructure admins, line of business
owners, certificate management users, admins, account owners, and team managers.

ACME benefits
During requesting, renewing, or revoking SSL/TLS certificates, ACME offers significant benefits:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
• It automates tasks associated with certificate management, reducing the administrative
burden for IT teams.
• It helps verify that the certificates are valid and up-to-date.
• It eliminates the need for manual certificate management tasks, reducing overall costs.
Configuring ACME
Configuring Automated Certificate Management Environment (ACME) helps to configure
the SSL/TLS certificates automatically for web servers, enhancing security and simplifying
administration.
Automated Certificate Management Environment Tasks
Task

Description

Create the credential for the ACME Certificate
Authority

Create an ACME credential on the ACME
Certificate Authority's website or API. The
credential is used by your ACME client
software to interact with the ACME Certificate
Authority (CA) to request, renew, or revoke
certificates.

Set up the routing policy for ACME

Create a routing policy to establish an
Automated Certificate Management
Environment (ACME) based on factors such
as Certificate Authority (CA), environment,
and other features, ensuring efficient SSL/TLS
certificate management.

Configure your base API URL for EJBCA ACME Configure your base API URL for Keyfactor
EJBCA ACME.
Create the credential for the ACME Certificate Authority
Create an ACME credential on the ACME Certificate Authority's website or API. The credential
is used by your ACME client software to interact with the ACME Certificate Authority (CA) to
request, renew, or revoke certificates.

Before you begin

Role required: pki_admin or admin

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. On the What type of Credentials would you like to create? page, select Certificate
Management Credentials.
4. On the form, fill in the fields.
Certificate management credentials form
Field

Description

Name

Name for the credential.

Credential alias

Credential alias that is linked to the CA
credential.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Field

Description

CA Type

Type of the Certificate Authority (for example,
Let's Encrypt or Entrust).

ACME

Option to enable ACME flow for the Entrust
CA type.

Note: For the CA type Let's Encrypt,
this option is selected by default.
Private Key

Create any private key or generate an
account using Let's Encrypt or Entrust.
Provide a private key with the key type RSA or
ECDSA.

Key Type

Encryption algorithm for the private key (for
example, RSA or ECDSA).

Key ID

Used for account binding and is provided by
the CA.

Note: Applicable for CA Type Entrust.
MAC Key

Used for account binding and is provided by
the CA.

Note: Applicable for CA Type Entrust.
5. Select Update.
Set up the routing policy for ACME
Set up a routing policy to establish an Automated Certificate Management Environment (ACME).
It involves creating a policy based on factors such as Certificate Authority (CA), environment, and
other features, ensuring efficient SSL/TLS certificate management.

Before you begin

Role required: pki_admin, flow_designer, action_designer, or admin

About this task

Duplicate certificate requests aren’t allowed. However, you can override this setting by checking
the Allow duplicate requests check box. A certificate request is considered duplicate if there’s
another certificate task with the same domain name that is still in progress.
The routing policy decides which CA must be contacted for certificate operations. It contains
the CA, CA URL, Credential, Approval Group, Assignment Group, and CSR attributes. The routing
policy triggers the flow for requesting certificates for specific CAs.

Procedure
1. Navigate to All > Certificate Management > Certificate Routing Policies.
2. Select New.
3. On the Certificate Routing Policy form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
For the description of the field values, see Certificate Routing Policy form.
4. Select Update.
Certificate Routing Policy form
Fill in the Certificate Routing Policy form to set up the routing policy for ACME.
Certificate routing policy
Field

Description

Name

Name of the routing policy.

Certificate Authority

CA used to create a new certificate or to renew
or revoke certificates. The supported CAs
based on your credentials are:
• Let's Encrypt
• Entrust

Assignment Group

Group to which a manual certificate task is
assigned.

DNS Challenge Action

Flow designer option to resolve DNS
challenges automatically (for example, base
script - ACME DNS Challenge - GoDaddy).

Note: You can also create a new action
similar to the base script to support any
other DNS provider. The flow_designer
role or action_designer role is required
for this action.
If None is selected, then the new or renew
certificates are done using ACME manual flow
of DNS challenge.
Credential Alias

Credential alias linked to the CA credential.

Certificate Purpose

Indicates whether the certificate request is for
an internal or external purpose.

Task Approval Group

Group to which the task approval is assigned.

DNS Task Assignment Group

Group to which the DNS challenge for this task
is assigned.

Mid Server

MID Server for certificate actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
Certificate routing policy (continued)
Field

Description

Note:
The Organization, Organizational Unit, Locality, State, Country, and Email Address
fields accept comma-separated values. The Subject Common Name and Subject
Alternative Name fields take regex expressions. The regex format has the following
restrictions:
• Shouldn’t contain commas.
• Shouldn’t start or end with a forward slash (/).

Using ACME
Use the Automated Certificate Management Environment (ACME) to request, renew, or revoke
SSL/TLS certificates.
ACME comes with two options:
• ACME manual flow of DNS challenge
The user to performs the DNS challenges themselves.
• ACME automated flow of DNS challenge
The DNS challenge action selected in the routing policy adds the DNS challenge record to the
DNS records of the domain automatically.
Perform the following tasks to start using ACME:
• Request new certificate using ACME manual flow of DNS challenge
• Request new certificate using ACME automated flow of DNS challenge
• Renew certificate using ACME manual flow of DNS challenge
• Renew certificate using ACME automated flow of DNS challenge
• Revoke certificate using ACME automated flow
Request new certificate using ACME manual flow of DNS challenge
Request a new certificate and automatically retrieve the certificates for an application using
ACME manual flow of DNS challenge.

Before you begin
• The Certificate Management catalog should be enabled.
• A routing policy without any DNS challenge action must exist.
Role required: Certificate requester, PKI admin, PKI user, or admin

Note:
Certificate requester is a user who does not have the PKI admin or PKI user role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


<!-- page 1416 -->
Procedure
1. Access the certificate request automated flow.
a. Navigate to All > Service Catalog.
b. Select Certificate Management.
c. Select Automated Flow.
2. Select Request New Certificate (Automated).
3. On the form, fill in the fields.
New certificate
Field

Description

Certificate Purpose

Indicates whether the request is for an
internal or external certificate.
For CAs (for example, Let's Encrypt), select
External.

Certificate Signing Request (CSR)

CSR containing the certificate information.

Validity Period for Certificate (In Days)

Number of days the certificate is valid.
For Let's Encrypt, the maximum validity
period is 90 days.

Certificate Owner Group

Group for which the certificate tasks will be
generated.

Certificate Owner

Name or role of the person who will own the
certificate.

The following CSR attributes are matched and auto-populated based on the certificate
information from CSR:
◦ Subject Common Name
◦ Subject Alternative Name
◦ Organization
◦ Organizational Unit
◦ Locality/City
◦ Province
◦ Country
◦ Email Address
4. Select Submit.
Once the request is submitted, a task is created and an activity is assigned for you to complete
the DNS challenge and mark it complete.
5. On the New certificate task page, in the DNS Task field, select the record.
6. On the DNS Task page, add a DNS TXT record for the attached DNS challenge.
a. In the DNS Challenges pane, copy the DNS value.
b. On the web browser, go to the domain and add the DNS value as a TXT record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
For example, the domain can be godaddy.com > thedisconow.com.
c. Fill in the other mandatory fields.
d. Select Save.

Note: Most DNS updates take effect within an hour but it could take up to 48 hours to
update.
7. On the DNS Task page, change the status of the record to Completed.
8. Optional: Check whether the DNS record has propagated successfully.
To check if it’s propagated successfully, use the dig command.
9. Select Save.

Result
• Once the DNS challenge is completed, the automated flow makes the request to the CA to get
the certificate.
• The certificate is attached to the New certificate task.
• The certificate task status changes to Completed.
Request new certificate using ACME automated flow of DNS challenge
Request a new certificate and automatically retrieve the certificates for an application using an
Automated Certificate Management Environment (ACME) automated flow of DNS challenge.

Before you begin

Ensure that a credential has been set up.

Note: The GoDaddy credential is provided with the base system inside the credential
page.
The Certificate Management catalog has been enabled.
A routing policy with a DNS challenge action exists.
Role required: Certificate requester, PKI admin, PKI user, flow_designer, action_designer, or
admin

Note:
A certificate requester is a user who doesn’t have the PKI admin or PKI user role.

Procedure
1. Access the automated flow.
a. Navigate to All > Service Catalog.
b. Select Certificate Management.
c. Select Automated Flow.
2. Select Request New Certificate (Automated).
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
New certificate form
Field

Description

Certificate Purpose

Indicates whether the request is for an
internal or external certificate.
For CAs such as Let's Encrypt, select
External.

Certificate Signing Request (CSR)

CSR containing certificate information.

Validity Period for Certificate (In Days)

Number of days the certificate is valid.
For Let's Encrypt, the maximum validity
period is 90 days.

Certificate Owner Group

Group for which the certificate tasks are
generated.

Certificate Owner

Name or role of the person who will own the
certificate.

The following CSR attributes are matched and auto-populated based on the certificate
information from CSR:
◦ Subject Common Name
◦ Subject Alternative Name
◦ Organization
◦ Organizational Unit
◦ Locality/City
◦ Province
◦ Country
◦ Email Address
4. Select Submit.
Once the request is submitted, a task is created for completing the DNS challenge. The task is
completed automatically.

Result
• Once DNS record propagation has completed after two minutes, the DNS challenge is
completed automatically and the automated flow sends a request to the CA to get the
certificate.
Admins can change this duration by modifying the

sn_disco_certmgmt.wait_time_for_dns_record_propagation system
property.
• The certificate is attached to the New certificate task.
• The request certificate task status changes to Completed.
Renew certificate using ACME manual flow of DNS challenge
Request to renew certificate and automatically retrieve the certificates for an application using
ACME manual flow of DNS challenge.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
Before you begin
• The Certificate Management catalog should be enabled.
• A routing policy without any DNS challenge action must exist.
Role required: Certificate requester, PKI admin, PKI user, or admin

Note:
Certificate requester is a user who does not have the PKI admin or PKI user role.

Procedure
1. Access the certificate request automated flow.
a. Navigate to All > Service Catalog.
b. Select Certificate Management.
c. Select Automated Flow.
2. Select Renew Certificate (Automated).
3. On the form, fill in the fields.
Renew certificate
Field

Description

Issued Certificate

Certificate to renew.

Certificate Purpose

Request internal or external certificate.
For CAs (for example, Let's Encrypt), select
External.

Certificate Signing Request (CSR)

CSR containing certificate information.

Validity Period for Certificate (In Days)

Number of days the certificate is valid.
For Let's Encrypt, the maximum validity
period is 90 days.

Certificate Owner Group

Group for which the certificate tasks will be
generated.

Certificate Owner

Name or role of the person who will own the
certificate.

The following CSR attributes are matched and auto-populated based on the certificate
information from CSR:
◦ Subject Common Name
◦ Subject Alternative Name
◦ Organization
◦ Organizational Unit
◦ Locality/City
◦ Province

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
◦ Country
◦ Email Address
4. Select Submit.
Once the request is submitted, a task is created and an activity is assigned for you to complete
the DNS challenge and mark it complete.
5. On the New certificate task page, in the DNS Task field, select the record.
6. On the DNS Task page, add a DNS TXT record for the attached DNS challenge.
a. In the DNS Challenges pane, copy the DNS value.
b. On the web browser, go to the domain and add the DNS value as a TXT record.
For example, the domain can be godaddy.com > thedisconow.com.
c. Fill in the other mandatory fields.
d. Select Save.

Note: Most DNS updates take effect within an hour but it could take up to 48 hours to
update.
7. On the DNS Task page, change the status of the record to Completed.
8. Optional: Check whether the DNS record has propagated successfully.
To check if it’s propagated successfully, use the dig command.
9. Select Save.

Result
• Once the DNS challenge is completed, the automated flow makes the request to the CA to get
the certificate.
• The certificate is attached to the New certificate task.
• The certificate task status changes to Completed.
Renew certificate using ACME automated flow of DNS challenge
Request to renew the certificate and automatically retrieve the certificates for an application
using an Automated Certificate Management Environment (ACME) automated flow of DNS
challenge.

Before you begin

Ensure that a credential has been set up.

Note: The GoDaddy credential is provided with the base system inside the credential
page.
The Certificate Management catalog has been enabled.
A routing policy with a DNS challenge action exists.
Role required: Certificate requester, PKI admin, PKI user, flow_designer, action_designer, or
admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
Note:
A certificate requester is a user who doesn’t have the PKI admin or PKI user role.

Procedure
1. Access the certificate renew automated flow.
a. Navigate to All > Service Catalog.
b. Select Certificate Management.
c. Select Automated Flow.
2. Select Renew Certificate (Automated).
3. On the form, fill in the fields.
Renew certificate
Field

Description

Issued Certificate

Certificate to renew.

Certificate Purpose

Request internal or external certificate.
For CAs (for example, Let's Encrypt), select
External.

Certificate Signing Request (CSR)

CSR containing certificate information.

Validity Period for Certificate (In Days)

Number of days the certificate is valid.
For Let's Encrypt, the maximum validity
period is 90 days.

Certificate Owner Group

Group for which the certificate tasks are
generated.

Certificate Owner

Name or role of the person who will own the
certificate.

The following CSR attributes are matched and auto-populated based on the certificate
information from CSR:
◦ Subject Common Name
◦ Subject Alternative Name
◦ Organization
◦ Organizational Unit
◦ Locality/City
◦ Province
◦ Country
◦ Email Address
4. Select Submit.
Once the request is submitted, a task is created for completing the DNS challenge. The task is
completed automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
Result
• Once DNS record propagation has completed after two minutes, the DNS challenge is
completed automatically and the automated flow sends a request to the CA to get the
certificate.
Admins can change this duration by modifying the

sn_disco_certmgmt.wait_time_for_dns_record_propagation system
property.
• The certificate is attached to the New certificate task.
• The request certificate task status changes to Completed.
Revoke certificate using ACME automated flow
Request a revoke certificate for an application.

Before you begin

Ensure that the Certificate Management catalog is enabled and that a Routing Policy is created.
Role required: pki_admin or admin

Procedure
1. Access the certificate request automated flow.
a. Navigate to All > Service Catalog.
b. Select Certificate Management.
c. Select Automated Flow.
2. Select Revoke Certificate (Automated).
3. Unlock the Issued Certificate field.
4. Select the Lookup using list icon (
) and select the certificate you want to revoke.
You can select more than one certificate.
5. Provide an appropriate reason for revoking the certificate.
6. Place the revoke order by selecting Submit.
7. In the confirmation dialog box, select OK.

Result

A task is automatically created that triggers the revocation operation. Once the operation
completes, the status of the certificate changes to Revoked.
ACME integration with KeyFactor EJBCA for automated flows
Automate the flow of requesting, renewing, and revoking your certificates by integrating Keyfactor
EJBCA with the Automated Certificate Management Environment (ACME).
Keyfactor EJBCA is a certificate authority that issues your certificates. ACME are a set of
protocols and rules that give you a secure environment to use an automated flow of managing
certificates.
By configuring your routing policy fields, you can ensure that the content in your Certificate
Signing Request (CSR) aligns with the correct routing policy. This streamlines the process of
requesting, renewing, and revoking your certificates.
EJBCA has two types of Credentials. One includes External Account Binding (EAB), and the other
doesn’t.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
In EJBCA, automated certificate workflows start when you create routing policies for EJBCA
ACME Certificates. For every routing policy, there are required fields where you have to give
information.
Your platform has routing policies where you fill in all the fields of the routing policy. Your platform
aligns that information to each CSR you create to request, renew, and revoke certificates.
For more information, see Create a routing policy for EJBCA ACME certificates.
Perform the following task to use EJBCA ACME to automate your certificate life cycle:
1. Create a Connection & Credential alias
2. Configure your base API URL for EJBCA ACME
3. Validate your EJBCA ACME base API URL
Configure your base API URL for EJBCA ACME
Configure your base API URL for EJBCA ACME to your organization's root URL address.

Before you begin

Role required: discovery_admin, Public Key infrastructure (PKI) admin, admin

Procedure
1. Navigate to All > Certificate Authorities.
2. In the table of certificate authorities, select EJBCA ACME.
3. Edit the text in one of the following ways:
◦ Select edit text.
◦ Double-click (or use the keyboard shortcut)" the Base URL field.

Note: If a warning message appears, you might be in the “Global” application. Select
the link that appears to edit the record.
4. Paste your own API URL over the [ejbca_url] text inside the URL.
5. Make sure that the ACME option is selected.
6. Select Save.

Result

The base API URL for your EJBCA ACME environment is configured to your systems.
Create a routing policy for EJBCA ACME certificates
Automate your EJBCA ACME workflows by creating a routing policy that aligns with your
Certificate Signing Requests (CSRs) to request, renew, and revoke certificates.

Before you begin

Role required: discovery_admin, Public Key infrastructure (PKI) admin, admin

About this task

Streamline your certificate life-cycle workflow by filling out a routing policy form. This form
configures your routing policy fields to make sure your Certificate Signing Request (CSR) aligns
with the correct Certificate Authority (CA) routing policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Procedure
1. Navigate to All > Certificate Management > Certificate Routing Policies.
2. Select New.
3. On the Certificate Routing Policy form, fill in the fields.
For a description of the field values, see Certificate routing policy form table.

Warning: For your automated workflow to work, you must fill in every field in your
routing policy form. If you don’t, your CSR requires manual steps. You can see all the
fields and values at the Certificate routing policy form table.
4. Select Submit.

What to do next

Navigate to All > Certificate Management > Certificate Routing Policies.
By locating your routing policy on the Certificate Routing Policies page, you validate your EJBCA
ACME Certificate routing policy.
Validate your EJBCA ACME base API URL
Validate that your base API URL for EJBCA ACME has been updated to your organization's root
URL address.

Before you begin

Role required: discovery_admin, Public Key infrastructure (PKI) admin, admin

Procedure
1. Navigate to Workspaces > Certificate Management.
2. Select the Certificate Records tab.
3. Select Certificate Authority API URL.
4. Select EJBCA ACME in the table.

Result

The UI is redirected to the certificate field and its Base URL.

What to do next

Review the URL and confirm that it's not the standard default settings.
To connect with EJBCA, you must change the default URL to your specific environment (env)
URL. If you still see the default setting, reconfigure your base API URL. For more information, see
Configure your base API URL for EJBCA ACME.
ACME reference
Reference topics provide additional information about the Automated Certificate Management
Environment (ACME), including tables, patterns, and terms.
To automate the processes of your certificate life-cycle, you must fill out routing policies that
are filled in to the Certificate Authority forms. For a description of the fields in the Certificate
Authority form, see Certificate routing policy form table.
Certificate routing policy form table
To automate the processes of your certificate life cycle, you must fill out a routing policy form that
populates your Certificate Signing Requests. This table shows you the required fields and values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
Fields for a Certificate Routing Policy Form
Field

Description

Name

Name of your routing policy.

Certificate Authority

Certificate authority. To see a list of supported
Certificate Authorities, select the search icon.
Choose EJBCA ACME.

Note: The certificate authority
determines if additional fields are
necessary for your routing policy. Fill in
this field first, to see what information you
need for this form.
Environment

The environment that you want your certificate
for. Options are:
• Development
• Disaster recovery
• Production
• Sub-Production
.

Assignment Group

Assignment group. You can select an
assignment group or make a new one.

DNS Challenge Action

Domain name system challenge action.

Credential Alias

Credential alias. Your options are based on
the aliases that you create in the Certificate
Management Credentials form.

Certification Purpose

Certification Purpose. Options are:
• Internal
• External

Is Active

Option to activate the policy.

Allow Duplicate Request

Option to allow multiple requests to receive
multiple certificates.

Approval Required

Option to require approval.

Task Approval Group

Task approval group. This field appears only
when the Approval Required field is activated.

DNS Task Assignment Group

DNS Task Assignment Group. Select
Certificate Inventory and Management

Domain

Domain of the policy. This field is automatically
set to global

MID Server

MID Server you want to use.

Subject Common Name

Specific entity or domain name that the
certificate is issued to. Enter a name or *.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


<!-- page 1426 -->
Fields for a Certificate Routing Policy Form (continued)
Field

Description

Subject Alternative Name

Domain or subdomain included in the Subject
Common Name. Enter an alternative name or
*.

Organization

Organization making the certificate signing
request for the given Subject Common Name.
Enter the organization or *.

Locality

Locality (city) of the organization making
the certificate signing request for the given
Subject Common Name. Enter the locality or *.

Country

Country of the organization making the
certificate signing request for the given
Subject Common Name. Enter the country or
*.

Organizational Unit

Organizational unit making the certificate
signing request for the given Subject Common
Name. Enter the unit or *.

State

State of the organization making the certificate
signing request for the given Subject Common
Name. Enter the state or *.

Email Address

Email address of the administrator in the
organization making the certificate signing
request for the given Subject Common Name.
Enter an email address or *.

Automated Certificate Renewal
Detect certificates that are about to expire and renew them automatically before expiration to
keep your digital systems secure and continuously available.
Expired certificates are a serious problem for organizations.
Many organizations face unexpected outages due to their Transport Layer Security (TLS)
certificates expiring without their knowledge.
Manually tracking your digital TLS certificates is a time consuming and tedious job that can cause
certificates to expire unnoticed. Overlooking expiring certificates renders sites unsecure and
dangerous to users.
Automatic certificate renewal agents let you find certificates approaching expiration and
automatically renew them before they expire.
You can also set a certificate to renew automatically after requesting a new certificate.
Configuring automated certificate renewal
Configure your MID Server and system properties to automatically renew certificates before they
expire.
To automatically renew your certificates before they expire, use the automated certificate renewal
workflow or the Now Assist certificate renewal AI agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
In both cases, you must first configure your system for automatic renewal.
Configuring for automated certificate renewal involves the following steps:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
3. Configure System Properties for automatic certificate renewal. This step is optional if you use
the Now Assist certificate renewal AI agent.
Configure your MID Server for automatic certificate renewal
Collect information about root certificates stored outside your server. Create a specialized
Discovery schedule.

Before you begin

Role required: pki_admin or admin

About this task

Configure your MID Server to renew certificates automatically by setting the configuration
parameters in your MID Server.
For information about version compatibility and troubleshooting, see the Renewal of TLS
certificates using AI Agents for Discovery
knowledge article [KB2470998] in the Now Support
Knowledge Base. The Certificate Inventory and Management on Yokohama Patch 8 or later
supports the certificate renewal agent.

Procedure
1. Navigate to All > Mid Servers.
2. Select the MID Server that you want to configure.
3. Select the Configuration Parameters tab.
4. Add a new parameter by selecting New.
5. Select the Parameter name field.
6. Select ext.vault.hashicorp.address
7. In the Value field, enter your external Hashicorp vault address.
The default value is http://127.0.0.1:8200.
8. Select Submit
9. Add a new parameter.
a. Select New.
b. Select the Parameter name field.
c. Select ext.vault.hashicorp.path
d. In the Value field, enter your file path in the Hashicorp vault.
e. Select Submit.
10. Navigate to the location of your host name of the MID Server
a. Navigate to the IP address in the IP address field of your MID Server record.
b. Navigate to the MID Server installed folder where you installed your MID Server.
c. Select the agent/config.xml file.
d. Add the parameter ext.vault.hashicorp.token in your cofig.xml file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
e. Insert the following code: <parameter name="ext.valut.hashicorp.token"
secure="true" value="<YOUR TOKEN VALUE>"/>
f. Restart your MID Server.

Result

Your MID Server is configured for automatic certificate renewal.

What to do next

To complete the process of configuring yourself for automatic certificate renewal, you must
complete the required steps to Add the required applications and capabilities to your MID Server
and Configure System Properties for automatic certificate renewal.
Add the required applications and capabilities to your MID Server
Enable your MID Server to auto-renew your certificates by adding the Certificate Inventory and
Management and GenerateCSR applications.

Before you begin

Check that you have completed the task Configure your MID Server for automatic certificate
renewal.
Role required: pki_admin or admin

About this task

Move the applications Certificate Inventory and Management and GenerateCSR from your
collection list to your supported applications list.

Procedure
1. Navigate to All > Mid Servers.
2. Select the MID Server that you want to configure.

Note: The MID Server must be the same MID Server that you configured for automated
certificate renewal.
3. Modify the MID Server
a. Select Supported Applications.
b. Select Edit.
c. Move Certificate Inventory and Management to the Supported Applications List.
d. Select Save.
You’re redirected to the MID Server page.
4. Add MID Server Capabilities
a. Select Capabilities.
b. Select Edit.
c. Move GenerateCSR from the Collections List to the Supported Applications List.
d. Select Save.
You’re redirected to the MID Server page.

Result

Your MID Server supports the Certificate Inventory and Management and GenerateCSR
applications, fulfilling a requirement to enable automatic certificate renewal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
What to do next

Configure System Properties for automatic certificate renewal, to complete the configuration for
automatic certificate renewal.
Configure System Properties for automatic certificate renewal
Enable the auto-renewal options in your System Properties to configure your system to renew
automatically Transport Layer Security (TLS) certificates before they expire.

Before you begin

Check that you have completed the tasks, Configure your MID Server for automatic certificate
renewal, and Add the required applications and capabilities to your MID Server.
Role required: pki_admin or admin

About this task

Configuring your system properties to enable automatic certificate renewal is required for using
the automatic renewal workflow and the Now Assist AI certificate renewal agent.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for auto_renew.
3. Select sn_disco_certmgmt.enable_auto_renewal_options_in_service_catalog
4. Set the Value field to true.

Result

Your system is configured to renew automatically certificates before they expire.

What to do next

You can Set a certificate to renew automatically or use the Now Assist certificate renewal AI
agent.
Define the maximum retries allowed for certificate auto-renewal
Use the system property sn_disco_certmgmt.auto_renewal_max_retries to set the maximum
retries your system enables for automatic certificate renewal.

Before you begin

Role required: pki_admin or admin

About this task

If an automatic certificate renewal fails, the system will reattempt to renew the next day until it
exhausts the maximum number of retries. Set this property to configure the maximum number of
retries your system makes to renew your certificate.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for auto_renew.
3. Selectsn_disco_certmgmt.auto_renewal_max_retries
4. Set the Value field to the maximum retries that you want.
Set a certificate to renew automatically
Set certificates to renew automatically. State the number of days before their expiration such that
the certificate will automatically renew before those days.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
Before you begin

Complete the following tasks to configure your system to renew your certificates automatically:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
3. Configure System Properties for automatic certificate renewal
Role required: pki_admin or admin

Procedure
1. Navigate to Service Catalog > Certificate Management > Automated Flow > Renew
Certificate (Automated).
2. Select the Issued Certificate that you would like to renew by selecting the search icon

.

3. Set the Renew Automatically field to Yes.

Note: By selecting Yes, a new field appears called How many days before expiry does
this certificate need to be renewed?.

4. Select the number of days in the How many days before expiry does this certificate need to
be renewed? field.
5. Select Submit.

Result

The certificate you chose is set to auto-renew the number of days before expiration that you
request.
Request a new certificate and set it to auto-renew
Set your certificate to auto-renew when you first request it.

Before you begin

Complete the following tasks to configure your system to renew your certificates automatically:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
3. Configure System Properties for automatic certificate renewal
Role required: pki_admin or admin

Procedure
1. Navigate to Service Catalog > Certificate Management > Automated Flow > Request New
Certificate (Automated).
2. Select the check box Want to Generate CSR?
3. On the Request a new certificate form, fill in the fields.
For a description of the field values, see Requesting a new certificate form table.
4. Select Generate.
5. Set the Validity Period for Certificate (in Days) field to validity period of the certificate.
6. Set the Renew Automatically field to Yes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Note: By selecting Yes, a new field appears called How many days before expiry does
this certificate need to be renewed?.

7. Select the number of days before the certificate you want to renew in the How many days
before expiry does this certificate need to be renewed? field.
8. Select Submit.

Result

Your new certificate is issued with instructions to renew automatically before it expires.
Validate the auto-renew status of your certificate
Confirm that you set your certificate to renew automatically before it expires.

Before you begin

Complete one of the following tasks before you validate your certificate:
• Set a certificate to renew automatically
• Request a new certificate and set it to auto-renew
Role required: pki_admin or admin

Procedure
1. Navigate to All > Unique Certificates.
2. Select the certificate that you want to validate.
3. Select the Certificates metadata tab.
4. Ensure that the Auto renew enabled field is set to true.

Note: The pki_admin can select this field and edit it.
Certificate Inventory and Management reference
Reference topics provide additional information about Certificate Inventory and Management
dashboard and components, including tables, patterns, and terms.
Certificate Inventory and Management tables
Certificate Inventory and Management tables provide a centralized system to track and manage
digital certificates. They capture key details, including discovered certificates, installation
locations, historical data, and associated tasks such as renewals and requests. This framework
ensures efficient certificate management, supporting security, compliance, and streamlined
operations.
Certificate Inventory and Management tables
Table

Description

Unique Certificate

Discovery populates this table with one record for
each unique certificate discovered for certificate
management. Fingerprint column is unique for every
server certificate.

[cmdb_ci_certificate]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
Certificate Inventory and Management tables (continued)
Table

Description

Note: You can also view the entire certificate
chain using the related list in the Unique
Certificate table.
Installed Certificate

Discovery populates this table with all discovered
certificates and shows all locations where certificates
[sn_disco_certmgmt_cmdb_installed_certificate]
are installed. It does not have a reference to the server
CI and does not go through IRE. All the relationships
with the managed certificate are stored in the CI
Relationship [cmdb_rel_ci] table. The relationships
can be for servers, applications, or business services.
Discovered Certificate

Discovered certificates are stored in this table first as
part of the Shazzam and URL discovery sensor and
[sn_disco_certmgmt_certificate_history] shows the XML payload of all certificates with that
address.
Certificate Domain
[certificate_domain]
Certificate Task
[sn_disco_certmgmt_certificate_task]
Certificate URL
[sn_disco_certmgmt_cert_url]

Stores one or more domains for the subject alternative
name.
Stores all certificate renewal tasks and new certificate
request tasks.
Holds a list of URLs by row to target for certificate
discovery.

Certificate Management Credential

Stores the CA types including GoDaddy and
DigiCert. Others are populated based on the
[sn_disco_certmgmt_certificate_management_credential]
certificate_authority script. Only discovery_admin
will be able to create other CA credentials. External
(Version 1.1.7 Certificate Inventory and
Credential support will be available in a future release.
Management)
Scheduled Certificate URL
[sn_discovery_cert_url_sched_m2m]
Certificate Authority
[sn_disco_certmgmt_ca]

Links the URLs to discover [discovery_cert_url] to a
particular Discovery schedule [discovery_schedule].
Contains the Certificate Authority Name and Base URL
of REST API.

(Version 1.3.8 Certificate Inventory and
Management)
Certificate Authority API URL
[sn_disco_certmgmt_ca_api_url]

Contains the reference of certificate authority, end
point URL of REST API, and certificate validation type.

(Version 1.3.8 Certificate Inventory and
Management)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
Certificate Inventory and Management tables (continued)
Table

Description

Routing Policy

Decides which CA needs to be contacted for
certificate operations. This table contains the CA, CA
URL, Credential, Approval Group, Assignment Group,
and CSR attributes.

[sn_disco_certmgmt_routing_policy]
(Version 1.3.8 Certificate Inventory and
Management)
Automated Certificate Task
[sn_disco_certmgmt_task]

Contains all automated certificate request tasks (new,
renew, and revoke).

(Version 1.3.8 Certificate Inventory and
Management)
New Certificate Tasks
[sn_disco_certmgmt_new_task]

Extends from sn_disco_certmgmt_task and contains
new certificate request tasks.

(Version 1.3.8 Certificate Inventory and
Management)
Renew Certificate Tasks
[sn_disco_certmgmt_renew_task]

Extends from sn_disco_certmgmt_task and contains
renew certificate request tasks.

(Version 1.3.8 Certificate Inventory and
Management)
Revoke Certificate Tasks
[sn_disco_certmgmt_revoke_task]

Extends from sn_disco_certmgmt_task ans contains
revoke certificate request tasks.

(Version 1.3.8 Certificate Inventory and
Management)
Certificate Extensions

Stores information for all server certificates.

[sn_disco_certmgmt_certificate_extension]
(Version 1.3.8 Certificate Inventory and
Management)
Certificate Inventory and Management patterns
Efficiently manage your Certificate Inventory with patterns to streamline the management of
digital certificates. Patterns reduce the risk of vulnerabilities by bolstering security, compliance,
and efficient lifecycle control.
Certificate Inventory and Management patterns and descriptions
Pattern

Description

GoDaddy – Certificate Management pattern

Part of the Certificate Inventory and
Management application. Allows you to import

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
Certificate Inventory and Management patterns and descriptions (continued)
Pattern

Description

and scan for certificates from your certificate
authority (CA) GoDaddy.
DigiCert – Certificate Management pattern

Part of the Certificate Inventory and
Management application. Allows you to import
and scan for certificates from your certificate
authority (CA) DigiCert.

Entrust - Certificate Management pattern

Part of the Certificate Inventory and
Management application. Allows you to import
and scan for certificates from your certificate
authority (CA) Entrust.

Sectigo - Certificate Management pattern

Part of the Certificate Inventory and
Management application. Allows you to import
and scan for certificates from your certificate
authority (CA) Sectigo.

Import SSL Certificate pattern

Amazon AWS - Certificate Manager pattern
and Amazon AWS - Collect Certificates Tags
shared library.

Allows you to discover certificates by
importing certificates from files. Run Certificate
Discovery via certificate file import.
Discovers certificates as part of AWS Cloud
discovery. AWS Certificate Manager discovery.

Certificate Inventory and Management, at
least 3.4.0.
Discovery and Service Mapping Patterns, at
least 1.12.0.
Google Cloud Platform (GCP) - Certificate
Manager Certificates pattern and Google
Cloud Platform (GCP) - Classic Certificates
pattern.

Discovers certificates as part of GCP Cloud
discovery. GCP Certificate Manager discovery.

Certificate Inventory and Management, at
least 3.4.0.
Discovery and Service Mapping Patterns, at
least 1.12.0.
Azure – Key Vault Certificates pattern.
Certificate Inventory and Management, at
least 3.4.0.

Discovers certificates as part of Azure
Cloud discovery. Azure Key Vault certificate
discovery.

Discovery and Service Mapping Patterns, at
least 1.12.0.
Java KeyStore and Windows Certificates

Discovers certificates in the Java KeyStore or
Windows Certificate Store. Java KeyStore and
Windows Certificate Store discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
AWS Certificate Manager discovery
Cloud Discovery uses Patterns to discover certificate data that the Amazon AWS Cloud
Certificate Manager (ACM) manages. Discovering this data requires installing and updating
Discovery and Service Mapping Patterns and Certificate Inventory and Management.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the configuration of an AWS account
For more information, see Discovery for cloud environment
Verify the installation of the plugins
Certificate Inventory and Management (sn_disco_certmgmt) at least 3.4.0
Discovery and Service Mapping Patterns (sn_itom_pattern) at least 1.12.0
Verify that Cloud Discovery has permissions to discover AWS
Run the following commands with AWS CLI to check the permissions and policies
attached to your active IAM role:
• List Certificates
AWS_PAGER='' aws acm list-certificates --region
<region>
• Describe Certificates
AWS_PAGER='' awsacm describe-certificate --certificatearnarn:aws:acm:<region>:<accout_id>:certificate/
<certificate_id>
• Get Certificates
AWS_PAGER='' awsacm get-certificate --certificatearnarn:aws:acm:<region>:<account_id>:certificate/
<certificate_id>
• Get tags
AWS_PAGER='' awsresourcegroupstaggingapi getresources --tags-per-page 100 --resource-type-filters
'acm:certificate'
Set the configuration of the system property
When the system property

sn_itom_pattern.issuer_certificate_search_by_idn is set to
false, Discovery uses the certificate fingerprints to find issuers and root issuers.
Verify the MID Server requirements
The MID Server must have either ALL capability or AWS capability.
Verify the configuration of Cloud Discovery schedule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
For more information, see Create a discovery schedule in Cloud Discovery
Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
The Amazon AWS - Certificates Manager pattern and Amazon AWS - Collect Certificates Tags
shared library support the discovery of the following table and fields.

Field

Description

Unique Certificates [cmdb_ci_certificate]
Name

The host name/domain associated with the certificate.
For example, *.service-now.com

Fingerprint

The hash value of the certificate.

For example, d708c8583c78c176d5df1a4f01aac746294 e390a03038f280b0d8f5e
Fingerprint
algorithm
Serial
Number
Subject
common
name

The algorithm that's being used to hash the certificate. For example, Discovery calculates fingerp
SHA-256 algorithm, so the value that is populated is: SHA-256

The serial number of the certificate. For example, 70 d8 c9 52 77 1c 2d 54 97 00 0e

76 b5 e8 c1 73
The host name/domain associated with the certificate. For example, *.service-now.com

Subject
distinguished The distinguished name of the entity that the certificate is issued to.​
name
The subject distinguished name consists of the following
• Common name (CN).
• Organization (O)- The organization that owns the domain that the certificate is issued to.

• organizational unit (OU)- The organizational unit that owns the domain that the certificate is iss
Issuer
common
name

The common name of the certificate issuer. For example, Entrust Certification Authority.

Issuer
distinguished The distinguished name of the certificate issuer.
name
The issuer distinguished name consists of the following

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
Field

Description

• Common Name (CN)- the authority that issued the certificate. For example, Entrust Certi
Authority.

• Organization (O)- The organization that issued the certificate. For example, "Entrust", I
• Organizational Unit (OU)- The unit that has the legal rights to issue the certificate.
Renewal
tracking

Indicates whether to create any priority 1 or priority 3 tasks for the expiring certificates.
Discovery sets Renewal tracking to priority3 when the system property

glide.discovery.certs.enable_renewal_task_creation_for_discovered_
is set to true.
Valid From
Valid To
Subject
organization

The certificate is valid from this date (UTC). For example, 2023-09-25 10:43:03
The expiry date of the certificate (UTC). For example, 2024-09-24 10:43:03
The organization (O) that the certificate is issued to.

Subject
The organizational unit (OU) that the certificate is issued to.
organizational
unit
Subject
country

The country (C) of the organization that the certificate is issued to. Populated in a two-letter coun

Subject state

The region, state (ST), or province of the organization that the certificate is issued to. Populated w
code.

Subject
locality

The city, location (L) of the organization that the certificate is issued to.

Subject email The email address of the organization that the certificate is issued to.
Issuer

A reference to the entity that signed and issued the certificate. The reference is available if the is
a part of the same payload.

Root Issuer

A reference to the root certificate. The reference is available if the issued certificate is a part of th

Subject
alternative
name

The name of the certificate domain record.

CI relationships
The Amazon AWS - Certificates Manager pattern and Amazon AWS - Collect Certificates Tags
shared library support the discovery of the following relationships:

CI

Relationship

CI

Unique Certificate​
[cmdb_ci_certificate]

Hosts::Hosted on

AWS Datacenter​
[cmdb_ci_aws_datacenter]

Unique Certificate
[cmdb_ci_certificate]​

Hosts::Hosted on

Cloud Service Account​
[cmdb_ci_cloud_service_account]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
CI

Relationship

CI

Key Value [cmdb_key_value]​

Reference​

Unique Certificate​
[cmdb_ci_certificate]​

GCP Certificate Manager discovery
Cloud Discovery uses Patterns to discover certificate data that the GCP Certificate Manager
manages. Discovering this data requires installing and updating Discovery and Service Mapping
Patterns and Certificate Inventory and Management.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the configuration of an GCP account
For more information, see Discovery for cloud environment
Verify the installation of the plugins
Certificate Inventory and Management (sn_disco_certmgmt), at least 3.4.0
Discovery and Service Mapping Patterns (sn_itom_pattern), at least 1.12.0
Verify the configuration of the system property
When the system property

sn_itom_pattern.issuer_certificate_search_by_idn is set to
False, Discovery uses the certificate fingerprints to find issuers and root issuers.
Verify the MID Server requirements
The MID Server must have either ALL capability or GCP capability.
Verify the configuration of Cloud Discovery schedule
For more information, see Create a discovery schedule in Cloud Discovery
Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
The Google Cloud Platform (GCP) - Certificate Manager Certificates pattern and Google Cloud
Platform (GCP) - Classic Certificates pattern support the discovery of the following table and
fields.

Field

Description

Unique Certificates [cmdb_ci_certificate]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
Field

Name

Description

The host name/domain associated with the certificate.
For example, *.service-now.com

Serial
Number
Subject
common
name

The serial number of the certificate. For example, 70 d8 c9 52 77 1c 2d 54 97 00 0e

76 b5 e8 c1 73
The host name/domain associated with the certificate. For example, *.service-now.com

Subject
distinguished The distinguished name of the entity that the certificate is issued to.​
name
The subject distinguished name consists of the following
• Common name (CN).
• Organization (O)- The organization that owns the domain that the certificate is issued to.

• organizational unit (OU)- The organizational unit that owns the domain that the certificate is iss
Issuer
common
name

The common name of the certificate issuer. For example, Entrust Certification Authority.

Issuer
distinguished The distinguished name of the certificate issuer.
name
The issuer distinguished name consists of the following

• Common Name (CN)- the authority that issued the certificate. For example, Entrust Certi
Authority.

• Organization (O)- The organization that issued the certificate. For example, "Entrust", I
• Organizational Unit (OU)- The unit that has the legal rights to issue the certificate.
Renewal
tracking

Indicates whether to create any priority 1 or priority 3 tasks for the expiring certificates.
Discovery sets Renewal tracking to priority3 when the system property

glide.discovery.certs.enable_renewal_task_creation_for_discovered_
is set to true.
Valid From
Valid To
Subject
organization

The certificate is valid from this date (UTC). For example, 2023-09-25 10:43:03
The expiry date of the certificate (UTC). For example, 2024-09-24 10:43:03
The organization (O) that the certificate is issued to.

Subject
The organizational unit (OU) that the certificate is issued to.
organizational
unit
Subject
country

The country (C) of the organization that the certificate is issued to. Populated in a two-letter coun

Subject state

The region, state (ST), or province of the organization that the certificate is issued to. Populated w
code.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
Field

Description

Subject
locality

The city, location (L) of the organization that the certificate is issued to.

Subject email The email address of the organization that the certificate is issued to.
Issuer

A reference to the entity that signed and issued the certificate. The reference is available if the is
a part of the same payload.

Root Issuer

A reference to the root certificate. The reference is available if the issued certificate is a part of th

Subject
alternative
name

The name of the certificate domain record.

CI relationships
The Google Cloud Platform (GCP) - Certificate Manager Certificates pattern and Google
Cloud Platform (GCP) - Classic Certificates pattern support the discovery of the following
relationships:

CI

Relationship

CI

Unique Certificate​
[cmdb_ci_certificate]

Hosts::Hosted on

Google Datacenter​
[cmdb_ci_google_datacenter]​

Unique Certificate
[cmdb_ci_certificate]​

Hosts::Hosted on

Cloud Service Account​
[cmdb_ci_cloud_service_account]​

Key Value [cmdb_key_value]​

Reference​

Unique Certificate​
[cmdb_ci_certificate]​

Azure Key Vault certificate discovery
Cloud Discovery uses Patterns to discover Azure Key Vault certificates. Discovering this data
requires installing and updating Discovery and Service Mapping Patterns and Certificate
Inventory and Management.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the configuration of an Azure account
For more information, see Discovery for cloud environment
Verify the installation of the plugins
Certificate Inventory and Management (sn_disco_certmgmt), at least 3.4.0
Discovery and Service Mapping Patterns (sn_itom_pattern), at least 1.12.0
Verify the configuration of the system property
Verify that the

sn_itom_pattern.issuer_certificate_search_by_idn set to
True to configure Discovery to search issuers by issuer distinguished name only.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


<!-- page 1441 -->
Discovery can't calculate fingerprint for each certificate in the chain because Key
Value Certificates PFX records don't contain certificate chains.
Verify the MID Server requirements
The MID Server must have either ALL capability or Azure capability.
Verify the configuration of Cloud Discovery schedule
For more information, see Create a discovery schedule in Cloud Discovery
Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
The Azure – Key Vault Certificates pattern support the discovery of the following table and
fields.

Field

Description

Unique Certificates [cmdb_ci_certificate]
Name

The host name/domain associated with the certificate.
For example, *.service-now.com

Serial
Number
Subject
common
name

The serial number of the certificate. For example, 70 d8 c9 52 77 1c 2d 54 97 00 0e

76 b5 e8 c1 73
The host name/domain associated with the certificate. For example, *.service-now.com

Subject
distinguished The distinguished name of the entity that the certificate is issued to.​
name
The subject distinguished name consists of the following
• Common name (CN).
• Organization (O)- The organization that owns the domain that the certificate is issued to.

• organizational unit (OU)- The organizational unit that owns the domain that the certificate is iss
Issuer
common
name

The common name of the certificate issuer. For example, Entrust Certification Authority.

Issuer
distinguished The distinguished name of the certificate issuer.
name
The issuer distinguished name consists of the following

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
Field

Description

• Common Name (CN)- the authority that issued the certificate. For example, Entrust Certi
Authority.

• Organization (O)- The organization that issued the certificate. For example, "Entrust", I
• Organizational Unit (OU)- The unit that has the legal rights to issue the certificate.
Renewal
tracking

Indicates whether to create any priority 1 or priority 3 tasks for the expiring certificates.
Discovery sets Renewal tracking to priority3 when the system property

glide.discovery.certs.enable_renewal_task_creation_for_discovered_
is set to true.
Valid From
Valid To
Subject
organization

The certificate is valid from this date (UTC). For example, 2023-09-25 10:43:03
The expiry date of the certificate (UTC). For example, 2024-09-24 10:43:03
The organization (O) that the certificate is issued to.

Subject
The organizational unit (OU) that the certificate is issued to.
organizational
unit
Subject
country

The country (C) of the organization that the certificate is issued to. Populated in a two-letter coun

Subject state

The region, state (ST), or province of the organization that the certificate is issued to. Populated w
code.

Subject
locality

The city, location (L) of the organization that the certificate is issued to.

Subject email The email address of the organization that the certificate is issued to.
Issuer

A reference to the entity that signed and issued the certificate. The reference is available if the is
a part of the same payload.

Root Issuer

A reference to the root certificate. The reference is available if the issued certificate is a part of th

Subject
alternative
name

The name of the certificate domain record.

CI relationships
The Azure – Key Vault Certificates pattern support the discovery of the following relationships:

CI

Relationship

CI

Unique Certificate​
[cmdb_ci_certificate]

Hosts::Hosted on

Azure Datacenter​
[cmdb_ci_azure_datacenter]​

Unique Certificate
[cmdb_ci_certificate]​

Hosts::Hosted on

Cloud Service Account​
[cmdb_ci_cloud_service_account]​

Key Value [cmdb_key_value]​

Reference​

Unique Certificate​
[cmdb_ci_certificate]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
Java KeyStore and Windows Certificate Store discovery
Discovery uses the Collect Certificates extension section of the Linux Server and Windows OS
– Servers patterns to discover certificates stored in the Java KeyStore or Windows Certificate
Store. Discovering the certificate information requires installing and updating Discovery and
Service Mapping Patterns and Certificate Inventory and Management.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the following plugins are up to date
• Discovery and Service Mapping Patterns (sn_itom_pattern), at least 1.12.0
• Certificate Inventory and Management (sn_disco_certmgmt), at least 3.4.0
Verify that the pattern is enabled
The Collect Certificates pattern extension is disabled by default. On the Discovery
Patterns list, verify that the Collect Certificates pattern extension has the Active
field set to true.
Verify the configuration of the Java KeyStore credentials
In the Discovery Credentials module, select jks credentials. Make sure you
configured the Discovery IP Affinity. In the Type field, insert java_keystore. For
more information, see Get started with credentials
Verify the configuration of the Discovery schedule
For more information, see Running discoveries in your network

Data collected by Discovery during horizontal discovery
The Collect Certificates extension section of the Linux Server and Windows OS – Servers
patterns support the discovery of the following table and fields.

Field

Description

Unique Certificates [cmdb_ci_certificate]
Fingerprint [fingerprint]

The certificate fingerprint number.

Serial Number
[serial_number]

The serial number of the certificate.

Signature Algorithm
[signature_algorithm]

The signature algorithm of the certificate.

Fingerprint Algorithm
[fingerprint_algorithm]

The fingerprint algorithm of the certificate.

Issuer distinguished name
[issuer_distinguished_name]

The distinguished name of the certificate issuer.
The issuer distinguished name consists of the following

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
Field

Description

• Common Name (CN)- the authority that issued the certificate.
For example, Entrust Certification Authority.
• Organization (O)- The organization that issued the certificate.
For example, "Entrust", Inc.
• Organizational Unit (OU)- The unit that has the legal rights to
issue the certificate.
Subject distinguished name
[subject_distinguished_name] The distinguished name of the entity that the certificate is
issued to.​
The subject distinguished name consists of the following
• Common name (CN).
• Organization (O)- The organization that owns the domain that
the certificate is issued to.
• organizational unit (OU)- The organizational unit that owns
the domain that the certificate is issued to.
Subject common name
[subject_common_name]

The host name or domain associated with the certificate.

Subject country
[subject_country]

The country (C) of the organization that the certificate is issued
to. Populated in a two-letter country code.

Subject State [subject_state]

The region, state (ST), or province of the organization that the
certificate is issued for. This data is populated with two-letter
code.

Subject locality
[subject_locality]

The city, location (L) of the organization that the certificate is
issued for.

Subject organizational unit
[subject_organizational_unit]

The organizational unit (OU) that the certificate is issued for.

Subject organization
[subject_organization]

The organization (O) that the certificate is issued for.

Subject email [subject_email]

The email address of the organization that the certificate is
issued for.

Valid From [valid_from]

The certificate is valid from this date (Displayed in your time
zone.). For example, 2023-09-25 10:43:03

Valid To [valid_to]

The expiry date of the certificate (Displayed in your time zone.).
For example, 2024-09-24 10:43:03

State [state]

When Discovery collects the certificate the field indicates
installed

Subject Alternative Name
[subject_alternative_name]

A list of references to alternative host names used by the
server.

Issuer [issuer]

In this field, there’s a reference to the certificate record. The
issuer is the entity that signed and issued the certificate. The
reference is available if the issued certificate is a part of the
same payload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
Field

Description

Installed Certificate [sn_disco_certmgmt_cmdb_installed_certificate]
Discovery Method
[discovery_method]

If a pattern discovered this installed certificate, the field
indicates Pattern.

Source [source]

The IP address of the host server on which discovery is run.

Server [server]

Root Issuer [root_issuer]

The Java-based web server or Windows based web server that
store the certificate in java KeyStores on the host machine.
A reference to the root certificate record. The reference is
available if the issued certificate is a part of the same payload.

Certificate Inventory and Management terms
The Certificate Inventory Management glossary comprises a set of concise definitions and
explanations for terms related to the tracking, storage, and management of digital certificates
within an IT environment.
Certificate Authority (CA)
Entity that issues a digital certificate.
Certificate Fingerprint
Carries the unique information of the certificate, meta data.
Discovery Method - CA (Version 1.1.7 Certificate Inventory and Management)
TLS certificates belonging to this category of discovery method are discovered from
a Certificate Authority such as GoDaddy or DigiCert.
Discovery Method - Certificate Import (Version 1.1.7 Certificate Inventory and
Management)
TLS certificates belonging to this category of discovery method are discovered by
importing the files into the system using pattern-based Discovery.
Discovery Method - Port
TLS certificates belonging to this category of discovery method are discovered from
remote servers listening ports.
Discovery Method - URL
TLS certificates belonging to this category of discovery method are discovered from
URLs.
External Certificate
Indicates that the digital certificate is signed by either root or intermediate CA.
Internal certificate or self-signed
Indicates that the digital certificate is signed by the same entity whose identity it
certifies for example, internal or self-signed certificates are not signed by root or
intermediate CAs.
Transport Layer Security (TLS)
Successor protocol to SSL. TLS is an improved version of SSL. It works in much
the same way as the SSL, using encryption to protect the transfer of data and
information.
Trust manager
Validates the TLS certificate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
Trust store
Repository to store CA certificates.
Unique vs installed certificates
Unique: Each unique instance or fingerprint of certificate.
Installed: Shows where each discovered certificate is installed.
Certificate authorities pattern API elements and permissions
Explore the Certificate Authorities (CA) pattern API elements and permissions for comprehensive
insights into the associated functionalities and authorization requirements.
API elements and permissions
Certificate Authorities

GoDaddy

API element

• * /v1/certificates
• * /v1/certificates/{certificate_id}/download

DigiCert

• * /services/v2/order/certificate
• * /services/v2/certificate/{certificate_id}/chain

Entrust

• * / v2/certificates
• * / v2/certificates/{certificate_id}

Sectigo

• * /cert-manager/api/ssl/v1
• * /cert-manager/api/ssl/v1/collect/{certificate_id}/
pem

The patterns available with Certificate Inventory and Management Version 1.1.7 are:
• GoDaddy
• DigitCert
The patterns available with Certificate Inventory and Management Version 1.2.0 are:
• Entrust
• Sectigo
Quick start test for Certificate Inventory and Management
Quick start test for certificate discovery for GoDaddy, Entrust, Digicert, Setigo.
Certificate Inventory and Management - quick start test
Test

Description

Certificate Discovery

Certificate discovery for GoDaddy,
Entrust, Digicert, and Setigo. Discovery
brings the certificates and persist them

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
Certificate Inventory and Management - quick start test (continued)
Test

Description

in cmdb_ci_certificate table. This test
validates the certificates and CIs in the
cmdb_ci_certificate tables.
To learn more about Certificate Inventory and Management, see Certificate Inventory and
Management.
Related topics
Quick start tests
Discovery schedule form table
To perform Discovery on root certificates stored outside your server, you must set a special
Discovery schedule that locates these certificates. This table guides you through the form
required for this task.
Set a New Discovery Schedule for Certificates
Field

Value

Name

Name for your schedule.

Discover

Certificates.

Note: Once you fill the Discover field,
the Certificate Discovery Type field
appears.
Certificate Discovery Type

Import Certificates.

MID Server selection method

Specific MID Server.

MID Server

The MID Server you want to perform this
discovery.

Credential Alias

Your credential alias. If you must set one up,
Create a Connection & Credential alias .

IP-Based Discovery Schedule Form Table
A table of the fields and values to set up an IP-based Certificate Discovery schedule.
IP-Based Discovery Schedule Form and Fields Table
Field

Description

Name

Enter a name for your IP Based Discovery
Schedule.

Discover

Select Configuration Items.

MID Server selection method

The default value is Specific MID Server.

MID Server

Select a MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
IP-Based Discovery Schedule Form and Fields Table (continued)
Field

Description

Warning: Warning: Make sure that
your IP address is accessible to the
MID Server you’re using. If it doesn’t,
you have to Credential aliases for
Discovery .
Created by Quick Start

Check box not selected

Application

Certificate Inventory and Management

Active

Check box selected

Location

Optional value

Run

Set the frequency that you want the Discovery
to run. Daily, Weekly, Monthly, and so on

Credential alias

Optional value

Setting Your IP Addresses Form and Fields Table
A table of the fields and values to establish the IP address, range of IP addresses, or list of IP
addresses for Certificate Discovery.
Setting Your IP Addresses Form and Fields
Field

Description

Name

Enter a name for your IP Discovery search.

Active

Select the check box.

Type - IP address list

Enter each IP address, separated by a comma.

Type - IP address range

If you select this option for Type, two fields
appear: Starting IP and Ending IP.

Type - IP Network

The Network IP field appears. Enter the IP
address of the network. For more information,
see Discovery IP address configuration.

Requesting a new certificate form table
A table of the fields to request a new form.
Requesting a new certificate form table
Field

Description

Certificate Purpose

The Internal option requires you to fill out
the form. Options are Internal or External.
The External option requires you to import
the Certificate Signing Request (CSR) and
private key from an external source like
certificatetools.com.

Certificate Signing Request (CSR)

The CSR is sent to the Certificate Authority
(CA) to request the new certificate. This field is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
Requesting a new certificate form table (continued)
Field

Description

auto-populated when you select the Want to
generate CSR? check box.
Private Key

Private key for the certificate. This field
appears only when you select the Want to
generate CSR? check box, and it is autopopulated.

Want to generate CSR?

Option to generate a certificate signing
request (CSR). If activated, the CSR form must
be filled.

Subject Common Name

Specific entity or domain name that the
certificate is issued to. Enter a name or *.

Subject Alternative Name

Domain or subdomain included in the Subject
Common Name. Enter an alternative name or
*.

Organization

Organization making the certificate signing
request for the given Subject Common Name.
Enter the organization or *.

Organizational Unit

Organizational unit making the certificate
signing request for the given Subject Common
Name. Enter the unit or *.

Locality/City

Locality (city) of the organization making
the certificate signing request for the given
Subject Common Name. Enter the locality or *.

Province

State or province of the organization making
the certificate signing request for the given
Subject Common Name. Enter the state or *.

Country

Country of the organization making the
certificate signing request for the given
Subject Common Name. Enter the country or
*.

Email Address

Email address of the administrator in the
organization making the certificate signing
request for the given Subject Common Name.
Enter an email address or *.

Application Services

Application services for the certificate.

Servers

Servers the certificate can be hosted on.

Application Names

Specific application the certificate is issued
for.

Application Servers

Application servers the certificate is hosted
on.

Certificate Owner Group

Certificate owner group for the certificate.

Certificate Owner

Specific entity that the certificate is issued to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


