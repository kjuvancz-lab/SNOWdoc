# Zurich IT Operations Management — ITOM Content Service / Tag Governance

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2487–2521 of 4823

Sections: ITOM Content Service (p2487); Tag Governance (p2496)

---

<!-- page 2487 -->
Discover datacenters only for new cloud accounts
If you have multiple cloud accounts and datacenters in AWS and Azure, you can discover
datacenters for new cloud accounts only, instead of refreshing the entire list.

Before you begin
• Verify that you're using at least Zurich Patch 2.
• Verify that the glide.discovery.cdu.auto_refresh_sub_accounts_and_ldcs system property is
set to true. For more information, see Create discovery schedules for cloud resources.
Role required: discovery_admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the Name column, search for
cloud.discovery.refresh_datacenter_for_new_member_account.
3. Select the cloud.discovery.refresh_datacenter_for_new_member_account property.
4. In the Value field, enter true.
5. Select Update.

What to do next

Either execute discovery immediately or wait until the predefined schedule triggers the
discovery. For more information, see Create a discovery schedule in Cloud Discovery
Workspace.
Related topics
AWS discovery using patterns
Microsoft Azure Cloud discovery using patterns

ITOM Content Service
®

ServiceNow ITOM Content Service offers extensive visibility of products in your infrastructure.
The classification of processes identified by Predictive Intelligence enables wider discovery and
weekly updates of new configuration items in the CMDB. Use the Discovery Admin Workspace to
review and manage ITOM Content Service suggestions.
ITOM Content Service Model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2487


<!-- page 2488 -->
About ITOM Content Service
ITOM Visibility offers multiple methods of discovering products in your infrastructure. When
running discovery with Discovery and Service Mapping Patterns for example, each pattern
searches for one version of a product and can offer in-depth visibility of the product's
information.
While your infrastructure is growing at scale, and new IT products are rapidly released to the
market, you must have wider, rapidly updating visibility. Every week, ITOM Content Service
identifies products that you’re currently using and delivers new Configuration Items (CI) for your
usage. The latest version of Discovery Admin Workspace enables you to refresh the content
service suggestions manually before reviewing them.
ITOM Content Service provides the following benefits:
• Reviews the products that you’re currently using every week and delivers new configuration
items (CIs).
• Based on AI, it helps you identify running processes fingerprints and SNMP System OIDs and
create the CIs you need for monitoring your infrastructure.
• Identifies irrelevant processes that aren’t suitable candidates for CIs.
• Discovers a higher number of products by using AI capabilities that cluster and classify
running application processes.

Benefits of Software Asset Management integration with ITOM Content Service
ITAM Software Asset Management (SAM) users benefit from the integration with ITOM Content
Service in multiple ways.
• Gain visibility on the processes currently running on the installed software. This also enables
you to find out which installed software doesn't have running processes and might be
redundant.
• ITOM Content Service compliments Software Asset Management in cases of services that
don't require installation, for example, an Oracle database that runs as a service and isn’t
installed. In cases like this, ITOM Content Service creates the installed software record based
on combining the process fingerprint data with the data discovered by SAM. Without ITOM
Content Service, you can’t gain this kind of visibility.
• Using file-based discovery capabilities, ITOM Content Service can discover a running system
file that is identified with an app. For example, ITOM Content Service can match an installed
software record to an Apache Kafka running an exe file. For more information, see File-based
Discovery.
For more information on Software Asset Management, see Software Asset Management Content
Service .

Benefits of using Service Mapping with ITOM Content Service
With the latest version of ITOM Content Service, Service Mapping users can leverage Service
Fingerprints suggestions to identify and select application services based on classified
components. By viewing component details such as product, product category, publisher,
and description, you can make informed decisions about which candidates to convert into
application services. You can also see which additional processes can be integrated into the
service, as certain processes collectively build a comprehensive service when combined.
Both ITOM Content Service suggestions and Service Fingerprints offer automated, weekly
suggestions for candidates, but they differ in a few ways.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2488


<!-- page 2489 -->
Comparison between ITOM Content Service suggestions and Service Fingerprints
Name

Type

Identifies

Focus

Details on publisher

ITOM
Process
Individual
Content
fingerprints processes,
Service
which
suggestions
could be
components
of a
service or
standalone.

Specific
actions of
a process,
offering
higher
granularity.

Service
Service
Services
Fingerprints fingerprints based on
classified
components.

The service
as a whole, Service's publisher.
providing
If a process is part of
a broader
perspective. a service but has a
different publisher,
the service fingerprint
provides details only
about the service’s
publisher.

Location

Content
service
suggestions
tab in
Discovery
Admin
Workspace
Content 360

Process's publisher.
If a process is part of
a service but has a
different publisher,
the process provides
details only about its
own publisher.

Service
Fingerprints
tab in Service
Mapping
workspace

For more information about using Service Fingerprints in Service Mapping, see Map application
services based on Automated Service Suggestions.
For more information about Service Fingerprints candidates, see KB1706310

.

Managing ITOM Content Service with the Discovery Admin Workspace
Review recommended actions and application suggestions and configure discovery through
Discovery Admin Workspace.
Note that the Discovery Admin Workspace is supported starting with the Vancouver release.
For more information, see Discovery Admin Workspace Content 360.

Sharing data on the CDS
®

The Continuance Delivery System (CDS) is a ServiceNow technology that synchronizes data
between the Data Services instance that stores and distributes data and the customer instances.
Opting in to sharing application fingerprint process data with ITOM Content Service through
the CDS enables them to be tagged and classified by AI librarians. ITOM Content Service then
®
delivers new CIs every week. Your data is shared with your ServiceNow instance in a safe
environment. You can control access to your data by setting permissions in the Discovery Admin
Workspace.
The three options for sharing your data are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2489


<!-- page 2490 -->
• Sharing the running processes fingerprint data, which enables access to the Process Groups
[cmdb_process_groups] table.
• Sharing the SNMP System OIDs data, which enables access to the SNMP OID
[discovery_snmp_oid] table.
• Sharing the Service Info data of mapped candidates, which enables access to the Application
Service Candidate [application_service_candidate] table (starting with ITOM Content Service
version 1.6.2 and Discovery Admin Workspace version 1.11.0).
For more information on setting the permissions, see Share data on ITOM Content Service

ITOM Content Service use case
This ITOM Content Service use case demonstrates how organizations can achieve enhanced
visibility into their environment.

Use case overview
The Application Configuration Items (CIs) class is a key component of an organization’s data
platform within the Common Service Data Model (CSDM). Application CIs help log software
activities and support critical IT operations.
Many products and applications rely on application CIs for essential tasks. A few key examples
are:
• Service Mapping: Uses application CIs to create service maps
• ITOM AIOps: Monitors application health and resolves incidents using application CIs
• IT Asset Management (ITAM): Tracks and manages software applications and their associated
licenses with application CIs
• IT Service Management (ITSM): Analyzes service impact and calculates blast radius with
application CIs
• Enterprise Architecture (EA): Leverages application CIs to generate business outcomes

Challenge
A large organization with numerous applications requires accurate discovery. Managing
application CIs is essential, yet the IT team finds it challenging to maintain visibility over its
growing infrastructure.
ITOM Visibility offers several methods for discovering products within an organization’s
infrastructure, such as Discovery and Service Mapping Patterns. This method provides detailed
visibility into a product's information. When a wide range of applications is in use, not all can
have a dedicated pattern. If an application does not have a dedicated pattern, discovery
populates only the Running Process [cmdb_running_process] table without identifying the
product or creating a CI for it.
Without an application CI, the organization lacks accurate visibility into its infrastructure and
might struggle to optimize the following essential actions:
• Bind CIs with monitoring alerts and open incidents regarding the CIs
• Schedule automated software upgrades
• Automate scripts to optimize or troubleshoot the product
• Perform impact assessments and change impact analysis
• Create security workflows
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2490


<!-- page 2491 -->
Solution
ITOM Content Service enhances the discovery process by tagging and classifying process
fingerprints. This service provides details about the publisher, product, and the essential
component of the CI. Unlike pattern-based discovery, ITOM Content Service identifies
applications directly within the organization’s environment without requiring published pattern
classifiers. This approach enables the continuous delivery of content without being constrained
by a scheduled release cycle.
For example: Discovery identifies the Elipse Software E3 Database Engine process
(E3DBEngine.exe) and lists it in the Running Process [cmdb_running_process] table. If the
E3DBEngine.exe process classification condition isn’t set to trigger a pattern, it doesn't launch a
pattern and a CI isn't created. However, with ITOM Content Service, the E3DBEngine.exe process
is tagged and classified, enabling Discovery to turn the process into a CI during the next scan.

Result
Discovery using ITOM Content Service creates a CI record by tagging and classifying
the publisher, product, and essential component for all applications in the organization’s
environment. This method provides enhanced and continuous visibility into the application
landscape, enabling effective monitoring, proactive actions, and ongoing optimization.

Install ITOM Content Service
Install the ITOM Content Service application (sn_smart_content) to manage and monitor the
creation of configuration items based on application fingerprints.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the ITOM Content Service
application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following plugins are activated with ITOM Content Service:
• Discovery (com.snc.discovery)
• Normalization Data Services Client (com.glide.data_services_canonicalization.client)
• File Based Discovery (com.snc.discovery.file_based_discovery)—starting with ITOM Content
Service version 1.5.1

Note: The ITOM Smart Content plugin (com.snc.itom.smart.content) is available starting
with XP5. This plugin is optional and can be requested through ServiceNow personnel. For
more information, see Request a plugin .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ITOM Content Service application (sn_smart_content) using the filter criteria and
search bar.
You can search for the app by its name or ID.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2491


<!-- page 2492 -->
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

What to do next

Share data on ITOM Content Service
Related topics
ITOM Content Service
Discovery Admin Workspace

Share data on ITOM Content Service
Control data sharing by opting in or out of ITOM Content Service sharing options using the
Discovery Admin Workspace.

Before you begin

Ensure that the following application and plugin are installed:
• ITOM Content Service (sn_smart_content)
• Discovery Admin Workspace (com.snc.itom.daw)
To share Service Info, confirm that ITOM Content Service and Discovery Admin Workspace are
upgraded to the latest version.
• ITOM Content Service (at least version 1.6.2)
• Discovery Admin Workspace (at least version 1.11.0)
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace.
2. Indicate whether and what data you want to share with AI librarians.
Option

Actions

a. In the Content service setup tile, select
Opt in.
Opt in to share your data

b. Read the agreement and select Yes, I have
read and agree with the Opt-in Agree­
ment.
c. Select Next.
d. Select your setup.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2492


<!-- page 2493 -->
Option

Actions

▪ Advanced - Activates a comprehensive
set of classifiers for expanded visibility
▪ Basic - Activates the most common classi­
fiers.
▪ Custom - You select which classifiers to
activate.
e. Turn on the data sharing options that you
want to use.
▪ Running process fingerprint data: Shares
metadata and some samples of process­
es from the Process Groups table.
▪ SNMP System OIDs: Shares metadata
and some samples of processes from the
SNMP OID table.
▪ Service Info: Shares metadata and some
samples of processes from the Applica­
tion Service Candidate table.
f. Select Save.
g. When the Opt-in is complete, select Home
to return to the workspace.
The Content service suggestions tile re­
places the Content service setup tile. In
the new Content service setup section, a
green check-mark appears indicating that
you have opted in to ITOM Content Service.
a. In the Content service setup section, se­
lect Configure setup.
Set the data sharing permissions off

b. Turn off one option or both options.
c. Select Save.
d. When the setting is complete, select Home
to return to the workspace.
a. In the Content service setup section, se­
lect Opt out.
b. Select Opt out.

Opt out of sharing your data

c. Read the Opting out of ITOM Content
Service system message and select Opt
out.
d. When the opt-out process is complete, se­
lect Home to return to the workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2493


<!-- page 2494 -->
Option

Actions

ITOM Content Service stops using your da­
ta and your workspace presents only CIs
defined by you. For more information, see
Discovery Admin Workspace.

Related topics
ITOM Content Service

Enable discovery with ITOM Content Service
Review the ITOM Content Service suggestions for application discovery and activate the
discovery classifiers to enable the creation of configuration items.

Before you begin

Ensure that the following application and plugin are installed:
• ITOM Content Service (sn_smart_content)
• Discovery Admin Workspace (com.snc.itom.daw)
Ensure that ITOM Content Service is active. For more information, see Share data on ITOM
Content Service.
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Content 360.
2. Select the Content service suggestions tile.
3. Manually sync with suggestions from your system by selecting Sync candidates.

Note: If a message appears about the application scope, select OK to exit the message.
Then, change the scope by selecting the application scope icon and selecting Global.
4. In the Sync candidates confirmation window, select Yes.
5. Review the Content Service suggestions for discovery by product.
◦ To filter the list, select the products from the Content service suggestions tab.
◦ To review a product's description and details, select the link from the Name column.
6. Select the product you want to enable discovery for.
7. Activate discovery classifiers by product categories.

Note: The number of classifiers that will be activated is indicated in the Activate button.
◦ To enable the discovery by product categories, select the product categories check boxes,
select the check box next to the Name column, and select Activate.
◦ To enable the discovery by individual products, select the product from the Name column
and select Activate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2494


<!-- page 2495 -->
Result

The new configuration items are added to the CMDB the next time Discovery runs a schedule.
The Discovery Admin Workspace then lists the added CIs and removes them from the suggested
applications list.
Related topics
ITOM Content Service
Discovery Admin Workspace

Discover installed software data with ITOM Content Service
Use ITOM Content Service and ITSM Software Asset Management to discover version-less
installed software that isn't discovered automatically with Software Asset Management Core or
Software Asset Management Professional or file-based Discovery.

Before you begin

Ensure that the following application and plugins are installed:
• ITOM Content Service (sn_smart_content)
• Software Asset Management Core (com.snc.sam.core) or Software Asset Management
Professional (com.snc.samp)
• File Based Discovery (com.snc.discovery.file_based_discovery)
Ensure that ITOM Content Service is active. For more information, see Share data on ITOM
Content Service.
Ensure that the content service suggestions in the relevant category are activated. For more
information, see Enable discovery with ITOM Content Service.
Role required: discovery_admin

Procedure
1. Navigate to All > Discovery Smart Content > Smart Content Categories.
2. Activate the relevant category.
a. In the Name column, search for the relevant category.
b. Double-click (or use the keyboard shortcut) the Create Installed Software column.
c. In the list, select true.
d. Verify the value by selecting the green check mark.

Result

The new installed software record is created and added to the CI Software Installations list the
next time Discovery runs a schedule.
Related topics
ITOM Content Service

ITOM Content Service reference
Using ITOM Content Service enables you to have the CMDB populated with new data every
week. Use the knowledge base articles to learn about the Configuration Item candidates that
were released.
To learn about the Application CI candidates, see KB1584650

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2495


<!-- page 2496 -->
To learn about the SNMP OID CI candidates, see KB1702434

.

To learn about the Service Fingerprints candidates, see KB1706310

.

Tag Governance
Effective tag management improves reporting and overall operations management efficiency.
®
Use the ServiceNow Tag Governance app to identify and remediate on-premises or cloud
resources that are inconsistent and don't comply with the tag policies of your organization.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Get started
A tag is a key-value pair that is assigned to a CI or cloud resource. Your organization can use tags
to categorize assets to improve visibility into cloud usage and costs.

Explore

Configure
Create tag policies
Define tag standards
that will be audited.

Learn more about
Tag Governance

Install the app.

Updating cloud tags

Remediate

Reference

Real-time updates to
tags for cloud resources.

Remediate tag issues

Additional information
on forms and settings.

Troubleshoot and get help
• Ask questions and explore other resources for Tag Governance in the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Tag Governance
Learn more about Tag Governance reports and discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2496


<!-- page 2497 -->
Tag Governance overview
Effective tag management improves reporting and overall operations management efficiency.
®
Use the ServiceNow Tag Governance app to identify and remediate on-premises or cloud
resources that are inconsistent and don't comply with the tag policies of your organization.

Tag Governance users
Users
User

Description

Tag Governance admin

Responsible for maintaining uniform tag management policies
and ensuring resources are properly tagged for visibility,
compliance, and cost management.

Report viewer

View-only permissions:
• Monitor reports from audit runs
• Analyze the data to derive insights to guide actions

Tag Governance workflow
Tag Governance workflow

Tag Governance benefits
Tag Governance benefits
Benefit

Feature

Users

Implement cloud event processing and
configure a tag policy to automatically update
cloud resource tags in real time.

Performing real-time
updates to tags for
cloud resources

Cloud admins

Tag Governance supports domain separation,
allowing you to logically group and segregate
data, processes, and administrative tasks
into distinct domains. This enables precise

Domain separation
and Tag Governance

Cloud admins

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2497


<!-- page 2498 -->
Tag Governance benefits (continued)
Benefit

Feature

Users

Preview and
remediate tag audit
failures

Tag admins

control over aspects like user access and data
visibility.
Review non-compliant CIs flagged by tag
audits and resolve them by adding the
required tags.

Exploring
Discovery's contribution to Tag Governance
The Discovery and Cloud Discovery features discover all resources in the CMDB
as well as cloud resources from cloud providers such as Amazon AWS Cloud,
Microsoft Azure Cloud, and Google Cloud Platform (GCP).
Tag Governance dashboard – Overview tab
The Overview tab tracks the health and compliance of CIs based on tag audits.
Interactive widgets provide information that enables you to view and analyze tag
compliance status and the most-used and least-used tags.
Tag Governance dashboard – Policy View tab
Use the Policy View tab to view and analyze tag compliance filtered by cloud service
account, by tag policy, and by datacenter. Filters enable you to focus your efforts to
improve tag compliance.
Tag Governance dashboard – Efficacy tab
The Efficacy tab displays the results of tag audits as tag health ratings and
compliance coverage of CIs. Interactive widgets show tag coverage status and
tagging trends over time.

What to explore next
To learn more about configuring and using Tag Governance, see:
• Configuring Tag Governance
• Using Tag Governance
• Tag Governance reference
Discovery's contribution to Tag Governance
The Discovery and Cloud Discovery features discover all resources in the CMDB as well as cloud
resources from cloud providers such as Amazon AWS Cloud, Microsoft Azure Cloud, and Google
Cloud Platform (GCP).

The role of discovery
Discovery and Cloud Provisioning and Governance can discover tags that are used by all
major cloud providers and container ecosystems through Service Mapping patterns. Once
the tags are discovered, Service Mapping can create application services that are based on
the tags. Typically, organizations use tagging in virtualized, hyper-converged, or multi-cloud
infrastructures. For examples of the infrastructure types and tags used for them, see Tag-based
discovery in Service Mapping.
Discovery also collects cloud tags that are specific to each virtual machine (VM) and saves them
to the Key Value [cmdb_key_value] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2498


<!-- page 2499 -->
The discovery process also detects tags that are associated with CIs. If your organization does
not use consistent tagging standards or terms (key-value pairs), however, managing CIs with tags
becomes difficult.
Tag Governance dashboard – Overview tab
The Overview tab tracks the health and compliance of CIs based on tag audits. Interactive
widgets provide information that enables you to view and analyze tag compliance status and the
most-used and least-used tags.

Accessing the dashboard
Log in as a Tag Governance administrator (sn_itom_tag.tag_governance_admin) to configure
reports and Tag Governance Viewer (sn_itom_tag.tag_reports_viewer) view the reports. To
access the dashboard, navigate to Tag Governance > Dashboard.
Overview tab

Applying filters
The Health tab displays the cumulative status of the tag health of all CIs that the tag audits ran
on. Each category indicates the percentage and the count of CIs with a matching status.
By default, data is grouped by status. You can also group the results by using the filters in the
Group By list.
Use the following interactive filters to refine reports:
• Cloud Service Account
• Logical Datacenter
• CMDB Class

Note: The CMDB Class filter only applies to the Tag Health report. Using this filter

does not impact or refine the results of the Most Popular Tags and the Least Used Tags
reports.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2499


<!-- page 2500 -->
For example, you can use a combination of the Cloud Service Accounts, CMDB Class, and
Logical Datacenter filters. You can then view the tag audit results for the virtual machine
instances that are mapped to a specific cloud service account and are located in a specific
logical datacenter.

Reports
Tag audits run on all discovered resources in the CMDB CI [cmdb_ci] table. The tab displays
health and compliance results for discovered CIs.

Widget

Description

Description

Health

Pie chart

Percentage and count of all CIs in the
following categories:
• Non Compliant: CIs that meet none
of the tag policy requirements.
• Partial Compliant: CIs that meet
some tag policy requirements.
• Fully Compliant: CIs that meet all tag
policy requirements.
Select any related slice or category to
view a more detailed report.

Most Popular Tags

Bar chart

The ten most commonly used tags
across all discovered CIs that tag
audits evaluate.
• Point to a bar to view the
corresponding percentage of
the total and count of the tag's
occurrence.
• Select a bar to view the list of CIs
with that tag.

Least Used Tags

Bar chart

The ten least used tags across all
discovered CIs that tag audits evaluate.
• Point to a bar to view the
corresponding percentage of
the total and count of the tag's
occurrence.
• Select a bar to view the list of CIs
with that tag.

Tag Governance dashboard – Policy View tab
Use the Policy View tab to view and analyze tag compliance filtered by cloud service account, by
tag policy, and by datacenter. Filters enable you to focus your efforts to improve tag compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2500


<!-- page 2501 -->
Policy View tab

The Policy View tab displays the cumulative tag health of all audited CIs. The Policy dashboard
renders tag policy compliance on discovered CIs into an interactive pie-chart. The results are
listed in the following categories.
• Fully Compliant: CIs that meet all tag policy requirements.
• Non Compliant: CIs that do not meet tag policy requirements.
Use the following interactive filters to refine reports:
• Cloud Service Account
• Datacenter
• Tag Policy
For example, you can use a combination of the Cloud Service Accounts, Tag Policy, and
Datacenter filters to view tag audit results for CIs that match the filters you configure.
For more information about tag audit results and non compliant CIs, see Preview and remediate
tag audit failures.
Related topics
Establishing Tag Governance policies
Configure a tag policy for Tag Governance
Configure remediation policies on tag audit findings
Tag Governance dashboard – Efficacy tab
The Efficacy tab displays the results of tag audits as tag health ratings and compliance coverage
of CIs. Interactive widgets show tag coverage status and tagging trends over time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2501


<!-- page 2502 -->
Efficacy tab

Ratings
See the Ratings report to check the quality of CI tag health. The score is based on an algorithm
that considers the following information and the data gathered from tag audit runs:
• Tag policy compliance
• Overall CI tagging compliance

Coverage for CIs
The Coverage for CIs report displays the count of CIs in the CMDB that tag policies govern and
the percentage of all CIs that are governed. You can use this information to improve coverage of
tag policies.

Ratings and CI Coverage Trends
The Trends report displays the average trend value over time of tag governance rating and
coverage of CIs. The report provides insights as to how tag quality and tag coverage have fared
over time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2502


<!-- page 2503 -->
Reports
Title

Type

Description

Ratings

Gauge report

Score that indicates the
tagging quality rating across
CIs. This value is based on
an algorithm that uses the
number of CIs that the tag
policy covers and the total
number of CIs that the tag
policy certifies.

Coverage for CIs

Stacked Bar report

Percentage and count of all
CIs that are governed by tag
policies versus all CIs in the
CMDB. The value is based on
the total number of CIs that
tag policies govern, divided
by the total number of CIs in
the CMDB. An individual bar
represents each domain's CI
coverage data.

Trends

Line trend report

Performance trends of tag
quality and tag coverage over
time.

Tag Categorization in Tag Governance
By automatically grouping tagged configuration items (CIs) and cloud resources into one of five
out-of-the-box categories, Tag Categorization streamlines resource management. For example,
the automatic grouping of related tag keys, such as dev, test, and prod in the Environment
category, helps to promote clear and consistent tagging practices.

Tag categorization requirements

Note:
The Tag Categorization feature in Tag Governance leverages the CI tag category
[svc_tag_categories] and the CI tag key [svc_tag_names] tables in Service Mapping.
Full access to these tables requires installation of the version 1.16.3 or later of Service
Mapping Plus. Without it, access to these tables might be limited, affecting your ability to
recategorize tags, modify tag definitions, or fully use the feature. For more information, see
Install Service Mapping Plus.

Tag Categorization overview
Tag Categorization automates the process of grouping tagged CIs and cloud resources into one
of five predefined categories: Application ID, Assignment Group, Cost Center, Environment,
and Owner. These categories help streamline resource management by ensuring that tags are
consistently applies and easily categorized. A daily scheduled job categorizes newly added tags
and maps any unrecognized tag keys to the appropriate category. For more information about the
predefined tag categories, see Components installed with Tag Governance.
You can modify the tag category definitions, create your own categories, or add additional
tag keys as needed. For more information, see Modify tag category information for Tag
Categorization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2503


<!-- page 2504 -->
The Tag category policy confirms that all categories are properly mapped and up-to-date. It
retrieves records and checks for category mappings to identify any missing categories. CIs that
are missing a category are marked as non-compliant, which helps you address and remediate
any tag category issues.
The system uses the sn_itom_tag.recategorization_required property to
determine whether recategorization is needed. By default, this property is set to false, but
when a change to a category occurs, a business rule sets the property to true, indicating that
recategorization is needed. A daily scheduled job then checks this property and if it is set to
true, begins the recategorization process. This process automatically updates the tag mappings
within 24 hours of the change, but you can also initiate recategorization to apply the changes
immediately. All changes and updates are stored in the CI tag category table.

Tag Categorization and domain separation
Tag Categorization supports domain-specific management. . For domain-separated instances,
the categories are added to each leaf domain. When you access or manage tags, the system
gets domain information from the CI and adds tag mappings to the matching category in the
appropriate domain. For general information about domain separation with Tag Governance, see
Domain separation and Tag Governance.

Configuring Tag Governance
Install the Tag Governance app to execute tag audits, view the Tag Data Governance dashboard,
and perform tag remediation.

Configuration overview
• Domain separation and Tag Governance
Domain separation is supported in Tag Governance. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.
• Install Tag Governance
Install the Tag Governance app to execute tag audits, view the Tag Data Governance
dashboard, and perform tag remediation.
To view the list of plugins and applications installed with Tag Governance, including any
dependencies, see Plugins or applications installed with ITOM Visibility.
Install Tag Governance
Install the Tag Governance app to execute tag audits, view the Tag Data Governance dashboard,
and perform tag remediation.

Before you begin
• Ensure that you use the Discovery and Service Mapping Patterns for tag-based discovery.
• Install the ServiceNow Cloud Access Interface app for cloud remediation.
Role required: sn_itom_tag.tag_governance_admin, admin

Procedure
1. Navigate to All > System Applications > ServiceNow Store.
2. Use the search box to find the Tag Governance application and select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2504


<!-- page 2505 -->
What to do next

Configure Tag Governance policies to run on discovered resources. See Configure a tag policy
for Tag Governance.

Using Tag Governance
®

Use the ServiceNow Tag Governance app to identify and remediate on-premises or cloud
resources that are inconsistent and don't comply with the tag policies of your organization.

Tag governance tasks
• Establishing Tag Governance policies
Configure tag policies that define the criteria for tag audits on discovered cloud resources
or CIs. View audit results on tag quality and compliance on the Tag Health dashboard.
You establish tag policies that support the scale and needs of the various groups in your
organization so all users can benefit.
• Configure a tag policy for Tag Governance
Configure tag policies that define the criteria for tag audits on discovered cloud resources or
CIs. View audit results on tag quality and compliance on the Tag Health dashboard.
• Configure remediation policies on tag audit findings
Configure and preview remediation options, generate keys, and perform actions to remediate
non-compliance or failures that are based on tag audit reports.
• Preview and remediate tag audit failures
Based on the tag policies that you create, you can preview remediation flows and autogenerate missing tags for non-compliant CIs.
• Performing real-time updates to tags for cloud resources
You can set up cloud events processing and map a tag policy to update tags for cloud
resources in real time.
Establishing Tag Governance policies
Configure tag policies that define the criteria for tag audits on discovered cloud resources or CIs.
View audit results on tag quality and compliance on the Tag Health dashboard. You establish tag
policies that support the scale and needs of the various groups in your organization so all users
can benefit.

Considerations
Follow a methodical approach when defining tagging standards to keep the count of tags low.
Standardized tag policies improve the power of the Tag Governance app to monitor and manage
tags across CIs in your organization.
You might need extensive discussions and research to understand the needs of all the varied
teams in your organization. For example, finance teams might want CIs to be tagged based on
cost-center allocations, applications assignments, and business purpose. In contrast, IT security
teams might want CIs categorized by OS and security patch level as part of their vulnerability
management plan.
Before you finalize your tagging approach, ensure that you have considered the following issues:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2505


<!-- page 2506 -->
• Tag filters that various teams will use.
• The level of access that different users need.
• Whether you need real-time checks.
• Whether you need to synchronize tags with cloud resources.
Related topics
Configure a tag policy for Tag Governance
Configure remediation policies on tag audit findings
Configure a tag policy for Tag Governance
Configure tag policies that define the criteria for tag audits on discovered cloud resources or CIs.
View audit results on tag quality and compliance on the Tag Health dashboard.

Before you begin

Role required: sn_itom_tag.tag_governance_admin, admin.

About this task

You can specify filters that narrow the scope of an audit, for example, to audit only service
accounts and datacenters.

Procedure
1. Navigate to All > Tag Governance > Policies.
2. Select New and then fill in the Tag Policies form.
The form fields are described in Tag Policies form.
3. Select Submit.
◦ The Tag Policy Runs related list displays the list of tag audit runs with their corresponding
state, created, and updated timestamps.
◦ The Latest Policy Run Findings related list displays the results of the tag audit run.

What to do next
• Select the Show Audit Results related link to view all audit results.
• Select the Run Point Scan related link to execute all applicable checks against the record.
• For more information see, Flows

and Subflows

.

Configure remediation policies on tag audit findings
Configure and preview remediation options, generate keys, and perform actions to remediate
non-compliance or failures that are based on tag audit reports.

Before you begin

Ensure that tag policies are configured and in Active state.
Role required: sn_itom_tag.tag_governance_admin, admin

About this task

You can run remediation automatically if you map a remediation policy to a tag policy. You can
also update the tags of non-compliant CIs at the cloud provider's end in real time.
Configure remediation policies and logic and also enable updating tags on cloud resources
associated with the following CMDB classes:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2506


<!-- page 2507 -->
• Virtual Machines
• Compute Security Groups
• Storage Volumes
• Cloud Networks
• Cloud Subnet
• Network Interfaces
• Load Balancers
• Availability Zones
• Public IP addresses
• Storage Accounts
• Resource Groups
The list of CMDB classes for which you can update tags on CIs in the CMDB as well as cloud
resources also displays on the Tag Remediation form. If you select the Update Tags in Cloud
check box in the Remediation form, remediation will only preview CI failures belonging to the
CMDB classes listed.

Procedure
1. Navigate to All > Tag Governance > Remediation.
2. Select New to create a new record.
3. In the Name field, provide a unique descriptive name.
4. In the Policy field, select the

lookup icon.

Note: The Policy Type field is automatically populated after you select a policy from the
lookup list.
5. In the Tag Policies list, configure a remediation policy in one of the following ways:
◦ Select an existing tag policy from the lookup list.
◦ Select New. Fill in fields on the Tag Policies form (the fields are described in Tag Policies
form.

Note: If you are creating a new tag policy, you must run an audit before you can run
remediation flows.
You have created or selected a policy for the remediation record.
6. Optional: Select the AutoRemediation check box to automatically run remediation on noncompliant CIs.
When an audit run finishes, remediation runs on all CIs with policy failures.
7. Optional: Select the Update Tags in Cloud check box to apply remediation and update the
tags in the relevant cloud provider environment for supported CMDB CI classes.

Important: The Update Tags in Cloud feature works only for AWS and Microsoft Azure
Cloud resources for CMDB classes listed in the Tag Remediation form. See Performing
real-time updates to tags for cloud resources.
8. On the Tag Remediation form, select Submit.
The remediation policy is configured. The Tag Remediations list opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2507


<!-- page 2508 -->
Preview and remediate tag audit failures
Preview audit reports for resources that tag policies identify as non-compliant. Remediate
failures by adding or updating tags.

Before you begin

Configure tag policies and remediation policies. See Configure a tag policy for Tag Governance
and Configure remediation policies on tag audit findings.

Note: The update to cloud works only for AWS and Microsoft Azure Cloud resources for
CMDB classes listed in the Tag Remediation form.
Role required: sn_itom_tag.tag_admin, admin

About this task

Based on the tag policies that you create, you can preview remediation flows and auto-generate
missing tags for non-compliant CIs. The Tag Remediation Preview related list displays this
information. See Flows
and Subflows .

Note:
• If you select the Update Tags in Cloud check box while configuring remediation, the
Preview audit filters failures belonging to the listed CI classes.
• If you selected both the Auto-Remediate and Update Tags in Cloud settings while
configuring remediation, then tags are updated both in the CMDB and in cloud resources
(only for supported CMDB CI classes).
• If you select only Auto-Remediate, the remediation runs and updates tags in the CMDB
alone.

Procedure
1. Navigate to All > Tag Governance > Remediation.
2. From the Tag Remediations list, select the record that you want to view.
3. Select the Preview Remediation related link.
The Tag Remediation Previews related list displays the non-compliant CIs.
4. Select the Tag Remediation Previews related list to identify the missing tags and their values.
5. On the Tag Remediation Keys related list, select New to create a tag remediation key.
The fields on the Tag Remediation Key form are described in Tag Remediation Key form.
6. Select Submit.
You have created the Tag Remediation keys associated with the policy.
7. Optional: Select the Generate Keys related link, if you have run the Tag Key Policy.
The Generate Keys related link appears only for the Tag Key Policy policy type. Because
the policy specifies the expected tags, you can select the Generate Keys related link to
generate the keys that you need for remediation instead of manually adding them in the Tag
Remediation Keys related list.
8. Optional: Select the Generate Key Values related link, if you have run the Tag Key & Value
Policy.
The Generate Key Values related link appears only for the Tag Key and Value Policy
policy type. Because you have already specified the values you are looking for in the tag policy,
you can select the Generate Key Values related link to add the expected key values.
9. Select the Remediate Tags related link.
The remediation flow to add missing tags initiates. A relevant information message displays on
the form when the Remediation is active. Select the More Info link on the message to navigate
to the default flow context.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2508


<!-- page 2509 -->
Result

Based on the tag audit result findings and the Tag Remediations Keys that you create, the
remediation flow adds missing tags to the non-compliant CIs to achieve policy compliance.
Performing real-time updates to tags for cloud resources
You can set up cloud events processing and map a tag policy to update tags for cloud resources
in real time.

Prerequisites
• Cloud events table [sn_cmp_cloud_events] table does not have any records in the
processed state.
• CIs impacted by tag change events are identified by either CAPI or Discovery and Service
Mapping patterns.
• Configured at least one tag policy.
• Select the Run on cloud events check box in the tag policy you create.

Instructions depend on the cloud provider
See the following setup instructions for cloud event processing:
• Configure the Amazon AWS Config service to auto-update the CMDB
• Configure the Microsoft Azure Alert service to auto-update the CMDB
• Configure the Google Cloud's Operations Suite Logging service to auto-update the CMDB
Process cloud events related to changes in tags and execute tag audits on the events in real
time.
Unlike regular tag audits, where the audit is performed on all CIs in the CMDB that the tag policy
applies to, tag events are processed per CI. Based on the prerequisites, tag event processing
occurs on events that are identified with a tag change. The impacted CI is identified and, if the
associated policy is applicable to the CI, the tag policy is run on the identified CI.
If the Run on cloud events check box is selected during policy creation, the policy is selected to
run an audit on tag change events. If the check box is cleared, the audit is not run on the CI even
if there are tag change cloud events.
View the change type that applies to the tag (the change that triggered the audit) in the Tag
Change Log [sn_itom_tag_change_log] table. The records in the table are stored for 90 days
by default. The change log records appear whether a remediation run or an event triggered the
change on the CI. You can also view tags that were added or updated as part of the change.

Optimizing performance
High event inflow or a large number of tag policies can decrease performance. You can modify
the following system properties to ensure acceptable performance:
• [sn_itom_tag.azure_window_size] - This system property is configurable (in minutes).
• [sn_itom_tag.max_audit_lag_ratio] - Specify the lag between tag audits that are already
running, before the audit triggers on the records ready for audit.
• [sn_itom_tag.policy_batch_size] - Batch size on which the tag audit is run.
• [sn_itom_tag.event_batch_size] - Event batch size to be processed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2509


<!-- page 2510 -->
Modify tag category information for Tag Categorization
Modify tag category definitions to support Tag Categorization and ensure that tag categories
align with your requirements for data management and classification.

Before you begin

Verify that you have installed version 1.16.3 of Service Mapping Plus to access to the CI tag
category and CI tag key tables. For more information, see Install Service Mapping Plus.
Role required: tag_governance_admin

Procedure
1. Navigate to All > Tag Governance > Tag Categories.
2. Verify that you are in the leaf domain.
a. In the page header, select the globe icon

.

b. Select Domain scope, and choose the appropriate leaf domain.
3. Select the category definition for the tag category you want to modify.
4. In the Regex field, modify the definition.
You can delete an existing value (regex) or add a new value (regex) in this field.
5. Optional: Enter a value in the Priority field to set a priority for this tag category.
Because a tag key can belong to multiple categories. setting the priority ensures that Tag
Categorization maps CIs to the correct category.
6. Select Update to save the changes.
7. If you want to apply your changes immediately rather than waiting for the automatic update
within 24 hours, select the Re-Categorize Tags button.
Add or delete a tag category for Tag Categorization
Add or delete a tag category for improved tagging of your organization's configuration items (CIs)
and cloud assets.

Before you begin

Verify that you have installed version 1.16.3 of Service Mapping Plus to access to the CI tag
category and CI tag key tables. For more information, see Install Service Mapping Plus.
Role required: tag_governance_admin

Procedure
1. Navigate to All > Tag Governance > Tag Categories.
2. Verify that you are in the leaf domain.
a. In the page header, select the globe icon

.

b. Select Domain scope, and choose the appropriate leaf domain.
3. Add or delete a tag category.
Action

Description

a. Select New.
Add a tag category

b. Enter the category name in the Tag catego­
ry name field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2510


<!-- page 2511 -->
Action

Description

c. Select the Lookup using list icon

.

d. Select New in the Tag Category Definitions
window.
e. Enter the value for the category definition in
the Regex field.

Note: The regex identifies the tag val­
ues that are included in the category.
Separate multiple values with a verti­
cal slash (|).
f. Update the priority value.
g. Select Submit.
h. Select Submit on the CI tag category - New
Record page.
a. Select the check box next to the tag catego­
ry.

Delete a tag category

b. In the Actions on selected rows menu, se­
lect Delete.

4. If you want to apply your changes immediately rather than waiting for the automatic update
within 24 hours, select the Re-Categorize Tags button.
Set the priority for tag category definitions for Tag Categorization
Set the priority for tag category definitions to ensure that tag keys belonging to multiple
categories are properly categorized.

Before you begin

Verify that you have installed version 1.16.3 of Service Mapping Plus to access to the CI tag
category and CI tag key tables. For more information, see Install Service Mapping Plus.
Role required: admin

About this task

A tag key can belong to multiple categories. Setting the priority ensures that Tag Categorization
maps Configuration Items (CIs) and cloud resources to the correct category.
For example, the tag key Application might belong to both the Application and Cost Center tag
categories. Set the priorities for the Cost Center and Application tag categories to 100 and 101,
respectively, to prioritize mapping to the Application category. If a conflict occurs, this setting
ensures that the Application category has higher priority and automatically maps the tag key to it.

Procedure
1. Navigate to All > Tag Governance > Tag Categories.
2. Verify that you are in the leaf domain.
a. In the page header, select the globe icon

.

b. Select Domain scope, and choose the appropriate leaf domain.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2511


<!-- page 2512 -->
3. Select the category definition for the tag category whose priority you want to set.
4. In the Priority field, set the value.
5. Select Update to save the change.
6. If you want to apply your changes immediately rather than waiting for the automatic update
within 24 hours, select the Re-Categorize Tags button.
Add or delete tag keys for Tag Categorization
Add or delete tag keys to ensure that they align with your requirements for data management and
classification.

Before you begin

Verify that you have installed version 1.16.3 of Service Mapping Plus to access to the CI tag
category and CI tag key tables. For more information, see Install Service Mapping Plus.
Role required: tag_governance_admin

Procedure
1. Navigate to All > Tag Governance > Tag Categories.
2. Verify that you are in the leaf domain.
a. In the page header, select the globe icon

.

b. Select Domain scope, and choose the appropriate leaf domain.
3. Select the tag category to which you want to add or delete tag keys.
4. Under CI tag keys, either add a new tag key or delete an existing tag key.
Action

Steps

a. Double-click the empty row under Tag key,
where you see Insert a new row.
b. In the field, add a key name.
Add a tag key

c. Select the Save icon

.

d. Repeat the previous steps to add more tag
keys.
e. Select Update to save your changes.
a. Under Tag key, select the Mark for deletion
Delete a tag key

icon
move.

next to the tag key you want to re­

b. Select Update to save your changes.
5. If you want to apply your changes immediately rather than waiting for the automatic update
within 24 hours, select the Re-Categorize Tags button.

Tag Governance reference
Reference topics provide additional information on Tag Governance forms and other resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2512


<!-- page 2513 -->
Domain separation and Tag Governance
Domain separation is supported in Tag Governance. Domain separation enables you to separate
data, processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

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

Domain separation
You can identify CIs or cloud resources that are inconsistent and do not comply with the policies
that you configure to govern tag data. In Tag Governance, domain separation targets tenant
domain requester use cases in an application. The application has been designed to support
requester activities within tenant domains. Logic is in place to route data to tenant domains,
based on applicable use cases. The owner of the instance must be able to set up the application
to function normally across multiple tenants. The application handles data routing to domains.
All tables in Tag Governance support data separation only; delegated domain separation is not
supported.
To ensure that domain-sensitive information is not available at a global domain, ensure that you
create policies at a domain level and not at a global level. While managing service providers,
create policies at the service provider level. If you create policies at a global level instead, when
you run the audit, the "run" findings are created in the Global domain instead of respective
domains.
Related topics
Domain separation for service providers
Tag policies and remediation for AWS
Tag audits apply policies to discovered CIs to determine tag compliance; existence of tags,
appropriate count of tags, and the presence of specified key-value pairs.

Tag policies
Run a tag audit to audit discovered CIs for the following tag policy types:
• Tag Count: Checks CIs for the tag key count that you specify
• Tag Presence: Checks CIs for the presence of the tag key values that you specify
• Tag Key & Value: Checks CIs for the presence of key-value pairs that you specify.
Specify string value or tag keys that you are looking for in a comma-separated format in the
Tag Presence policy type. You can also specify a number in the Tag Count check policy type to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2513


<!-- page 2514 -->
identify CIs with one or more tags. After you run the tag audits, you can view audit results and
configure remediation measures that are based on the compliance index quality. Optionally, you
can also assign remediation tasks for non-compliant CIs to user groups and users for follow-on
tasks.
Auto-remediation works with the Assume Role on AWS to automate the tagging of cloud
resources, by following the steps in Configure access using temporary credentials based on
trusted AWS accounts with AWS credentials.
The Assume Role must have the following permissions (policy) for remediation to work:
{
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Allow",
"Action": "tag:TagResources",
"Resource": [
"arn:aws:ec2:*:*:instance/*",
"arn:aws:ec2:*:*:security-group/*",
"arn:aws:ec2:*:*:volume/*",
"arn:aws:ec2:*:*:vpc/*",
"arn:aws:ec2:*:*:subnet/*",
"arn:aws:ec2:*:*:network-interface/*",

"arn:aws:elasticloadbalancing:*:*:loadbalancer/*",
"arn:aws:ec2:*:*:availability-zone/*",
"arn:aws:ec2:*:*:public-ip/*",
"arn:aws:storagegateway:*:*:gateway/*",
"arn:aws:resource-groups:*:*:group/*"
]
}
]
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2514


<!-- page 2515 -->
Note:
While performing tag remediation, if it is found that Discovery is credential-less, MID Server
with Tag Management capability is picked. Hence, add Tag Management capability to the
correct MID Server with service account IAM role attached. This action is essential because
there might be several accounts that IAM role MID Servers must choose from.
For more information, see contact Customer Service and Support.
Tag Policies form
You use the Tag Policy form to configure tag compliance and health policies that are used in tag
audits runs on discovered cloud resources or CIs.
Tag Policies form
Field

Description

Name

Unique and descriptive name for the policy.

Short Description

A short summary that describes the policy.

Policy Type

Policy type selection for the tag compliance
and health audit.
• Tag Count Policy: Check for a specific count
of tags for CIs.
• Tag Key Policy: Check for tags with specific
values (string expressions).
• Tag Key & Value Policy: Check for key-value
pair and value strings.
• Tag Category Policy: Check for tags with a
specific category.

Important: You must work in a leaf
domain to use the Tag Category Policy.
Based on your selection, you will specify
additional values.
Expected Tag Count

This field appears only when the Tag Count
Policy policy type is selected.
CIs with fewer tags than the specified number
are considered as failed or non-compliant. CIs
that meet the value are considered certified
against this policy.
For example, if you specify 4, the policy
checks whether the CIs have at least four tags
specified.

Expected Tag Keys

This field appears only when the Tag Key
Policy policy type is selected.
Policy that checks discovered CIs for the tags
specified in the Expected Tag Keys field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2515


<!-- page 2516 -->
Tag Policies form (continued)
Field

Description

Specify multiple tags or string expressions in a
comma-separated list.
For example, if you specify
prod,finance,cost center the policy
checks whether the CIs have all the specified
tags. CIs that have all the specified tags as
certified or fully compliant. If CIs are missing
any of the listed tags, they’re considered failed
or non-compliant.
Tag Key & Value Checks

Execute this policy to check discovered CIs
for the tag key and values specified in the Tag
Keys & Value Checks field.
You can specify multiple tag key & value pairs
or specify a script to check for a collection of
values.
For example, you can specify user in the Key
field, and admin in the Value field.

Note:
The Script field appears only when Tag
Key & Value Policy is selected in the
Policy Type field. Use the Script field to
specify multiple values to return a string
set.
Example code
// The script should
return a string
set to tagValues
variable.
// the code sets
the
tagValues array
with name of the CI
// by this the
check will
be done for the
tag to match the CI’s
name
tagValues =
[ci.name.toString()];
Active

Option to activate or deactivate the run
schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2516


<!-- page 2517 -->
Tag Policies form (continued)
Field

Description

Run on cloud events

Option to enable real-time audit runs when
cloud events occur.

Note: Ensure that you have configured
auto-updating the CMDB with cloud
events for the relevant cloud provider.
Save cert audit result

Option to save the certification audit findings
and incorporate tag audit outcomes in a CI's
health calculations.

Note: This option can be activated if
there is a business need to incorporate
tag audit outcomes in CI health
calculations.
Run

Frequency at which the tag audit runs.
• Daily
• Monthly
• Weekly
• Periodically
• Once
• On Demand

Note:
To run an audit immediately after
configuring the policy, select the On
Demand option.
• Business Calendar: Entry Start
• Business Calendar: Entry End
Next scheduled run date

Date and time on which the tag audit is next
scheduled to run.
This field appears only for scheduled runs and
not for on-demand runs.

Filters

Condition statements with a series of
contextually generated fields. Use lookup lists
to build conditions and filter the CIs eligible for
audit.
Dynamic conditions and filters you specify
to fetch the desired tags based on service
accounts and associated datacenters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2517


<!-- page 2518 -->
Tag Policies form (continued)
Field

Description

Table

Displays the Configuration Item
[cmdb_ci] table to which filters are applied.

Policy Criteria

Other policy criteria that you can configure
using dynamically populated reference lookup
lists. The Configuration Item [cmdb_ci] table
populates the data for this lookup list.
For more information, see the Reference
lookup .

Tag Filter

Filter CIs further based on Key, Keywords,
and Value that you specify. Use the condition
builder to customize a filter.

Task Assignment

Option to assign follow-on tasks to users or
user groups.

Create Tasks

Option to create follow-on tasks.

Note: If there is an existing task
mapped to a CI and tag policy, the

sn_itom_tag.allow_new_cert_follow_on_task
system property determines whether to
create a new task or update an existing
one when there is a compliance failure:
• To update the existing task with the
compliance failure details but not
create a new task, set the property to
false (default)
• To create a new task, set the property
to true.
Group

This field appears only when you select the
Create Tasks check box.
Assignment group to which to assign the task.
Use lookup lists to select a group.

User

Specific user from the assignment group to
whom you want to assign the task. Use lookup
lists to select a user.
This field appears only when you select the
Create Tasks check box.

Tag Remediation Key form
You use the Tag Remediation Key form to create a tag remediation key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2518


<!-- page 2519 -->
Tag Remediation Key form
Field

Description

Key

Tag key value that is used to remediate noncompliant CIs.
For example, if the remediation preview shows
the value as cost center, you can specify
cost center as a new remediation key if it
doesn't exist.

Order

Order of execution that the system considers
when you initiate remediation.
For example, you can run a tag count policy
for four tags and identify CIs that are missing
two tag keys. If you've configured multiple
remediation keys, the system considers the
two keys with the lowest values in the order
field.

Remediation

Remediation name and record preview.

Value Type

Type of the value that you specify in the Value
field — Static or String.
Based on your selection, you must specify a
script or a value for the tag key.

Value

String value for the key that you're creating.
This field appears only when String is
selected in the Value Type field.

Script

Script code to generate values for the key.
This field appears only when Script is
selected in the Value Type field.

Components installed with Tag Governance
Several key components are installed with, or linked to, the Tag Governance plugin to help
standardize and manage your organization's tags.

Roles installed
Role title

Description

[tag_governance_admin]

Sets up and manages the
tag governance application.
Defines and enforces tag
policies, manages tag
categories and values,
and promotes compliance
with organizational
standards. Performs
advanced configuration

Contains roles

• [itil]
• [certification_admin]
• [discovery_admin]
• [flow_operator]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2519


<!-- page 2520 -->
Role title

Description

Contains roles

and customization of tag
governance features. Assign
this role to application
administrators.
[tag_reports_viewer]

Views and analyzes tag
reports related to tag usage
and compliance. Assign this
role to users who monitor and
analyze tag data.

[cmdb_read]

Tag categories installed
Starting with version 1.7.0, the predefined categories listed in the table are installed with Tag
Governance and require the installation of at least Service Mapping Plus version 1.16.3. For more
information see Install Service Mapping Plus.

Tag category

Definition (Regex)

Application ID

applicationid|application-id|app-id|appid|application id|
app id

Assignment Group

Cost Center

assignment-group|assignment_group|assignment group|
assignmentgroup|assign group
costcenter|cost-center|cost_centre|costcentre|costcentre|cost centre

Environment

env|envt|environ|environment

Owner

own|owner|owners|ownership|owned

Properties installed
Property

Description

sn_itom_tag.glide.script.block.client.globals

Controls the access client-side scripts have
to global variables for enhanced security. If
set to true, these scripts can't access global
variables.
• Type: boolean
• Value: true/false
• Default value: False

sn_itom_tag.allow_new_cert_follow_on_task

Enables the creation of new certification
follow-up tasks for each audit in Tag
Governance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2520


<!-- page 2521 -->
Property

Description

• Type: boolean
• Value: true/false
• Default value: False
sn_itom_tag.azure_window_size_in_mins

Time window size, in minutes, to check for
changes in Azure Resources. This value helps
determine the start and end times for the
check:
Start time: The time the event occurred minus
the time window size.
End time: The time when the event occurred
plus the time window size.
• Type: integer
• Default value: 10

sn_itom_tag.performance.config.bulksize

Sets the number of app data items to process
at one time.
• Type: integer
• Default value: 5000

sn_itom_tag.last_event_processed

Indicates the last tag event successfully
processed to verify that the system is up to
date with the latest changes.
• Type:string
• Default value:

sn_itom_tag.max_audit_lag_ratio

Sets the maximum acceptable ratio of delay
for tag audits to confirm that tag policy audits
are performed within a specified time frame.
• Type: integer
• Default value: 2

sn_itom_tag.tag_event_batch_size

Sets the number of tag events, such as
the creation, update, or deletion of tags,
processed together in a single batch.
• Type: integer
• Default value: 500

sn_itom_tag.policy_batch_size

Sets the number of items processed together
in a single batch when a tag policy audit is run.
• Type: integer
• Default value: 1000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2521


