# Zurich IT Asset Management — Platform Analytics Solution for Software Asset Management classic

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1068–1087 of 2359 | Part 2 of 2

Sections: Platform Analytics Solution for Software Asset Management classic (p918); References (p936)

---

<!-- page 1068 -->
Direct integration

Activity

• Sale related entities
◦ Competitor
◦ Opportunity
◦ Invoice
◦ Order
◦ Quote
◦ Account
◦ msdyn_relationshipinsightsunifiedconfig
◦ msdyn_relationshipanalyticsmetadata
◦ Lead
• Customer Service entities
◦ Case
◦ Contract
◦ Queue
◦ Service entity activity
◦ Incident
Miro
monday.com

Access or update a board
• Any board activity, such as create, add or remove a note, add or
remove a user, and delete
• Any item activity, such as add, edit, duplicate, and delete
• User's last login

PagerDuty
Rally

Be on an on-call schedule
• User's last login
• Last activity time

Roadmunk

• User login
• Add comments to ideas or feedback
• Create or update feedback
• Archive or restore roadmaps

• Salesforce CRM

Last activity

• Salesforce
Marketing Cloud
SAP Ariba

User's last login

SAP SuccessFactors User login
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
Direct integration

Activity

Slack Enterprise

User login

SmartRecruiters

Any user activity, such as create a job or a job ad.

Smartsheet

User's last activity
For the list of activities, see Event Reporting Reference

SurveyMonkey

.

• User login or logout
• Update a group name
• Add or delete a member
• Update the group member type
• Create or resend an invite
• Create or update a permission
• Create or update a shared view
• Create or download an export
• Update or delete a respondent
• Create or delete grant information
• Any survey information activity, such as create, delete, copy, update,
and transfer
• Any collector information activity, such as create, delete, and update

Tableau Cloud

User login

Trello

User login

Note: The analysis period is 60 days.
Webex

Webex Training
Host a training
Webex Events
Host an event
Webex Support Session
Host a support session
Webex Meetings
Host a meeting
Webex Teams
• Send or update messages
• Upload a file
• Create or update team space memberships

Workfront

• Create or update projects
• Create or update tasks
• Create or update issues

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
Direct integration

Activity

• Create or update portfolios
• Create or update programs
• Create or update reports
• Create or update filters
• Create or update documents
• Create or update templates
• Create or update expenses
Workplace from
Facebook

• Create, update, or view a post in a Workplace group.
• Comment on a post in a Workplace group.
• Send messages in the Workplace.
• Create or update a Workplace Knowledge Library category.
• Comment on a Workplace Knowledge Library category.
• Create a public event in the Workplace community.

Zendesk
Zoom

User login
• Host a meeting
• Host a webinar
• Last activity

Related topics
Integrate with SaaS applications

Reclamation rules for Microsoft 365 integration
Reclamation rules for Microsoft 365 integration sets the minimum usage threshold for
a subscription. If a subscription remains inactive for a specified period, Software Asset
Management marks the subscription as a potential reclamation candidate.

Reclamation rule

• Power BI
• Exchange Online
• SharePoint Online
• OneDrive for Business

Justification

Description

Low Usage

If these individual
subscriptions show low usage,
Software Asset Management
recommends reclaiming the
low usage subscriptions.

• Teams
• Project Online
• Visio Online
• Microsoft 365 Copilot

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
Reclamation rule

Office 365

Justification

Description

• Low Usage

• Low usage

• Downgrade

For example, if Office 365
individual subscriptions or
subscriptions suites show
low usage, Software Asset
Management recommends
reclaiming the low usage
subscriptions.
• Downgrade
For example, if an Office
365 E5 subscription
including advanced features
and capabilities with Power
BI isn't being used, Software
Asset Management
recommends switching to a
downgraded Office 365 E3
subscription.

Microsoft 365

• Overlapping

• Overlapping

• Low Usage

For example, both Microsoft
365 E3 and Office 365
E3 subscriptions exist,
leading to unnecessary
duplicate access to Office
applications and additional
services already included in
Microsoft 365 E3. Software
Asset Management
recommends reclaiming the
Office 365 E3 subscriptions
and using the Microsoft 365
E3 subscriptions instead.

• Downgrade
• Consolidate

Note: The Overlapping
and Consolidate use
cases are applicable
to all Microsoft
365 integration
subscriptions.

• Low usage
For example, if Microsoft
365 individual subscriptions
or subscriptions suites show
low usage, Software Asset
Management recommends
reclaiming the low usage
subscriptions.
• Downgrade
For example, if a Microsoft
365 E5 subscription
including advanced features
and capabilities with Power
BI isn't being used, Software
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Reclamation rule

Justification

Description

Asset Management
recommends switching to a
downgraded Microsoft 365
E3 subscription.
• Consolidate
For example, if Office 365
Enterprise E5, Windows,
and EMS subscriptions
exist, Software Asset
Management recommends
using a single license such
as Microsoft 365 Enterprise
E5 to cover these multiple
products at a lower cost.

Related topics
Review a software reclamation rule
Evaluating software usage activity for Microsoft 365 subscriptions
Publisher optimizations for Microsoft
Integrating with Microsoft 365

Reclamation rules for Adobe integration
Reclamation rules for Adobe integration set the minimum usage threshold for a subscription. If a
subscription remains inactive for a specified period, the Software Asset Management application
marks the subscription as a potential reclamation candidate.
The Software Asset Management application automatically provides base system reclamation
rules when you create an integration profile for Adobe Cloud. You can customize these rules
based on your specific activity thresholds, such as 15, 30, 90, or 180 days. For more information,
see Review a software reclamation rule.
By default, a threshold of three single apps is set to determine whether an Adobe Creative Cloud
All Apps subscription should be used instead of Single App or individual products subscriptions.
However, you can review and adjust this threshold based on your requirements.

Microsoft 365 Apps Usage Reports
Find the last activity date for Microsoft 365 products to determine reclamation candidates.
The values for each field in the Microsoft 365 Apps Usage Reports
[samp_m365_apps_usage_report] table are populated using the Microsoft Graph APIs. The Last
Activity Date helps in determining reclamation candidates more accurately for the supported
Microsoft 365 products, including Microsoft Outlook, Word, PowerPoint, Excel, Teams, and
OneNote.
Microsoft 365 Apps Usage Reports
Field

Description

User Principal Name

Email address of the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
Microsoft 365 Apps Usage Reports (continued)
Field

Description

Last Activity Date

Date the software product was last used.

Last Activation Date

Date on which the software product license
was last activated for the user.

Report Period

Number of days for no meaningful activity
before a user account is added to the list of
reclamation candidates. The default value is
30 days.

Report Refresh Date

Date of the last refresh of the report.

Windows

Indicates usage of Windows with the value
True or False.

Mac

Indicates usage of macOS with the value True
or False.

Excel (Mac)

Indicates usage of Microsoft Excel on macOS
with the value True or False.

PowerPoint (Mac)

Indicates usage of Microsoft PowerPoint on
macOS with the value True or False.

Outlook (Mac)

Indicates usage of Microsoft Outlook on
macOS with the value True or False.

Word (Mac)

Indicates usage of Microsoft Word on macOS
with the value True or False.

OneNote (Mac)

Indicates usage of Microsoft OneNote on
macOS with the value True or False.

Teams (Mac)

Indicates usage of Microsoft Teams on macOS
with the value True or False.

Excel (Windows)

Indicates usage of Microsoft PowerPoint on
Windows with the value True or False.

PowerPoint (Windows)

Indicates usage of Microsoft PowerPoint on
Windows with the value True or False.

Outlook (Windows)

Indicates usage of Microsoft Outlook on
Windows with the value True or False.

Word (Windows)

Indicates usage of Microsoft Word on
Windows with the value True or False.

OneNote (Windows)

Indicates usage of Microsoft OneNote on
Windows with the value True or False.

Teams (Windows)

Indicates usage of Microsoft Teams on
Windows with the value True or False.

Subscription downgrade configuration
Determine various downgrade configurations of SaaS applications and view the downgrade
order based on the conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Subscription downgrade configuration
Field

Description

Display name

Name of the supported downgrade
configuration.

Source identifier name

Name of the SaaS application that is currently
being used.

Destination identifier name

Name of the SaaS application that can be
downgraded to.

Source identifier

Subscription identifier of the SaaS application
that is currently being used.

Destination identifier

Subscription identifier of the SaaS application
that can be downgraded to.

Active

Shows whether the downgrade configuration
is active.

Pricing model for Oracle Java SE Universal
Tier-based monthly subscription price per employee is based on the number of employees
directly or indirectly working in an organization.
The Price tier [samp_price_tier] table supports the Employee license metric of the Java SE
software model and contains read-only values. This table is shipped with the Software Asset
Management Professional for Oracle (com.snc.samp.oracle) plugin.
This table populates the override license cost records for Oracle Java. When you're using a
custom tier table, you can update the override license cost records associated with the Oracle
Java software model. For details, see Create or update an override license cost record.
Price tier table
Number of employees

Monthly subscription cost per employee

1–999

$15

1,000-2,999

$12

3,000-9,999

$10.50

10,000-19,999

$8.25

20,000-29,999

$6.25

30,000-39,999

$5.70

40,000-49,999

$5.25

Software EOL request fields
Use the Software EOL request form to create a software end of life (EOL) request for software
products in your asset estate that are reaching or have reached EOL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
Software EOL request form
Field

Description

Number

A unique identifier for the EOL request.

Company

Name of the publisher of the software product.

Product

Name of the software product.

Edition

Edition of the software.

Version

Licensable version of the software.

Full version

The granular licensable version of the
software.

Justification

Reason for starting the EOL request on the
software.

Stage

The stage of the software EOL request. The
default stage is Draft. Possible values include:
• Draft
• Open
• Analysis
• Action initiated
• Completed
• Cancelled

Action initiated

The action taken to manage EOL risk. Possible
values include:
• Pending
• Remove EOL software
• Upgrade
• Purchase support
• Move to Azure
• Accept risk

Version type

Version type values include:
• Version (build version)
• Full version (main version)

Note: You can manage EOL risk either
for a version or full version of a software
product.
Priority

Priority of the software EOL request.

Assignment group

The group from which an individual is selected
to complete the software EOL request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
Field

Description

Assignment to

The individual assigned to complete the
software EOL request, who is selected from
the Assignment group.

Short description

A brief description of the task.

Description

A detailed description of the task.

Work notes

Information about how the EOL workflow task
is resolved.

Software EOL tasks tab
Field

Description

Number

A unique identifier for the software EOL task.

Name

Name of the software EOL task.

Software EOL request

The identifier of the software EOL request.

Parent

The identifier of the parent task.

State

The state of the software EOL task. The default
state is Open.

Action

Indicates the action that you can take after
deciding an IT strategy. Possible values
include:
• Remove EOL software: Remove the EOL
software product from the asset inventory.
• Upgrade: Upgrade to the latest or the
supported software version.
• Purchase support: Purchase additional
support for maintenance.
• Move to Azure: Migrate to Microsoft Azure.
This action is available only for Microsoft
products.
• Accept risk: Accept risks associated with the
EOL software.
This field appears only when the value
selected in the Name field is Decide on IT
strategy.

Priority

Priority of the software EOL task.

Assignment group

The group from which an individual is selected
to complete the software EOL task.

Assigned to

The individual assigned to complete the
software EOL task, who is selected from the
Assignment group.

Short description

A brief description of the task.

Description

A detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
Field

Description

Notes

Additional information about the EOL task.

Work notes

Information about how the software EOL task
is resolved.

User device license consumption fields
SAM managers can view the client access license (CAL) usage details for Microsoft Windows
Server in the User Device License Consumption table and create CAL records.
The User Device License Consumption [samp_user_device_license_consumption] table is
populated with the CAL usage logging data for the Windows Server. The data is accessed from
ServiceNow Discovery.
To learn more about Microsoft usage access logging for CAL, see Microsoft User Access
Logging .
For more information on Microsoft specific license metrics, see Supported Microsoft 365 license
types.
The User Device License Consumption table is a child table of the Configuration Item [cmdb_ci]
table.
User Device License Consumption form
Field

Description

Domain

Domain to which the data belongs.

Consumer

User ID or IP address of the client device that
is used to access a role or a service.

License category

The functional category of the CAL. This field
is populated only when the license is of CAL
type. For example, Microsoft supports User
CAL, Device CAL, and Per Core (with CAL)
license metrics.

Publisher

The publisher of the license consumption
record.

Consumer type

Type of consumer license: User or Device

Product name

The name of the product for which the license
consumption record is created.

Activity count

The number of times a particular user or
device accesses a role or service.

Source

The CI record for license consumption.

Discovery source

Discovery source for which license
consumption is evaluated.

Product code

The code of the product for which the license
consumption record is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
User resolution rule fields
Fields on the User Resolutions Rules page help you create a rule to map the User field in the
Software Subscription [samp_sw_subscription] table to an associated user in the User [sys_user]
table within the ServiceNow AI Platform.
User Resolution Rules
Field

Description

Display name

Name of the user resolution rule.

Active

Option for enabling the user resolution rule.
If this check box is cleared, this rule isn't
applied to resolve user subscriptions.

Category

Category of the integration profile that the user
resolution rule applies to.
• SaaS
• SSO
By default, this field value is set to SaaS.

Source table

Table that contains subscription records.
Select Software Subscription
[samp_sw_subscription].
This field appears only when SaaS is selected
from Category.

Look up table

This field is automatically set to User.

Applies to

One or multiple integration profiles to which
the user resolution rule applies to.
This field appears only when SaaS is selected
from Category.

Source field

A field in the Software Subscription
[samp_sw_subscription] table used for lookup
against the User [sys_user] table, such as User
principal name and External user id.
As other columns might not contain sufficient
data, select either User principal name or
External user id.
This field appears only when SaaS is selected
from Category.

Source

Indicates if the rule is created manually or
is automatically created by the SaaS user
resolution Now Assist skill.
If the AI indicator appears next to the field and
the value populated is Now Assist, it signifies

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
User Resolution Rules (continued)
Field

Description

that the rule is automatically generated by the
SaaS user resolution Now Assist skill.
I
Look up field

The field against which you want to match the
Source field value.
For example, if you select User principal name
in Source field and Email in Look up field,
Software Asset Management tries to match
these two fields. The match must be exact. If
it isn’t, you can change the value to User ID in
Look up field.

Apply transform on input

Option to apply transformations to the Source
field value.
• None: The Source field value is matched
exactly with the Lookup field value.
• Remove domain: If you have selected Email
in Look up field, the first part of the email
address (before the @ symbol), which is the
User ID or name, is matched with the Source
field value.
• Replace domain: When you have selected
Email in Look up field and you want to
replace the domain name, that is, the
second part of the email address (after
the @ symbol). For example, replace
example.com with exampletest.com.
• Run script: This option is available only to
administrators for updating the script.

New domain

The new domain that you want to add after the
@ symbol when Email is selected in Look up
field.
This field appears only when Replace domain
is selected from Apply transform on input.

Script

Important: This field is available only
to administrators.
If the mapping still fails after replacing or
removing the domain or the logic is complex,
the script can be updated to achieve the
desired result.

Related topics
Associate a user with subscription records
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
Domain separation and Software Asset Management
Domain separation is supported in Software Asset Management. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Enhanced
• Includes all aspects of Basic and Standard levels of support.
• Data-driven process enables service provider customers to modify business logic that
is based on defined use cases. These configurations are UI-based and fail-safe so that
configurations by one customer cannot affect another.
• Tenants of the instance must be able to configure minimum viable product (MVP) business
logic and data parameters for themselves. This logic and parameters would be expected for
the application's normal function.
Sample use case: Tenant-customers of a shared environment must be able to modify the impact,
urgency, or priority matrix to set priority within their domain.
For more information on support levels, see Application support for domain separation

.

Overview
Domain separation support in the product enables service providers to offer managed services
for software and hardware asset management to their customers. This feature also caters to large
organizations who manage their subsidiaries as independent domains.

How domain separation works in Software Asset Management
In SAM, domain separation occurs in two stages: data separation and process separation. From
the Paris release, both data and process are domain-separated.
Any user with sam_integrator role has access to create and modify the SaaS integration profiles.
Since users with this role can also access the Oauth application registry (currently not domainseparated, so records across all domains are visible), this sam_integrator role should be
assigned with caution. The user should be in the service provider organization and satisfy high
permissions criteria.
To view logs for domain separation, you need to create a system property titled
asset.log_level and set its value to debug, trace or info. Based on
the value that you set, logs are shown when any scheduled job that extends the
AssetManagementBaseJobscheduled job runs.
In a domain-separated instance, the content data service (CDS) should populate data in the
instance with domain set as global.

Note:
The Recommended practice
configuration record.

is to avoid customizing the base system domain

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
Required plugins
• Domain separation extension (com.glide.domain.msp_extensions.installer)
• Performance Analytics – Domain Support (com.snc.pa.domain_support)
• SAMP (com.sn_samp_master)
• HAMP (store app)

Other supported plugins
• Service Catalog – Domain Separation (com.glideapp.servicecatalog.domain_separation)
• Procurement (com.snc.procurement)
• Cost Management (com.snc.cost_management)
• Contract Management (com.snc.contract_management)
To learn more, see Domain separation explained
Importance of Default domain .

, Contains queries and domain access

, and

Related topics
Domain separation for service providers
Domain separation and lifecycle reports
There are certain domain separation aspects to consider when running software lifecycle
reports.

Software Asset Management overview
In a domain-separated environment, the software lifecycle report is generated at the level at
which the Service Provider (SP) is managing compliance for their customers’ environment.
Typically, the level at which reconciliation is run indicates such compliance, and the software
lifecycle report is generated at the same level.
The following table shows how the reconciliation should behave. In this example:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
• The SP is managing Cisco's software asset management (SAM) program at the Cisco corporate
level. That means the lifecycle report must run at the Cisco corporate level.
• The SP is managing Walmart's SAM program for each Walmart division (US and Mexico). That
means the lifecycle report must run at the Walmart division level.
Here is the SP hierarchy:
• Cisco Corporate
◦ Cisco USA
◦ Cisco Mexico
• Walmart Corporate
◦ Walmart USA
◦ Walmart Mexico

Domain settings (reconciliation/
normalization)

Compliance reporting

Lifecycle report level

TOP/Cisco

True

Yes

TOP/Cisco/US

False

TOP/Cisco/Mexico

False

TOP/Cisco/Germany

False

TOP/Walmart

False

TOP/Walmart/US

True

Yes

TOP/Walmart/Mexico

True

Yes

If the SP sets up software models for Cisco corporate as well as Cisco Mexico, even though their
intent is to manage compliance for Cisco at the Cisco Corporate level, the lifecycle report may
show duplicate lifecycle records with the same install count.
Lifecycle report
Model domain

Software
Model

Date

Domain

Cisco

SQL Server
2012

2014

10

SQL Server
2012

Cisco

Cisco Mexico

SQL Server
2012

2014

10

SQL Server
2012

Cisco

Walmart USA

SQL Server
2012

2014

5

Walmart
Mexico

SQL Server
2012

2014

20

To learn more about software lifecycles, see Create software models in Software Asset
Management classic. To learn about domain separation path setup, see Domain separation
setup and administration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
Quick start tests for Software Asset Management
Validate that Software Asset Management still works after you make any configuration change
such as apply an upgrade or develop an application. Copy and customize these quick start tests
to pass when using your instance-specific data.
Software Asset Management quick start tests require activating the Software Asset Management
Professional plugin (com.snc.samp). Some quick start tests require activating the following
additional plugins.
• Software Asset Management - Spend Detection (com.sn_sam_spend)
• Software Asset Management Professional for Microsoft (com.snc.samp.microsoft)
• Software Asset Management Professional for SAP (com.sn_samp_sap)
• Software Asset Management Professional for Oracle (com.snc.samp.oracle)
• Software Asset Management - SaaS License Management Integrations (sn_sam_saas_int)
Software Asset Management test suite
Test

Description

Release version

SAM - Mapping Custom PPN/ Validates the replacement of a San Diego
DMAP to newly published PPN custom publisher part number
and Content
(PPN) with a new Software
Asset Management Content
Service PPN.
SAM - Oracle PaaS BYOL

Rome
• Validates the addition of the
new Serverless Hardware
[cmdb_ci_serverless_hardware]
table, which stores
information about PaaS
devices.
• Validates the license
compliance of Oracle
Database servers in
Amazon Web Services
(AWS) PaaS environments.

Note: Requires
the Software Asset
Management
Professional for Oracle
(com.snc.samp.oracle)
plugin and the CMDB
CI Class Models store
application.
SAM - Software Product
Validates that the Software
Lifecycles records on Software Lifecycle tab on the Software
Model
Model form is showing
records.

Quebec

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
Software Asset Management test suite (continued)
Test

Description

Release version

Note: Requires demo
data and the Software
Asset Management
Professional
for Microsoft
(com.snc.samp.microsoft)
plugin.
SAM - BYOL

Quebec
• Validates the purchase date
on the Software Entitlement
form
• Validates the addition
of newly added column
legacy_license on the
License Metric Results
[samp_license_metric_result]
and License Position Report
[samp_license_position_report]
tables
• Validates the addition of
newly added columns,
cloud_license_type and
cloud_license _type_source
in the Software Installations
[cmdb_sam_sw_install]
table

Note: Requires
the Software Asset
Management
Professional
for Micorosft
(com.snc.samp.microsoft)
plugin.
SAM - Validate CIS Suites

Validates reconciliation of
Core Infrastructure Server
(CIS) suites along with
downgrade rights.

Paris

Note: Requires demo
data and the Software
Asset Management
Professional
for Microsoft
(com.snc.samp.microsoft)
plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
Software Asset Management test suite (continued)
Test

Description

Release version

SAM - PerCoreForMSCluster

Verifies the reconciliation
functionality for Microsoft per
core with cluster.

Paris

Note: Requires
the Software Asset
Management
Professional
for Microsoft
(com.snc.samp.microsoft)
plugin.
SAM - Validate upgrade/
downgrade during
Reconciliation for Microsoft
publisher

Validates upgrade and
downgrade rights during
reconciliation for Microsoft
products.

Paris

Note: Requires demo
data and the Software
Asset Management
Professional
for Microsoft
(com.snc.samp.microsoft)
plugin.
SAM - Generate demand to
Validates generation and
consolidate SaaS applications submission of a demand on
SaaS applications.

Paris

Note: Requires
the Software Asset
Management Spend Detection
(com.sn_sam_spend)
plugin and the
PPM standard
(com.snc.financial_planning_pmo)
plugin.
SAM - Software Model and
Software Entitlement checks
for SAP Engines

Verifies that the Software
Model and Software
Entitlement forms change
when the product is an SAP
engine.

Paris

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
Software Asset Management test suite (continued)
Test

Description

Release version

Note: Requires
the Software Asset
Management
Professional for SAP
(com.sn_samp_sap)
plugin.
SAM - Downgrade Rights on
Software Model

Validates that the downgrade
rights pushed from the
content service are correctly
populated on the Downgrade
Rights related list on the
software model form.

Orlando

SAM - Multi-core pack
validation on Software
Entitlement

Validates the functionality
Orlando
of new fields for a multi-core
pack on software entitlements.

Note: Requires
the Software Asset
Management
Professional
for Microsoft
(com.snc.samp.microsoft)
plugin.
SAM - Downgrade Rights on
Software Entitlement

Validates that the downgrade
rights pushed from the
content service are correctly
populated on the Downgrade
Rights related list on the
software entitlement form.

Orlando

SAM - Software Spend
Transaction

Validates the creation of a
Software Spend Transaction.

Orlando

Note: Requires
the Software Asset
Management Spend Detection
(com.sn_sam_spend)
plugin.
SAM - Software Model and
Software Entitlement

Tests that a user can create a
software model and software
entitlement and validates
those records.

New York

SAM - Software Installation
and Discovery Model

Tests that a user can create
New York
a software installation and
discovery model and validates
those records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
Software Asset Management test suite (continued)
Test

Description

Release version

SAM - Software Entitlement
Creation Using Custom PPN

Creates a custom software
product, a custom DMAP
for the custom product, a
custom Part Number for the
custom DMAP, a software
entitlement using the custom
Part Number, and verifies
that a software model is
automatically created.

New York

SAM - Software Model Checks Tests that the software model
for SAP Named Users
form changes when the
publisher is SAP and the
product is Named Users.

New York

Note: Requires
the Software Asset
Management
Professional for SAP
(com.sn_samp_sap)
plugin.
SAM - Software Model Checks Tests that the Software Model
for SaaS
form changes when a SaaS
product is selected.

New York

Note: Requires
the Software Asset
Management - SaaS
License Management
(sn_sam_saas_int)
plugin.
SAM - Validate Fields on SaaS Tests that the Subscription
Software Products
software and Ignore installs
fields are present on the
Software Product form.

New York

Note: Requires
the Software Asset
Management - SaaS
License Management
(sn_sam_saas_int)
plugin.
Related topics
Quick start tests

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


