# Zurich IT Operations Management — Firewall Audits and Reporting

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1360–1372 of 4823

Sections: Firewall Audits and Reporting (p1360)

---

<!-- page 1360 -->
IP Discovery quick start test (continued)
Test

Description

created and output and discovery errors
during the discovery run.
To learn more about IP Discovery, see Schedule a horizontal discovery.
Related topics
Quick start tests
Tracked Configuration file form
The Tracked Configuration file form displays details about a specific configuration file.
Tracked Configuration file fields
Field

Description

File Name

Name and file path of the file.

File Size
(B)

File size in bytes.

Last
Modified

Date the file was last modified.

File
Content

Contents of the file, if you selected the option to save the contents on the file
tracking definition.

Related topics
Compare versions of CI configuration files

Firewall Audits and Reporting
Use the Firewall Audits and Reporting application to explore and create an inventory of your
firewall security policies, devices, device groups, and manager information. Additionally, you
can initiate requests for new firewall rules through the Service Catalog application and conduct
audits of firewall security policies within specified time frames.

Get started

Explore Firewall
Audits and Reporting

Manage Firewall
Audits and Reporting

Firewall Audits and
Reporting reference

Leverage Firewall
Audits and Reporting
to create inventory

Learn how to set up
Firewall inventory

Familiarize yourself
with dashboards and
report calibration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
Troubleshoot and get help
• What is firewall audit?
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Firewall Audits and Reporting
With Firewall Audits and Reporting, you have the capability to explore and conduct an inventory
of your firewall security policies, devices, device groups, and manager information. Additionally,
you can utilize it to submit requests for new firewall rules and audit security policies within a
specified time frame.

Firewall Audits and Reporting overview
A firewall device acts as a network security system, monitoring and controlling traffic based
on specific policies. It establishes a protective barrier between trusted internal and untrusted
external networks, incorporating multiple security policies to safeguard against threats. Ongoing
maintenance and audits are crucial as security policies evolve, preventing potential loopholes.
The firewall audit process streamlines rule tracking and updating, ensuring alignment with
company security policies. Firewall vendors, including Panorama, provide centralized managers
for efficient control over devices and policies.

Firewall Audits and Reporting workflow
The Firewall Audits and Reporting application enables the ServiceNow Discovery process to
discover firewalls (currently Palo Alto Networks firewalls), CMDB CIs for the firewall devices,
firewall manager, firewall device groups, and firewall policies using serverless patterns. Firewall
policy audit tasks are generated from the firewall managers or devices. You can also request new
firewall security policies through the Service Catalog and archive older firewall rule requests,
audit requests, and audit tasks to improve system performance. For more information, see
Visibility to Firewall inventory. To see various reports to track discovered policies and audit tasks,
see Firewall Admin Workspace dashboard.

Firewall Audits and Reporting benefits
Benefit

Feature

Users

Up-to-date inventory of firewall security
Visibility to Firewall
policies, devices, device groups, and manager inventory
information by persistently storing data in the
CMDB through regular queries to a firewall
manager.

Firewall Admin
[sn_disco_firewall.firewall_admin]

Provision for requesting a new firewall rule
using the Service Catalog.

Firewall rule requests

Firewall Requester
[sn_disco_firewall.firewall_requester]

Provision for auditing firewall security policies
for a specific time period.

Firewall Admin
Workspace
dashboard

Firewall User
[sn_disco_firewall.firewall_user]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Firewall Audits and Reporting roles and responsibilities
Specific users and roles to optimize the monitoring and tracking of requests for new firewall rules.
The configuration settings are activated or deactivated depending on the assigned roles.

Role

Responsibilities

Firewall Admin

Responsible for editing Configuration Item
(CI) attributes not populated by Discovery,
including "assigned_to" and others. Firewall
Admins possess the capability to view the
Firewall managers list with specific details
for each manager. Furthermore, they have
the authority to view and edit the dashboard,
initiate audits from the firewall manager details
page, create, modify, and view policies, edit
audit tasks, and request policy changes.

[sn_disco_firewall.firewall_admin]

Note: The Firewall Admin role includes
the Firewall User role. This role is
not automatically granted with the
discovery_admin role and needs to be
explicitly assigned to the user.
Firewall User
[sn_disco_firewall.firewall_user]

Responsible for viewing firewall dashboards
and policies in a Read-only capacity.

Note: This role includes the Firewall
Requester role.
Firewall Requester
[sn_disco_firewall.firewall_requester]

Responsible for requesting new firewall rules
through the Service Catalog.

Configuring Firewall Audits and Reporting
Set up the process to gain insight into discovering and compiling an inventory of firewall security
policies, devices, device groups, and manager information.

Configuration overview
Before using Firewall Audits and Reporting, it is crucial to set up the necessary plugins, ensure
activation, upgrade your instance to the latest version, and download the Firewall Audits and
Reporting application from ServiceNow Store. For additional details, see Get started with Firewall
Audits and Reporting.
After the prerequisites are met, you can proceed with the following tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
Firewall Audits and Reporting tasks
Task

Description

Discover firewall policies

Discover firewall policies that includes
uncovering firewall devices, policies, and
owner groups, ensuring a centralized view of
the footprint.

Customize Firewall Audits and Reporting

Customize Firewall Audits and Reporting
by modifying Discovery properties to tailor
specific aspects.

Archive firewall rule audit, rule requests, and
audit tasks

Enhance system performance by archiving
firewall rule requests, audit requests, and audit
tasks older than a designated time period.

Initiate audit request

Initiate audits against a specified firewall
manager or device, ensuring adherence to
their organization's security policies.

Get started with Firewall Audits and Reporting
Prior to diving into Firewall Audits and Reporting functionality, meet the necessary requirements
by installing and activating the plugin, upgrading your instance, and obtaining the application
from the ServiceNow Store.

Before you begin

Role required: admin

About this task

Note: The ServiceNow Store regularly releases new applications and updates to
applications that are created by ServiceNow. If you already have the application, you can
download the latest version to enhance your existing experience with our products. Since
different features are available or enhanced each time an application is released in the
Store, the content and features available in a particular release are indicated by version
number in this document.

Procedure
1. Ensure the following plugins are installed and activated.
◦ ITOM Visibility [com.snc.itom.vis.license] plugin
◦ Discovery [com.snc.discovery] plugin
◦ Configuration Management for Scoped Apps (CMDB) [com.snc.cmdb.scoped] plugin
2. Confirm that your system has been upgraded to Zurich or a later version.
During the upgrade process, the Firewall Audits and Reporting [com.sn_disco_firewall]
plugin is automatically installed if the ITOM Visibility [com.snc.itom.vis.license] and Discovery
[com.snc.discovery] plugins are already installed.
3. Download the Firewall Audits and Reporting application from ServiceNow Store.
Visibility to Firewall inventory
The Firewall Audits and Reporting application helps you to discover and take inventory of your
firewall security policies, devices, device groups, and manager information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
The ServiceNow Platform helps organizations gain visibility to IT estate with the centralized
Configuration Management Database (CMDB) while also automating workflows for the request
and change management processes. The Firewall Audits and Reporting application enables
security teams to discover all firewalls along with their policies, firmware versions, and other
hardware attributes. The Service Portal from ITSM helps customers to digitize workflows
when requesting new firewall rules. Combined with ITSM incident management and change
management workflows, this solution enables transparency in the fulfillment process. To make it
more simple for teams, policy ownership is tied to the system user and groups in the ServiceNow
Platform. A centralized dashboard provides visibility to the firewall estate and comprehensive
visibility to the inflow of request records landing in the Firewall admin’s fulfillment queue.
Currently, ServiceNow works with Palo Alto Networks Panorama. In future release, other firewall
providers will be added. The integration uses XML APIs and SNMP to connect the Firewall Audits
and Reporting application to firewall inventory and firewall policies.
Discover firewall policies
As a member of a security team, you can discover firewall devices, policies, and owner groups,
allowing a central view of the footprint. This data is updated in the ServiceNow CMDB. Set up
a schedule to discover your firewall policies to help you keep track of your company's valuable
information.

Before you begin

For the Panorama integration, you must have a Superuser (Read only) role.
Role required: discovery_admin or admin

About this task

Administrators in charge of Discovery can establish a recurring schedule for Palo Alto Networks
firewall policy discovery. This schedule utilizes the serverless pattern, connecting with the Palo
Alto Firewall Manager to discover and update information for the following four Configuration
Items (CIs) in the CMDB.
• Panorama Firewall Manager [cmdb_ci_firewall_manager_panorama]
• Palo Alto Firewall Devices [cmdb_ci_firewall_device_palo_alto]
• Panorama Firewall Device Group [cmdb_ci_firewall_device_group_panorama]
• Panorama Firewall Security Policies [cmdb_ci_firewall_sec_policy_panorama]

Procedure
1. Create a new credential alias of type API Key Credentials and Submit the credential.
2. Enter the Panorama API key.
For more information, see Credential aliases for Discovery

.

3. To create a Discovery schedule, perform the following steps.
a. Select Discover: Serverless.
b. Select the appropriate MID Server.
c. Right-click the header and select Save.
For more information on Discovery schedule, see Schedule a horizontal discovery.
4. From the tab at the bottom of the screen, select the Serverless Execution pattern and then
select New.
5. In the Serverless Execution pattern, perform the following steps.
a. Enter a name.
b. Select PaloAlto - Firewall Manager.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
c. Select Run Child Patterns.
d. Select Submit.
6. Navigate to Discovery Pattern Launcher Parameters and set the following three parameters.
◦ credentialAlias: Provide the new credential alias name created in step 1.
◦ trustInsecureHosts: Set to true to turn off hostname verification and enable self-signed
certificates to be accepted as trusted.
◦ url: Enter the base URL of the Panorama device.
For example, https:// <PANORAMA_HOST>/api.
7. Right-click the header and select Save.
Customize Firewall Audits and Reporting
Change Discovery properties to customize some of the aspects of Firewall Audits and Reporting.

Before you begin

Role required: discovery_admin or admin

About this task

Discovery properties manage various aspects of the horizontal discovery process. This
procedure explains how to assign default policy owner group and approval group names for
approving firewall rule tasks.

Procedure
1. To edit Discovery properties, navigate to All > Discovery Definition > Properties.
For more information on properties, see Discovery properties.
◦ sn_disco_firewall.default.rule.task.policy.owner.group: Your default task owner group name
◦ sn_disco_firewall.default.rule.task.approval.group: Your default approval group name
2. Edit the properties as required.
◦ sn_disco_firewall.default.rule.task.policy.owner.group: Your default task owner group name
◦ sn_disco_firewall.default.rule.task.approval.group: Your default approval group name
These feature saves time by automatically filling in your default owner group and approval
group in requests.
Archive firewall rule audit, rule requests, and audit tasks
Archive firewall rule requests, audit requests, and audit tasks that are older than a specific time
period to enhance system performance. At a later time, you can delete them from the archive
table altogether to reduce the size of that table.

Before you begin

Ensure that the Data Archiver [com.glide.auxdb] plugin is activated and enabled.
Role required: firewall_admin

Procedure
1. Activate one or more of the Firewall Archival Rules.
The following archival rules come with the Firewall Audits and Reporting application, but are
inactive by default. You must activate any rules if you want to use them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
◦ Archive Firewall Audit Request
◦ Archival Firewall Audit Request Security Policy M2M
◦ Archive Firewall Audit Task
◦ Archival Firewall Audit Task Security Policy M2M
◦ Archive Firewall Rule Task
◦ Archival Firewall Rule Task Security Policy M2M
2. Navigate to Archive Rules > Select a Firewall Archive rule.
3. Select the Active check box.
The Data Archiver [com.glide.auxdb] plugin moves data that is no longer needed from the
primary tables to a set of archive tables daily. It checks for and archives requests and tasks
based on the archival rule activated and chosen. The rule archives data from the primary table
when the following two conditions are met:
◦ State is Closed Complete
◦ Update before Last 12 months
Firewall audits
Firewall Audits and Reporting provides a flexible auditing framework to track your firewall policy
ownership and the necessity of a firewall policy. You can trigger a random audit to measure your
security hygiene on the firewall policy and ownership, as well as perform proactive audits on a
regular basis.
Firewall audit request workflow

Initiate audit request
Initiate audits against a specified firewall manager or device to ensure proper configuration in
alignment with the security policies of your organization.

Before you begin

Role required: firewall_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
Procedure
1. To list all of the discovered firewall managers in your network, navigate to All > Firewall Audits
and Reporting > Records > Devices or Managers.
2. Select a firewall manager CI record or device record from the list.
3. Select Initiate Audit Request.
4. Fill in the mandatory fields on the form.
5. Select Submit.

What to do next

The procedure initiates an audit for the firewall manager, validates it, and submits the audit task.
Firewall audit tasks are generated based on the assigned user for the firewall security policy.
If the policy lacks a designated user, no audit task is created for that security policy, and it is
placed in the Excluded Policy List for audit requests.
This requests an audit for the firewall manager, validates, and submits. Firewall audit task are
created on the basis of an assigned user for the firewall security policy. If the policy is not
assigned to a user, then no audit task is created for that security policy and it is added into the
Excluded Policy List of audit requests.
• If Assigned To is provided, the audit task is created and grouped by the assigned user.
• If Assigned To is not provided, and the

sn_disco_firewall.default.rule.task.policy.owner.group discovery
property is not set, the policy is added to Excluded Policies list, and no audit task is
generated.

• If Assigned To is not provided, but the

sn_disco_firewall.default.rule.task.policy.owner.group discovery
property is configured, the audit task is created and grouped by the Assignment Group.

To verify if the audit task was requested, navigate to Audits > Audits Request. You should see
your task in the list. Creation of audit tasks is a background job using sub-flows. You may need to
wait for audit tasks to get created depending on the number of policies.
The Assigned To person audits each policy in the related list. They choose the action for
each policy and mark the task as Close Complete.

Using Firewall Audits and Reporting
Firewall Audits and Reporting is a powerful application for requesting new firewall rules,
streamlining the management of IP addresses.
Firewall rule requests
Use Service Catalog to request new firewall policies and rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
Firewall rule request workflow

Request new firewall rule
Request a new firewall rule using the Service Catalog to manage various IP addresses, enhance
network security, and accommodate evolving business requirements.

Before you begin

Ensure that the Firewall Audits and Reporting catalog is enabled.
Role required: firewall_admin

About this task

Administrators initiate tasks, which are automatically directed to the risk team for assessment
and approval. Following approval, firewall admins implement these changes through automated
workflows.

Procedure
1. Navigate to All > Service Catalog > Firewall Rules.
2. Select Request Firewall Rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


<!-- page 1369 -->
Request Firewall Rule

3. Enter the appropriate information for the following mandatory fields:
• Source IP address
• Destination IP address
• Assignment Group
Must have the sn_disco_firewall.firewall_user role.
• Approval Group
Must have the approver_user role.
4. Enter or select any required details.
5. Select Submit.
The firewall rule task is created.

What to do next

Verify the new rule task. Navigate to Rule Requests > Rule Requests Task. Your request should
be visible in the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
Approve firewall requests
Approval of firewall requests gives you controlled access and compliance. Members of the
approver group can review and approve firewall audits and new firewall requests.

Before you begin

Role required: Members of the specified approver group approval_group specified in the rule
task. The admin user can edit the approvers list in the Rule Request Task.

Procedure
1. Navigate to All > Self Service > My Approvals.
2. Select the green checkmark to approve.

Result
• The Assignment group works on the request and marks it as Close Complete.
• Once the assignment_group marks the request Close Complete, if the change request
plugin is activated, a background sub-flow creates a change request.

Note: The change request is created only if the rule task is Approved and in Close
Complete state.

The Firewall rule task security policy M2M corresponds to the related list Security
policies in Rule task. Firewall administrators can add description or tag fields in a
security policy on a Panorama device. They can also add firewall rule task numbers or change
request numbers while creating or modifying security policies on Panorama. When the next
discovery runs, the M2M table populates the mapping between:
• Firewall rule task and firewall security policy
• Firewall security policy and business service if the business service is provided during the
Firewall rule task request

Firewall Audits and Reporting reference
Reference topics provide additional information about Firewall Audits and Reporting
components, including dashboards and report calibration.
Firewall Admin Workspace dashboard
The unified dashboard enables security and risk teams to oversee tasks, change requests, and
the entire firewall inventory life cycle, with daily or manual updates for accurate and current
information.

Firewall Insights tab
The Insights tab offers a snapshot of firewall policies and associated devices, showcasing
trends in policies without owners over time. Track new and unaudited policies, and view the
distribution of device manufacturers and models within the network.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
Requests and Audits tab
Within the Tasks tab, explore the Requests and Audits sub-tabs. The Requests tab provides
breakdowns of request tasks by state and ownership, along with fulfillment trends over time.
Similarly, the Audits tab displays outstanding audits by state and ownership, along with
response trends over time.

Firewall Records tab
The Firewall Records tab offers consolidated access to Records, Rules Requests, and Audits
tables. Users can filter, edit, and export individual or groups of records. The Devices and
Security Policy sub-tabs feature a dependency viewer for selected records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
End user and roles
End user and goal

Required role

Risk teams

firewall_admin or firewall_user

Security

firewall_admin or firewall_user

Use case
To update the dashboard manually, navigate to Performance Analytics > Data Collector > Jobs
and select Firewall Scheduled Job. Open the record and select Execute Now to update the
dashboard elements with the latest information.
Firewall Audits and Reporting calibration
Explore further details on Firewall Audits and Reporting calibration by reviewing the provided
material.

Firewall Audits and Reporting pattern
Palo Alto Firewall Manager
This serverless pattern utilizes the large payload feature for persisting security
policies. Discovery admins can establish a schedule using this pattern. When Run
Child Patterns is enabled, the following child patterns are automatically executed in
the specified order:
• Palo Alto Firewall Manager
• Palo Alto Firewall Devices
• Palo Alto Firewall Device groups
• Palo Alto Panorama Security policies
Quick start test for Firewall Audits and Reporting
Quick start test for Firewall Audits and Reporting to validate configuration items (CI) and their
relationships.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


