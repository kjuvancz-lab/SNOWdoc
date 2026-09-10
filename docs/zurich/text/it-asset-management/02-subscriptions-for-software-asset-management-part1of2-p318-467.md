# Zurich IT Asset Management — Subscriptions for Software Asset Management / Supported software publisher licenses

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 318–467 of 2359 | Part 1 of 2

Sections: Subscriptions for Software Asset Management (p318); Supported software publisher licenses (p321)

---

<!-- page 318 -->
Field

Description

Product classification

Official UNSPSC classification.

Exclude from content service

Option that excludes the custom product
details from being shared with Software Asset
Management Content Service if opted in.

Active

Option that indicates the rule is active.

View publisher part number (PPN) suggestions in Software Asset
Management classic
View content service suggestions for your custom PPNs and DMAPS in the Software Asset
Management classic application.

Before you begin

PPN suggestions are available only if a corresponding match is found for your custom PPN in
the Content Service. The PPN suggestion records are stored in the Part number suggestions
[samp_sw_part_number_suggestion] table.
Role required: sam_admin

Procedure
1. Navigate to All > Software Asset > Administration > Part number suggestions.
2. Open a suggestion record to view the Part number suggestion page.
You can view the custom PPN details in the top part of the Part number suggestion page. The
second half of the page contains the suggested part number details. All the entitlements
where the custom PPN is used appear in the Impacted entitlements tab. All the software
models where the custom DMAP is used appear in the Impacted software models tab. If no
impacted software models exist, then this tab doesn't appear.
3. Select Accept or Reject.
◦ Accept: The Content Service PPN and DMAP replace the custom PPN and DMAP. In the
impacted entitlement, the content service PPN is replaced. Similarly, the content service
DMAP is replaced on the software model.
◦ Reject: The status of this record changes to rejected and you continue to use the custom
PPN.

Subscriptions for Software Asset Management
The ServiceNow platform uses a licensing method where your organization is charged for using
the IT Asset Management applications- ServiceNow Software Asset Management.
Software Asset Management licensing enables you to pay for resource categories that you use.
To calculate the cost, Software Asset Management uses Subscription Units. A Subscription Unit
is a unit of measure used to Managed IT Resources using defined ratios. The customer value of
managing different types of IT resources varies. Subscription Units allows for a single unit price
to be applied via ratios to those different IT resource type to reflect that varying customer value.
To know more about managed IT resources and Subscription Unit ratios, see the Subscription
Unit Overview on the https://www.servicenow.com/products/entitlements-packages.html .

Managed IT Resource types
There are five IT Resource categories in ServiceNow Software Asset Management - Server, End
User Computing Device, SaaS Subscription User, PaaS Resources, and IaaS Storage.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
• Server is any physical or virtual server that is represented as a configuration item (CI) in the
CMDB tables listed in the following license resource categories and managed by the Software
Asset Management application.
• End User Computing Device is any physical or virtual non-server CI in the CMDB tables listed
in the following license resource categories and managed by the Software Asset Management
application.
• SaaS Subscription User is any unique User Principal name in the SaaS Subscription User
table listed in the following license resource categories and managed by the Software Asset
Management application.
• PaaS Resources are cloud-based platform services that are represented as a CI in the CMDB
tables listed in the following license resource categories and managed by the Software Asset
Management application.
• IaaS Storage is any cloud-based infrastructure service represented as a CI in a CMDB table
listed in the following license resource categories and managed by the Software Asset
Management application.
Servers and End User Computing Devices are managed by the Software Asset Management
application when the installed software on the Managed IT Resources is represented in the
Software Installation [cmdb_sam_sw_install] table.
Software Asset Management License Resource Categories
Resource category

Subscription unit ratio

Server

1:1

Model category

• cmdb_ci_server
• cmdb_ci_win_server
• cmdb_ci_linux_server
• cmdb_ci_aix_server
• cmdb_ci_esx_server
• cmdb_ci_solaris_server
• cmdb_ci_hyper_v_server
• cmdb_ci_hpux_server
Any CMDB classes derived
from the above listed classes
or cmdb_ci_hardware and not
defined as another Managed
IT Resource type.

End user computing device

1:4

• cmdb_ci_computer
• cmdb_ci_handheld_computing
• cmdb_ci_pc_hardware
Any CMDB classes derived
from cmdb_ci_pc_hardware.

SaaS subscription user

1:15

samp_sw_subscription

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
Software Asset Management License Resource Categories (continued)
Resource category

Subscription unit ratio

PaaS resources

1:3

Model category

• cmdb_ci_database
• cmdb_ci_cloud_database
Any child classes of the above
listed classes.

IaaS storage

1:3

cmdb_ci_storage_volume
Any child classes of the above
listed classes.

View license report for the IT Asset Management application
Resources that the IT Asset Management applications discover, monitor, and provision are
configuration items (CIs) stored in the CMDB. The ITAM licensing module combines this
information on CIs with the information on subscriptions your organization purchased to produce
statistics on subscription use by IT Asset Management applications.

Before you begin

The process of collecting and aggregating information for licensing purposes consists of the
following interactions. As a result, you can view the statistics on how your organization uses
purchased subscription units.
1. The IT Asset Management applications count CIs and assign them to CI categories daily.
2. The IT Asset Management applications daily report CI count by CI category to the IT Asset
Management licensing module. If features of the same application report the same CIs as their
resources, the CI count is manipulated to remove the duplication.
3. The licensing module correlates the daily average CI counts for IT Asset Management
applications with the licensing information from the customer contract to produce license
statistics.
Role required:
• admin
• usage_admin

Procedure
1. Navigate to All > ITAM Licensing > ITAM License Report.
2. Select an application to view the subscription for a particular CI category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
You can view the following information on CI count and subscriptions purchased for each IT
Operations Management application separately (a la carte):
◦ Resource Category: CI categories for IT Asset Management applications.
◦ Resource Total Count: CI count for CIs organized by CI categories, for each IT Asset
Management application.
◦ Subscription Unit Ratio: Ratios define how many CIs of a certain CI category require a
subscription. The Software Asset Management application has pre-defined values for End
User Computers (4:1), for Servers (1:1), for Storage Volumes (3:1), for Databases (3:1), and for
Subscription Users (15:1).
◦ Total Subscription Units Consumed: The number of subscriptions per CI category for each
IT Asset Management application that your organization consumed. The licensing module
calculates this number by applying the subscriptions ratio to the CI count number for each
application's CI category.
For licensing purposes, the Software Asset Management application only considers CIs with
software installs discovered within the last 90 days or those where the last discovered as
empty. Additionally, all CIs are excluded that have a column added to the cmdb_ci_hardware
table and that column name is referenced in the property labeled Enter the name of

the true/false field added to cmdb_ci_hardware table to exclude
software installed on selected devices from Software Asset
Management. For more information on excluding CIs, see Exclude software assets on CIs.

Supported software publisher licenses
With Software Asset Management, there are several publisher packs that can be used to extend
functionality between the ServiceNow AI Platform and your third-party software applications.
The following Software Asset Management publisher pack plugins can be requested from
ServiceNow personnel for activation. See Request Software Asset Management for more
information on how to request these plugins.
• Adobe
• Citrix
• IBM (includes both IBM and Red Hat Enterprise Linux)
• Microsoft
• Oracle
• SAP
• VMware
Each publisher has a set of license metrics specific to that metric group. License metrics are set
in software entitlements and used for reconciliation (metric group, license metric, and software
model combination).

Publisher pack plugins
Plugin

Description

Software Asset Management Professional for
Adobe

Provides additional capabilities to reconcile
Adobe subscription software.

(com.sn_samp_adobe)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
Plugin

Description

Software Asset Management Professional for
Citrix

Provides additional capabilities to reconcile
Citrix software, such as Virtual Applications
and Virtual Desktop.

(com.sn_samp_citrix)
Software Asset Management Professional for
IBM
(com.sn_samp_ibm)

Provides additional capabilities to reconcile
IBM products using PVU and RVU license
metrics.
This plugin also provides additional
capabilities to reconcile Red Hat Enterprise
Linux software, such as Red Hat Enterprise
Linux Server and Red Hat Enterprise Linux for
Virtual Datacenters.

Software Asset Management Professional for
Microsoft
(com.snc.samp.microsoft)
Software Asset Management Professional for
Oracle

Provides additional capabilities to reconcile
Microsoft software, such as Microsoft SQL
Server.
Provides additional capabilities to reconcile
Oracle software, such as Oracle DB Server.

(com.snc.samp.oracle)
Software Asset Management Professional for
SAP

Provides additional capabilities to reconcile
SAP named user compliance and optimization.

(com.sn_samp_sap)
Software Asset Management Professional for
VMware
(com.sn_samp_vmware)

Provides additional capabilities to reconcile
VMware software, such as vCenter and
vSphere.

Publisher pack dashboards
View compliance analysis results for the following publishers on the Software Publisher Analytics
dashboards.
• Adobe
• Citrix
• IBM
• Microsoft
• Oracle
• SAP
• VMware

Note: You must have one of the publisher pack add-ons (other than Adobe) activated
to see the Software Publisher Overviews dashboard navigation module. In addition, the
corresponding publisher pack must be activated to see the compliance analysis results tab
for that publisher.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
View compliance analysis results for Microsoft Office 365 and Adobe Cloud on the Office 365
and Adobe dashboard.

Note: The Software Asset Management Professional for Adobe publisher pack add-on
must be activated to see the Office 365 and Adobe Cloud dashboard.

Software Asset Management publisher pack for Adobe
Use the Software Asset Management publisher pack for Adobe to track compliance using Adobe
- specific licensing metrics and integrate with Adobe Cloud.

Adobe licensing options
The Adobe publisher pack (com.sn_samp_adobe) adds Adobe - specific licensing options for
software entitlements.

Field

Agreement type

Options

• Generic
• Enterprise Term License Agreement (ETLA)
• Cumulative Licensing Program (CLP)
• Transactional Licensing Program (TLP)
• Value Incentive Plan (VIP)

License Metric

• Per Device
• Per User
• User Subscription

To use the Adobe - specific licensing options, select the Adobe metric group for the software
entitlement.

Adobe Cloud integration
Create an Adobe Cloud integration profile to compare subscriptions with software installations
for compliance reporting.

Note: Installation discovery sources include ServiceNow Discovery, Microsoft SCCM, and
other third-party discovery sources that can integrate as a data source in the ServiceNow
CMDB.
For instructions on how to create an Adobe Cloud integration profile, see Integrating with Adobe
Cloud.

Adobe Cloud reporting
Adobe Cloud reports can be accessed by navigating to Reports > View/Run and searching all
reports for Adobe.
• Adobe Cloud Users without Installations
• Underused Adobe Cloud Installations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
You can view Adobe subscriptions, compliance, and cost using the Office 365 & Adobe Cloud
dashboard in Software Asset Management classic or Publisher overview for Adobe Systems in
the Software Asset Workspace.
Integrating with Adobe Cloud
Integrate your Software Asset Management application with Adobe Cloud services to track your
software subscriptions and to determine your license compliance.
The Adobe Cloud integration supports the following Adobe Cloud services:
• Adobe Creative Cloud
• Adobe Experience Cloud
• Adobe Document Cloud

Note: You can create an Adobe Cloud integration only if you’re using the Adobe Creative
Cloud for Enterprise subscription plan. If you’re using any other subscription plan, such as
Adobe Creative Cloud for Teams, Education, or Individuals, you can’t create an integration.
Integrate your Adobe subscriptions with Software Asset Management for compliance reporting
using Adobe authentication. For more information about Adobe authentication integrations and
certificates, see the Adobe Authentication Guide .
®

You can integrate your ServiceNow instance with Adobe Cloud services using the OAuth Server
to Server credential authentication method.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Adobe Cloud application

Authentication scopes

Download subscriptions

Administrator

None

Setting up Adobe Cloud integration
Manage Adobe Cloud license compliance and optimization by performing the following steps:
• Prerequisites
Before you begin with Adobe Cloud integration, confirm that all prerequisites are met.
1. Install Software Asset Management Professional for Adobe
Install the Software Asset Management Professional for Adobe (com.sn_samp_adobe) plugin
to access the Adobe Publisher Pack features in the Software Asset Management application.
2. Install Software Asset Management - SaaS License Management plugin
Install the Software Asset Management - SaaS License Management (com.sn_sam_saas_int)
plugin to create and manage integrations with your SaaS and Single Sign-On (SSO)
applications. These integrations enable you to track license usage and reclaim unused
licenses effectively.
3. Verify content updates for Software Asset Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
The content library on your instance is updated regularly through the Software Asset
Management Content Service. The Software Asset Management application provides
automated content to simplify software normalization, offering data such as life cycle
information, downgrade rights, and suite definitions. This data is essential for accurate
license compliance and optimization.
4. Create a success goal
Create a success goal to track the success of Adobe Cloud configuration setup on the
Software Asset Management application.
5. Set up OAuth on Adobe Cloud
Set up OAuth Server-to-Server credentials on the Adobe Cloud services portal before
creating an Adobe Cloud integration profile on the Software Asset Management application.
• Software Asset Management configurations
Configure your Software Asset Management application, which includes setting up user
accounts, managing licenses, and confirming compliance with Adobe's software usage
policies.
1. Set up Adobe Cloud integration profile
Create an Adobe Cloud integration profile in the Software Asset Management application
to import user subscription data, determine license compliance, and identify optimization
opportunities. If you manage multiple tenants, create a separate integration profile for each.
2. Configure user resolution rules
Resolve or match the Adobe Cloud user to the ServiceNow user (sys_user) to determine the
suitable license compliance and provide correct optimization recommendations.

Note: If the licenses are assigned to non-human users, such as email accounts, the
user resolution process is optional for you.​
3. Review and configure reclamation rules
The Software Asset Management application automatically provides base system
reclamation rules when you create an integration profile for Adobe Cloud. You can customize
these rules based on your specific activity thresholds, such as 15, 30, 90, or 180 days. For
more information, see Review a software reclamation rule.
4. Pull subscription data
After the Adobe Cloud integration is complete, the subscription data is pulled into the
Software Asset Management application when the SAM - Import Adobe User Subscriptions
scheduled job runs. If you want to run this job on demand for pulling the latest subscription
data, contact the ServiceNow administrator.
5. Set up software models
The Software Asset Management application integrates with Adobe Cloud to automatically
generate software models based on assigned subscriptions. These models include suite
components, downgrades, and life cycle details to confirm compliance and optimize
licensing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
Important: You must verify that no software models are created without a Discovery
Map (DMAP) to confirm inclusion of all required details.
Alternatively, you can create software models manually for any unknown identifiers. For more
information, see Create a software model in the Software Asset Workspace.
6. Set up entitlements
Add your entitlements for the software models created automatically or manually in the
previous step. If you have already set up entitlements using a Publisher Part Number (PPN),
those software models are used in this integration to avoid duplicates.

Important: To achieve a cleaner implementation, you must verify that no software
entitlements are created without a PPN.
• Software Asset Management configurations verification
Review and validate the Software Asset Management configurations to track and manage
Adobe Cloud licenses and usage accurately.
1. Verify the complete pull of all subscriptions
Verify with the Adobe Cloud administrator that all subscription records have been
pulled successfully. You must verify that the subscription records are complete and the
subscription account details are accurate.
2. Run health check
Run a health check on the Health check dashboard by selecting SaaS and General to verify
the Adobe configurations and review the findings for each suite.
3. Verify the pull of all required software usage
Verify if the Software Asset Management application has pulled the usage details from
discovery sources such as SCCM. Usage details, such as last activity, is required to identify
user subscriptions with low usage and determine optimization opportunities. When the
subscription data is pulled, the SAM - Optimize Adobe Subscriptions scheduled job runs
monthly to optimize the Adobe Creative Cloud subscriptions.
4. Create a success goal
Create a success goal to manage your Adobe Cloud subscription and compliance.
5. Run reconciliation
Run reconciliation on the Software asset overview page to verify that the licenses are
consumed according to the Software Asset Management configurations. Reconciliation
runs automatically each week, but you can also trigger it manually as needed. For quicker
results, run reconciliation with Adobe as the publisher to verify the Adobe Cloud license
consumption.
6. Check license position report
Check your overall compliance positions for Adobe Cloud and associated products in the
License Position Report. For Adobe-specific license position, select Adobe Systems as the
publisher.​
7. Act on unlicensed subscriptions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
Identify and address the unlicensed Adobe Cloud subscriptions.
8. Act on optimization recommendations
Software Asset Management supports various optimization use cases, which you can view
on the Software asset analytics page. For Adobe-specific optimization, select Adobe as the
publisher.
Integrate Adobe Cloud using OAuth Server-to-Server credentials
®

Integrate your ServiceNow instance with Adobe Cloud services by using OAuth Server-toServer credentials by following the steps.
1. Create a project and add APIs using OAuth
2. Create an Adobe Cloud integration profile using OAuth
Create a project and add APIs using OAuth
Create a project in the Adobe Developer Console for accessing Adobe APIs and add APIs to your
project using OAuth.

Before you begin

Role required: Adobe Cloud admin

Procedure
1. Create a project in the Adobe Developer Console to access the Adobe APIs by selecting
Create new project.
For more information, see Projects Overview .
2. Add an API to your project by selecting Add API.
For more information, see Add API to project using OAuth

.

3. Select User Management API for the Adobe service that you want to integrate with.
This service enables you to access the Adobe user management API. After you successfully
add the API to your project, you’re redirected to the API overview page.
4. Select Next.
5. On the Configure API form, expand Credentials.
6. Select the OAuth Server-to-Server authentication.
7. Provide a name in the Credential name field to find the correct API credential easily on the
Admin Console > Users > API Credentials.
You can also modify the name later in your project on the OAuth Server-to-Server credential
overview page.
8. Select Save configured API.
The following values are displayed on the credential overview page:
◦ CLIENT ID
◦ CLIENT SECRET
◦ SCOPES
◦ CREDENTIAL NAME
◦ TECHNICAL ACCOUNT ID
◦ TECHNICAL ACCOUNT EMAIL
◦ ORGANIZATION ID
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
Note:
Copy the CLIENT ID and ORGANIZATION ID and also retrieve the CLIENT SECRET to use
them later.
9. Get the Connection URL (Instance) URL from the Adobe Developer Console to create and get
an OAuth token for Adobe Cloud.
a. In the Generate access token section, select View cURL command.
b. Copy the Connection URL.

Note:
Copy only the required URL from the entire command.
For example, here the Connection URL is the highlighted part.

Create an Adobe Cloud integration profile using OAuth
Create an Adobe Cloud integration profile on your ServiceNow instance by using OAuth
credentials to track your software subscriptions and to determine your license compliance.

Before you begin

Role required: sam_admin, sam_integrator
Activate the following plugins:
• Software Asset Management Professional for Adobe (com.sn_samp_adobe)
• Software Asset Management - SaaS License Management (sn_sam_saas_int) from
ServiceNow Store

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
About this task

If you’re using Software Asset Workspace, the option to create the Adobe Cloud integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Adobe Cloud Integration Profile.
a. Navigate to License operations > User sub­
scription > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Adobe Cloud from the drop-down
list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the Adobe Cloud integration profile.

Authentication type

Type of authentication to access Adobe
Cloud APIs.
◦ OAuth 2.0
◦ JWT

Note:
◦ For the existing Adobe Cloud
integration profiles before upgrade to
Software Asset Management - SaaS
License Management 13.1.0 version or
later, this field is automatically set to
JWT.
◦ For all the new Adobe Cloud
integration profiles, this field is
automatically set to OAuth 2.0.
Profile type

Type of integration profile. This field is
automatically set to Adobe subscription.

3. In the Process configuration section, view the required user roles or API permissions to
minimize security risks and optimize SaaS licenses.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
Note:
The Download subscriptions check box is selected by default and you can't clear it.
For more information about the required roles and scopes, see Minimal user permissions
table.
4. Select Submit.
The Connection & Credential field appears on the form and is automatically set to
sn_sam_saas_int.Adobe_OAuth.
5. Select the preview icon ( ) beside the Connection & Credential field to open the Connection
& Credential Aliases record.
6. Select the Create New Connection & Credential related link.
7. On the form, fill in the fields.
Create a Connection and Credential form
Field

Description

Connection Name

Name of the Adobe Cloud connection.

Connection URL (Instance URL)

URL for the connection. This field is
automatically set to https://<Instance
Name>.adobelogin.com. For more
information about the steps to get the URL,
see Step 9 in Create a project and add APIs
using OAuth.

OAuth Client ID

Client ID that you generated while creating an
Adobe Cloud OAuth credential.

OAuth Client Secret

Client Secret that you retrieved while creating
an Adobe Cloud OAuth credential.

OAuth Redirect URL

https://<instance_name>/
oauth_redirect.do, where the instance
name is the name of your ServiceNow
instance.

Organization ID

Adobe Cloud Organization ID that you
find while creating an Adobe Cloud OAuth
credential.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.

Result

Adobe subscription data is pulled into Software Asset Management when the SAM - Import
Adobe User Subscriptions scheduled job runs. When the subscription data is pulled,
the SAM - Optimize Adobe Subscriptions scheduled job runs monthly to optimize
the Adobe Creative Cloud subscriptions. If complete subscription data isn't getting pulled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
accurately into the Software Asset Management application, see Determine and verify Adobe
subscription information in your ServiceNow instance.
This job completion results in the following:
• An optimization candidate that consolidates three (configurable) or more Single App or
individual product subscriptions and recommends Adobe Creative Cloud All Apps when it isn't
installed.
• A reclamation candidate that reclaims Single App or individual product subscriptions with dual
licenses when Adobe Creative Cloud All Apps is installed.
Let's say, a user is subscribed to Adobe Creative Cloud All Apps and also consumes licenses
for Single App or individual products such as Adobe Acrobat and Adobe Photoshop. In this
dual license scenario, the Software Asset Management application recommends reclaiming
the licenses for Single App or individual product subscriptions.
• A reclamation candidate that reclaims three (configurable) or more Single App or individual
product subscriptions that are actively used and an optimization candidate that recommends
assigning Adobe Creative Cloud All Apps.
Let's say, a user is subscribed to Adobe Acrobat, Adobe Illustrator, and Adobe Photoshop
and uses all these products actively. In this scenario, the Software Asset Management
application recommends reclaiming the licenses for these individual product subscriptions
and recommends using Adobe Creative Cloud All Apps.
• A reclamation candidate that reclaims Adobe Creative Cloud All Apps when less than three
(configurable) individual products are actively used and an optimization candidate that
recommends assigning Single App or individual product subscriptions that are actively used.
Let's say, a user is subscribed to Adobe Creative Cloud All Apps but is using less than three
individual Creative Cloud products actively. In this scenario, the Software Asset Management
application reclaims the Adobe Creative Cloud All Apps license and recommends assigning
these individual product subscriptions that are actively used.

What to do next

If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
View the subscription data by navigating to All > SaaS License > All User Subscriptions. You can
check the status of the SAM - Import Adobe User Subscriptions job by navigating
to All > Software Asset > Administration > Job Results.
You can also view information about your Adobe subscriptions, compliance, and costs on the
Office 365 & Adobe Cloud dashboard in Software Asset Management classic.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
Related topics
Publisher optimizations for Adobe
Determine and verify Adobe subscription information in your ServiceNow instance
Determine the exact software subscription information to be pulled from the Adobe admin center
and verify if the complete subscription information is pulled accurately to ServiceNow instance.

Before you begin

Role required: sam_admin

Procedure
1. Navigate to License operations > User subscription > Direct integration profiles.
2. Filter with the Adobe Cloud integration profile you created to determine the exact software
subscription information to be pulled from Adobe admin center to ServiceNow instance.
This subscription information includes all subscriptions available on the Adobe admin center.
3. Verify with the Adobe admin if complete subscription data isn't getting pulled accurately into
Software Asset Management.
Trouble?
After the validation is successful, look for system logs for any possible errors:
a. Enable debug logs and re-run the job: This action helps in capturing detailed information
about the process. For more information, see Configure outbound logging .
b. Check outbound logs for API calls and responses: If the API response isn't successful,
check Adobe documentation
for the specific error.
c. If the APIs were successful, review system logs: Look for any technical failures or issues
within the code itself.
Office 365 & Adobe Cloud dashboard in Software Asset Management classic
View compliance analysis results related to Microsoft Office 365 and Adobe Cloud License
Management in Software Asset Management classic.

Note: The Office 365 & Adobe Cloud dashboard is no longer available for new Zurich
users who have activated the Software Asset Management Professional (com.snc.samp)
plugin or upgraded to Zurich without activating the Software Asset Management
Professional (com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
Access the dashboard by navigating to All > Software Asset > Office 365 & Adobe Cloud.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
You can filter by Subscription Software Models or Subscription Publisher using filter lists.

Note: The Subscription Publisher filter list always includes Microsoft and Adobe even
when only one subscription publisher pack is active.
The dashboard is updated whenever a new reconciliation result is available. You can save charts
in PNG or JPG format.

Adobe
You can manage Adobe subscription information with Adobe I/O authentication integration.

Note: The add-on Adobe publisher pack (com.sn_samp_adobe) plugin must be installed
to view Adobe subscription reporting.
Only Adobe software products that are recognized as subscription software are shown.
Adobe integration must be set up to view compliance information.
• List of Active Subscriptions with no Active Adobe Software installs
If a user has an active subscription but does not have any respective Adobe suite of products
deployed.
User Name | Email ID | Subscription Name | List of devices assigned to users.
• Optimization of Adobe install using SCCM metering data
If user is underutilizing Adobe subscriptions
User Name | Email ID | Subscription Name | Subscription Cost | List of devices assigned to
users | List of Adobe suite of products | Last Access Time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
SaaS subscription reports
Office 365 and Adobe Cloud

Publisher overview for Adobe Systems in the Software Asset Workspace
View license usage information related to Adobe in the publisher overview for Adobe Systems in
the Software Asset Workspace.
From the Software Asset Workspace, access the Adobe Systems publisher overview by
navigating to License usage > Publishers and then selecting Adobe Systems from the list of
available software publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the Adobe
Systems publisher overview.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
Adobe Systems Summary
Report

Description

True-up
cost

Cost to be compliant based on the average price of rights in your Adobe software
entitlements.

Potential
savings

Potential cost savings for your Adobe licenses.

Actual
savings

Actual cost savings for your Adobe licenses.

Unlicensed Summary of your unlicensed entities.
entities
This summary includes the following information:
• Unlicensed installs: Total number of unlicensed Adobe software installations.
Select the number to view the complete list of unlicensed Adobe software
installations.
• Installs requiring action: Total number of Adobe software installations that you
must take action on. Select the number to view the complete list of these Adobe
software installations.
• Unlicensed subscriptions: Total number of unlicensed Adobe subscriptions.
Select the number to view the complete list of unlicensed Adobe subscriptions.
• Unlicensed client access: Total number of unlicensed Adobe client access
records. Select the number to view the complete list of unlicensed Adobe client
access records.
Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of Adobe software installations that were ignored
during reclamation. Select the number to view the complete list of ignored
Adobe software installations.
• Removal candidates: Total number of Adobe removal candidates. Select the
number to view the list of all software removal candidates.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Software Asset Management publisher pack for Citrix
Use the Citrix publisher pack for the optimization and reconciliation of your Citrix products. You
can track licensing positions for your Citrix users and devices so that you can determine your
license compliance.
To use the Citrix publisher pack, activate the Software Asset Management Professional for Citrix
plugin (com.sn_samp_citrix). For details, see Request Software Asset Management.
The Citrix publisher pack supports Virtual Applications products (formerly XenApp) and Virtual
Desktop products (formerly XenDesktop). Using this publisher pack, you can manage licenses
and determine the license compliance for your Citrix products. You can gain visibility into the
third-party applications that are delivered through your virtual applications and desktops. You
can also gain visibility into the users that may potentially access those applications.
®

Use the ServiceNow Discovery application to collect data from Citrix. The license consumption
data for your Citrix products is collected from the Citrix License Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
Discovery uses OData APIs to identify the third-party applications that are delivered through your
Citrix farm from the Citrix Delivery Controller. Use this information to create software installation
records and track license usage for these applications. To identify these applications, admins
must create a Discovery schedule
to run on the Citrix discovery pattern. See Citrix License
Server and Delivery Controller discovery
for more details on the Citrix discovery pattern and
tables.

Citrix licensing models
The Citrix publisher pack supports the following Citrix licensing models:
Concurrent licensing model
Concurrent licenses are used only during active sessions. When a user begins
a session, the application or desktop checks out a license for the device that is
running the session. When the session disconnects or ends, the application or
desktop checks the license back in to make the license available to other users and
devices. Concurrent licenses enable either one connection to a virtual desktop or
unlimited applications for any user or device. License consumption is based on the
number of licenses being used.
User/Device licensing model
User/Device licensing model: User/Device licenses are assigned to either a user
or shared device. If the Citrix License Server assigns a license to a user, that user
can make unlimited connections from unlimited devices. If the Citrix License Server
assigns a license to a device, unlimited users can make unlimited connections from
that device. License consumption is based on the user or device using the license.
The architecture for Citrix licenses is shown in the following figure:

Licensing for third-party applications that are delivered through Citrix virtualization technologies
is based on potential access. Any user or device can consume a license as long as they have
the potential to access an application or desktop deployed in a virtual Citrix environment. You
can control access to these applications and desktops by using Delivery Groups and Application
Groups:
Delivery Groups
Delivery Groups are collections of devices on which you can use Citrix applications
or desktops. Each Delivery Group specifies the users that have access to those
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
devices. In addition, Delivery Groups specify the applications or desktops that are
available to those users.
Application Groups
Application Groups are collections of applications that are shared across Delivery
Groups or subsets of Delivery Group users. Each Application Group specifies the
users or Active Directory (AD) groups that have access to those applications.
Refer to the Citrix product documentation
for more information on Citrix deployment guidelines
and recommendations. Use this information to determine whether you should map your users
at the Delivery Group level or at the Application Group level. If you map users at both levels,
Software Asset Management considers mappings at only the Application Group level.
You can view your Citrix license usage data from the Software Publisher Analytics dashboard for
Citrix. Use this data to optimize your license position by reclaiming any unused or unauthorized
licenses.
Create entitlements for Citrix
Software entitlements enable you to define license details that are matched to software models.
You can add an entitlement individually or import a list from a spreadsheet.

Before you begin

Role required: sam_user or sam_admin. The sam_admin role is required to import entitlements.
Important: You can create and import entitlements in both the Software Asset
Management classic application and the Software Asset Workspace. The following steps
provide details on how to create entitlements in the Software Asset Management classic
application. For details on how to create entitlements in the Software Asset Workspace, see
Create entitlements in workspace. For details on how to import entitlements in the Software
Asset Workspace, see Import bulk entitlements in workspace.
Before you can create a software entitlement, create a software model.

About this task

Manage available software and tie software installations (software being used) with entitlements
(software owned) using software models. Create software models for all software to be
monitored.

Note: Users with the model_manager role can navigate to Product Catalog > Product
Model > Software Models but can’t administer all aspects of software models.

Procedure
1. Navigate to All > Asset > Portfolios > Software Entitlement and select New.
For a detailed description of the fields related to all entitlements, see Create entitlements in
Software Asset Management classic.
Software Entitlement form
Field

Description

License License metric for the license group that the software license is counted against
Metric when reconciliation is run. For detailed of the license metrics, see Software license
metrics.
2. To set upgrade or downgrade entitlements, select the new software entitlement record from
the Software Entitlements list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
For a detailed description on how to complete additional configurations for software
entitlements, see Create entitlements in Software Asset Management classic.
3. Select Submit.
Your entitlement is added to the software entitlements list.

What to do next

Run software reconciliation on your licenses.
Software Publisher Analytics dashboard for Citrix in Software Asset Management classic
View compliance analysis results for Citrix on the Software Publisher Analytics dashboard in the
Software Asset Management classic application.
Access the Software Publisher Analytics dashboard by navigating to All > Software Asset >
Publisher Overview.

Note: The add-on Citrix publisher pack (com.sn_samp_citrix) plugin must be installed to
view the Citrix dashboard tab.
A discovery process is required for Citrix data to be collected. For ServiceNow Discovery,
a user with the admin role must create a Discovery schedule
to run on the Citrix Delivery
Controller for communication with the Citrix License Server.
The dashboard is updated whenever a new reconciliation result is available. You can save charts
in PNG or JPG format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
Citrix tab
Report

Source list

Description

True-up Cost

Product Results

Cost to be compliant based
on the average prices for
entitlements for the rights.

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.
Select the report to view
the results in the License
Workbench.

Over-Licensed Amount

Product Results

Cost of licenses owned but
not being used.

User Access to Products in
Citrix Farm

Software Installations

Number of users with access
to the Citrix farms.

Citrix Software Lifecycle
Report

Software Lifecycle Report

Number of products in each
software lifecycle phase,
including End of Extended
Support, End of Life, and End
of Support.

User/Device Rights vs Usage
Software Installations
Software Installs in Citrix Farm
Concurrent License
Consumption Trend

License Consumption History

Number of User/Device rights
owned versus the number of
rights being consumed.
License consumption trends
for your Citrix software
products. Each data point
represents the maximum inuse license count per day.
Select a data point to
view additional license
consumption data for a
specific Citrix software
product.

Publisher overview for Citrix Systems in the Software Asset Workspace
View license usage information related to Citrix in the publisher overview for Citrix Systems in the
Software Asset Workspace.
From the Software Asset Workspace, access the Citrix Systems publisher overview by navigating
to License usage > Publishers and then selecting Citrix Systems from the list of available
software publishers.
Results are updated whenever a new reconciliation result is available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
You can view a summary of your license usage information in the Summary section of the Citrix
Systems publisher overview.
Citrix Systems Summary
Report

Description

True-up cost

Cost to be compliant based on the average price of rights in your Citrix
software entitlements.

Potential
savings

Potential cost savings for your Citrix licenses.

Actual savings Actual cost savings for your Citrix licenses.
Unlicensed
entities

Summary of your unlicensed entities.
This summary includes the following information:
• Unlicensed installs: Total number of unlicensed Citrix software installations.
Select the number to view the complete list of unlicensed Citrix software
installations.
• Installs requiring action: Total number of Citrix software installations that
you must take action on. Select the number to view the complete list of
these Citrix software installations.
• Unlicensed client access: Total number of unlicensed Citrix client access
records. Select the number to view the complete list of unlicensed Citrix
client access records.

Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of Citrix software installations that were
ignored during reclamation. Select the number to view the complete list of
ignored Citrix software installations.
• Removal candidates: Total number of Citrix removal candidates. Select the
number to view the list of all software removal candidates.

User access
to products in
citrix farm

Number of users that have access to specific software products within your
Citrix farm. Select a bar to view the complete list of users that have access to
the specified software product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
Citrix Systems Summary (continued)
Report

Description

Concurrent
License
Consumption

License consumption trends for your Citrix software products. Each data point
represents the maximum in-use license count per day.
Select a data point to view additional license consumption data for a specific
Citrix software product.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Software Asset Management publisher pack for IBM
Use the Software Asset Management publisher pack for IBM to track and optimize licensing for
your IBM software products. You can also use the publisher pack to track and optimize licensing
for the Red Hat Enterprise Linux Server and Red Hat Enterprise Linux for Virtual Datacenters
products.
To use the IBM publisher pack, activate the Software Asset Management Professional for IBM
(com.sn_samp_ibm) plugin.
The IBM publisher pack supports the following license metrics:
• Authorized User
• Authorized User Value Unit
• Employee User Value Unit
• External User Value Unit
• Per Device
• Per Named User
• Per Processor
• Per User
• Processor Value Unit (PVU)
• Resource Value Unit (RVU)
• Virtual Processor Core (VPC)

Important: The PVU, RVU, and VPC license metrics are supported only if you integrate
the IBM publisher pack with the IBM License Metric Tool (ILMT), BigFix Inventory, or a
Software Asset Management provider that is authorized to participate in the IBM Client
Value Acceleration (CVA) Program. For more information on ILMT and BigFix Inventory
integrations, see IBM License Metric Tool (ILMT) and BigFix Inventory integrations. For more
information on Authorized SAM Provider (ASP) integrations, see Authorized SAM Provider
(ASP) integrations for IBM.
For more information on the supported IBM license metrics, see Software license metrics.

Important: The IBM publisher pack is available as part of the Software Asset
Management Professional (com.snc.samp) plugin. The publisher pack includes all
capabilities that are required for tracking and managing both full capacity and sub-capacity
PVU and RVU licenses for your IBM products. It does not require the legacy IBM PVU
Process Pack to track and manage IBM PVU licenses. See iBM PVU Process Pack
for more
information on the legacy process pack.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


<!-- page 342 -->
When you run a discovery using a discovery tool such as the ServiceNow Discovery application,
the discovery tool locates the IBM software installations in your environment and then imports
the associated data into your ServiceNow instance. The Software Asset Management application
compares this data against your IBM software entitlements to automatically reconcile your IBM
software products, including products in complex server licensing scenarios.

Important: You must use different discovery tools based on the license metric that you
are using for reconciliation, and if applicable, the type of IBM integration that you are using
with the publisher pack:
PVU and RVU license metrics
To reconcile your IBM software products using the PVU or RVU license metrics,
you must use one of the following discovery tools:
• If you are integrating with the ILMT or BigFix Inventory, you must connect to
these discovery tools using either version 1 or version 2 of the integration
APIs.
• If you are integrating with a Software Asset Management provider that
is authorized to participate in the IBM CVA Program, you must use the
ServiceNow Discovery application in conjunction with the IBM License
Compliance for Software Asset Management application.
VPC license metric
To reconcile your IBM software products using the VPC license metric, you
must use one of the following discovery tools:
• If you are integrating with the ILMT or BigFix Inventory, you must connect to
these discovery tools using version 2 of the integration APIs.
• If you are integrating with a Software Asset Management provider that
is authorized to participate in the IBM CVA Program, you must use the
ServiceNow Discovery application in conjunction with the IBM License
Compliance for Software Asset Management application.
All other supported license metrics
To reconcile your IBM software products using any other supported license
metric, including user-based license metrics like Authorized User and External
User Value Unit, you can use any other discovery tool.
Supported IBM license types
The Software Asset Management publisher pack for IBM adds license metrics for various IBM
license types.
IBM processor value unit (PVU) and resource value unit (RVU) licenses
If you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Client Value Acceleration
(CVA) Program, you can track and manage IBM PVU and RVU licenses. Alternatively, you can
track and manage these licenses when you integrate with the IBM License Metric Tool (ILMT) or
BigFix Inventory using version 1 or 2 of the integration APIs.
With these integrations, the publisher pack adds the Processor Value Unit (PVU) and Resource
Value Unit (RVU) license metrics for IBM so that you can calculate licensing for these license
types. For more details on Authorized SAM Provider (ASP) integrations, see Authorized SAM
Provider (ASP) integrations for IBM. For more details on ILMT and BigFix Inventory integrations,
see IBM License Metric Tool (ILMT) and BigFix Inventory integrations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
Note: IBM PVU and RVU licensing is supported in both physical and virtualized
environments.

Processor value unit (PVU) licensing
A processor value unit (PVU) is a unit of measure that enables you to determine the licensing
requirements for an IBM software product based on the processor technology that is used in
your physical hardware environment. Each processor technology is assigned a PVUs per Core
value based on the processor vendor, processor name, and model number. You can determine
the number of rights that are required for a PVU license by multiplying the appropriate PVUs per
Core value by the number of activated processor cores in the physical hardware environment
that is available to or managed by your IBM software product.
The IBM publisher pack supports both full capacity and sub-capacity PVU licensing. If you are
using a full capacity PVU license, you must account for all activated processor cores in the
physical hardware environment that is available to or managed by the IBM software product.
If you are using a sub-capacity PVU license, you must account for only the specific activated
processor cores that are available to or managed by the IBM software product, as defined in
Virtualization Capacity License Counting Rules .
You can gain visibility into how your PVU licenses are applied to your devices by using the
Usage Type field in the license workbench. Use this information to determine whether your PVU
licenses are applied to the full capacity or sub-capacity of each device. Depending on the type of
IBM integration that you are using, specify how a PVU license is applied to a device using one of
the following options:
• If you are integrating the IBM publisher pack with the IBM License Metric Tool (ILMT) or BigFix
Inventory, navigate to Integration - ILMT/BigFix Inventory > Import Set Data > IBM License
Metric Peak Usage to modify the value of the corresponding Usage Type field in the IBM
Peak Consumption [samp_ilmt_sw_install] table. By default, the Usage Type field for devices
on the IBM Peak Consumption [samp_ilmt_sw_install] table is automatically set to Subcapacity. However, the Usage Type field for devices with allocations in your full capacity PVU
entitlements is automatically set to Full capacity instead.
For more details on ILMT and BigFix Inventory, see IBM License Metric Tool (ILMT) and BigFix
Inventory integrations.
• If you are integrating the IBM publisher pack with an Authorized SAM Provider (ASP),
navigate to Workspaces > Software Asset Workspace. When the Software Asset Workspace
launches, open the License operations view. From the left navigation menu of the License
operations view, navigate to IBM ASP Integration > Device Settings to modify the value of the
corresponding Usage Type field. By default, the Usage Type field is automatically set to Subcapacity. However, the Usage Type field for devices with allocations in your full capacity PVU
entitlements is automatically set to Full capacity instead.
For more details on the available device settings, see Verify the meta data for your IBM hosts.
For more details on ASPs, see Authorized SAM Provider (ASP) integrations for IBM.
Refer to Processor Value Units (PVU)
for more information on IBM PVU licensing, including the
complete list of supported processor technologies and corresponding PVUs per Core values.

Resource value unit (RVU) licensing
A resource value unit (RVU) is a unit of measure that enables you to determine the licensing
requirements for an IBM software product based on the number of activated processor cores
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
that are available to or managed by that product. The number of activated processor cores
corresponds directly with an RVU tier number and factor value.
RVU tiers and factors
Number of Activated Processor Cores

Tier

Factor

0 to 2,500

1

1.00

2,501 to 10,000

2

0.80

10,001 to 50,000

3

0.60

50,001 to 150,000

4

0.40

150,001 and above

5

0.20

You can determine the number of rights that are required for an RVU license by using a step
function based on these RVU tiers. First, you must divide the total number of activated processor
cores into tiers based on the RVU tiers and factors table. Since RVU licensing is calculated at
the product level and not the individual device level, you must account for all devices that the
product is installed on when determining the total number of activated processor cores that
must be licensed. Then, you must multiply the number of activated processor cores within each
tier by the corresponding factor values. Finally, you must add the resulting numbers together to
determine the total number of rights that are required for the RVU license.

Important: If you do not have enough rights to license all activated processor cores
across all devices, none of the devices are licensed and the product is marked as Not
Compliant.
For example, a product has access to a total of 150,000 activated processor cores across 100
devices. The total number of rights that are required for the RVU license is 72,500, based on the
following calculations:

Tier

Number of Activated
Processor Cores within the
Tier

Factor Number of Rights Required

1

2,500

1.00

2,500 x 1.00 = 2,500

7,500

0.80

7,500 x 0.80 = 6,000

40,000

0.60

40,000 x 0.60 = 24,000

100,000

0.40

100,000 x 0.40 = 40,000

(0 to 2,500 activated
processor cores)
2
(2,501 to 10,000 activated
processor cores)
3
(10,001 to 50,000 activated
processor cores)
4
(50,001 to 150,000
activated processor cores)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
Tier

Number of Activated
Processor Cores within the
Tier

Factor Number of Rights Required

n/a

150,000 total

n/a

2,500 + 6,000 + 24,000 +
40,000 = 72,500 total

Note: The number of rights that are consumed for RVU licenses is reported differently
from the number of rights that are consumed for PVU licenses. For PVU licenses, this
number is reported at the individual device level. For RVU licenses, this number is reported
at the product level.
Refer to Resource value unit (RVU MAPC)

for more information on IBM RVU tiers.

The IBM publisher pack supports both full capacity and sub-capacity RVU licensing. If you are
using a full capacity RVU license, you must account for all activated processor cores in the
physical hardware environment that is available to or managed by the IBM software product. If
you are using a sub-capacity RVU license, which is available only in virtualized environments, you
must account for only the activated processor cores that are used by the virtual machines (VMs)
on which the IBM software product is installed.
You can gain visibility into how your RVU licenses are applied to your devices by using the
Usage Type field in the license workbench. Use this information to determine whether your RVU
licenses are applied to the full capacity or sub-capacity of each device. Depending on the type of
IBM integration that you are using, specify how an RVU license is applied to a device using one of
the following options:
• If you are integrating the IBM publisher pack with the IBM License Metric Tool (ILMT) or BigFix
Inventory, navigate to Integration - ILMT/BigFix Inventory > Import Set Data > IBM License
Metric Peak Usage to modify the value of the corresponding Usage Type field in the IBM Peak
Consumption [samp_ilmt_sw_install] table. By default, the Usage Type field for devices on the
IBM Peak Consumption [samp_ilmt_sw_install] table is automatically set to Sub-capacity.
For more details on ILMT and BigFix Inventory, see IBM License Metric Tool (ILMT) and BigFix
Inventory integrations.
• If you are integrating the IBM publisher pack with an Authorized SAM Provider (ASP), such as
Anglepoint, navigate to Workspaces > Software Asset Workspace. When the Software Asset
Workspace launches, open the License operations view. From the left navigation menu of the
License operations view, navigate to IBM ASP Integration > Device settings to modify the
value of the corresponding Usage Type field. By default, the Usage Type field is automatically
set to Sub-capacity.
For more details on the available device settings, see Verify the meta data for your IBM hosts.
For more details on ASPs, see Authorized SAM Provider (ASP) integrations for IBM.
IBM user-based licenses
You can use the Software Asset Management publisher pack for IBM to track and manage your
IBM user-based licenses, including authorized user licenses and user value unit (UVU)-based
licenses.
Supported UVU-based licenses include authorized UVU, employee UVU, and external UVU. The
publisher pack adds license metrics that are specific to IBM so that you can calculate licensing
for these license types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
IBM user-based licensing enables you to license the users who require access to your IBM
software products. You can track and optimize the compliance of your IBM user-based licenses
by reconciling the associated IBM software products through client access records. With a client
access record, you can specify the total number of users who are granted access to a particular
version of an IBM software product. For more granular control, you can also identify the specific
users who are granted access to that product. The Software Asset Management application can
then compare this information against the software rights and allocations that are defined in the
corresponding software entitlements to determine if the associated user-based licenses are
compliant.
For more information on client access records in the Software Asset Workspace, see Create a
software client access record in workspace. For more information on client access records in
the Software Asset Management classic application, see Add a software client access record in
Software Asset Management classic.

Authorized user licensing
Authorized user licensing enables you to license each unique user who requires access to an
IBM software product.
With this licensing type, you can install a given IBM software product on an unlimited number
of configuration items (CIs), such as servers and computers. Each user can then access an
unlimited number of installations for that software product on any of the CIs that the software
product is installed on.

Authorized user value unit (AUVU) licensing
Authorized user value unit (AUVU) licensing enables you to license the total number of unique
users who require access to an IBM software product.
With this licensing type, you can install a given IBM software product on an unlimited number
of configuration items (CIs), such as servers and computers. Each user can then access an
unlimited number of installations for that software product on any of the CIs that the software
product is installed on.
With AUVU licensing, the number of users who require access to an IBM software product
corresponds directly with an AUVU tier number and factor value.
AUVU tiers and factors
Number of Users

Tier

Factor

1 to 20

1

1.00

21 to 50

2

0.83

51 or more

3

0.80

You can determine the number of rights that are required for an AUVU license by using a step
function based on these AUVU tiers. First, divide the total number of users into tiers based on
the AUVU tiers and factors table. Then, multiply the number of users within each tier by the
corresponding factor values. Finally, add the resulting numbers together to determine the total
number of rights that are required for the AUVU license.

Important: If you do not have enough rights to license all users, none of the users are
licensed and the product is marked as Not Compliant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
For example, a company wants to grant 150 employees and contractors access to an IBM
software product so that they can collaborate on an upcoming project. The total number of rights
that are required for the corresponding AUVU license is 125, based on the following calculations:

Tier

Number of Users within
the Tier

Factor Number of Rights Required

1

20

1.00

20 x 1.00 = 20

30

0.83

30 x 0.83 = 24.9

100

0.80

100 x 0.8 = 80

150 total

—

20 + 24.9 + 80 = 124.9 total (rounded up to
125 total)

(1 to 20 users)
2
(21 to 50
users)
3
(51 or more
users)
—

Employee user value unit (EUVU) licensing
Employee user value unit (EUVU) licensing enables you to license the total number of users
within your organization who require access to an IBM software product. These users can include
both employees and contractors.
With EUVU licensing, the number of users who require access to an IBM software product
corresponds directly with an EUVU tier number and factor value.
EUVU tiers and factors
Number of Users

Tier

Factor

1000 to 2,500

1

1.000

2,501 to 5,000

2

0.800

5,001 to 10,000

3

0.700

10,001 to 30,000

4

0.650

30,001 to 50,000

5

0.550

50,001 to 100,000

6

0.500

100,001 to 300,000

7

0.465

300,001 to 500,000

8

0.400

500,001 to 1,000,000

9

0.360

1,000,001 to 100,000,000

10

0.320

You can determine the number of rights that are required for an EUVU license by using a step
function based on these EUVU tiers. First, divide the total number of users into tiers based on
the EUVU tiers and factors table. Then, multiply the number of users within each tier by the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
corresponding factor values. Finally, add the resulting numbers together to determine the total
number of rights that are required for the EUVU license.

Important: If you do not have enough rights to license all users, none of the users are
licensed and the product is marked as Not Compliant.
For example, a company wants to grant 11,000 employees access to an IBM software product.
The total number of rights that are required for the corresponding EUVU license is 8,650, based
on the following calculations:

Tier

Number of Users within the
Tier

Factor Number of Rights Required

1

2,500

1.000 2,500 x 1.000 = 2,500

2,500

0.800 2,500 x 0.800 = 2,000

5,000

0.700 5,000 x 0.700 = 3,500

1,000

0.650 1,000 x 0.650 = 650

11,000 total

—

(1,000 to 2,500
users)
2
(2,501 to 5,000
users)
3
(5,001 to 10,000
users)
4
(10,001 to 30,000
users)
—

2,500 + 2,000 + 3,500 + 650 = 8,650
total

External user value unit (XUVU) licensing
External user value unit (XUVU) licensing enables you to license the total number of users
outside your organization who require access to an IBM software product. These users can
include third-party partners, suppliers, and contractors.
With XUVU licensing, the number of users who require access to an IBM software product
corresponds directly with an XUVU tier number and factor value.
XUVU tiers and factors
Number of Users

Tier

Factor

1000 to 10,000

1

1.00000

10,001 to 50,000

2

0.87500

50,001 to 100,000

3

0.60000

100,001 to 500,000

4

0.43750

500,001 to 1,000,000

5

0.30000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
XUVU tiers and factors (continued)
Number of Users

Tier

Factor

1,000,001 to 25,000,000

6

0.24375

25,000,001 to 50,000,000

7

0.15000

50,000,001 to 250,000,000

8

0.13750

250,000,001 to 500,000,000

9

0.05000

500,000,001 to 100,000,000,000

10

0.05000

You can determine the number of rights that are required for an XUVU license by using a step
function based on these XUVU tiers. First, divide the total number of users into tiers based on
the XUVU tiers and factors table. Then, multiply the number of users within each tier by the
corresponding factor values. Finally, add the resulting numbers together to determine the total
number of rights that are required for the XUVU license.

Important: If you do not have enough rights to license all users, none of the users are
licensed and the product is marked as Not Compliant.
For example, a company wants to grant 15,000 third-party partners access to an IBM software
product. The total number of rights that are required for the corresponding XUVU license is
14,375, based on the following calculations:

Tier

Number of Users within the
Tier

Factor

1

10,000

1.00000 10,000 x 1.00000 = 10,000

5,000

0.87500 5,000 x 0.87500 = 4,375

15,000 total

—

Number of Rights Required

(1,000 to 10,000 users)
2
(10,001 to 50,000
users)
—

10,000 + 4,357 = 14,375
total

IBM virtual processor core (VPC) licenses
If you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Client Value Acceleration
(CVA) Program, you can track and manage IBM VPC licenses. Alternatively, you can track and
manage these licenses when you integrate with the IBM License Metric Tool (ILMT) or BigFix
Inventory using version 2 of the integration APIs.
With these integrations, the publisher pack adds the Virtual Processor Core (VPC) license metric
for IBM so that you can calculate licensing for this license type. For more details on Authorized
SAM Provider (ASP) integrations, see Authorized SAM Provider (ASP) integrations for IBM. For
more details on ILMT and BigFix Inventory integrations, see IBM License Metric Tool (ILMT) and
BigFix Inventory integrations.
A virtual processor core (VPC) is a unit of measure that enables you to determine the licensing
requirements for an IBM software product based on the number of cores that are available to
or managed by that product. If you are licensing a virtual machine (VM), VPC is based on the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
number of virtual cores that are assigned to the VM. If you are licensing a physical host that is
not partitioned for VMs, VPC is based on the number of processor cores on the host. Each VPC
license requires one right for every core that is available to or managed by the associated IBM
software product.
If you are integrating the IBM publisher pack with an ASP, the publisher pack supports both full
capacity and sub-capacity VPC licensing. If you are integrating with ILMT or BigFix Inventory,
the publisher pack supports only sub-capacity VPC licensing. With a full capacity VPC license,
you must account for all processor cores on the physical host that is available to or managed
by the IBM software product. With a sub-capacity VPC license, which is available only in virtual
environments, you must account for only the virtual cores that are assigned to the VMs on which
the IBM software product is installed and running.
You can gain visibility into how your VPC licenses are applied to your devices by using the
Usage Type field in the license workbench. Use this information to determine whether your VPC
licenses are applied to the full capacity or sub-capacity of each device. If you are integrating with
an ASP, you can specify how a VPC license is applied to a device by navigating to Workspaces >
Software Asset Workspace. When the Software Asset Workspace launches, open the License
operations view. From the left navigation menu of the License operations view, navigate to IBM
ASP Integration > Device Settings to modify the value of the corresponding Usage Type field. By
default, the Usage Type field is automatically set to Sub-capacity.
For more details on the available device settings, see Verify the meta data for your IBM hosts.
IBM License Metric Tool (ILMT) and BigFix Inventory integrations
You can use an IBM License Metric Tool (ILMT) or BigFix Inventory integration to create a
connection between your IBM servers and the ServiceNow AI Platform. Use this connection to
import data into your ServiceNow instance so that you can track and optimize licensing for your
IBM software products.
You can integrate with ILMT or BigFix Inventory using either version 1 or version 2 of the ILMT and
BigFix Inventory integration APIs. The Software Asset Management application uses these APIs
to retrieve data, such as software installation data and peak usage data, from the ILMT or BigFix
Inventory. For more information on integrating with ILMT or BigFix Inventory using version 1 of the
APIs, see Integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using v1 APIs.
For more information on integrating with ILMT or BigFix Inventory using version 2 of the APIs, see
Integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using v2 APIs.

Important: Version 1 of the ILMT and BigFix Inventory integration APIs have been
deprecated by IBM. However, the Software Asset Management application continues to
support integrations that are using this version of the APIs. If you are setting up an ILMT or
BigFix Inventory integration for the first time, use version 2 of the APIs instead. For more
information on the deprecation of these APIs, see Deprecated REST APIs .
Integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using v2 APIs
You can use version 2 of the IBM License Metric Tool (ILMT) and BigFix Inventory integration APIs
to create a connection between your IBM servers and the ServiceNow AI Platform.
This connection enables you to import usage data into your ServiceNow instance so that you can
track and optimize full capacity and sub-capacity processor value unit (PVU) and resource value
unit (RVU) licensing as well as sub-capacity virtual processor core (VPC) licensing for your IBM
software products.
See REST API resources and HTTP methods
Inventory integration APIs.

for more information on the ILMT and BigFix

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
The ILMT and BigFix Inventory integration enables you to create connections between one or
more IBM servers and the ServiceNow AI Platform using HTTP or HTTPS. When you initiate the
integration, you receive an IBM Server connection alias that you can use to set up your IBM
server connections. If a connection is successful, the Software Asset Management application
retrieves peak usage data within the aggregated period that you defined in ILMT or BigFix
Inventory.

Prerequisites
To track your IBM full capacity and sub-capacity PVU, RVU, and VPC licenses using this
integration, you must complete the following prerequisites:
• Install, set up, and run ILMT or BigFix Inventory on a physical host or virtual machine (VM).

Important: When you are setting up ILMT, ensure that all required configuration item
(CI) data, including serial numbers, names, and IP addresses, is configured correctly so
that your ServiceNow instance can accurately create corresponding CI records in the
Configuration Management Database (CMDB). Refer to KB0691430
for more details.
• Install ILMT version 9.2.24 or later.

Note: If you are using ILMT version 9.2.23 or earlier, you can import usage data only
against your discovered IBM software products and not against the hosts that are running
those products.
• Configure your IBM ILMT agents to scan your physical hosts or VMs in compliance with IBM
usage measurement guidelines.

Note: Refer to Measuring License Use

for more information on IBM usage

measurement guidelines.
• Enable ILMT or BigFix Inventory to discover the configurations of both physical hosts and VMs
as well as the relationships between them.
• Classify and bundle IBM components into IBM products through ILMT or BigFix Inventory.
• Request and install the IBM License Compliance for Software Asset Management application
®
from the ServiceNow Store. See Request the IBM License Compliance for Software Asset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
Management application for IBM License Metric Tool (ILMT) and BigFix Inventory integrations
for detailed instructions.
• Set the Connect to ILMT using (sn_samp_ibm_lic.ilmt_api_version) Software
Asset Management property to v2 API's. For more details on this property, see Software Asset
Management properties.
Request the IBM License Compliance for Software Asset Management application for IBM
License Metric Tool (ILMT) and BigFix Inventory integrations
If you are using version 2 of the IBM License Metric Tool (ILMT) and BigFix Inventory integration
APIs to integrate with ILMT or BigFix Inventory, request the IBM License Compliance for Software
®
Asset Management application from the ServiceNow Store. Use the integration to track and
manage your IBM licenses.

Before you begin

Role required: admin

Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter IBM License Compliance for Software Asset
Management and then select Search.
4. Select the result called IBM License Compliance for Software Asset Management.
5. On the IBM License Compliance for Software Asset Management page, select Request Install.
The ServiceNow Request for App Installation - IBM License Compliance for Software Asset
Management dialog box opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - IBM License Compliance for Software Asset
Management dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

7. Select Request.
8. Select Close.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
Transform maps for IBM License Metric Tool (ILMT) and BigFix Inventory integration v2 APIs
When you import data from the IBM License Metric Tool (ILMT) or BigFix Inventory using version
2 of the ILMT and BigFix Inventory integration APIs, your ServiceNow instance uses a default
transform map to process this data into ServiceNow tables.

Default ILMT and BigFix Inventory transform map
By default, the ServiceNow AI Platform provides the ILMT Software License Usage transform
map to process the IBM license usage data that you import using version 2 of the ILMT and
BigFix Inventory integration APIs. When you import this data into your ServiceNow instance, it
is added to the source ILMT Product Usage Staging [ilmt_v2_product_usage_staging] and ILMT
Device Usage Staging [ilmt_v2_device_usage_staging] tables. The ILMT Software License Usage
transform map then uses the following table mappings to map the data from these source tables
to the corresponding target tables:
ILMT Software License Usage transform map table mappings
Source Table

Target Table

ILMT Product Usage Staging [ilmt_v2_product_usage_staging]

ILMT Product Usage
[ilmt_v2_product_usage]

Note: Data that is imported into this table is reported
against your discovered IBM software products.
ILMT Device Usage Staging [ilmt_v2_device_usage_staging]

Note: Data that is imported into this table is reported
against the hosts that are running your IBM software
products.

ILMT Product
Usage Per Server
[ilmt_v2_usage_per_server]
ILMT Discovered Computer
[ilmt_discovered_computer]

Note: You can import data into this table only if you are
using ILMT version 9.2.24 or later. You cannot import data
into this table if you are using ILMT version 9.2.23 or earlier
or if you are using BigFix Inventory.
After the data is successfully mapped, it is updated in the corresponding target table records.
You can then use the updated target table data to reconcile your IBM software products and
verify compliance.

ILMT and BigFix Inventory data processing
The ILMT Software License Usage transform map processes data by using the onStart transform
map script. The onStart transform map script is an event script that processes at the beginning of
an import. For more information on this transform map script, see Map with transformation event
scripts .
View the peak usage of your IBM software products
If you are integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using version 2
of the ILMT and BigFix Inventory integration APIs, view the highest full capacity and sub-capacity
Processor Value Unit (PVU), Resource Value Unit (RVU), and Virtual Processor Core (VPC) usage
for your IBM software products within an aggregated time period of up to 90 days.

Before you begin

Role required: sam_admin or sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ILMT V2
Integration > Peak Consumption By Product.
4. View the highest full capacity and sub-capacity PVU, RVU, and VPC usage for your IBM
software products.
The Software Asset Management application displays the highest usage within an aggregated
time period of up to 90 days. You can define this aggregated time period in ILMT or BigFix
Inventory.
View the peak usage of your IBM software products by device
If you are integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using version 2
of the ILMT and BigFix Inventory integration APIs, view the highest full capacity and sub-capacity
Processor Value Unit (PVU), Resource Value Unit (RVU), and Virtual Processor Core (VPC) usage
for your IBM software products by physical host or virtual machine (VM).

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ILMT V2
Integration > Peak Consumption Breakdown By Device.
4. View the highest full capacity and sub-capacity PVU, RVU, and VPC usage for your IBM
software products by physical host or VM.
The Software Asset Management application displays the highest usage within an aggregated
time period of up to 90 days. You can define this aggregated time period in ILMT or BigFix
Inventory.
View the devices that are running your IBM software products
If you are integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using version
2 of the ILMT and BigFix Inventory integration APIs, view the complete list of physical hosts and
virtual machines (VMs) that are running your IBM software products.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ILMT V2
Integration > ILMT Discovered Computer.
4. View the list of physical hosts and VMs that are running your IBM software products.
You can also view detailed information about each host or VM, including the hardware model,
the hardware serial number, and the corresponding configuration item (CI) in the Configuration
Management Database (CMDB).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
Integrating with the IBM License Metric Tool (ILMT) or BigFix Inventory using v1 APIs
You can use version 1 of the IBM License Metric Tool (ILMT) and BigFix Inventory integration APIs
to create a connection between your IBM servers and the ServiceNow AI Platform.
This connection enables you to import software installation data into your ServiceNow instance
so that you can track and optimize full capacity and sub-capacity processor value unit (PVU) and
resource value unit (RVU) licensing for your IBM software products.

Important: Version 1 of the ILMT and BigFix Inventory integration APIs have been
deprecated by IBM. However, the Software Asset Management application continues to
support integrations that are using this version of the APIs. If you are setting up an ILMT or
BigFix Inventory integration for the first time, use version 2 of the APIs instead. For more
information on setting up the integration using version 2 of the APIs, see Integrating with
the IBM License Metric Tool (ILMT) or BigFix Inventory using v2 APIs. For more information
on the deprecation of these APIs, see Deprecated REST APIs .

The ILMT and BigFix Inventory integration enables you to create connections between one or
more IBM servers and the ServiceNow AI Platform using HTTP or HTTPS. Upon activating the
Software Asset Management Professional for IBM (com.sn_samp_ibm) plugin, you receive an
IBM Server connection alias that you can then use to set up your IBM server connections. If
a connection is successful, the Software Asset Management application retrieves historical
software installation data within the aggregated period that you defined in ILMT or BigFix
Inventory. This data includes products, components, editions, hosts, virtual machines, and
license usage.

Note: License usage is based on product use and not component use.
Prerequisites
To track your IBM full capacity and sub-capacity PVU and RVU licenses using this integration, you
must complete the following prerequisites:
• Install, set up, and run ILMT or BigFix Inventory on a physical host or virtual machine (VM).

Important: When you are setting up ILMT, ensure that all required configuration item
(CI) data, including serial numbers, names, and IP addresses, is configured correctly so
that your ServiceNow instance can accurately create corresponding CI records in the
Configuration Management Database (CMDB). Refer to KB0691430
for more details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
• Install ILMT version 9.2.7 or later.
• Configure your IBM ILMT agents to scan your physical hosts or VMs in compliance with IBM
usage measurement guidelines.

Note: Refer to Measuring License Use

for more information on IBM usage

measurement guidelines.
• Enable ILMT or BigFix Inventory to discover the configurations of both physical hosts and VMs
as well as the relationships between them.
• Classify and bundle IBM components into IBM products through ILMT or BigFix Inventory.
• Set the Connect to ILMT using (sn_samp_ibm_lic.ilmt_api_version) Software
Asset Management property to v1 API's. For more details on this property, see Software Asset
Management properties.
Transform maps for IBM License Metric Tool (ILMT) and BigFix Inventory integration v1 APIs
When you import data from the IBM License Metric Tool (ILMT) or BigFix Inventory using version
1 of the ILMT and BigFix Inventory integration APIs, your ServiceNow instance uses transform
maps to process this data into ServiceNow tables.

Default ILMT and BigFix Inventory transform maps
By default, ServiceNow provides the following transform maps for ILMT and BigFix Inventory data
when you are using version 1 of the ILMT and BigFix Inventory APIs:
Default ILMT and BigFix Inventory transform maps
Transform
Source Table
Map

Target Table

Description

ILMT
Computer
Computer
Computer [imp_samp_ilmt_computer_system] [cmdb_ci_computer] Processes identification
data for your virtual
Identity
machines (VMs) and
V1
hosts.
The ILMT Computer
Identity V1 transform
map uses the CMDB
IRE API to create a
configuration item (CI)
record for each VM or
host in the Computer
[cmdb_ci_computer]
table. If a VM uses the
same hardware serial
number as its host,
the transform map
creates a CI record
for only the host. For
more information on
the CMDB IRE API,
see Identification and
Reconciliation engine
(IRE) .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
Default ILMT and BigFix Inventory transform maps (continued)
Transform
Source Table
Map

Target Table

Description

Note:
ServiceNow
does not support
hardware
serial numbers
containing periods
(.).
ILMT
Software
Instance

ILMT Software Instance
[imp_samp_ilmt_sw_instance]

Global [global]

Processes installation
data for each IBM
software component
and product on your
VMs and hosts.
Software components
are the independent
units of software that
you install or run
on a VM. You can
identify but not license
software components
individually. Software
products are the
units of software
packaging on a host
that can comprise of a
collection of software
components. You can
license the software
product as a whole. For
more information on
software components
and products, refer to
the IBM Knowledge
Center .
The ILMT Software
Instance transform
map creates a record
for each IBM software
component and product
installation in the IBM
Peak Consumption
[samp_ilmt_sw_install]
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
Default ILMT and BigFix Inventory transform maps (continued)
Transform
Source Table
Map

Target Table

Description

Note: Although
software
products are not
actual software
installations, the
transform map
treats them as
installations so that
you can update
and track license
usage against each
software product
for reconciliation
and compliance
purposes.
ILMT
Software
License
Usage

License Consumption
[imp_samp_ilmt_license_usage]

Global [global]

Processes license
usage data for your
IBM software products.
You can use this data
to reconcile your IBM
software products and
verify compliance.

Note: License
usage data is
reported against
physical hosts only,
as IBM software
products are
licensed based
on physical host
usage and not
virtual machine
(VM) usage.
The ILMT Software
License Usage
transform map updates
license usage data
on corresponding
records in the IBM
Peak Consumption
[samp_ilmt_sw_install]
table. If a corresponding
record does not exist,
the transform map
creates a record for your
license usage data with

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
Default ILMT and BigFix Inventory transform maps (continued)
Transform
Source Table
Map

Target Table

Description

the version set to
Not reported.

ILMT and BigFix Inventory data processing
Each ILMT and BigFix Inventory transform map processes data using field maps or transform
map scripts.
ILMT Computer Identity V1 transform map
The ILMT Computer Identity V1 transform map processes data from the source
Computer [imp_samp_ilmt_computer_system] table to the target Computer
[cmdb_ci_computer] table using both field maps and a transform map script.
By default, the ILMT Computer Identity V1 transform map includes the following field
maps:
Default field maps
Source Field

Target Field

Description

u_ip_address

ip_address

IP address of the host or virtual
machine.

u_dns_name

dns_domain

Domain name of the host or
virtual machine.

u_server_processors

cpu_count

Number of CPUs or virtual CPUs
(vCPUs) on the host or virtual
machine.

u_host_name

name

Name of the host or virtual
machine.

u_processor_brand_string

cpu_name

Brand name of the CPU or vCPU
on the host or virtual machine (for
example, IBM).

u_server_cores

cpu_core_count

Number of CPU or vCPU cores on
the host or virtual machine.

[Script]

discovery_source Discovery source that pulls in
IBM software installation data.
Possible values are ILMT or
BigFix Inventory.

[Script]

virtual

Option indicating whether a
machine is virtual.

u_processor_brand

cpu_type

Type of CPU or vCPU on the host
or virtual machine (for example,
dual core CPU).

u_hardware_serial_number serial_number

Serial number that identifies the
host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
In addition to using field maps, the transform map processes data using the onAfter
transform map script, which is an event script that processes at the end of each row
transformation. For more information on this transform map script, see Map with
transformation event scripts .
ILMT Software Instance transform map
The ILMT Software Instance transform map processes data from the source ILMT
Software Instance [imp_samp_ilmt_sw_instance] table to the target IBM Peak
Consumption [samp_ilmt_sw_install] table using the onComplete transform map
script. The onComplete transform map script is an event script that processes at the
end of an import. For more information on this transform map script, see Map with
transformation event scripts .
ILMT Software License Usage transform map
The ILMT Software License Usage transform map processes data from the source
License Consumption [imp_samp_ilmt_license_usage] table to the target IBM Peak
Consumption [samp_ilmt_sw_install] table using the onStart transform map script.
The onStart transform map script is an event script that processes at the beginning
of an import. For more information on this transform map script, see Map with
transformation event scripts .
Setting up an IBM License Metric Tool (ILMT) or BigFix Inventory integration using HTTPS
You can set up an IBM License Metric Tool (ILMT) or BigFix Inventory integration for IBM
compliance reporting.
If you're using an HTTPS connection, you can use any of the following connection types:
• HTTPS with the MID Server
• HTTPS without the MID Server
HTTPS with the MID Server
Set up IBM License Metric Tool (ILMT) and BigFix Inventory integration for IBM compliance
reporting using an HTTPS connection with the MID Server.

Before you begin

Role required: sys_admin

Procedure
1. Download the certificate by logging in to the ILMT or BigFix Inventory server and navigating to
Management > Server Settings.
2. Import a certificate for the MID Server

.

What to do next

After you've finished uploading your certificates, create a connection to ILMT/BigFix Inventory.
HTTPS without the MID Server
Set up IBM License Metric Tool (ILMT) and BigFix Inventory integration for IBM compliance
reporting using an HTTPS connection without the MID Server.

Before you begin

Role required: sys_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
About this task

Note: The firewall port must be opened for connectivity to your ServiceNow instance IP
address.

Procedure
1. Download the certificate by logging in to the ILMT or BigFix Inventory server and navigating to
Management > Server Settings.
2. From your ServiceNow instance, navigate to System Definition > Certificates and create a
certificate
(Trust Store Cert, PEM format).
3. Paste the full downloaded ILMT or BigFix Inventory server certificate content into the PEM
Certificate field (including banners).
4. Select the Validate Stores/Certificates related link.
5. To create the Java Key Store file using the IBM certificate file, open the command prompt on
your computer and navigate to the folder that contains the JRE keytool.
6. Execute the following commands:
keytool -import -trustcacerts -alias <Certificate alias>
-file <Certificate file path> -keystore IBM_Server.keystore
-storetype jks
keytool -list -v -keystore IBM_Server.keystore
These commands generate the IBM_Server.keystore file.
7. Return to the ServiceNow AI Platform, navigate to System Definition > Certificates and create
a certificate (Java Key Store).
8. Upload the IBM_Server.keystore file that you generated as an attachment to the
certificate record.
9. Select the Validate Stores/Certificates related link.
10. Navigate to System Security > Protocol Profiles and create a new protocol profile using the
Java Key Store certificate that you created.

Note: You need to select the protocol profile that you create when you create a
connection to ILMT/BigFix Inventory.

What to do next

After you've finished uploading your certificates, create a connection to ILMT/BigFix Inventory.
Create a connection to ILMT or BigFix Inventory
If you're using an HTTP connection or you've finished the initial configuration for HTTPS,
establish a connection between your IBM server and the ServiceNow AI Platform.

Before you begin

Role required: sam_admin

About this task

Note: If you're using an HTTP or HTTPS connection without the MID Server, the firewall
port must be opened for connectivity to your ServiceNow instance IP address.

Procedure
1. Navigate to All > Integration — ILMT / BigFix Inventory > Setup.
2. On the Connections related tab of the Connection & Credential Aliases form, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
The HTTP(s) Connection form opens.

3. On the form, fill in the fields.
HTTP(s) Connection form
Field

Description

Name

Unique name of the connection.

Credential

Credentials that are used to establish
the connection. You can use either basic
authentication credentials, such as a
username and password, or API key
credentials.

Note: Select the same credentials that
you use to access the ILMT server.
Connection alias

Connection alias with which the connection
can be referred. This connection alias
resolves your connection and credentials at
runtime.
This field is automatically set to the
sn_samp_ibm.IBMServers alias.

Active

Option indicating that the connection is
active.

Domain

Domain to which the connection belongs.

4. Specify the URL for the connection.
Depending on whether you are using an HTTP or HTTPS connection, use one of the following
options to specify the connection URL:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
◦ HTTP connection: Specify the HTTP connection URL using the Connection URL field.
In the Connection URL field, enter a URL in the http://<host-ip-address|dnshostname>:<port> format.

Note: You cannot modify the Connection URL field if you select the URL builder
check box.
◦ HTTPS connection: Specify the HTTPS connection URL using either the URL builder or an
SSL certificate.

HTTPS
Connection Procedure
URL Option

URL
builder

a. To enable your ServiceNow instance to build a connection URL using the
URL builder, select the URL builder check box.
The Mutual authentication, Protocol, Host, Override default port, and
Base path fields appear on the form.

b. In the Protocol field, specify the underlying protocol that is used by the
connection.
This field is automatically set to https.
c. In the Host field, enter the URL of the target host that is used by the
connection.
You must enter a URL in the https://<host-ip-address|dnshostname>:<port> format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
HTTPS
Connection Procedure
URL Option

d. (Optional) In the Override default port field, enter the port number of the
target port that is used by the connection.
You must enter the same port number that you used for your ILMT or BigFix
Inventory setup.
e. (Optional) In the Base path field, enter the base path for the connection.
SSL
a. Retrieve an SSL certificate from your IBM server.
certificate
b. Depending on whether you are using an HTTPS connection with or without
the MID Server, use one of the following options to apply the certificate to
your ServiceNow instance:
▪ Without the MID Server:
i. In a new tab or window, upload the certificate to your ServiceNow
instance.
Refer to HTTPS without the MID Server for detailed instructions.
ii. Return to the HTTP(s) Connection form.
iii. Enable your ServiceNow instance to build a connection URL by
selecting the URL builder check box.
The Mutual authentication, Protocol, Host, Override default port, and
Base path fields appear on the form.

iv. Enable mutual authentication for the connection by selecting the
Mutual authentication check box.
The Protocol field is replaced by the Protocol profile field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
HTTPS
Connection Procedure
URL Option

v. In the Protocol profile field, select the search icon ( ) to locate and
select the HTTPS protocol profile that specifies the certificate used for
mutual authentication.
You must select the same protocol profile that you created in HTTPS
without the MID Server.
▪ With the MID Server:
i. In a new tab or window, upload the certificate to your ServiceNow
instance.
Refer to HTTPS with the MID Server for detailed instructions.
ii. Return to the HTTP(s) Connection form and then select the Use MID
server check box.
The Advanced MID Server Configuration tab appears.

iii. In the MID Selection field of the Advanced MID Server Configuration
tab, specify how you want to select a MID Server for the connection.
Select one of the following options:
▪ Auto-select MID Server: Automatically selects a MID Server from the
list of MID Servers that are configured for the connection. This option
is selected by default.
If you select this option, the Advanced MID Server Configuration
tab displays the Capabilities and MID Application fields. You can
use these fields to filter the list of available MID Servers based on
supported MID Server capabilities and applications.
▪ To filter this list based on MID Server capabilities, select the Unlock
Capabilities icon ( ) in the Capabilities field. After you unlock the
field, select the Lookup using list icon ( ) to search for and select
the desired capabilities.
▪ To filter this list based on MID Server applications, select the
Lookup using list icon ( ) in the MID Application field to search for
and select the desired applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
HTTPS
Connection Procedure
URL Option

See MID Server selection
for more information on MID Server
capabilities and applications.
▪ Specific MID Server: Enables you to select a specific MID Server for
the connection.
If you select this option, the Advanced MID Server Configuration tab
displays the MID Server field. Select the Lookup using list icon ( ) in
the MID Server field to search for and select the MID Server that you
want to use for the connection.

Important: To select a specific MID Server for the connection,
you must deselect the Included in application ALL check box
for any applications that are configured to use the specified
MID Server. For more information on this check box, refer to
the Select applications to include in the definition of ALL for a
MID Server section of Configure a default MID Server for each
application .
▪ Specific MID Cluster: Enables you to select a specific MID Server
cluster for the connection.
If you select this option, the Advanced MID Server Configuration tab
displays the MID Cluster field. Select the Lookup using list icon ( ) in
the MID Cluster field to search for and select the MID Server cluster
that you want to use for the connection.

5. Set up the connection timeout.
Use one of the following options to set up the connection timeout:
◦ glide.http.outbound.max_timeout.enabled system property: The ServiceNow AI Platform
glide.http.outbound.max_timeout.enabled system property enables you
to specify the number of seconds that RESTMessageV2 and SOAPMessageV2 APIs
wait for a response from a synchronous call. You can configure this system property by
opening a new tab or window and then navigating to System Properties > All Properties >
glide.http.outbound.max_timeout.enabled. If this system property is set to true or is not
available on your ServiceNow instance, your instance uses a default timeout value of 30
seconds. If this system property is set to false, your ServiceNow instance uses a default
timeout value 600 seconds. See Available system properties
for more information on this
system property.
◦ Connection timeout field: The Connection timeout field on the HTTP(s) Connection form
enables you to specify the number of seconds that your ServiceNow instance waits to
establish the given connection.

Important: This option is applicable only in the San Diego and later releases. In
the Rome and earlier releases, you must set up the connection timeout using only the
glide.http.outbound.max_timeout.enabled system property.
Application of the Connection timeout field is dependent on your
glide.http.outbound.max_timeout.enabled system property configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
If the system property is set to false, your ServiceNow instance honors the value that is
specified in the Connection timeout field.

Note: If the Connection timeout field is empty, your ServiceNow instance uses a
default connection timeout value of 300 seconds.
If the system property is set to true or is not available on your ServiceNow instance, your
instance ignores the value that is specified in the Connection timeout field. Instead, your
instance uses a default connection timeout value of 30 seconds.
6. Configure additional attributes for the connection.
Select the Attributes tab and then fill in the fields.

Attributes tab
Field

Description

source

Source of your IBM software installation data. The options are
ILMT and BigFix Inventory.

computer_system_offset

Offset value that prevents your ServiceNow instance from reimporting computer records from ILMT or BigFix Inventory. Each
time you run an import, the offset value updates automatically
based on the computer records that are included in the import.
Every subsequent import then retrieves only new computer
records starting from the specified offset value.
If you are establishing a new connection, verify that the offset
value is set to 0. If you want to re-import all computer records for
an existing connection, reset the offset value to 0.

virtual_machine_offset

Offset value that prevents your ServiceNow instance from reimporting virtual machine (VM) records from ILMT or BigFix
Inventory. Each time you run an import, the offset value updates
automatically based on the VM records that are included in the
import. Every subsequent import then retrieves only new VM
records starting from the specified offset value.
If you are establishing a new connection, verify that the offset
value is set to 0. If you want to re-import all VM records for an
existing connection, reset the offset value to 0.

7. Select Submit.
The active connection information displays.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
8. Optional: If you are using version 1 of the ILMT and BigFix Inventory APIs, import ILMT or
BigFix Inventory scheduled data manually.
a. Navigate to Integration - ILMT / BigFix Inventory > Scheduled Import and then select
Execute Now.
b. Verify that the import has completed successfully.
▪ To verify that both the import and transformation have completed successfully, navigate to
Integration - ILMT / BigFix Inventory > Transform History.

Note: Every record in the Transform Histories table displays an Inserts value of 0.
▪ To view all data that was imported into the License Consumption [samp_ilmt_sw_install]
table, navigate to Integration - ILMT / BigFix Inventory > Import Set Data > License
Consumption.
▪ To view all data that was imported into the Computer [cmdb_ci_computer] table, navigate
to Integration - ILMT / BigFix Inventory > Import Set Data > Computers.
Validate your ILMT connection health
Validate the health of your ILMT connections to help improve the success of each connection.
Use the results to evaluate how you can resolve unsuccessful connections, such as adjusting the
connection response time or fixing errors related to invalid hardware serial numbers.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Software Asset > Integration - ILMT/BigFix Inventory > Connection Health.
2. Select Validate.
The Connection Healths list reloads with the latest status of each ILMT connection.
3. Verify the status of each connection using the Status field.
If the Status field is set to Failed, refer to the corresponding Information field for more details
about why that connection has failed and what actions you can take to help it establish
successfully.
For example, if a connection has failed due to a timeout issue, the Information field indicates
that the connection has timed out. The Information field also suggests a recommended
timeout value to help prevent the connection from failing again.
Authorized SAM Provider (ASP) integrations for IBM
You can track and manage IBM licenses in both VMware vSphere environments and IBM LPAR
infrastructures by integrating the Software Asset Management publisher pack for IBM with
Software Asset Management providers that are authorized to participate in the IBM Client Value
Acceleration (CVA) Program. With these integrations, you can track and manage IBM licensing
directly without having to integrate with the IBM License Metric Tool (ILMT) or BigFix Inventory.
The CVA Program is an invitation-only license verification program that allows clients
who contract with Authorized SAM Providers (ASPs) to report on their IBM license usage
independently. For more information on the CVA Program, see CVA Program Verification

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
Important: As of January 1, 2025, IBM has withdrawn its IBM Authorized SAM Provider
(IASP) Program and replaced it with the CVA Program. If you are an existing IASP Program
user, contact your IBM representative to upgrade to the new CVA agreement and migrate to
the CVA Program.
The IBM publisher pack supports integrations with the following ASPs:
• Anglepoint (through the Anglepoint Elevate platform)
• Deloitte
• EY
• KPMG
To integrate with an ASP, you must request and install the IBM License Compliance for Software
®
Asset Management application from the ServiceNow Store. This application provides the core
functionality and license metrics that are required for tracking and managing IBM licensing
directly. If you are integrating with Anglepoint, you must also request and install Anglepoint's
®
IBM Licensing for Software Asset Management application from the ServiceNow Store. This
application enables you to store IBM software information from Anglepoint.
After you install the necessary applications, you must retrieve the IBM software discovery catalog
from the ASP that you are integrating with. This catalog, which is maintained separately by each
ASP, is a centralized repository of IBM software information that discovery tools, such as the
®
ServiceNow Discovery application, can use to identify the IBM software that is discovered in
your environment. After you retrieve the catalog, you must upload it to your ServiceNow instance.
On successful upload, you can use the ServiceNow Discovery application to run a discovery
for your IBM software. The Discovery application uses the uploaded catalog to identify any
IBM software that is discovered in your environment. It then sends this data to the ASP for
comprehensive software classification and bundling.
After your discovered IBM software is properly classified and bundled, the ASP sends this
®
data back to your ServiceNow instance. The Software Asset Management application can
then use the processor value unit (PVU), resource value unit (RVU), and virtual processor core
(VPC) license metrics to reconcile this data so that you can track your IBM software usage and
optimize your licensing costs. For more information on the PVU and RVU license metrics, see IBM
processor value unit (PVU) and resource value unit (RVU) licenses. For more information on the
VPC license metric, see IBM virtual processor core (VPC) licenses.

Prerequisites
Before you can integrate the IBM publisher pack with an ASP, you must complete the following
prerequisites:
• Complete all prerequisites for participating in the CVA Program. For more information on these
prerequisites, refer to the How it works section of CVA Program Verification .
• Request and install the IBM License Compliance for Software Asset Management application
®
from the ServiceNow Store. See Request the IBM License Compliance for Software Asset
Management application for authorized Software Asset Management provider integrations for
detailed instructions.
• Enable the Use ServiceNow Software Asset Management and Discovery for IBM license
compliance (com.snc.samp.ibm.use_samp_ibm_licensing) Software Asset
Management property. See Software Asset Management properties for more information on
this property.
• Activate the Discovery (com.snc.discovery) plugin on your ServiceNow instance. See Request
Discovery
for detailed instructions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
• Activate the File-based Discovery (com.snc.discovery.file_based_discovery) plugin on your
ServiceNow instance. See File-based Discovery
for more information on file-based Discovery.
• Request and install the Discovery and Service Mapping Patterns application from the
ServiceNow Store . See Discovery patterns used by ITOM Visibility
for more information on
Discovery and Service Mapping patterns.
• If you want to use domain separation for the integration, activate the Domain Support - Domain
Extensions Installer (com.glide.domain.msp_extensions.installer) plugin on your ServiceNow
instance. See Domain separation plugin
for detailed instructions.
• Download the IBM software discovery catalog from the ASP.
• If you want to track and manage IBM licensing in public cloud environments, configure one
or more for the following services to automatically scan for and update the CMDB with cloud
infrastructure changes every 30 minutes:
◦ For public clouds hosted by AWS, configure the AWS Config service. See Configure the
AWS Config service to send event notifications to the ServiceNow instance
for detailed
instructions.
◦ For public clouds hosted by Microsoft Azure, configure the Microsoft Azure Alert service.
See Configure the Microsoft Azure Alert service to auto-update the CMDB
for detailed
instructions.
◦ For public clouds hosted by Google Cloud Platform (GCP), configure the Google Cloud
Logging service. See Configure the Google Cloud Logging service to auto-update the
CMDB
for detailed instructions.
If you are integrating the IBM publisher pack with Anglepoint, you must also complete these
additional prerequisites:
• Request and install Anglepoint's IBM Licensing for Software Asset Management application
®
from the ServiceNow Store. See Request Anglepoint's IBM Licensing for Software Asset
Management application for detailed instructions.
• Set up the Anglepoint Elevate platform.
Virtualization technologies and public cloud platforms supported by IBM Authorized SAM
Provider (IASP) integrations
IBM Authorized SAM Provider (IASP) integrations support IBM licensing in VMware vSphere
environments and IBM LPAR infrastructures. These integrations also support IBM licensing in
public cloud environments that are owned and managed byAWS, Microsoft Azure, and Google
Cloud Platform (GCP).
IBM licensing in VMware vSphere environments
When you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Authorized SAM Provider
(IASP) Program, the Software Asset Management application supports IBM licensing rules for
VMware vSphere.
VMware vSphere is a virtualization platform through which you can install and run IBM software
products on virtual machines (VMs). The Software Asset Management application supports both
full capacity and sub-capacity processor value unit (PVU), resource value unit (RVU), and virtual
processor core (VPC) licensing for IBM software products in VMware vSphere environments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
IBM licensing models on VMware vSphere
Licensing capacity

Full capacity

Licensing model

When you install and run an IBM software product on a VM,
you must license each processor core on the underlying
physical ESXi host that is running the VM. If the physical
ESXi host is running multiple VMs simultaneously, you must
still license each processor core on the host regardless of
how many VMs you install and run the IBM software product
on.
Use the total number of processor cores on the underlying
physical ESXi host to determine the number of rights that
are required for your license, based on the license type. To
determine the number of rights that are required for a PVU
or RVU license, see IBM processor value unit (PVU) and
resource value unit (RVU) licenses. To determine the number
of rights that are required for a VPC license, see IBM virtual
processor core (VPC) licenses.

Sub-capacity

Note: You can use subcapacity licensing only if
you configure and specify
a VM manager for your
VMs. For more information
on VM managers, see
Specify the virtual machine
managers (VMMs) for
which you are tracking IBM
licenses.

You must license only the virtual cores that are assigned
to the VMs on which you install and run an IBM software
product.
Use the sum of virtual cores that must be licensed across
your VMs to determine the number of rights that are required
for your license, based on the license type. To determine the
number of rights that are required for a PVU or RVU license,
see IBM processor value unit (PVU) and resource value unit
(RVU) licenses. To determine the number of rights that are
required for a VPC license, see IBM virtual processor core
(VPC) licenses.

Note: By default, the number of required rights is
calculated using the sum of virtual cores. If the sum of
virtual cores exceeds the total number of processor
cores on the underlying physical ESXi hosts that are
running the VMs, the number of required rights is
calculated using the total number of processor cores
on the hosts instead.

Note: If you install and run an IBM software product
on both a VM and the underlying physical ESXi host
that is running the VM, you must also license the
installation on the host.
IBM licensing in IBM LPAR infrastructures
When you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Authorized SAM Provider
(IASP) Program, the Software Asset Management application supports IBM licensing rules for
IBM logical partitions.
A logical partition (LPAR) is a defined subset of processor hardware that supports the operating
system. An LPAR contains resources, such as processors, memory, and input or output devices,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
that operate as an independent system. You can have multiple LPARs within each mainframe
hardware system.
Discovering the LPARs and LPAR resources within your IBM LPAR infrastructure requires
ServiceNow Discovery patterns for the IBM Hardware Management Console (HMC), which is
the hardware appliance that enables you to manage and configure your LPARs. To access these
discovery patterns, you must request and install the Discovery and Service Mapping Patterns
application from the ServiceNow Store. For more information on how to configure a discovery on
your LPARs, see IBM Virtualization and Hardware Management Console discovery .

Note: The lparstat command pulls a report of LPAR-related information and usage. For
more information, see the IBM Knowledge Center

.

When you run a discovery, your discovered LPAR data is populated and stored in the following
Configuration Management Database (CMDB) tables on your ServiceNow instance:
• cmdb_ci_ibm_frame
• cmdb_ci_aix_server
• cmdb_ci_lpar_instance
• cmdb_ci_lpar_resource
• cmdb_rel_ci
• cmdb_sam_sw_install
To populate and store this data, you must request and install the CMDB CI Class Models
application from the ServiceNow Store. This application adds or updates CMDB classes for the
IBM HMC. For more information on IBM HMC CMDB classes, see .
The Software Asset Management application supports both full capacity and sub-capacity
processor value unit (PVU), resource value unit (RVU), and virtual processor core (VPC) licensing
for IBM software products in IBM LPAR infrastructures.

IBM licensing rules in IBM LPAR infrastructures
Full capacity licensing
When you use full capacity licensing, you must license each processor core on the
underlying hardware system that is running the LPARs on which you have installed
and run an IBM software product.
Using the total number of processor cores on the underlying hardware system,
you can determine the number of rights that are required for your license based
on the license type. To determine the number of rights that are required for a PVU
or RVU license, see IBM processor value unit (PVU) and resource value unit (RVU)
licenses. To determine the number of rights that are required for a VPC license, see
IBM virtual processor core (VPC) licenses.
Sub-capacity licensing
When you use sub-capacity licensing, you must license only the processor cores
that are assigned to the LPARs on which you install and run an IBM software
product.
You can determine the number of rights that are required for a sub-capacity license
based on the type of processor pool and license that you are using for your IBM
software product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
IBM LPARs support both dedicated and shared processor pools. If you are using
a dedicated processor pool, in which processor cores are assigned to only one
dedicated LPAR, you must license each dedicated processor core that is assigned
to the LPAR on which you install or run an IBM software product. If you are using
a shared processor pool, in which processor cores are shared across micropartitions, you must license the processor cores that are shared across the micropartitions on which you install or run an IBM software product. You can determine
the number of processor cores that must be licensed across your micro-partitions
based on the LPAR type:
• Capped LPAR: A capped LPAR is a logical partition that is assigned a maximum
entitled capacity, which is the number of CPU resources that the LPAR is entitled
to receive. Capped LPARs cannot use more processor power than the assigned
entitled capacity.
• Uncapped LPAR: An uncapped LPAR is a logical partition that can use more
processor power than the assigned entitled capacity. Processor power usage is
limited by the number of virtual processor cores that are assigned to the LPAR
or by the maximum number of processor cores that are available to the shared
processor pool.
For more details, see Sub-capacity (Virtualization) License Counting Rules

.

Using the sum of processor cores that must be licensed across your processor
pools, you can determine the number of rights that are required for your license
based on the license type. To determine the number of rights that are required
for a PVU or RVU license, see IBM processor value unit (PVU) and resource value
unit (RVU) licenses. To determine the number of rights that are required for a VPC
license, see IBM virtual processor core (VPC) licenses.
IBM licensing in public cloud environments
When you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Authorized SAM Provider
(IASP) Program, the Software Asset Management application supports IBM licensing rules in
public cloud environments.
A public cloud is a cloud computing model through which computing resources are owned and
managed by a third-party cloud provider but shared by multiple clients via the Internet. Clients
can access these shared computing resources through the virtual machines (VMs) that are
running on virtual servers within each public cloud.
The Software Asset Management application supports sub-capacity processor value unit
(PVU) and virtual processor core (VPC) licensing for IBM software products in public cloud
environments. Supported public cloud providers include Amazon Web Services (AWS), Microsoft
Azure, and Google Cloud Platform (GCP).
With sub-capacity licensing in public cloud environments, you must license the virtual cores
that are assigned to the cloud-based VMs on which you install and run an IBM software product.
You can determine the total number of rights that are required for a license based on the sum of
virtual cores that must be licensed across your cloud-based VMs. To determine the number of
rights that are required for a PVU license, see IBM processor value unit (PVU) and resource value
unit (RVU) licenses. To determine the number of rights that are required for a VPC license, see
IBM virtual processor core (VPC) licenses.

Important: When determining the number of rights that are required for a PVU license
used for VMs deployed in a public cloud environment, you must always use a standard
PVUs per Core value of 70, regardless of which public cloud environment you choose.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
Licensing for IBM Cloud Paks
When you integrate the Software Asset Management publisher pack for IBM with Software Asset
Management providers that are authorized to participate in the IBM Authorized SAM Provider
(IASP) Program, the Software Asset Management application supports licensing rules for IBM
Cloud Paks.
An IBM Cloud Pak is a prepackaged set of IBM software products that can help you achieve
a specific business goal. For example, the IBM Cloud Pak for Business Automation contains
various IBM software products that automate business operations to help improve performance.
Each IBM Cloud Pak is licensed as a bundle using a supported IBM license metric, such as the
Virtual Processor Core (VPC) license metric. However, you can determine the total number of
rights that are required for a Cloud Pak based on the number of rights that are required for each
software product within the Cloud Pak. These software products are also referred to as Bundled
Programs. You can calculate the number of rights that are required for a Bundled Program by
using a supported IBM license metric, such as the VPC and Resource Value Unit (RVU) license
metrics. You must then use a corresponding conversion ratio to convert this number to the
number of rights that are required for deploying the Bundled Program as part of the Cloud Pak.
After you convert this number for each Bundled Program that you want to deploy, you can use the
sum of the converted numbers to determine the total number of rights that are required for the
Cloud Pak.
In the following example, a user wants to deploy various Bundled Programs as part of the IBM
Cloud Pak for Integration:

Bundled
Bundled Program within
Program to
the IBM Cloud Pak for
Cloud Pak
Integration
ratio

Number of rights
required for the
Bundled Program

Number of rights required for
deploying the Bundled Program as
part of the Cloud Pak

MQ Advanced

2 VPCs: 1
VPC

40

20

App Connect
Enterprise

1 VPC: 3
VPCs

20

60

API Connect

1 VPC: 1 VPC

10

10

Datapower

1 VPC: 1 VPC

10

10

Based on the conversion ratios and the number of rights that are required for each Bundled
Program, you must license the Cloud Pak using a total of 100 rights.
See IBM virtual processor core (VPC) licenses for more information on VPC licensing.
IBM reconciliation for IBM Authorized SAM Provider (IASP) integrations
IBM reconciliation keeps your IBM license positions accurate and up-to-date without requiring
manual calculations. Reconciliation runs weekly or on-demand.
When the Software Asset Management application calculates the number of rights that are
required for a processor value unit (PVU), resource value unit (RVU), or virtual processor core
(VPC) license, it calculates two different numbers based on whether you are using the license
to its full capacity or sub-capacity. The Software Asset Management application uses this
information alongside the daily aggregated peak usage of your IBM software product and the
usage type of your PVU, RVU, or VPC license to determine the high-water mark, or peak usage, of
your IBM software product over a 90 day period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
Note: You can determine the high-water mark of your IBM software product per region,
including the Americas, EMEA, and APAC.
The Software Asset Management application then uses the high-water mark value to reconcile
your IBM software product so that you can determine if your license is in compliance.

Note: When you reconcile an IBM Cloud Pak, it is reconciled as a whole. The software
products, also known as Bundled Programs, within the Cloud Pak are not reconciled
individually.
Setting up an IBM Authorized SAM Provider (IASP) integration
Before you can integrate the Software Asset Management publisher pack for IBM with an
authorized Software Asset Management provider, complete the setup process.
To integrate with an authorized Software Asset Management provider, you must request and
install the IBM License Compliance for Software Asset Management application from the
®
ServiceNow Store. If you are integrating with Anglepoint, you must also request and install
®
Anglepoint's IBM Licensing for Software Asset Management application from the ServiceNow
Store. You must also upload the IBM software discovery catalog from the authorized Software
Asset Management provider to your ServiceNow instance.
Request the IBM License Compliance for Software Asset Management application for
authorized Software Asset Management provider integrations
Request the IBM License Compliance for Software Asset Management application from the
®
ServiceNow Store so that you can integrate the Software Asset Management publisher pack for
IBM with an authorized Software Asset Management provider. Use the integration to track and
manage your IBM licenses.

Before you begin

Role required: admin

Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter IBM License Compliance for Software Asset
Management and then select Search.
4. Select the result called IBM License Compliance for Software Asset Management.
5. On the IBM License Compliance for Software Asset Management page, select Request Install.
The ServiceNow Request for App Installation - IBM License Compliance for Software Asset
Management dialog box opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - IBM License Compliance for Software Asset
Management dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
7. Select Request.
8. Select Close.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.
License metrics added by the IBM License Compliance for Software Asset Management
application
The IBM License Compliance for Software Asset Management application adds license metrics
that enable you to classify your IBM software products.
These additional license metrics are available only if you have activated the Software Asset
Management publisher pack for IBM and installed the IBM License Compliance for Software
Asset Management application. They are not available if you have only activated the Software
Asset Management publisher pack for IBM.
You can also use license metrics to reconcile the software products that are discovered in your
environment. The Software Asset Management application automatically adds default license
metrics for supported software publishers by using publisher-specific metric groups, such as the
Adobe and Microsoft metric groups. These license metrics are then set in your corresponding
software entitlements and used for reconciliation. Any additional license metric that is not
included in an existing metric group must be added as a custom license metric in order to be
used for reconciliation. Custom license metrics modify the reconciliation process by adding
software license calculations that are not already included in the default list of supported license
metrics.
By default, the IBM metric group includes the following license metrics for IBM reconciliation:
• Authorized User
• Authorized User Value Unit
• Employee User Value Unit
• External User Value Unit
• Per Device
• Per Named User
• Per Processor (CPU count)
• Per user
• Processor Value Unit (PVU)
• Resource Value Unit (RVU)
• Virtual Processor Core (VPC)
All other license metrics that are added by the IBM License Compliance for Software Asset
Management application are not included in the IBM metric group. If you want to reconcile your
IBM software products using any of these license metrics, you must create a corresponding
custom license metric on your ServiceNow instance. See Add a custom license metric for more
information on how to create a custom license metric.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
Request Anglepoint's IBM Licensing for Software Asset Management application
If you are integrating the Software Asset Management publisher pack for IBM with Anglepoint,
request Anglepoint's IBM Licensing for Software Asset Management application from the
®
ServiceNow Store. This application extends the base Software Asset Management File Names
[samp_file_name], File Maps [samp_file_map], and File Sets [samp_file_set] tables so that you
can store IBM software information from Anglepoint.

Before you begin

Role required: admin

About this task

The IBM Licensing for Software Asset Management application contains table dictionaries
that extend the base File Names [samp_file_name], File Maps [samp_file_map], and File Sets
[samp_file_set] tables as follows:

Base table

Extended table

File Names [samp_file_name]

Anglepoint File Names [samp_anglepoint_file_name]

File Maps [samp_file_map]

Anglepoint File Maps [samp_anglepoint_file_map]

File Sets [samp_file_set]

Anglepoint File Sets [samp_anglepoint_file_set]

The extended tables store software information from the IBM software discovery catalog that is
maintained by Anglepoint. You can add this software information to these tables by downloading
the IBM software discovery catalog from the Anglepoint Elevate platform and then uploading it
®
to your ServiceNow instance. Discovery tools, such as the ServiceNow Discovery application,
can then use this software information to identify the IBM software that is discovered in your
environment. See Upload the IBM software discovery catalog to your ServiceNow instance for
more information on the IBM software discovery catalog.

Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter IBM Licensing for Software Asset Management and
then select Search.
4. Select the result called IBM Licensing for Software Asset Management.
5. On the IBM Licensing for Software Asset Management page, select Request Install.
The ServiceNow Request for App Installation - IBM Licensing for Software Asset Management
dialog box opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - IBM Licensing for Software Asset Management
dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
7. Select Request.
8. Select Close.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.
Upload the IBM software discovery catalog to your ServiceNow instance
Upload the IBM software discovery catalog to your ServiceNow instance so that discovery tools,
®
such as the ServiceNow Discovery application, can identify the IBM software that is discovered
in your environment.

Before you begin

Role required: sam_admin

About this task

The IBM software discovery catalog is a centralized repository of IBM software information
that discovery tools can use to identify discovered IBM software. This catalog is maintained
separately by each authorized Software Asset Management provider.

Procedure
1. Download the IBM software discovery catalog from the authorized Software Asset
Management provider that you are integrating with.
2. Upload the catalog to your ServiceNow instance.
a. From your ServiceNow instance, navigate to All > Software Asset > Administration > Import
IBM Content.
b. On the Manage Software Library form, select Attach Content File.
The Attachments dialog box opens.
c. In the dialog box, select Choose file to search for and select the IBM software discovery
catalog that you downloaded from the Anglepoint Elevate platform.
d. Close the dialog box to return to the Manage Software Library form.
e. Select Run Import.

Result

If you are integrating with Anglepoint, all IBM software information that is included in the catalog
is stored in the following Software Asset Management tables:
• Anglepoint File Names [samp_anglepoint_file_name]
• Anglepoint File Maps [samp_anglepoint_file_map]
• Anglepoint File Sets [samp_anglepoint_file_set]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
Note: These tables are extensions of the base File Names [samp_file_name], File Maps
[samp_file_map], and File Sets [samp_file_set] tables. To extend the base tables, you must
request and install Anglepoint's IBM Licensing for Software Asset Management application.
See Request Anglepoint's IBM Licensing for Software Asset Management application for
detailed instructions.
Creating a connection for the Anglepoint integration
If you are integrating the Software Asset Management publisher pack for IBM with Anglepoint,
you can create a connection between your ServiceNow instance and the Anglepoint Elevate
platform to transfer licensing data for your IBM software products.
Create an API user for the Anglepoint integration
Create a user who is permitted to access the APIs used by the Anglepoint integration. These
APIs provide the given user access to the Anglepoint integration resources that are available on
your ServiceNow instance.

Before you begin

Role required: admin

About this task

The Anglepoint integration uses the following APIs:
Anglepoint integration APIs
API

API path

Description

Transform
(POST)

/api/sn_samp_ibm_lic/
ibm_data/transform

Processes information for your installed IBM software.

Get
Computer

/api/sn_samp_ibm_lic/
ibm_data/computer

Retrieves information about the virtual machines
(VMs) and hosts that your IBM software is installed on.

Get
Entitlements

/api/sn_samp_ibm_lic/
ibm_data/entitlement

Retrieves entitlement information for your installed
IBM software.

Get
/api/sn_samp_ibm_lic/
Classification ibm_data/classification

Retrieves classification information for your installed
IBM software.

Post
/api/sn_samp_ibm_lic/
Classification ibm_data/classification

Sends classification information for your installed IBM
software.

Procedure
1. Navigate to All > Organization > Users and then select New.
2. On the form, fill in the fields.
User form
Field

Description

User ID

Unique identifier for the user.

First name

First name of the user.

Last name

Last name of the user.

Title

Job title or job description of the user.

Department Department that the user belongs to.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
Field

Description

Password
Option to require the user to change the assigned password during the first
needs reset login.

Note: This option must be disabled.
Locked out

Option to lock the user out of the ServiceNow instance and terminate all active
sessions.

Active

Option that indicates the user is active.

Note: This option must be enabled.
Web
Option to designate the user as a non-interactive user. Non-interactive users
service
can use only assigned credentials to authorize API connections, including
access only JSON, SOAP, and WSDL. See Non-interactive sessions
for more information
on non-interactive users.

Note: This option must be enabled.
Internal
Integration
User

Option to designate the user as an internal integration user. See Mark service
accounts as internal integration users
for more information on internal
integration users.

Email

Email address of the user.

Language

Language preference of the user.

Calendar
integration

Calendar through which the user receives meeting invitations and notifications.

Time zone

Time zone that the user is located in.

Date format Preferred date format for the user.
Business
phone

Business phone number that is assigned to the user.

Mobile
phone

Mobile phone number that is assigned to the user.

Photo

Photo of the user.

3. Right-click the form header and then select Save.
The form automatically reloads with additional form actions, related links, and related tabs.
4. Generate a password for the user.
a. Select Set Password.
The Set Password dialog box opens.
b. In the dialog box, select Generate.
Your ServiceNow instance automatically generates a password for the user.
c. Copy the value in the Password field.
Save it in a secure location for later use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
d. Select Save Password.
The dialog box closes and you automatically return to the User form.
5. Assign roles to the user.
a. On the Roles related tab, select Edit....
b. From the Collection list on the Edit Members form, search for and select the following roles:
▪ snc_platform_rest_api_access
▪ oauth_user
▪ sn_samp_ibm_lic.sam_ibm_data_integrator
c. Select the Add button (
List.

) to move the selected roles from the Collection list to the Roles

d. Select Save.
The Edit Members form closes and you automatically return to the User form.
e. Verify that all selected roles appear on the Roles related tab.
Configuring the API authentication method for the Anglepoint integration
You can configure the API authentication method that grants users access to the Anglepoint
integration resources on your ServiceNow instance.
The APIs that are used by the Anglepoint integration support both basic authentication and
OAuth 2.0 authentication. Basic authentication uses standard usernames and passwords to
grant users access to the resources on your ServiceNow instance. OAuth 2.0 authentication
uses OAuth tokens to grant users access to those resources. To configure basic authentication,
refer to either Configure a REST message with basic auth
or Enable basic authentication
for outbound SOAP . To configure OAuth 2.0 authentication, refer to Configure OAuth 2.0
authentication for the Anglepoint integration.
Configure OAuth 2.0 authentication for the Anglepoint integration
Configure OAuth 2.0 authentication to enable users to access Anglepoint integration resources
through APIs using OAuth tokens.

Before you begin

Role required: admin

Procedure
1. From your ServiceNow instance, create an OAuth API endpoint.
The Anglepoint Elevate platform uses the OAuth API endpoint to request the OAuth tokens
that authorize access to the Anglepoint integration resources on your ServiceNow instance.
Refer to Create an endpoint for clients to access the instance
create an OAuth API endpoint.

for instructions on how to

Important: After you successfully create an OAuth API endpoint, copy the values in
the Client ID and Client Secret fields. Save them in a secure location for later use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
2. From the Anglepoint Elevate platform, create an API connection to your ServiceNow instance.
The API connection enables you to securely transfer data between the Anglepoint Elevate
platform and your ServiceNow instance.

Result

The Anglepoint Elevate platform sends the credential information that you specified for your
API connection to https://<servicenow-instance-url>.service-now.com/
oauth_token.do using an HTTP Post request. Your ServiceNow instance responds to the
request by generating OAuth tokens and then sending them to the Anglepoint Elevate platform.
The Anglepoint Elevate platform can then use these tokens to make API requests for accessing
the Anglepoint integration resources on your ServiceNow instance.
View the daily aggregated peak usage of your IBM software products
View the highest daily sub-capacity and full capacity Processor Value Unit (PVU), Resource Value
Unit (RVU), and Virtual Processor Core (VPC) usage for your IBM software products based on the
edition, license metric, and region of each product.

Before you begin

Role required: sam_admin or sam_user

About this task

Note: The highest daily usage of an IBM Cloud Pak is based on the Cloud Pak as a whole
and not the individual software products, also known as Bundled Programs, within the
Cloud Pak.

Procedure
1. From your ServiceNow instance, navigate to Workspaces > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ASP Integration
> Daily aggregated peak usage.
4. View additional usage details for a given IBM software product by selecting the value in the
corresponding Date field.
View devices with the highest daily usage of your IBM software products
View the breakdown for the highest daily usage of your IBM software products by physical host
based on both the edition and license metric of each product.

Before you begin

Role required: sam_admin or sam_user

About this task

Note: The highest daily usage of an IBM Cloud Pak is based on the Cloud Pak as a whole
and not the individual software products, also known as Bundled Programs, within the
Cloud Pak.

Procedure
1. From your ServiceNow instance, navigate to Workspaces > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. Open the License operations view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
3. From the left navigation menu of the License operations view, navigate to IBM ASP Integration
> Daily high water mark usage.
4. View the list of physical hosts with the highest daily usage of your IBM software products.
View product classifications for your IBM components
View the product classifications for all IBM components that are installed in your environment.
These product classifications enable you to track and manage licensing for your IBM
components.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. From your ServiceNow instance, navigate to Workspaces > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ASP Integration
> Product classification.
4. View the product classifications for all IBM components that are installed in your environment.
Each product classification includes the classified product, product edition, product version,
and assigned license metric.
Specify the virtual machine managers (VMMs) for which you are tracking IBM licenses
Specify the virtual machine managers (VMMs), such as VMware vCenter Servers and IBM
Hardware Management Consoles (HMCs), for which you want to track IBM licenses. You can
track licenses for IBM software that is discovered within these specified VMMs only.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. From your ServiceNow instance, navigate to Workspaces > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ASP Integration
> Devices to scan.
4. Select New.
5. On the IBM Licensing VM Manager form, fill in the fields.
IBM Licensing VM Manager form
Field

Description

VM Manager

VMM for which you want to track IBM licenses.

Type

Type of VMM. Select one of the following options:
◦ vCenter
◦ ESX Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
Field

Description

◦ HMC
◦ All AIX Servers
6. Select Submit.
Deduplicating IBM software installations
To track and manage your IBM licenses, you can integrate the IBM publisher pack with an
authorized Software Asset Management provider, IBM License Metric Tool (ILMT), or BigFix
Inventory. If you are switching between an authorized Software Asset Management provider
integration and either an ILMT or BigFix Inventory integration, you can deduplicate software
installations that have the same edition, version, and language but are discovered through
different sources.
If you discover the same IBM software installation through multiple sources, such as Anglepoint
and ILMT, the Software Asset Management application creates a separate software installation
record for each discovery of that software installation. You can resolve these duplicate software
installation records by running the SAM - Deduplicate Install Table scheduled
job, which ensures that only one duplicate software installation record is marked as active
and included in reconciliation. See Duplicate software installations in the Software Asset
Management application for more information on deduplication.
By default, the Software Asset Management application prioritizes IBM software installations
that are discovered through ILMT or BigFix Inventory. When you run the SAM - Deduplicate
Install Table scheduled job, records for all IBM software installations that are discovered
through ILMT or BigFix Inventory are marked as active, while records for the same software
installations that are discovered through an authorized Software Asset Management provider are
marked as inactive. If an IBM software installation is discovered through an authorized Software
Asset Management provider only, the corresponding record is marked as active.
To prioritize IBM software installations that are discovered through authorized Software
Asset Management providers instead, you can update the value of the Use Servicenow
Software Asset Management and Discovery for IBM license compliance property
(com.snc.samp.ibm.use_samp_ibm_licensing) by navigating to All > System
Properties > All Properties. From the list of available system properties, search for and select
the com.snc.samp.ibm.use_samp_ibm_licensing property. When the system
property record opens, set the Value field to true and then select Update. Each time you
subsequently run the SAM - Deduplicate Install Table scheduled job, records
for all IBM software installations that are discovered through an authorized Software Asset
Management provider are marked as active, while records for the same software installations
that are discovered through ILMT or BigFix Inventory are marked as inactive. If an IBM software
installation is discovered through ILMT or BigFix Inventory only, the corresponding record is
marked as active.

Note: The Use Servicenow Software Asset Management and Discovery for IBM license
compliance property supports domain separation.
Enable IBM reconciliation for specific domains
If you are using domain separation for the integration between the Software Asset Management
publisher pack for IBM and an authorized Software Asset Management provider, enable IBM
reconciliation only for specific domains.

Before you begin

Role required: asset or domain_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
Procedure
1. Open the Domain Asset Process Settings [alm_domain_asset_process_setting] table by
navigating to All > alm_domain_asset_process_setting_list.do.
2. Double-click the Run asset process field for the domain that you want to enable reconciliation
for.
3. When prompted, set the value to true and then select the Save icon (

).

4. Repeat steps 2 and 3 for each domain that you want to enable reconciliation for.

Important: If you have both parent and child domains, you can enable reconciliation
for either the parent domain or child domain. You cannot enable reconciliation for both
parent and child domains.
Verify the meta data for your IBM hosts
To improve the accuracy of your IBM license calculations, verify the meta data for the physical
hosts that your IBM software is installed on. Update any meta data that is incorrect or out of date.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. From your ServiceNow instance, navigate to Workspaces > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. Open the License operations view.
3. From the left navigation menu of the License operations view, navigate to IBM ASP Integration
> Device settings.
4. Verify the meta data for all available hosts.
5. If any of the following meta data is incorrect, update it.
◦ IBM PVUs per core
◦ Region

Note: If the Region meta data is empty for any of your physical hosts, the Default

Region for IBM Devices (sn_samp_ibm_lic.default_region) Software Asset
Management property automatically associates those hosts with a default region. By
default, this system property is set to North America and South America. However, you
can also set this system property to Europe and Africa or Asia and Australia. License
usage can be calculated only for physical hosts that are associated with a region. See
Software Asset Management properties for more information on this property.
◦ Usage type

Note: You cannot update the Device, PVU Comment, and IBM PVU mapping meta data.
a. Double-click the value in the incorrect meta data field.
b. When prompted, enter or select the correct value and then select the Save icon (
The meta data field updates with the correct value.

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
Software Publisher Analytics dashboard for IBM in Software Asset Management classic
View compliance analysis results related to IBM on the Software Publisher Analytics dashboard
in the Software Asset Management classic application.
Access the Software Publisher Analytics dashboard by navigating to All > Software Asset >
Publisher Overview.

Note: The add-on IBM publisher pack (com.sn_samp_ibm) plugin must be installed to
view the IBM dashboard tab.
IBM License Metric Tool (ILMT) integration must be set up to view compliance information.
Results are updated whenever a new reconciliation result is available. You can save charts in
PNG or JPG format.

IBM dashboard
You can manage IBM software using the IBM publisher pack.

IBM tab
Report

Source list

Description

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.

[samp_product_result]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
IBM tab (continued)
Report

Source list

Description

Select the report to view
the results in the License
Workbench.
True-up Cost

Product Results
[samp_product_result]

% of Total Excess Spend Not
In Use

Software Entitlements

PVU Subcapacity
Consumption Trend

IBM Peak Consumption

IBM Software Lifecycle Report

Software Lifecycle Report

PVU Subcapacity Breakdown
of Top 10 Products

IBM Peak Consumption

[alm_license]

[samp_ilmt_sw_install]

Cost to be compliant based
on the average prices for
entitlements for the rights.
Sum of the over-licensed
amount over the total of
licensed amount.
Comparison of the aggregate
peak consumption for all
products over time.

Number of products in each
software lifecycle phase,
[sam_sw_product_lifecycle_report]
including End of Extended
Support, End of Life, and End
of Support.

[samp_ilmt_sw_install]

Peak PVU utilization for the top
10 IBM products.

Publisher overview for IBM in the Software Asset Workspace
View license usage information related to IBM in the publisher overview for IBM in the Software
Asset Workspace.
From the Software Asset Workspace, access the IBM publisher overview by navigating
to License usage > Publishers and then selecting IBM from the list of available software
publishers.
Results are updated whenever a new reconciliation result is available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
You can view a summary of your license usage information in the Summary section of the IBM
publisher overview.
IBM Summary
Report

Description

True-up cost

Cost to be compliant based on the average price of rights in your IBM
software entitlements.

Potential savings

Potential cost savings for your IBM licenses.

Actual savings

Actual cost savings for your IBM licenses.

Unlicensed
entities

Summary of your unlicensed entities.
This summary includes the following information:
• Unlicensed installs: Total number of unlicensed IBM software
installations. Select the number to view the complete list of unlicensed
IBM software installations.
• Installs requiring action: Total number of IBM software installations that
you must take action on. Select the number to view the complete list of
these IBM software installations.
• Unlicensed client access: Total number of unlicensed IBM client access
records. Select the number to view the complete list of unlicensed IBM
client access records.

Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of IBM software installations that were
ignored during reclamation. Select the number to view the complete list
of ignored IBM software installations.
• Removal candidates: Total number of IBM removal candidates. Select the
number to view the list of all software removal candidates.

PVU subcapacity
consumption
trend

Comparison of the aggregate peak consumption for all IBM software
products over time.

Top 10 products
by PVU subcapacity usage

Peak PVU utilization for your top 10 IBM software products.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.
Software Asset Management for Red Hat Enterprise Linux
Use the Software Asset Management publisher pack for IBM to track and optimize licensing for
your Red Hat Enterprise Linux (RHEL) products.

Required plugins and applications for Red Hat Enterprise Linux
To manage licenses for your RHEL products, request and activate the Software Asset
Management Professional for IBM plugin (com.sn_samp_ibm) from the Now Support service
portal. See Request Software Asset Management for more information on how to request and
activate this plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
You must also request and install the CMDB CI Class Models application from the ServiceNow
Store. This application contains the tables that store RHEL data on your ServiceNow instance
and is required for RHEL reconciliation.
®

The ServiceNow Discovery application uses the Red Hat Virtualization (RHV) discovery pattern
to locate RHV components. To enable the discovery of these resources, you must install the
Discovery and Service Mapping Patterns application from the ServiceNow Store.

Supported license types
The IBM publisher pack supports licensing for both Red Hat Enterprise Linux Server and Red Hat
Enterprise Linux for Virtual Datacenters. The supported license metrics are socket-pair based
and core-based.
Red Hat Enterprise Linux socket-pair based licensing
The Software Asset Management publisher pack for IBM supports socket-pair based licensing
rules for Red Hat Enterprise Linux Server and Red Hat Enterprise Linux for Virtual Datacenters.

Overview of the socket-pair based licensing model
Red Hat Enterprise Linux Server
Red Hat Enterprise Linux Server enables Linux distributions in physical, virtual, and
hybrid environments. Although you can use RHEL licenses in both low-density and
high-density virtual environments, they’re more cost efficient in low-density virtual
environments.
To determine whether a virtual environment is low-density or high-density, divide
the number of required RHEL Server rights by the number of required RHEL for
Virtual Datacenters rights. Compare this value against the threshold value in the
Red Hat Enterprise Linux for Virtual Datacenters license cost optimization
threshold field that you defined in your Software Asset Management properties.
If your value is lower than the threshold value, then the virtual environment is
considered low-density. If your value is equal to or higher than the threshold value,
then the virtual environment is considered high density.

Note: The default value for the Red Hat Enterprise Linux for Virtual

Datacenters license cost optimization threshold field is 3.2. This value is
based on the ratio of the current RHEL Server subscription list price to the
current RHEL for Virtual Datacenters subscription list price. If your entitlements
contain different pricings for these products, then you can calculate this value
by dividing your RHEL for Virtual Datacenters subscription price by your RHEL
Server subscription price.
RHEL uses different licensing models depending on the environment in which you
deploy a server.
RHEL licensing models
Environment Description

Physical

Licensing
model

Deployment Licensing
of RHEL
is based on
servers on the number
physical
of sockethosts.
pairs on the
physical host

Cluster licensing
model

Cloud licensing
model

Licensing is based N/A
on the total number
of socket-pairs on
all physical hosts
that are running a
RHEL server within

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
RHEL licensing models (continued)
Environment Description

Licensing
model

Cluster licensing
model

that is running
a RHEL server.
Each socketpair requires
one right. For
example, if
you're running
a RHEL server
on a physical
host with 10
sockets, you
must use
five rights to
license the
host.

a cluster. Each
socket-pair requires
one right. For
example, if you're
running a RHEL
server on Cluster
Host A, which has
10 sockets, and
on Cluster Host
B, which has 20
sockets, then you
must use 15 rights
to license the entire
cluster.

Cloud licensing
model

Single-socket
hosts must
be licensed
individually.
Each of these
hosts requires
one right.
Virtual (lowLicensing is
Deployment based on the
density
of RHEL
and high
number of
servers on VM pairs that
density)
the VMs
are running a
that are
RHEL server
running on within a
physical
physical host.
hosts.
Each VM
pair requires
one right. For
example, if
you're running
a RHEL server
on six VMs
within a
physical host,
you must use
three rights to
license those
VMs.
Single VMs
must be
licensed
individually.
Each of these

Licensing is based
on the total number
of VM pairs that
are running a
RHEL server within
a cluster. For
example, if you're
running a RHEL
server on a total
of 10 VMs within a
cluster, you must
use five rights to
license the entire
cluster.

Licensing is
based on the
number of VMs
that are running
a RHEL server
within a cloud
environment.
Each VM
requires 0.5
rights. For
example, if
you're running
a RHEL server
on four VMs
within a cloud
environment,
such as Amazon
Web Services
(AWS), you must
use two rights
to license those
VMs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
RHEL licensing models (continued)
Environment Description

Licensing
model

Cluster licensing
model

Cloud licensing
model

VMs requires
0.5 rights.
Hybrid

Deployment Licensing is
Licensing is based
of RHEL
based on a
on a combination of
servers on combination
the following:
physical
of the
• The total number
hosts and
following:
of socket-pairs on
on the VMs
• The number
all physical hosts
that are
of socketthat are running
running
pairs on the
a RHEL server
on those
physical
within a cluster.
hosts.
host that
• The total number
is running
of VM pairs that
a RHEL
are running a
server.
RHEL server
• The number
within that same
of VM pairs
cluster.
that are
running a
Each socketRHEL server pair and VM pair
within
requires one right.
that same
For example, if
physical
you're running
host.
a RHEL server
on Cluster Host
Each socketA, which has 10
pair and VM
sockets; on Cluster
pair requires
Host B, which has
one right. For 20 sockets; and
example, if
on 10 VMs within
you're running Cluster Host A, you
a RHEL server must use 20 rights
on a physical to license the entire
host with 10
cluster.
sockets and
on 20 VMs
within that
host, you must
use a total of
15 rights to
license the
host and VMs.

Licensing is
based on the
number of VMs
that are running
a RHEL server
within a cloud
environment.
Each VM
requires 0.5
rights.

Note:
This
licensing
model is
applicable
only for
RHEL
servers that
are running
on VMs.
For example, if
you're running
a RHEL server
on four VMs
within a cloud
environment,
such as Amazon
Web Services
(AWS), you must
use two rights
to license those
VMs.

Red Hat Enterprise Linux for Virtual Datacenters
Red Hat Enterprise Linux for Virtual Datacenters uses hypervisors, such as Red Hat
Virtualization and VMware, to enable Linux distributions in both low-density and
high-density virtual environments. RHEL for Virtual Datacenters licenses are more
cost efficient in high-density virtual environments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
To determine whether a virtual environment is low-density or high-density, divide
the number of required RHEL Server rights by the number of required RHEL for
Virtual Datacenters rights. Compare this value against the threshold value in the
Red Hat Enterprise Linux for Virtual Datacenters license cost optimization
threshold field that you defined in your Software Asset Management properties.
If your value is lower than the threshold value, then the virtual environment is
considered low-density. If your value is equal to or higher than the threshold value,
then the virtual environment is considered high density.

Note: The default value for the Red Hat Enterprise Linux for Virtual

Datacenters license cost optimization threshold field is 3.2. This value is
based on the ratio of the current RHEL Server subscription list price to the
current RHEL for Virtual Datacenters subscription list price. If your entitlements
contain different pricings for these products, you can calculate this value by
dividing your RHEL for Virtual Datacenters subscription price by your RHEL
Server subscription price.
RHEL for Virtual Datacenters licensing is based on the total number of socket-pairs
across all physical hosts within a cluster, regardless of whether or not the hosts are
currently running VMs with installations. With this license type, you don’t need to
license the VMs that are running a RHEL for Virtual Datacenters server because you
can access an unlimited number of VMs from your physical hosts. Single-socket
hosts must be licensed individually.

Note: Although Red Hat permits you to license a subset of hosts when VM
mobility is restricted, this licensing scenario is not currently supported by the
Software Asset Management application.
If you deploy a RHEL for Virtual Datacenters server on VMs within a cluster, licensing
is based on the total number of socket-pairs on all hosts that are running those VMs.
Since you can access an unlimited number of VMs from your physical hosts, you
don’t need to license the cluster based on the total number of VMs that are running
the server within the cluster. For example, if Cluster Host A has 10 sockets and 20
VMs while Cluster Host B has 20 sockets and 60 VMs, you must use 15 RHEL for
Virtual Datacenters rights to license the entire cluster.

License consumption order
If you have both RHEL Server and RHEL for Virtual Datacenters licenses, consume them in the
following order:
1. RHEL for Virtual Datacenters licenses on the physical hosts, VMs, or clusters that have
allocated licenses.
2. RHEL Server licenses on the physical hosts, VMs, or clusters that have allocated licenses.
3. RHEL for Virtual Datacenters licenses on physical hosts, VMs, or clusters in high-density virtual
environments.
4. RHEL Server licenses on physical hosts, VMs, or clusters in low-density virtual environments.
5. RHEL Server licenses on physical hosts, VMs, or clusters in high-density virtual environments.
Use this license type only if you have run out of RHEL for Virtual Datacenters licenses in highdensity virtual environments.
6. RHEL for Virtual Datacenters licenses on physical hosts, VMs, or clusters in low-density virtual
environments. Use this license type only if you have run out of RHEL Server licenses in lowdensity virtual environments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

392


<!-- page 393 -->
Red Hat Enterprise Linux core-based licensing
The Software Asset Management publisher pack for IBM supports core-based licensing rules for
RHEL products in both physical and virtual environments.

Overview of the Per Core licensing model
To license a software product under the Per Core licensing model, each server must be assigned
an appropriate number of core licenses. The number of core licenses needed depends
on whether you’re licensing the physical server or an individual virtual operating system
environment (OSE).
Licensing under the Per Core model offers the following benefits:
• Tracks core packs for Red Hat products.
• Imports entitlements with the number of rights per license pack and the number of packs for
Red Hat core-based entitlements.
• Enables customers to enter the number of rights per license pack and the number of packs for
any Red Hat core-based product.
• Calculates the purchased rights based on the number of rights per license pack multiplied by
the number of packs.
• Creates and removes allocations based on reconciliation of Red Hat core-based products.
Allocations can be applied to virtual machines (VM) or only to hosts. This metric runs
calculations for physical cores and virtual cores on each machine and presents the most optimal
licensing model based on the number of rights used.

Total license requirement calculation
Total license requirement is calculated at the physical host level. The following table includes
examples of the various use cases for total license requirement:
Total license requirement calculations
Environment

Description

License requirement

Physical

Deployment of RHEL corebased products on physical
machines.

Licensing is based on the total
number of physical cores on
the machine. The total number
can be found by multiplying
the number of sockets by the
number of cores per socket.
For example, say that a
physical machine has 2
sockets and 8 cores per
socket. Multiplying 2 by 8
would mean that the total
number of physical cores
would be 16. 2*8 = 16 Thus,
the total number of rights
required is 16 cores.

Virtual

Deployment of RHEL corebased products on the VMs
that run on physical hosts.

Licensing is based on the total
number of cores assigned to
the VMs that run the server on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


<!-- page 394 -->
Total license requirement calculations (continued)
Environment

Description

License requirement

a physical host. This number
is limited to the maximum
capacity of the physical host.
For example, say that a
physical host has 2 sockets
with 8 cores per socket and
6 VMs with 2 cores per VM.
Each VM has installed a RHEL
core-based product. In this
case, the number of rights
required equals the minimum
value between the physical
core capacity of the physical
host and the number of nonhyperthreaded physical cores
assigned to VMs. 2 sockets
multiplied by 8 cores per
socket equal 16 cores, and
6 VMs multiplied by 2 cores
per VM equal 12 cores. The
minimum value between the
two is 12 cores. Min(2*8 =
16, 2*6 = 12) Thus, the
total number of rights required
is 12 cores.
Hybrid

Deployment of RHEL corebased products on the
physical hosts and on the
VMs that run on those
physical hosts.

Licensing is based on the
number of physical cores on
which the RHEL core-based
application is installed.
For example, a physical host
has 2 sockets with 8 cores
per socket and 20 VMs with
2 cores per VM. A RHEL corebased product is installed
on the physical host and
all 20 VMs. In this case, the
number of rights required is
the minimum value between
the physical core capacity
of the physical host and the
number of non-hyperthreaded
physical cores assigned to
VMs added to the number
of physical hosts. 2 sockets
multiplied by 8 cores per
socket equal 16 cores. Then,
2 cores multiplied by 8 cores
equal 16 cores, and 20 VMs
multiplied by 2 cores per VM
equal 40 cores. Add 16 cores

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

394


<!-- page 395 -->
Total license requirement calculations (continued)
Environment

Description

License requirement

to 40 cores, and it equals 56
cores. The minimum value
between the two is 16 cores.
Min((2*8) = 16, (2*8
+ 2*20) = 56) Thus, the
total number of rights required
is 16 cores.
Red Hat Enterprise Linux entitlements
Software entitlements define the license details for your Red Hat Enterprise Linux (RHEL)
products. You can create individual entitlements or import a list of entitlements from a
spreadsheet.

Important: You can create and import entitlements in both the Software Asset
Management classic application and the Software Asset Workspace. The following
sections provide details on how to create and import entitlements in the Software Asset
Management classic application. For details on how to create entitlements in the Software
Asset Workspace, see Create entitlements in workspace. For details on how to import
entitlements in the Software Asset Workspace, see Import bulk entitlements in workspace.
Create entitlements for Red Hat Enterprise Linux
Create individual software entitlements for your Red Hat Enterprise Linux (RHEL) products.

Before you begin

Role required: sam_user or sam_admin

Important: You can create entitlements in both the Software Asset Management classic
application and the Software Asset Workspace. The following steps provide details on how
to create entitlements in the Software Asset Management classic application. For details
on how to create entitlements in the Software Asset Workspace, see Create entitlements in
workspace.

Procedure
1. Navigate to All > Asset > Portfolios > Software Entitlement.
2. Select New.
3. On the form, fill in the fields.
Software Entitlement form
Field

Value

Display
name

Name of the software entitlement. This field is automatically set based on the
Asset tag and Software model fields.

Asset tag

Serial number and bar code that are used to identify and track the asset.

Publisher
Publisher part number (PPN) for the entitlement.
part number
Software
model

Software model that has the entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

395


<!-- page 396 -->
Field

Value

Agreement
type

Type of license agreement. Possible values include the following:
◦ Generic
◦ Enterprise License Agreement (ELA)
Type of license. Set this field to Subscription.

License
type

Subscription Length of time for which the subscription is valid. This field appears only when
period
Subscription is selected from the License type field.
Start date

Date when the subscription begins. This field appears only when Subscription
is selected from the License type field.

End date

Date when the subscription expires. Do not select a date if the subscription
does not expire. This field appears only when Subscription is selected from
the License type field.

Metric group Software publisher or software bundle that predefined software calculations
are assigned to. Select Red Hat.
License
metric

Group of predefined software calculations that are assigned to a metric group.
Software Asset Management uses license metrics to calculate the rights for a
specific set of software products during reconciliation. License metric options
are based on the software publisher or software bundle that you select from
the Metric group list. Possible values include the following:
◦ Per Socket-pair
◦ Per Core

Rights per
Total number of rights associated with each pack that you purchased for Red
license pack Hat. This field appears only when Per Core is selected from the License metric
field.
Purchased
rights

Total number of rights that you purchased.

Active rights Total number of rights that you can allocate to your users or devices. This field
is set automatically.
Allocations
available

Number of active rights that you have not yet allocated to any user or device.
This field is set automatically.

Unit cost

Cost of each software right.

Total cost

Total cost of your purchased rights. This field is automatically set based on the
Purchased rights and Unit cost fields.

4. Select Submit.
Import entitlements for Red Hat Enterprise Linux
Import a list of Red Hat Enterprise Linux (RHEL) software entitlements from a spreadsheet.

Before you begin

Role required: sam_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

396


<!-- page 397 -->
Important: You can import software entitlements in both the Software Asset
Management classic application and the Software Asset Workspace. The following steps
provide details on how to import software entitlements in the Software Asset Management
classic application. For details on how to import software entitlements in the Software Asset
Workspace, see Import bulk entitlements in workspace.

Procedure
1. Download the spreadsheet template for the software entitlement import.
®

a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter samp_bulk_import_list.do.
The Entitlement Imports [samp_bulk_import] table opens.
c. Select New.
d. On the Entitlement Import form, select Download template.
2. Fill in the spreadsheet with all software entitlements that you want to import.
3. Import your software entitlements into your ServiceNow instance.
®

a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter samp_bulk_import_list.do.
The Entitlement Imports [samp_bulk_import] table opens.
c. Select New.
d. On the form, fill in the fields.
Entitlement Import form
Field

Description

Import type Type of document that you are importing software entitlements from. The
options are Standard import document and Microsoft license statement
(MLS). Set this field to Standard import document.
File

Spreadsheet of software entitlements that you want to import. Select Click
to add... to search for and select the same spreadsheet that you filled out in
step 2.

Description Brief description of the software entitlement import.
e. Select Import.

Result

All software entitlements are imported into your ServiceNow instance.
Publisher overview for Red Hat in the Software Asset Workspace
View license usage information related to Red Hat Enterprise Linux (RHEL) in the publisher
overview for Red Hat in the Software Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

397


<!-- page 398 -->
From the Software Asset Workspace, access the Red Hat publisher overview by navigating
to License usage > Publishers and then selecting Red Hat from the list of available software
publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the Red
Hat publisher overview.
Red Hat Summary
Report

Description

True-up
cost

Cost to be compliant based on the average price of rights in your RHEL software
entitlements.

Potential
savings

Potential cost savings for your RHEL licenses.

Actual
savings

Actual cost savings for your RHEL licenses.

Unlicensed Summary of your unlicensed entities.
entities
This summary includes the following information:
• Unlicensed installs: Total number of unlicensed RHEL software installations.
Select the number to view the complete list of unlicensed RHEL software
installations.
• Installs requiring action: Total number of RHEL software installations that you
must take action on. Select the number to view the complete list of these RHEL
software installations.
• Unlicensed client access: Total number of unlicensed RHEL client access
records. Select the number to view the complete list of unlicensed RHEL client
access records.
Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

398


<!-- page 399 -->
Red Hat Summary (continued)
Report

Description

• Ignored installs: Total number of RHEL software installations that were ignored
during reclamation. Select the number to view the complete list of ignored RHEL
software installations.
• Removal candidates: Total number of RHEL removal candidates. Select the
number to view the list of all software removal candidates.
For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Software Asset Management publisher pack for Microsoft
The Software Asset Management publisher pack for Microsoft helps you track your license
compliance position using Microsoft licensing metrics.

Important: To use the publisher pack, activate the Software Asset Management
Professional for Microsoft plugin (com.snc.samp.microsoft).
Microsoft offers a wide variety of products that span from database servers to subscription
services. Each Microsoft product follows its own licensing model, which can make it hard to
track your license compliance position. With the Software Asset Management publisher pack
for Microsoft, you can accurately track your license compliance position for Microsoft products.
Reconciliation identifies licenses that are out of compliance and provides a list of remediation
options. For more information, see Software reconciliation for compliance.
To learn more about Microsoft licensing models, see Microsoft licensing

.

Set up ServiceNow Discovery to identify Microsoft installations on your network. For more
information, see Data collected by ITOM Visibility .

Licensing models
The Software Asset Management publisher pack for Microsoft supports the following licensing
models.
• Per User
• Per Device
• Per Core
• Per Core (with CAL)
• User CAL
• Device CAL
• Server (per instance)
• Server (per server)
• Per Processor
• User Subscription
• Software Assurance
For more information, see Supported Microsoft license types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

399


<!-- page 400 -->
If a PPN with a P+SA license type lacks a version assignment, a software model with the exact
version is automatically applied. This automatic version assignment occurs both when creating
an entitlement and when importing entitlements from a Microsoft License Statement (MLS). This
automatic action correctly applies Microsoft assurance benefits to an entitlement. For details on
the upgrade history of an entitlement, navigate to Workspaces > Software Asset Workspace >
License operations > Software entitlements > Upgrade history.
The SAMP - Update generic PSA entitlements fix script automatically updates the
existing P+SA entitlements with version as anything, with the specific version, and applies the
appropriate licensing terms.

Permission types
The Software Asset Management publisher pack for Microsoft supports the following permission
types to access data through Microsoft APIs. You can select the appropriate type of permission
for your application to access data correctly and securely.
• Delegated type permission
These permissions enable the application to access data on behalf of a signed-in user, which
means the application can access only the data that a signed-in user has access to.
• Application type permission
These permissions enable the application to access data without a signed-in user. The
application can access any data that the permission is associated with.
Related topics
Software license maintenance
License metrics for Microsoft products
Microsoft Per Core licensing rules
Microsoft Per Core (with CAL) licensing rules
Microsoft 365 integration
Microsoft 365 integration
Create an integration with Microsoft 365 to download subscription information that is compared
with software installations for compliance.

Microsoft 365 products and services
Microsoft 365 is a suite of software products that includes a range of subscription software and
services such as Microsoft Office 365, Windows, and Enterprise Mobility and Security (EMS).
Microsoft 365 and EMS include many other products and services within them.
Some of these products can be installed on a computer, while others are online services
accessible via the internet.

Note: Microsoft allows users to install Microsoft 365 products on multiple devices,
although users can only sign in on a maximum of five devices at one time. For more
information, see How sign in works in Microsoft 365 .
Microsoft 365 admin center includes many other products that you can purchase and activate.
However, some of these products don't come with the Microsoft 365 subscription, such as
Dynamics 365.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

400


<!-- page 401 -->
The following are some of the products and services that are available with the Microsoft 365
subscription:
• Microsoft 365
• Microsoft Exchange Online
• Enterprise Mobility Suite
• Microsoft Office 365
• Microsoft SharePoint Online
• Microsoft Entra ID
• Microsoft Power BI
• Microsoft OneDrive
• Microsoft Teams
• Windows
• Microsoft Intune

Important: This list doesn't include all the products and services available with a
Microsoft 365 subscription.

Microsoft 365 subscription plans
Microsoft 365 offers various subscription plans, each providing access to different products and
services. For instance, Power BI is included in the Office 365 E5 plan but not in the Office 365 E3
plan. To understand more about Microsoft 365 Enterprise subscription, see Microosft 365 plans
and pricing. . To understand more about all products and services per subscription plan, see
Microsoft 365 licensing .

Benefits of Microsoft 365 integration
SAM managers can perform the following actions:
• Get user subscription information for all the Microsoft 365 plans purchased on the Microsoft
365 admin center, such as Microsoft Office 365, Microsoft 365.
• Determine license compliance of Microsoft 365 subscriptions by reconciling user subscription,
entitlement, and software installations.
• View active, inactive, and unassigned subscriptions by their last activity date.
• Get user activity for individual Microsoft Office 365 software products within Microsoft 365
subscriptions. For more information, see Evaluating software usage activity for Microsoft 365
subscriptions.
• Get user activity with device-specific activation count details from the Microsoft 365 admin
portal that helps in identifying users who have activated their Microsoft subscriptions on at
least one device. The activation count also helps SAM managers accurately determine the
total number of activations across both desktops and devices.
• Receive automated optimization recommendations and workflows for your Microsoft 365
subscriptions. These optimizations include suggestions for downgrading plans, addressing
low usage, identifying overlapping licenses, and consolidating subscriptions.
• Determine potential savings while acting on the recommendation.
• Reduce costs and administrative efforts by automatically removing licenses that have low
usage or are part of overlapping subscriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

401


<!-- page 402 -->
Related topics
Integrating with Microsoft 365
Evaluating software usage activity for Microsoft 365 subscriptions
Publisher optimizations for Microsoft
Supported Microsoft 365 license types
The Microsoft 365 integration supports various Microsoft 365 license types

Full USL
A Microsoft 365 Full USL is a user subscription license that provides full access to all features
and capabilities of a Microsoft 365 subscription software product or service. You can use this
license type under the following scenarios:
• If have not already purchased licenses for any on-premise Microsoft 365 subscription software
products or services.
• If you want to transition from an on-premise to cloud-based Microsoft 365 subscription
software product or service without using Microsoft Software Assurance (SA) benefits.

From SA USL
A Microsoft 365 From SA USL is a user subscription license that enables you to transition from
a perpetual on-premise Microsoft software product or service to a corresponding cloud-based
Microsoft 365 subscription software product or service, while maintaining certain Microsoft SA
benefits. You can use this license type if you have already purchased a perpetual license for an
on-premise Microsoft software product or service with active SA benefits.

Add-on USL
A Microsoft 365 Add-on USL is a user subscription license that enables you to try the features
and capabilities of a cloud-based Microsoft 365 subscription software product or service while
you are actively using the perpetual on-premise version of that product or service. With this
license type, you can try the cloud version of a Microsoft software product or service without
having to fully transition to the cloud. You can use this license type if you have already purchased
a perpetual license for an on-premise Microsoft software product or service with active SA
benefits.

Step-up license
A Microsoft 365 Step-up license enables you to upgrade a lower edition of a Microsoft 365
subscription software product or service to a higher edition without having to pay the additional
full price for the higher edition. When you upgrade a software product or service through this
license type, you are required to pay only the price difference between the lower and higher
editions, thereby preserving your initial investment into the lower edition. You can use this
license type if you have already purchased the license for a lower edition of a Microsoft 365
subscription software product or service. For more information on Step-up licenses, see Software
license maintenance.

Reserve license
A Microsoft 365 reserve license enables you to place a license reservation order for a Microsoft
365 Online Services product. With a license reservation order, you can plan and provision
additional resources for a Microsoft 365 Online Services product ahead of time without having
to create a corresponding purchase order. All license reservation orders are realized during your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

402


<!-- page 403 -->
true-up or annual order process. You can use this license type if you have already purchased a
license for a Microsoft 365 Online Services product.
Integrating with Microsoft 365
Integrating the Software Asset Management application with the Microsoft 365 service enables
you to track your software subscriptions and software usage to determine license compliance
and act on optimization opportunities.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Microsoft 365 application

Download subscriptions

Application developer

Authentication scopes

• User.Read.All
• Organization.Read.All

Pull user activity

• Power platform
administrator

Reports.Read.All

• Application developer
Reclaim subscriptions

Application developer

• GroupMember.ReadWrite.All
• LicenseAssignment.ReadWrite.All

Setting up Microsoft 365 integration
Manage Microsoft 365 license compliance and optimization by performing the following steps:
• Prerequisites
Before you begin with Microsoft 365 integration, confirm that all prerequisites are met.
1. Install Software Asset Management Professional for Microsoft
Install the Software Asset Management Professional for Microsoft (com.snc.samp.microsoft)
plugin to access the Microsoft Publisher pack features in the Software Asset Management
application.
2. Install ITAM Health Check application
Install the ITAM Health Check application to get an overview of your Software Asset
Management configurations and receive recommendations for correcting errors.
3. Install Software Asset Management - SaaS License Management plugin
Install the Software Asset Management - SaaS License Management plugin
(com.sn_sam_saas_int) to create and manage integrations with your SaaS and Single SignOn (SSO) applications. These integrations enable you to track license usage and reclaim
unused licenses effectively.
4. Install Microsoft Entra ID Spoke
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

403


<!-- page 404 -->
Install the Microsoft Entra ID spoke (formerly Azure AD spoke) to enable automated
integration with the Microsoft 365 Admin Center for license removal and other scenarios.
An Integration Hub subscription is required for this spoke. For more information about
Integration Hub, see Integration Hub .
5. Receive latest updates from Software Asset Management Content Service
Update your instance with new content twice every week on a scheduled basis through
Software Asset Management Content Service. The Software Asset Management application
provides automated content to simplify the normalization of software installations and
subscriptions, offering enriched data such as lifecycle information, downgrade rights, and
suite definitions. This data is essential for maintaining accurate license compliance and
optimization.
6. Create a success goal
Create a success goal to track the success of Microsoft 365 configuration setup on the
Software Asset Management application.
• Software Asset Management configurations
Configure your Software Asset Management (SAM) application, which includes setting up user
accounts, managing licenses, and confirming compliance with Microsoft's software usage
policies.
1. Register application on Microsoft Entra ID
Register an application on Microsoft Entra ID (formerly Azure Active Directory) that enables
the retrieval of all subscriptions provisioned in the Microsoft 365 admin center.
2. Configure Power BI usage to get usage information
Enable service principal authentication for Power BI read-only APIs to enable your
application access to Power BI service content and APIs. This access helps optimize your
Microsoft 365 subscriptions, such as downgrading subscriptions from Office 365 E5 to
Office 365 E3 or removing Power BI low-usage subscriptions.
3. Prevent anonymous user information
By default, Microsoft hides the user names of subscribers in the Microsoft 365 Admin
Center, preventing ServiceNow from accurately tracking Microsoft 365 license usage. To
resolve this issue, disable this anonymization feature in the Microsoft 365 Admin Center.
4. Set up a Microsoft 365 integration profile
Create a Microsoft 365 integration profile in the Software Asset Management application
to import user subscription data, determine license compliance, and identify optimization
opportunities. If you manage multiple tenants, create a separate integration profile for each.
5. Configure the integration profile to get data for government customers
The ServiceNow AI Platform supports Microsoft 365 Government plans, offering all the
features of Microsoft 365 services within a government-exclusive cloud. This setup helps
organizations comply with the U.S. security and compliance standards.
6. Configure the integration profile to get usage for Microsoft 365 Copilot, Visio Online, and
Project Online

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

404


<!-- page 405 -->
Microsoft doesn't provide APIs to get usage directly for Microsoft 365 subscription
products, such as Microsoft Visio, Microsoft Project, and Microsoft Copilot. However, you
can download activity reports for these products from the Microsoft 365 admin center.
Microsoft 365 administrators can download these reports and SAM Admin can attach them
unmodified to the integration profile in the Software Asset Management application. The
scheduled jobs within ServiceNow will then process these reports and identify reclamation
candidates if the usage is low.
7. Configure reclamation rules
The Software Asset Management application automatically provides base system
reclamation rules when you create an integration profile for Microsoft 365. For more
information, see Reclamation rules for Microsoft 365 integration.
8. Configure user resolution rules
Resolve or match the Microsoft 365 admin center user to the ServiceNow user (sys_user) to
determine the right license compliance and provide correct optimization recommendations.

Important: Remember that sometimes licenses are assigned to non-human users
such as email accounts. In these instances, you can skip the user resolution process
as it isn’t required.
9. Run scheduled jobs
The Microsoft 365 integration profile you created automatically gets subscription and usage
information from the Microsoft 365 admin center on a scheduled basis. You can now run
these jobs on demand and verify they’re completed successfully.
10. Set up software models and entitlements
The Software Asset Management application integrates with the Microsoft 365 admin center
to generate software models automatically based on assigned subscriptions. These models
include suite components, downgrades, and lifecycle details to confirm compliance and
optimize licensing. For these automatically created software models, remember to add
your entitlements. If you have previously set up entitlements using Publisher Part Number,
the software models from that setup are used in this integration, avoiding the creation of
duplicate models.

Note: Verify that no software models are created without Discovery Maps (DMAPs)
and no entitlements are created without a Publisher Part Number (PPN) for a smoother
implementation.
11. Set up Add on, From SA, and Step Up entitlements
Associate an Add-on license with a perpetual office legacy license with active Software
Assurance. Microsoft 365 offers various subscription types such as Full USL, Add On USL,
From SA USL, Step-up license, and reserved licenses. To learn more about these licenses,
see Supported Microsoft 365 license types.
12. Set up license reservations
Create reserve entitlements for Microsoft online services to add licenses to your existing
Microsoft 365 subscriptions.
• Software Asset Management configurations verification

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

405


<!-- page 406 -->
Review and validate the Software Asset Management configurations to track and manage
Microsoft 365 licenses and usage accurately.
1. Verify the complete pull of all subscriptions
Verify with the Microsoft 365 administrator that all subscription records have been
successfully pulled.
2. Run health check
Run a health check on the Health check dashboard by selecting Microsoft 365, SaaS, and
General to verify the Microsoft 365 configurations and review the findings for each suite.
3. Verify the pull of all required software usage
Verify if the Software Asset Management application has pulled the usage details for your
Microsoft 365 subscribed users, which is required to identify the last activity and determine
optimization opportunities.
4. Create a success goal
Create a success goal to manage your Microsoft 365 licenses.
5. Add Microsoft 365 and associated products to the published product list
Add Microsoft 365 and associated products to the published product list to improve
readability and declutter the Software Asset Workspace. Scale your SAM efforts strategically
by evaluating progress based on resource needs, work quality, and configuration
management.
6. Run reconciliation
Run reconciliation on the Software asset overview page to verify that the licenses are
consumed according to the Software Asset Management configurations. You must
run reconciliation only for Microsoft as the publisher to verify Microsoft 365 license
consumption.
7. Check license position report
Check your overall compliance positions for Microsoft 365 and associated products in the
License Position Report.
8. Act on unlicensed subscriptions
Identify and address the unlicensed Microsoft 365 subscriptions.
9. Act on optimization recommendations
Software Asset Management supports various optimization use cases, which you can view
on the Software asset analytics page.
Related topics
Microsoft 365 integration
Automated license removal for Microsoft 365
Software Asset Management software suites
Evaluating software usage activity for Microsoft 365 subscriptions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

406


<!-- page 407 -->
Register a Microsoft Entra ID application
Register an application through the Microsoft Entra ID portal.

Before you begin

Microsoft Entra ID Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, open the App registrations page

of the Microsoft Entra ID portal.

2. Log in using your global administrator credentials.
3. On the App registrations page, select New registration.
4. In the Name section of the Register an application form, enter a name for the application.
5. In the Supported account types section, select Accounts in any organizational directory (Any
Microsoft Entra ID - Multitenant).
6. Select Register.
The application is registered and you’re automatically redirected to the Overview page for the
new application.
7. On the Overview page, copy the values in the Application (client) ID and Directory (tenant) ID
fields.
Save them in a secure location for later use.
8. Generate a Client secret for your application.
a. From the side navigation menu, navigate to Manage > Certificates & secrets.
The Certificates & secrets page opens.
b. In the Client secrets section, generate a client secret for the application by selecting New
client secret.
c. In the dialog box, fill in the fields.
Add a client secret dialog box
Field

Description

Description Description of the client secret.
Expires

Time period after which you want the client secret to expire. The options are:
▪ In 1 year
▪ In 2 years
▪ Never

d. Select Add.
The dialog box closes and you return to the Certificates & secrets page.
e. In the Client secrets section, copy the value in the VALUE field for the newly generated
client secret.
Save this value in a secure location for later use.
9. Specify the level of access that the application has to your protected resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

407


<!-- page 408 -->
a. From the side navigation menu, navigate to Manage > API permissions.
b. On the API permissions page, select Add a permission.
c. In the Request API permissions dialog box, select the Microsoft APIs tab.
d. From the list of available Microsoft APIs, select Microsoft Graph.
e. When prompted to select the types of permissions that the application requires, select
Application permissions.
f. Under Select permissions, select the check boxes for the following permissions:
▪ Reports.Read.All
▪ User.Read.All
▪ Organization.Read.All
g. Select Add permissions.
The dialog box closes and you return to the API permissions page.
10. Grant admin consent for your application.

What to do next

After you successfully register and set up your application, remain in the Microsoft Azure portal if
you must enable your application to access Power BI service content and APIs.
Enable service principal authentication for Power BI read-only APIs
Grant your application access to Power BI service content and APIs by enabling service principal
authentication for Power BI read-only APIs. Power BI service content and APIs help optimize your
Microsoft 365 subscriptions, such as by downgrading subscriptions from Office 365 E5 to Office
365 E3.

Before you begin

Microsoft Entra ID Role required: global administrator
Power BI Role required: Power platform administrator

Note: This configuration enables the ServiceNow Software Asset Management
application to get the usage information (Last usage time) for all Power BI Pro deployments
across the Web and Desktop. The Software Asset Management application pulls the last
activity date for Power BI deployments that are part of Microsoft 365 subscriptions.

About this task

Service principal is an authentication method that enables your application to access secure
Microsoft Entra ID resources, such as Power BI service content and APIs.

Procedure
1. Create a security group for service principal authentication.
Security groups enable you to manage which users, devices, groups, and service principals
can access shared resources. If you want to use an existing security group for service principal
authentication, skip to step 2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

408


<!-- page 409 -->
a. On the page header of the Microsoft Azure portal, use the search bar to search for and
select the Microsoft Entra ID service.
The Overview page for the Microsoft Entra ID service opens.
b. From the side navigation menu of the Microsoft Entra ID service, navigate to Manage >
Groups.
The Groups > All groups page opens.
c. On the All groups page, select New group.
d. On the form, fill in the fields.
New Group form
Field

Description

Group type

Group type.
Set this field to Security.

Group name

Name of the group.

Group email
address

Email address that is shared between all group members.

Group description

Description of the group.

Membership type

Method in which members can be added to or removed from the
group.
Set this field to Assigned.

e. Select Create.
The security group is created and then you’re redirected to the Overview page for the new
group.
2. Add the application that you created in Register a Microsoft Entra ID application as a member
of your security group.
a. If you didn’t create a security group in step 1 and are using an existing security group
instead, open your existing security group.
If you created a security group in step 1, skip to step b.
i. On the page header of the Microsoft Azure portal, use the search bar to search for and
select the Microsoft Entra ID service.
The Overview page for the Microsoft Entra ID service opens.
ii. From the side navigation menu of the Microsoft Entra ID service, navigate to Manage >
Groups.
The Groups > All groups page opens.
iii. From the list of available groups, locate and select your existing security group.
The Overview page for the security group opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

409


<!-- page 410 -->
b. From the side navigation menu of your security group, navigate to Manage > Members.
The Members page opens.
c. On the Members page, select Add members.
The Add members dialog box opens.
d. In the dialog box, search for and select the application that you created in Register a
Microsoft Entra ID application.

Important: The application must not have any Power BI admin permissions set
from the Microsoft Azure portal. You can verify your application permissions using the
following steps:
i. Log in to the Microsoft Azure portal using either your global administrator, application
administrator, or cloud application administrator credentials.
ii. On the page header of the Microsoft Azure portal, use the search bar to search for
and select the Microsoft Entra ID service.
The Overview page for the Microsoft Entra ID service opens.
iii. From the side navigation menu of the Microsoft Entra ID service, navigate to Manage
> Enterprise applications.
The Enterprise applications page opens.
iv. From the list of available enterprise applications, locate and select your application.
v. Select Permissions.
vi. Verify that no Power BI admin-consent-required permissions are set on the
application.
e. Select Select.
The application is added as a member of your security group.
3. Enable your security group to access read-only Power BI admin APIs.
a. In a new tab or web browser, open Power BI

.

b. Log in using either your global administrator or Power BI administrator credentials.
The Power BI portal opens.
c. On the page header of the Power BI portal, select the Settings icon (
Admin portal.
The Power BI Admin portal opens.

) and then select

d. From the side navigation menu of the Admin portal, select Tenant settings.
e. In the Admin API settings section, expand the Allow service principals to use read-only
Power BI admin APIs setting.
f. Select the toggle button to enable the setting.
g. When prompted, select the option to apply the setting to Specific security groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

410


<!-- page 411 -->
h. In the corresponding text box, enter the name of your security group.
i. Select Apply.
After you enable this setting through the Power BI Admin portal, any application permissions
that you set from the Microsoft Azure portal are no longer effective. All application permissions
must subsequently be set and managed through the Power BI Admin portal.
Configure updates on Microsoft 365 Admin Center
Avoid anonymous user information in Microsoft 365 reports on activity to be imported to
ServiceNow.

Before you begin

Role required: admin

Procedure
1. Log in to Microsoft 365 admin center

by using your admin credentials.

2. Navigate to Settings > Services > Org settings > Reports.
3. Deselect the Display concealed user, group, and site names in all reports check box.
For more information about the Microsoft 365 reports showing anonymous user information,
see Microsoft 365 reports show anonymous user names instead of actual user names .
Create a Microsoft 365 integration profile
Create an integration profile to track software subscriptions and optimize stale licenses for the
Microsoft 365 service.

Before you begin

ServiceNow Role required: sam_integrator or admin
To integrate with Microsoft 365, activate the following plugins:
• Software Asset Management Professional for Microsoft (com.snc.samp.microsoft) plugin
• Software Asset Management - SaaS License Management (sn_sam_saas_int) plugin from the
ServiceNow Store
For more information, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the direct integration profile in
Core UI is inactive.

Procedure
1. From a web browser, open your ServiceNow instance.
Interface

Action

Core UI

Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

411


<!-- page 412 -->
Interface

Software Asset Workspace

Action

a. Navigate to Workspaces > Software Asset
Workspace > License operations.
b. Under User subscription, select Direct inte­
gration profiles.

2. Select New.
3. Select Microsoft 365 Integration Profile.
4. On the form, fill in the fields.
Integration Profile form
Field

Description

Display name

Name of the integration profile. For example,
Microsoft 365 integration for
<your-company>.

Client Id

Client ID of the application that you
registered in the Microsoft Azure portal. Enter
the application (client) ID that you copied in
Register a Microsoft Entra ID application.

Client secret

Client secret of the application that you
registered in the Microsoft Azure portal. Enter
the client secret that you copied in Register a
Microsoft Entra ID application.

Tenant name or Id

Globally unique identifier (GUID) of the
application that you registered in the
Microsoft Azure portal. Enter the directory
(tenant) ID that you copied in Register a
Microsoft Entra ID application.

Warning: When entering the
directory (tenant) ID, don’t add any
additional extensions to the ID.
Enter the ID exactly as it was copied
in Register a Microsoft Entra ID
application.
REST message

Message that enables you to send requests
to a REST web service endpoint.

Profile type

Type of integration profile. This field is
automatically set to Microsoft 365.

Permission type

The type of permission for the integration
profile to access data correctly and securely.
Values include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

412


<!-- page 413 -->
Field

Description

◦ Application: Permissions that enable the
application to access any data without a
signed-in user.
◦ Delegated: Permissions that enable the
application to act in place of a signed-in
user.
5. In the Process configuration section, view the required user roles or API permissions to
minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, activity data for this
integration profile isn't pulled.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
6. Select Submit.
7. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
If the connection is successfully validated, the integration profile downloads subscriptions and
activity data.

Note: If the Download Activity field is selected without configuring the optional Power
BI settings, the Validate connection feature will issue the following warning message:
"All required APIs are validated successfully, but the optional Power BI API validation has
failed."
8. Optional: Check the status of the user subscription job by navigating to Software Asset >
Administration > Job Results.

What to do next

View all automatically generated software models for Microsoft 365 by navigating to Integration
- Microsoft 365 > Software Models. A software model is a profile of the software that you have
purchased, including information about the publisher, version, and discovery map. Software
models record publisher information and create a profile.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select a Microsoft 365 integration profile to view the following related lists:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

413


<!-- page 414 -->
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
When you create an integration profile, a reclamation rule is automatically created for the
software. It's important that you review the reclamation rule to ensure that it meets your
specifications. You can view all automatically generated reclamation rules for Office 365 by
navigating to Software Asset > Administration > Reclamation Rules. Reclamation rules are
applied based on the Microsoft System Center Configuration Management (SCCM) usage data
that is pulled through the Microsoft SCCM usage integration. For more information on these
reclamation rules, see Create a reclamation rule to import Microsoft SCCM usage data.

Note: ServiceNow automatically creates one default reclamation rule for Office 365. You
can also update the Last activity threshold field under the Subscription Usage Condition
tab.
Related topics
Review a software reclamation rule
Reclamation rules for Microsoft 365 integration
Software Asset Management software suites
Determine and verify Microsoft 365 subscription information in your ServiceNow instance
Determine the exact software subscription information to be pulled from the Microsoft 365 admin
center and verify if complete subscription information is pulled accurately to ServiceNow.

Before you begin

Role required: sam_admin

Procedure
1. Filter with the Microsoft 365 integration profile you created to determine the exact software
subscription information to be pulled from Microsoft 365 admin center to ServiceNow.
This subscription includes all subscriptions available on the Microsoft 365 admin center.
2. Verify with the Microsoft 365 admin if complete subscription information is pulled accurately to
ServiceNow.

Note:
Software Asset Management pulls the last activity date for Microsoft 365 products using
a combination of Microsoft System Center Configuration Manager (SCCM) integration
and Microsoft 365 integration.
3. If your Microsoft 365 subscription data isn’t getting pulled into Software Asset Management,
verify your integration setup:
a. On the Integration Profile form, open the REST message record by selecting the Preview icon
( ) next to the REST message field.
b. Select Open Record in the record preview.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

414


<!-- page 415 -->
c. On the Rest Message form, select the Get OAuth Token related link.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
d. On the OAuth flow verification dialog box, view the status of the OAuth flow to determine
whether your integration is set up correctly.
▪ If the OAuth token flow completed successfully message appears, your
integration is set up correctly.
▪ If the OAuth flow failed message appears, your integration isn’t set up correctly.
Use the information in this message to identify the errors in your integration setup.
4. If your Power BI usage isn’t getting pulled into Software Asset Management, verify the status of
your Power BI API connection.
a. On the Integration Profile form, select and hold (or right-click) the form header.
b. Select Show XML.

Note: If the Show XML option isn't visible in the default view, you can customize the
view. Select and hold (or right-click) the form header and then select View > custom
integration.

c. Under <xml> > <samp_sw_subscription_profile> > <custom_properties>, view the
powerBIAPIStatus property to determine the status of your Power BI API connection.
▪ If the powerBIAPIStatus property is set to success, the Power BI API connection was
successful.
▪ If the powerBIAPIStatus property is set to failed, the Power BI API connection wasn’t
successful. Verify that you’ve followed all the integration setup steps correctly. You can
also check your logs for more information about any errors in your integration setup.
5. Optional: If the User field in the Software Subscription [samp_sw_subscription] table is empty,
you can map the field with an associated user.
(Optional) For more information, see Associate a user with subscription records.
Upload the Microsoft 365 Copilot, Visio Online, and Project Online usage reports to your
ServiceNow instance
Monitor the usage activity data for Microsoft 365 Copilot, Visio Online, and Project Online to
identify reclamation candidates based on low usage.

Before you begin
Role required:

• Access the Microsoft 365 admin center: admin
• Add reports to the ServiceNow instance: sam_admin

About this task

You can export the usage reports for Microsoft Copilot, Visio Online, and Project Online from the
Microsoft 365 admin center
and add the reports to your ServiceNow instance. These usage
activity reports help in license optimization by identifying potential reclamation candidates
based on low usage.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

415


<!-- page 416 -->
Procedure
1. Log in to Microsoft 365 admin center

using your global administrator credentials.

2. Navigate to Reports > Usage.
3. Download the usage reports.
◦ Select Copilot for Microsoft 365 and download the CSV file by selecting Export.
◦ Select Project and download the CSV file by selecting Export.
◦ Select Visio and download the CSV file by selecting Export.

Important: You must not change the names of the downloaded files. You must upload
the files as is to your ServiceNow instance.
4. From the navigation menu, select Identity.
The Azure portal for the current tenant opens.
5. On the Overview page, copy the value in the Tenant ID field.
Save the Tenant ID in a secure location for later use.
6. From a web browser, open your ServiceNow instance.
Interface

Core UI

Action

Open the Integration Profiles [samp_sw_sub­
scription_profile] table.
Integration profiles open in the list view.

Software Asset Workspace

a. Navigate to Workspaces > Software Asset
Workspace > License operations.
b. Under User subscription, select Direct inte­
gration profiles.

7. Apply filters to open integration profiles for a specific Tenant id for which you want to upload
the usage reports.
Interface

Action

a. Select the Show/hide filter icon on the table
header.
Core UI

b. Set the condition [Tenant name or id] [is]
[Tenant ID copied in step 5] AND [Profile
type] [is] [Microsoft 365].
c. Select Run.
a. Select the filter icon and then select Ad­
vanced view.

Software Asset Workspace

b. Set the condition [Tenant name or id] [is]
[Tenant ID copied in step 5].
c. Add a filter condition by selecting + New
condition set.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

416


<!-- page 417 -->
Interface

Action

d. Set the condition [Profile type] [is] [Mi­
crosoft 365].
e. Select Update.
8. Add the usage reports to an integration profile.
Interface

Action

a. Select an integration profile.
b. Select the Manage Attachments ( ) icon
on the form header.
c. In the Attachments dialog box, select
Choose file.
Core UI

d. Select all the CSV files that you down­
loaded in step 3 to add them to the integra­
tion profile.
e. Close the dialog box to return to the Integra­
tion Profile form.
f. The uploaded CSV files appear next to the
Manage Attachments icon.
a. Select an integration profile.
b. Select the Attachment ( ) icon from the
sidebar of the integration profile.

Software Asset Workspace

c. In the Attachments window, select Select
file.
d. Select all the CSV files that you down­
loaded in step 3 to add them to the integra­
tion profile.
e. The uploaded CSV files appear in the At­
tachment window.

What to do next

The usage activity reports that you uploaded can be monitored for license optimization and
generation of reclamation candidates. For details, see Evaluating software usage activity for
Microsoft 365 subscriptions.
Evaluating software usage activity for Microsoft 365 subscriptions
Evaluating software usage activity helps you discover active, inactive, and unassigned
subscriptions among all subscriptions found on the Microsoft 365 portal.

Software usage activity for license optimization
Software usage activity refers to how software products are being used. By tracking this activity,
you can monitor license usage and optimize your existing software subscriptions.
The following table lists the sources for collecting the software usage activity, the associated
platform support, and the supported Microsoft 365 products.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

417


<!-- page 418 -->
Sources of software usage
activity collection

Platform support

Supported Microsoft Office 365
products

Microsoft Graph APIs

Desktop, Web, Mobile

Outlook, Word, PowerPoint,
Excel, OneNote, Teams,
Exchange Online, SharePoint
Online, Power BI

Microsoft SCCM or ACC-V

Desktop

Microsoft Office 365 apps for
Enterprise

Jamf for macOS devices

Desktop

Microsoft Office 365 apps for
Enterprise

Manual upload of the usage
reports on the ServiceNow
instance from the Microsoft
Office 365 admin center

Desktop, Web, Mobile

Microsoft 365 Copilot, Visio
Online, and Project Online

Note: You can download the usage for Microsoft 365 Copilot, Visio Online, and Project
Online from the Microsoft Office 365 admin center. For details, see Upload the Microsoft
365 Copilot, Visio Online, and Project Online usage reports to your ServiceNow instance.
After completing the Microsoft 365 integration, you can view the usage activity information using
any of the following tables:
• Software Usages [samp_sw_usage]
View the usage data for individual software products within the subscription in the Software
Usages table. This table stores total usage and last activity retrieved from Microsoft APIs and
other discovery solutions such as SCCM, Jamf, and ACC-V. For more details on software usage
fields and their descriptions, see View or create software usage.
• Microsoft 365 Apps Usage Reports [samp_m365_apps_usage_report]
View the last activity date for the Microsoft 365 products in the Microsoft 365 Apps Usage
Reports table for each user. This table stores usage data for Microsoft 365 products in True or
False retrieved from Microsoft APIs only. The last activity date helps you determine reclamation
candidates more accurately for Microsoft 365 products, including Microsoft Outlook, Microsoft
Word, Excel Microsoft PowerPoint, and OneNote. For more details on Microsoft 365 apps
usage fields and their descriptions, see Microsoft 365 Apps Usage Reports.
These usage tables include the date when the software was last used and the type of the
activities performed on the Desktop, Web, Mobile, or cumulative across platforms. The last
activity data helps you select an optimized plan for individual products within your Microsoft
365 subscriptions. For related usage, the SAM - Collect Microsoft 365 Usage
scheduled job collects the usage data daily.
Based on the software usage activity, Software Asset Management generates optimization
recommendations for your software subscriptions.

License optimization for Microsoft subscriptions
Software usage activity helps you with license optimization by discovering reclamation
candidates from both the individual Microsoft products and the Microsoft 365 suite
subscriptions. For more information, see Publisher optimizations for Microsoft. The SAM
- Collect Microsoft 365 Usage scheduled job collects the usage data daily
and the SAM - Create New Reclamation Candidates for Office 365
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

418


<!-- page 419 -->
Integration generates the removal candidates weekly for low usage, downgrade,
consolidated, and overlapping subscriptions. You can determine the reclamation candidates
using both APIs and discovery solutions.
• Overlapping subscriptions
Overlapping Microsoft 365 integration subscriptions occur when a user or organization has
several active subscriptions that provide the same or similar services at the same time. For
example, both Microsoft 365 E3 and Office 365 E3 subscriptions exist, leading to unnecessary
duplicate access to Office applications and additional services already included in Microsoft
365 E3. Software Asset Management recommends reclaiming the Office 365 E3 subscriptions
and using the Microsoft 365 E3 subscriptions instead.
• Low usage subscriptions
Low usage Microsoft 365 or Microsoft Office 365 subscriptions are the subscriptions where
the assigned licenses or services aren’t being fully used.
◦ Individual subscriptions such as Microsoft Teams, Microsoft SharePoint, or other single
services.
◦ Subscription suites including Microsoft 365 and Microsoft Office 365.
Software Asset Management recommends reclaiming the low usage subscriptions.
• Downgrade subscriptions
Downgrading Microsoft 365 or Microsoft Office 365 subscriptions means to switch from a
higher-tier plan to a lower-tier plan. This approach usually involves moving from a plan with
more features and services to one with fewer features and services, often at a reduced cost.
The following table lists the downgrade subscriptions and conditions that result in downgrade
recommendations.
Conditions for downgrade subscriptions
Condition

Downgrade subscriptions

No Power BI usage

◦ Microsoft 365 Enterprise E5 to Microsoft
365 Enterprise E3
◦ Microsoft 365 G5 USGOV GCCHIGH to
Microsoft 365 E3 USGOV GCCHIGH
◦ Microsoft 365 G5 for Government to
Microsoft 365 G3 GCC
◦ Microsoft 365 A5 for Students to Microsoft
365 A3 for Students
◦ Microsoft 365 A5 for Faculty to Microsoft
365 A3 for Faculty

No desktop usage

◦ Microsoft 365 E3 to Microsoft 365 F3
◦ Microsoft Office 365 G3 GCC to Microsoft
Office 365 G1 for Government
◦ Microsoft 365 Enterprise E3 to Microsoft
365 Enterprise E1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

419


<!-- page 420 -->
Condition

Downgrade subscriptions

◦ Microsoft 365 A3 for Students to Microsoft
365 A1 for Students
◦ Microsoft 365 A3 for Faculty to Microsoft
365 A1 for Faculty

Note: For Microsoft 365 E3 to
Microsoft 365 F3 downgrade, the user's
mailbox and OneDrive size is also
checked after checking the desktop
usage.
User is a Shared Email Box

◦ Microsoft 365 Enterprise E3 to Microsoft
Exchange Online Plan 2
◦ Microsoft 365 Enterprise E5 to Microsoft
Exchange Online Plan 2
◦ Microsoft Office 365 Enterprise E3 to
Microsoft Exchange Online Plan 2
◦ Microsoft Office 365 Enterprise E5 to
Microsoft Exchange Online Plan 2

Note: When the user is a shared email
box, you can select the type of user as
Shared Email Box in the Non-person
Account field in the Discovered Users
form.
Microsoft Exchange Online (mailbox) and
Microsoft OneDrive size

Microsoft 365 E3 to Microsoft 365 F3
If a user's mailbox size and OneDrive size is
less than two gigabytes (GB), a downgrade
recommendation is generated. The usage is
retrieved from the Software storage usage
[saas_sw_storage_usage] table. For more
information, see Software storage usage
fields.

Additionally, you can view the Microsoft 365 and Office 365 downgrade candidates, including
details about the source edition and the target edition in the Subscription downgrade
configuration [saas_downgrade_configuration] table.
You can view the conditions for downgrading the Microsoft 365 and Office 365 subscriptions
in the Subscription downgrade configuration condition [saas_downgrade_config_condition]
table.

Note: You can also determine usage for Microsoft Access and Publisher from additional
discovery solutions, such as Microsoft SCCM or ACC-V for E3 to E1 optimization. Here,
the frequency of downgrade candidate generation from E3 to E1 would be monthly
instead of weekly.
• Consolidated subscriptions
Consolidating Microsoft 365 integration subscriptions means merging multiple separate
subscriptions into one unified subscription. This approach brings all licenses and services
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

420


<!-- page 421 -->
under a single account which helps in saving cost, easier track usage, and license
assignments. For example, if Office 365 Enterprise E5, Windows, and EMS subscriptions
exist, Software Asset Management recommends using a single license such as Microsoft 365
Enterprise E5 to cover these multiple products at a lower cost.
Additionally, the subscription assignment date that is automatically populated from the Microsoft
365 portal helps in generating the reclamation candidates for individual subscriptions. Using the
subscription assignment date instead of the record creation date on the ServiceNow AI Platform
helps to create correct reclamation candidates based on the actual use from the Microsoft 365
portal.
Related topics
Integrating with Microsoft 365
Publisher optimizations for Microsoft
Reclamation rules for Microsoft 365 integration
Scheduled jobs for Microsoft 365
Evaluate Microsoft 365 compliance and optimization results
Evaluate Microsoft 365 compliance and optimization results to find actual and potential cost
savings and recommended licensing optimizations.

Before you begin

Role required: sam_admin or sam_user
The discovery of Microsoft 365 must be complete to evaluate the software compliance. For more
information about using Discovery and Microsoft SCCM together, see Discovery and SCCM
together .
The usage of Microsoft 365 plans must be available from both Microsoft certified APIs and
Microsoft SCCM to evaluate the software optimization.

Procedure
1. Navigate to Software Asset Workspace > License operations.
2. In the left pane, select Licensing > Software entitlements.
3. Select New.
4. Create entitlements for Microsoft 365 by selecting the correct Publisher Part Number (PPN) to
verify compliance.
For more information about creating entitlements, see Create entitlements in workspace.

Note: Ensure that the License metric value is User Subscription.
5. Navigate to License usage in the left pane.
6. Select the Reconciliation tab.
7. Select Run reconciliation.
8. View compliance analysis results in Office 365 & Adobe Cloud dashboard in Software Asset
Management classic and SaaS overview dashboard in workspace.
For more information about running software reconciliation, see Run software reconciliation in
Software Asset Management classic and Run Software Asset Management Foundation plugin
software reconciliation in classic .
9. View all optimized plans for Microsoft 365 subscription on the Optimization and savings
dashboard in workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

421


<!-- page 422 -->
Update REST and OAuth endpoints for Microsoft Office 365 Government plans
Change the endpoints of the REST message and OAuth application on your ServiceNow
subscription profile so that you can use your subscriptions.

Before you begin

Role required: sam_admin

About this task

®

The ServiceNow AI Platform supports Microsoft Office 365 Government plans, which provide
all the features and capabilities of Microsoft 365 services in a segmented government cloud
community that enables organizations to meet U.S. compliance and security standards.
For more information on Microsoft Office 365 Government plans, see Office 365 Government

.

Important: The Software Asset Management application supports tracking last activity
for license compliance, subscription management, and optimization recommendations for
Microsoft products such as Exchange Online, Teams, Power BI, OneDrive, and so on. For
more details, see Evaluating software usage activity for Microsoft 365 subscriptions.
The detailed usage metrics for these Microsoft products (except Power BI) are only
available through specific report APIs that aren't supported in government-regulated
environments. For further details, refer to the Microsoft national cloud deployments
documentation .

Procedure
1. From your ServiceNow instance, navigate to All > Software Asset > SaaS License > Direct
Integration Profiles.
2. Select the Microsoft 365 integration profile that you want to update.
3. On the Integration Profile record, select the Preview this record icon (
message field.

) next to the REST

4. On the record preview, select Open Record.
The REST Message record opens.
5. Update the REST message endpoints on your Microsoft 365 integration profile.
REST message endpoints enable you to retrieve usage data from your Microsoft 365
applications and services.
a. In the HTTP Methods related list, update the REST message endpoints based on your
needs.
Microsoft provides various endpoints for Microsoft Office 365 Government plans. For
more information on the available endpoints, see Office 365 U.S. Government GCC High
endpoints .

Important: You must change the .com to .us in the URL of each endpoint. For
example, you must change https://graph.microsoft.com/v1.0/reports
to https://graph.microsoft.us/v1.0/reports.
b. Select Save.
c. Update the OAuth entity scope for the GET PowerBI Usage endpoint.
The OAuth entity scope specifies the level of access that users have to your protected
resources.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

422


<!-- page 423 -->
i. Select the GET PowerBI Usage endpoint.
The HTTP Method record opens.
ii. In the Authentication section of the HTTP Method record, select the Preview this record
icon ( ) next to the OAuth profile field.
iii. On the record preview, select Open Record.
The OAuth Entity Profile record opens.
iv. In the OAuth Entity Profile Scopes list, update the OAuth scope field of the
PowerBIPermissions OAuth entity scope with the backend API URL that you’re using for
Microsoft Power BI.

Note: Microsoft supports various backend API URLs for Power BI. For more
information on the available URLs, see Power BI for US Government

.

v. Select Update.
The OAuth Entity Profile record closes and you automatically return to the REST Message
record.
6. Update the OAuth application endpoint on your Microsoft 365 integration profile.
The OAuth application endpoint enables your ServiceNow instance to access your Microsoft
365 subscription data.
a. In the Authentication section of the REST Message record, select the Preview this record
icon ( ) next to the OAuth profile field.
b. On the record preview, select Open Record.
The OAuth Entity Profile record opens.
c. In the OAuth Entity Profile Scopes list, change the .com to .us in the URL that is listed in
the OAuth scope field of the Permissions OAuth entity scope.
d. Select the Preview this record icon (

) next to the OAuth provider field.

e. On the record preview, select Open Record.
The Application Registries record opens.
f. Select the Edit URL icon (

) next to the Token URL field.

g. In the URL, change the .com to .us.
For example, change https://login.microsoftonline.com to https://
login.microsoftonline.us.
h. Select the Lock URL icon (

).

i. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

423


<!-- page 424 -->
What to do next

Revalidate the connection and credential details of this integration. For more information, see
Create a Microsoft 365 integration profile.
Creating Microsoft 365 From SA and Add-on entitlements
You can create entitlements to track and manage the From SA and Add-on licensing terms for
your Microsoft 365 subscription software products and services.
For more information on Microsoft 365 From SA and Add-on USLs, see Supported Microsoft 365
license types.
Create Microsoft 365 From SA and Add-on entitlements in Software Asset Management
classic
Create a Microsoft 365 From SA or Add-on entitlement in the Software Asset Management
classic application so that you can track and manage the From SA or Add-on licensing terms for
your Microsoft 365 subscription software products and services.

Before you begin

Role required: sam_user or sam_admin

Procedure
1. Navigate to All > Asset > Portfolios > Software Entitlement.
2. Select New.
3. On the form, fill in the fields.
For a detailed description of each field, see Software entitlement fields.

Important: To create a Microsoft 365 From SA or Add-on entitlement, set the Software
model field to a Microsoft 365 software model and then set the License type field to
either From SA or Add-on.

Tip: If you’re using both Full and Add-on USLs for the same Microsoft 365 subscription
software product or service, associate the corresponding entitlements with different
software models to avoid licensing conflicts.
4. Select Save.
5. After the form reloads, select Publish.
The State of the entitlement changes from Build to In use, and the entitlement is ready to be
used in the reconciliation process.
6. Assign the From SA or Add-on entitlement to the entitlement for the corresponding Microsoft
software product or service that you want to transition from or add on to.

Note: You can assign a From SA or Add-on entitlement to multiple corresponding
Microsoft entitlements.

Note: By default, the software model for your From SA or Add-on entitlement includes
the corresponding Microsoft software product or service as a suite component. If the
product or service isn’t already included as a suite component, you can include it
manually. See Create software models in Software Asset Management classic for detailed
instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

424


<!-- page 425 -->
a. Select the Related Entitlements tab.
b. In the Related Entitlement column of the Related Entitlements list, double-click Insert a new
row.
c. When prompted, search for and select the corresponding Microsoft entitlement that you
want to assign the From SA or Add-on entitlement to.

Important: This entitlement must use either the Per User or Per Device license
metric. In addition, it can’t already be assigned with another entitlement or have any
active allocations.

Note: If a corresponding Microsoft entitlement isn’t available for the given From SA or
Add-on entitlement, you can create one.
d. Select the Save (Enter) icon (

).

e. Double-click the corresponding field in the Active rights column of the Related Entitlements
list.
f. When prompted, enter the number of From SA or Add-on rights that you want to grant to the
corresponding Microsoft entitlement.

Important:
▪ For From SA rights, you must enter the total number of rights that you purchased for
the corresponding Microsoft entitlement. For example, if you purchased 100 rights
for the corresponding Microsoft entitlement, you must grant 100 From SA rights to
that entitlement.
▪ For Add-on rights, you can enter any number of rights equal to or less than the total
number of rights that you purchased for the given Add-on entitlement.
g. Select the Save (Enter) icon (

).

h. Select Save on the Software Entitlement form header.
The From SA or Add-on entitlement is assigned to the specified Microsoft entitlement.
Related topics
Software entitlement fields
Create Microsoft 365 From SA and Add-on entitlements in the Software Asset Workspace
Create a Microsoft 365 From SA or Add-on entitlement in the Software Asset Workspace so
that you can track and manage the From SA or Add-on licensing terms for your Microsoft 365
subscription software products and services.

Before you begin

Role required: sam_user or sam_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

425


<!-- page 426 -->
Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Create a software entitlement.
◦ From the Software asset overview, select Create entitlement.
◦ From the License operations view, navigate to Licensing > Software entitlements and then
select Create entitlement.
3. In the Create new entitlement dialog box, select the option to Fill out the details in a standard
form and then select Next.
The dialog box closes and you’re automatically redirected to the Create New Software
Entitlement form.
4. On the form, fill in the fields.
For a detailed description of each field, see Software entitlement fields.

Important: To create a Microsoft 365 From SA or Add-on entitlement, set the Software
model field to a Microsoft 365 software model and then set the License type field to
either From SA or Add-on.

Tip: If you’re using both Full and Add-on USLs for the same Microsoft 365 subscription
software product or service, associate the corresponding entitlements with different
software models to avoid licensing conflicts.
5. Select Save.
The form closes and you’re automatically redirected to the new software entitlement record.
6. On the software entitlement record, select Publish.
The State of the entitlement changes from Build to In use, and the entitlement is ready to be
used in the reconciliation process.
7. Assign the From SA or Add-on entitlement to the entitlement for the corresponding Microsoft
software product or service that you want to transition from or add on to.

Note: You can assign a From SA or Add-on entitlement to multiple corresponding
Microsoft entitlements.

Note: By default, the software model for your From SA or Add-on entitlement includes
the corresponding Microsoft software product or service as a suite component. If the
product or service isn’t already included as a suite component, you can include it
manually. See Create a software model in the Software Asset Workspace for detailed
instructions.
a. On the Related Entitlements tab of the software entitlement record, select New.
b. On the form, fill in the fields.
Create New Related Entitlement
Field

Description

Domain

Domain that the corresponding Microsoft entitlement applies to. The default
value is global.

Software
From SA or Add-on entitlement that you want to assign to the corresponding
entitlement Microsoft entitlement. This field populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

426


<!-- page 427 -->
Field

Description

Related
Corresponding Microsoft entitlement that you want to assign the From SA or
Entitlement Add-on entitlement to.

Important: This entitlement must use either the Per User or Per
Device license metric. In addition, it can’t already be assigned with
another entitlement or have any active allocations.

Note: If a corresponding Microsoft entitlement isn’t available for the
given From SA or Add-on entitlement, you can create one. See Create
entitlements in workspace for detailed instructions.
Active
rights

Number of From SA or Add-on rights that you want to grant to the
corresponding Microsoft entitlement.

Important:
▪ For From SA rights, you must enter the total number of rights that
you purchased for the corresponding Microsoft entitlement. For
example, if you purchased 100 rights for the corresponding Microsoft
entitlement, you must grant 100 From SA rights to that entitlement.
▪ For Add-on rights, you can enter any number of rights equal to or less
than the total number of rights that you purchased for the given Addon entitlement.

c. Select Save.
The From SA or Add-on entitlement is assigned to the specified Microsoft entitlement.
Related topics
Software entitlement fields
Creating reserve entitlements for Microsoft online services
You can create reserve entitlements for Microsoft online services to add licenses to your existing
Microsoft 365 subscriptions. You can pay for the new licenses during your true-up process.

Overview of license reservation
A license reservation enables you to place a license reservation order for migrating on-premises
assets to the cloud without requiring a purchase order. Only Microsoft online services are eligible
for license reservation orders.

Note: You can create a reserve entitlement only from an existing Microsoft entitlement.
The existing entitlement must meet the following criteria:
• License type is Subscription.
• Metric group is Microsoft.
• License Metric is User Subscription.
• Publisher is Microsoft for the product on the software model.
• Subscription software is selected for the product on the software model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

427


<!-- page 428 -->
Create a reserve entitlement for Microsoft online services in Software Asset Management
classic
Create a reserve entitlement for all Microsoft online services in the Software Asset Management
classic application so that you can add licenses to an existing Microsoft 365 subscription.

Before you begin

Role required: sam_user or sam_admin

Procedure
1. Navigate to All > Asset > Portfolios > Software Entitlement and then select a Microsoft Office
365 entitlement.
2. Select the Create Reserve Entitlement related link.
3. On the form, fill in the fields.

Field

Description

Start date

Start date for the new licenses.

End date

The earliest anniversary of the source entitlement end date. This field is
calculated automatically.

Purchased Number of new licenses.
rights
Monthly
unit cost

Unit cost of the source entitlement divided by the duration of the source
entitlement (in months). This field is calculated automatically.

Software
model

Software model for the existing entitlement. This field populates automatically.

Source
Existing entitlement used to create the reserve entitlement. This field populates
entitlement automatically.
4. Select Submit.
The new reserve entitlement is added to the Reserve Entitlements related list in the source
entitlement. The state of the reserve entitlement is In use and the Reserve entitlement check
box is selected.

What to do next

Run a reconciliation to include the new reserve entitlement in the true-up cost calculation.
Navigate to Software Asset > Office 365 & Adobe Cloud to view the Office 365 & Adobe Cloud
dashboard. The cost of the reserve entitlement is included in True-up Cost and is not included in
Current Subscription Spend.
When you pass the end date of the reserve entitlement, the SAM - Subscription Maintenance
scheduled job creates a new entitlement to replace it.

Note: The new entitlement is not added to the Reserve Entitlements related list in the
original source entitlement.
New entitlement record
Field

Value

Reserve
entitlement

Option that indicates whether the new entitlement is a reserve entitlement.
This option is not selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

428


<!-- page 429 -->
New entitlement record (continued)
Field

Value

Start date

Date that the new entitlement is created.

End date

End date of the original source entitlement.

Source
entitlement

Original source entitlement.

Purchased
rights

Same number of purchased rights as the reserve entitlement.

Active rights

Same number of active rights as the reserve entitlement.

Allocations
available

Same number of allocations available as the reserve entitlement.

State

State of the entitlement. This field is set to In use.

The state of the reserve entitlement updates to Retired. On the Office 365 & Adobe Cloud
dashboard, the cost of the retired reserve entitlement is removed from the True-up Cost. The cost
of the new entitlement is included in Current Subscription Spend.
Create a reserve entitlement for Microsoft online services in the Software Asset Workspace
Create a reserve entitlement for Microsoft online services in the Software Asset Workspace so
that you can add licenses to an existing Microsoft 365 subscription.

Before you begin

To create reserve entitlements for Microsoft online services in the Software Asset Workspace,
you must request and activate the Software Asset Workspace (sn_sam_workspace) store
application. For details on requesting and activating the Software Asset Workspace
(sn_sam_workspace) store application, see Request Software Asset Management.
Role required: sam_user or sam_admin

Procedure
1. From your ServiceNow instance, navigate to Software Asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. From the left navigation menu of the Software Asset Workspace, select License operations.
The License operations view opens.
3. From the left navigation menu of the License operations view, navigate to Licensing >
Software entitlements.
4. From the list of available software entitlements, select a Microsoft Office 365 entitlement.
The software entitlement details page opens in a new tab.
5. Select Create Reserve Entitlement.
6. On the form, fill in the fields.
Reserve Entitlement Record Producer form
Field

Description

Start date

Start date for the new licenses.

End date

The earliest anniversary of the source entitlement end date. This field is
calculated automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

429


<!-- page 430 -->
Field

Description

Purchased Number of new licenses.
rights
Monthly
unit cost

Unit cost of the source entitlement divided by the duration of the source
entitlement (in months). This field is calculated automatically.

Software
model

Software model for the existing entitlement. This field populates automatically.

Source
Existing entitlement that is used to create the reserve entitlement. This field
entitlement populates automatically.
7. Select Submit.
8. After your request is successfully submitted, select Close.
The new reserve entitlement is added to the Reserve Entitlements related list in the source
entitlement. The state of the reserve entitlement is In use and the Reserve entitlement check
box is selected.

What to do next

Run a reconciliation to include the new reserve entitlement in the true-up cost calculation.
View your reconciliation results in the Microsoft publisher overview. The cost of the reserve
entitlement is included in the True-up cost report.
When you pass the end date of the reserve entitlement, the SAM - Subscription Maintenance
scheduled job creates a new entitlement to replace it.

Note: The new entitlement isn’t added to the Reserve Entitlements related list in the
original source entitlement.
New entitlement record
Field

Value

Reserve
entitlement

Option that indicates whether the new entitlement is a reserve entitlement.
This option isn’t selected.

Start date

The date that the new entitlement is created.

End date

End date of the original source entitlement.

Source
entitlement

Original source entitlement.

Purchased
rights

Same number of purchased rights as the reserve entitlement.

Active rights

Same number of active rights as the reserve entitlement.

Allocations
available

The same number of allocations available as the reserve entitlement.

State

State of the entitlement. This field is set to In use.

The state of the reserve entitlement updates to Retired. On the Microsoft publisher overview, the
cost of the retired reserve entitlement is removed from the True-up cost report. The cost of the
new entitlement is included in the Current Subscription Spend.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

430


<!-- page 431 -->
Automated license removal for Microsoft 365
Software Asset Management optimizes Microsoft 365 subscription usage by identifying low
usage and overlapping candidates, and then automatically removing the licenses from the
Microsoft 365 admin center. This proactive management helps you streamline costs and
enhance the efficiency of low usage and overlapping licenses.

Eligible candidates
After a reclamation candidate is generated, the following low usage and overlapping candidates
are considered eligible for automated removal:
• Low usage candidates with individual subscriptions such as Microsoft Teams, Microsoft
SharePoint, or other single services.
• Low usage candidates with subscription suites including Microsoft 365 and Microsoft Office
365.

Note: However, due to the varied usage across different products within these suites,
users are notified, and the final removal requires approval from the SAM Manager. The
Notify User check box is selected by default in the reclamation rule. But you can clear the
check box to skip the approval process.
• Overlapping candidates with any subscription type.

Prerequisites
Before initiating the automatic removal of licenses from the Microsoft 365 admin center, confirm
that the following prerequisites are met:
• The following spoke is set up and plugins are installed:
◦ Microsoft Entra ID Spoke
◦ Software Asset Management Professional (com.snc.samp)
◦ Software Asset Management - SaaS License Management (sn_sam_saas_int)
• Microsoft Entra ID is configured with the following permissions to access and manage user and
group information:
◦ User.Read.All
◦ GroupMember.ReadWrite.All
◦ LicenseAssignment.ReadWrite.All

Scenarios
Software Asset Management removes the Microsoft 365 licenses from the Microsoft 365 admin
center in the following scenarios:
• When a license is directly assigned to a user, the license is removed.
• When a license is directly assigned to a user and also through one or more groups, the user is
removed from the group and the direct license assigned to the user is removed.

Note: When multiple licenses are assigned to a user through a group, the user isn't
removed from the group. If a user in a group with multiple licenses shows low usage
and is subsequently removed, they may lose access to other important licenses. You
must contact your Microsoft 365 Admin to address this issue. For more information, see
Manage licensing in Microsoft Entra ID .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

431


<!-- page 432 -->
• When a license is directly assigned to a user and also through multiple groups having the
same and only one license, the user is removed from all the groups and the direct license
assigned to the user is removed.

Note: When multiple licenses are assigned to a user through different groups, the user
isn't removed from any groups.
• When Software Asset Management removes the Microsoft 365 licenses from the Microsoft
365 admin center successfully, the reclamation workflow closes automatically.
Related topics
Evaluating software usage activity for Microsoft 365 subscriptions
Optimization and savings dashboard in workspace
Microsoft SQL Server licensing in container deployments
The Software Asset Management publisher pack for Microsoft supports licensing rules
for Microsoft SQL Server products that are deployed across both on-premise and cloud
environments using Docker containers.
Containers are executable software packages that bundle all the code and dependencies
that are required for deploying and running a specific application. With a container, you can
deploy and run the same application uniformly across any computing environment, such as a
desktop computer or the cloud, without having to reconfigure the application. Each container
also virtualizes an operating system (OS) so that you can quickly and easily deploy multiple
isolated applications within the same computing environment.
®

The Software Asset Management application works in conjunction with the ServiceNow
Discovery application to identify the following information in both on-premise and cloud
environments:

• The Docker containers through which your Microsoft SQL Server products are deployed.
• The corresponding Kubernetes clusters that enable each container to run.
• The OS of the underlying physical server that the container is running on.
• The Microsoft SQL Server version and edition that is deployed through each container.
• The number of virtual processor cores that are assigned to each container.
The Software Asset Management application uses the resulting data to create corresponding
software installation records for each of your discovered containers. You can then reconcile
these container-based software installations to track and optimize the license compliance of the
Microsoft SQL Server products that are deployed through each container.
For more visibility into the Microsoft SQL Server products that are deployed through your Docker
containers, view the Licensable Software Products Deployed on Containers report.
For more information on Docker discovery, see Docker virtualization
Kubernetes discovery, see Kubernetes discovery .

. For more information on

Supported licensing models
The Microsoft publisher pack supports the following licensing models for Microsoft SQL Server
products that are deployed through containers:

Note: For more information on each licensing model, refer to Supported Microsoft license
types.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

432


<!-- page 433 -->
Supported Microsoft SQL Server licensing models in container deployments
Licensing
Description
Model

Per core You must license each container as a standalone device. Licensing is based on
the number of virtual CPUs (vCPUs) that are discovered on each container, with a
minimum of four per core licenses per container.
Server/
CAL

You must license each container using a server (per instance or per server) license.
You must also license each user or device that is accessing the underlying physical
server running these containers using a user or device CAL license.
Server licenses enable you to license container-based software installations on
your physical servers. To license only a certain number of installations on a physical
server, use a server (per instance) license. To license all installations on a physical
server, use a server (per server) license.
CAL licenses are client access licenses that grant a set number of users or devices
access to the underlying physical server on which your containers are running.
• To grant a set number of users access to a physical server, regardless of how many
devices those users are accessing the server through, use a user CAL license.
• To grant a set number of devices access to a physical server, regardless of how
many users are accessing the server through those devices, use a device CAL
license.

Licensable Software Products Deployed on Containers report
You can use the Licensable Software Products Deployed on Containers report to gain visibility
into the software products that are deployed across both on-premise and cloud environments
using Docker containers.

Note: To view this report, activate the Software Asset Management Professional plugin
(com.snc.samp) and the Discovery and Service Mapping Patterns

application.

The Licensable Software Products Deployed on Containers report is available only in the
Software Asset Workspace. To view this report, navigate to All > Software Asset > Software
Asset Workspace. From the Software Asset Workspace, navigate to License usage > Reports >
Licensable Software Products Deployed on Containers.
Licensable Software Products Deployed on Containers report
Field

Description

Container
Name

Docker container through which you are deploying a software product.

Environment

On-premise or cloud environment in which you are deploying a software
product through the Docker container.

Container ID

Unique identifier for the Docker container.

Hosted On
Server

Physical server on which the Docker container is running.

Kubernetes
Cluster

Kubernetes cluster that enables the Docker container to run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

433


<!-- page 434 -->
Licensable Software Products Deployed on Containers report (continued)
Field

Description

Virtual CPU

Number of virtual CPUs (vCPUs) that are assigned to the Docker container.

Software
Installed

Software product that you are deploying through the Docker container.

Microsoft Server licensing on Microsoft Hyper-V virtualization technology
The Software Asset Management publisher pack for Microsoft supports licensing rules for
Microsoft Server products, such as Microsoft Windows Server, that are deployed on Microsoft
Hyper-V virtualization technology.
Hyper-V is a Microsoft hypervisor that enables you to create, manage, and run virtual machines
(VMs) on a physical host, such as a server or computer. With this hardware virtualization
capability, you can run multiple VMs on a single physical host while allowing them to share the
underlying hardware resources of that host, such as the CPU, memory, storage, and networking.
For more information on Hyper-V, see Hyper-V technology overview .
®

You can use a discovery tool, such as the ServiceNow Discovery application, to automatically
locate and identify the Hyper-V hypervisors and VMs in your environment, as well as the
Microsoft Server products that are running on those VMs. For more information on this discovery
process and the associated data models, see Hyper-V discovery .
You can license the Microsoft Server products, such as Microsoft SQL Server and Microsoft
Windows Server, that are running in your Hyper-V virtualized environments by using licensing
rules from Microsoft. If you are licensing Microsoft Windows Server at the physical layer, the
Licenses required field in the License Metrics Results of the Microsoft publisher overview
populates only for your parent Microsoft server, which represents your physical host. This
licensing calculation is more intuitive and aligned with your discovered data. For more
information on Microsoft server licensing, see Microsoft Per Core licensing rules and Microsoft
Per Core (with CAL) licensing rules. For more information on the Microsoft publisher overview,
see Publisher overview for Microsoft in the Software Asset Workspace.
The Microsoft publisher pack also supports cost-based licensing optimizations that are specific
to Microsoft Server products deployed on Hyper-V. For more information on these licensing
optimizations, see Cost-based licensing optimization for Microsoft.
Microsoft SQL Server licensing in high availability configurations
The Software Asset Management publisher pack for Microsoft supports licensing rules for
Microsoft SQL Server deployed through high availability and disaster recovery solutions, such as
Always On availability groups.
Always On availability groups provide high availability (HA) and disaster recovery capabilities
for your Microsoft deployments. Each availability group consists of a primary replica, which
hosts the database or server that you are actively running, and up to eight secondary replicas,
which host the passive databases or servers that you can fail over to in the event that the primary
replica fails. These availability groups support failover environments that can help you reduce
and prevent downtime in your deployments. For more information on Always On availability
groups, see What is an Always On availability group? .
For each server operating system environment (OSE) that you’re licensing using either a
Microsoft SQL Server subscription license or Microsoft SQL Server license with active Software
Assurance (SA) benefits, you can use the following secondary (passive) replicas in anticipation
of a failover event:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

434


<!-- page 435 -->
• One secondary replica for high availability in a separate OSE
• One secondary replica for disaster recovery in a separate OSE
The primary (active) replica is automatically licensed by the Microsoft SQL Server license.
However, the two secondary replicas don’t need to be licensed separately as long as they’re
passive. The Software Asset Management application considers these secondary replicas as
ignored installations. You can view more information about these ignored installations through
the Progress indicators widget in the Microsoft publisher overview. For more information on
the Microsoft publisher overview, see Publisher overview for Microsoft in the Software Asset
Workspace.
®

You can use the ServiceNow Discovery application to automatically locate and identify
the Microsoft SQL Server Always On availability groups across your deployment. As part of
this discovery process, the application identifies the infrastructure and attributes of each
availability group, including the Role (active or passive replica), Availability Mode (synchronous
or asynchronous), Failover Mode (automatic or manual), and Readable Secondary (yes or no).
The Software Asset Management application then uses this information and the applicable
licensing rules to calculate your license compliance position for Microsoft SQL Server.
For more information on Microsoft SQL Server licensing, see Microsoft Per Core licensing rules.
For more information on Always On availability group discovery, see Microsoft SQL Server and
Cluster discovery .
Manage licenses for Microsoft Visual Studio
Manage your Visual Studio subscriptions with the Software Asset Management publisher pack
for Microsoft. Verify license compliance and detect unlicensed installations. Reduce licensing
costs by identifying subscriptions that are allocated but aren’t being used.

Before you begin
Set up ServiceNow Discovery
to find Microsoft software installations on your network. By using
Discovery, you can view license compliance information by comparing your purchased licenses
with actual installations.
You must set up the environment on the Configuration Management Database (CMDB) before
you begin. Setting up of development, production, or test environment helps Software Asset
Management Professional to apply licenses correctly. You should use the Environment field on
the configuration item (CI).
Role required: sam_admin

About this task

Visual Studio subscriptions enable developers to download, install, configure, and use most
Microsoft software products on any number of devices or virtual machines without having to
purchase individual rights. Individual rights aren’t required if the software is deployed only in
development or test environments. Use the Microsoft Publisher Pack to manage Visual Studio
licensing and reduce compliance risks.
To access the advantages of Visual Studio Standard subscriptions, you must maintain active
Microsoft Software Assurance. These benefits enable you to use a range of Microsoft products,
including SQL Server, Windows Server for development and testing purposes only.
First, set up software models and entitlements to track your Visual Studio subscriptions. Then,
run reconciliation and view the License Workbench to manage license compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

435


<!-- page 436 -->
Procedure
1. Import software entitlements for your Visual Studio subscriptions.

Important: Fill in the Publisher part number column on the entitlement import
template to automatically create software models for Visual Studio and all included
software (suite components). You can look up publisher part numbers in the Software
Product Definition table [samp_sw_product_definition]. If you fill in the Publisher part
number field, Publisher, Product, Version, Edition, Platform, and Language aren’t
required because the publisher part number provides that information.
When the import is complete, software models and entitlements are automatically created
for your Visual Studio subscriptions. The Visual Studio software models are automatically
populated with Suite Components and Downgrade Rights.
You can also create software entitlements manually. For details, see Create entitlements in
workspace.

Important: You can view your software models in both the Software Asset
Management classic application and the Software Asset Workspace.
2. Add product install conditions to your Visual Studio software models that apply across all
software models including downgrades and editions.
Install conditions define where the software can be installed. For Visual Studio, installing
the software anywhere that is not a development or test environment is a violation of the
Microsoft license agreement. Install conditions are used during reconciliation. When you
run reconciliation, any Microsoft software installed on production, disaster recovery, or other
environments aren't covered by your Visual Studio licenses. These products are considered
unlicensed installations unless they’re covered by another Microsoft license.
For details on adding product install conditions, see Create product install conditions.
You can add filter conditions to the Product install condition field to limit installations to your
development or test environments. For example, you could use the conditions Installed
on contains dev or Installed on contains test.
3. Add user allocations to your Visual Studio entitlements.
You can import user allocations using an import set and transform map. Import into the User
Allocation [alm_entitlement_user] table. In the transform map, map the Assigned to field to the
User table [sys_user]. Use the Asset tag field from the entitlement record to link the allocations
to the correct entitlements. For the coalesced value, use a two-attribute coalesce on the
entitlement and the user.
For more information, see Import sets

.

Additionally, you can change the inference percent of the Visual Studio software models. The
inference percent specifies what percentage of the components must be installed for the suite.
It can be 0% in most cases. Also, verify that the Visual Studio community edition is free. For
more details on adding inference percent and product licensability at the edition level, see
Create a software model in the Software Asset Workspace.

What to do next

Run a reconciliation to view your Visual Studio license compliance. Reconciliation runs weekly or
on demand. Reconciliation compares your purchased Visual Studio rights recorded in software
entitlements with actual installations found by Discovery. To view reconciliation results in a
simplified workbench view, navigate to Software Asset > Reconciliation > License Workbench.
For more information, see Software reconciliation for compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

436


<!-- page 437 -->
Cost-based licensing optimization for Microsoft
The cost-based licensing optimization for Microsoft helps you determine the most optimal way
to license your Microsoft software products across hybrid infrastructures. With this optimization,
you can automatically balance license compliance with cost effectiveness to maximize cost
savings.

Note: This licensing optimization is automatically included in the Software Asset
Management Professional (com.snc.samp) plugin, meaning that you do not have to
optimize and manage allocations for your Microsoft software rights manually. However,
you can choose to manage your allocations manually if the recommended licensing
optimizations do not follow your organization's licensing strategy. See Allocation
Management on ServiecNow SAM Pro
for more details on manual allocation management.

Note: You can bypass this licensing optimization in your hypervisor clusters by applying
preferred licensing assignments to the Microsoft software products that are deployed
on those clusters. For more information on preferred licensing assignments, see Create
preferred licensing assignments for Microsoft software products deployed on clusters.
This licensing optimization is supported by the following Microsoft license types:
• Per core licenses for Microsoft SQL Server and Microsoft BizTalk Server
• Per core (with CAL) licenses for Microsoft Windows Server, Microsoft Core Infrastructure
Server, and Microsoft System Center
See Supported Microsoft license types for more information on per core and per core (with CAL)
licenses.

Licensing optimization benefits
This licensing optimization provides the following benefits:
• Helps you determine the cost savings that you have already achieved through your current
software entitlement and infrastructure setup.
• Helps you determine if you can achieve further cost savings by following recommended
licensing optimizations.
• Helps you gain insight into each of the recommended licensing optimizations so that you can
understand the reasoning behind them and determine if you want to follow or ignore them.

Licensing optimization for Microsoft Server products deployed on Microsoft
Hyper-V virtualization technology
For Microsoft Windows Server Standard deployments on Microsoft Hyper-V virtualization
technology, the Software Asset Management application supports a specialized licensing
optimization that can help you achieve better cost efficiency. With this licensing optimization, the
Software Asset Management application first licenses the physical hosts that contain Microsoft
Windows Server Standard installations. It then licenses the individual VMs that contain Microsoft
Windows Server Standard installations. This optimization strategy combines licensing at both the
physical host layer and virtual layer, which can help reduce licensing requirements and costs.

Understanding your licensing optimizations
You can view and gain insight into your recommended licensing optimizations by using the
following tables and views:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

437


<!-- page 438 -->
• To view in-depth details about each of your recommended licensing optimizations, including
the recommended license type and recommend license consumption layer, use the Microsoft
Core License Optimization Reports [samp_ms_optimization_report] table. See View realized
and potential cost-based licensing optimizations for Microsoft for more details on this table.
• To view all recommended licensing optimizations for a specific Microsoft cluster, use the SAM
Cluster 360º view. See Understanding your cluster infrastructure for more information on this
view.
• To view the potential cost savings that you can achieve through your recommended licensing
optimizations, use the On-Premises potential savings by optimizing licenses report in the
Optimization and savings dashboard of the Software Asset Workspace. See Optimization
and savings dashboard in workspace for more information on the dashboard. See Publisher
optimizations for Microsoft for more information on the report.
• To view the actual cost savings that you have already achieved through your current software
entitlement and infrastructure setup, use the On-Premise optimization realized savings
report in the Optimization and savings dashboard of the Software Asset Workspace. See
Optimization and savings dashboard in workspace for more information on the dashboard.
See Publisher optimizations for Microsoft for more information on the report.
Microsoft cost-based licensing optimization example
This example demonstrates how a software asset manager can optimize Microsoft SQL Server
licensing in a cluster deployment.
In this example, a software asset manager is managing the following Microsoft SQL Server
entitlements:
Microsoft SQL Server entitlements
Number of
Purchased Rights

Cost Per
Core

SQL Server 2019 Enterprise Core with
Software Assurance

1800

$5000

SQL Server 2019 Standard Core with
Software Assurance

600

$1300

Entitlement Name

License Type

SQL Server
Enterprise Licenses
SQL Server Standard
Licenses

The following infrastructure is a VMware cluster that consists of three physical hosts. Each
physical host contains virtual machines (VMs) that are running various versions and editions of
Microsoft SQL Server. These VMs may potentially be moving across all physical hosts within the
cluster.

Based on the available entitlements and the cluster infrastructure, the software asset manager
can license the cluster using one of the following options:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

438


<!-- page 439 -->
Licensing options

Option
License Type
Number

1

SQL Server
2019 Enterprise
Core with
Software
Assurance

Number
of Rights
Licensing
Required on
Layer
Each Host or
VM

Total Number of Required
Rights

Total
Approximated
Cost

Physical
host
layer

12 rights (Host 1) + 16 rights
(Host 2) + 24 rights (Host 3)
= 52 rights total

52 rights X
$5000 =
$260,000

4 rights (VM-1) + 4 rights
(VM-2) + 4 rights (VM-3) +
4 rights (VM-4) + 4 rights
(VM-5) + 4 rights (VM-6) +
4 rights (VM-7) + 4 rights
(VM-8) + 4 rights (VM-9) +
8 rights (VM-10) + 8 rights
(VM-11) = 52 rights total

52 rights X
$5000 =
$260,000

• Host 1: 12
rights
• Host 2: 16
rights
• Host 3: 24
rights

2

SQL Server
2019 Enterprise
Core with
Software
Assurance

Virtual
layer

• VM-1: 4
rights
• VM-2: 4
rights
• VM-3: 4
rights
• VM-4: 4
rights
• VM-5: 4
rights
• VM-6: 4
rights
• VM-7: 4
rights
• VM-8: 4
rights
• VM-9: 4
rights
• VM-10: 8
rights
• VM-11: 8
rights

3

Both SQL
Server 2019
Enterprise Core
with Software
Assurance
and SQL
Server 2019
Standard Core

Virtual
layer

• SQL
Server
2019
Enterprise
Core with
Software
Assurance:

• SQL Server 2019
Enterprise Core with
Software Assurance:

(24 rights
X $5000)
+ (28 rights
X $1300) =
$156,400

4 rights (VM-1) + 4 rights
(VM-9) + 8 rights (VM-10)
+ 8 rights (VM-11) = 24
rights total

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

439


<!-- page 440 -->
Licensing options (continued)

Option
License Type
Number

Number
of Rights
Licensing
Required on
Layer
Each Host or
VM

with Software
Assurance

◦ VM-1: 4
rights
◦ VM-9: 4
rights
◦ VM-10: 8
rights
◦ VM-11: 8
rights
• SQL
Server
2019
Standard
Core with
Software
Assurance:

Total Number of Required
Rights

Total
Approximated
Cost

• SQL Server 2019
Standard Core with
Software Assurance:
4 rights (VM-2) + 4 rights
(VM-3) + 4 rights (VM-4)
+ 4 rights (VM-5) + 4
rights (VM-6) + 4 rights
(VM-7) + 4 rights (VM-8) =
28 rights total

◦ VM-2: 4
rights
◦ VM-3: 4
rights
◦ VM-4: 4
rights
◦ VM-5: 4
rights
◦ VM-6: 4
rights
◦ VM-7: 4
rights
◦ VM-8: 4
rights

The software asset manager determines that option number 3 is the most cost-effective licensing
solution for the cluster. By using this licensing option, the software asset manager can achieve a
total cost savings of approximately $103,600.
View realized and potential cost-based licensing optimizations for Microsoft
View the realized and potential cost-based licensing optimizations for your Microsoft software
products. Gain an in-depth understanding of each licensing optimization so that you can
maximize cost savings across your Microsoft deployments.

Before you begin

Role required: sam_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

440


<!-- page 441 -->
About this task

The Software Asset Management publisher pack for Microsoft supports cost-based licensing
optimizations for Microsoft. These licensing optimizations enable you to determine the
most cost-effective licensing solutions for your Microsoft software products across hybrid
infrastructures.
You can view in-depth details about your realized and potential licensing optimizations in the
Microsoft Core License Optimization Reports [samp_ms_optimization_report] table. This table
can help you
• gain insight into the licensing optimizations that have already been implemented across your
Microsoft deployments,
• gain insight into the recommended licensing optimizations that can potentially bring you
additional savings,
• better understand your Microsoft license consumption,
• determine the cost savings that you have achieved by using the Software Asset Management
application to track and manage your Microsoft licenses,
• and download optimization reports that you can share with other users in your organization.
For more information on cost-based licensing optimizations, see Cost-based licensing
optimization for Microsoft.

Procedure
1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_ms_optimization_report_list.do.
The Microsoft Core License Optimization Reports [samp_ms_optimization_report] table opens.
3. View your realized and potential cost-based licensing optimizations for Microsoft.
The Microsoft Core License Optimization Reports [samp_ms_optimization_report] table
provides detailed information about each realized and potential licensing optimization,
including the recommended license type, the recommend license consumption layer, and the
potential and realized cost savings. For a detailed description of each field in this table, see
Microsoft Core License Optimization Reports fields.
Create preferred licensing assignments for Microsoft software products deployed on clusters
Create and define preferred licensing assignments for the Microsoft software products that are
deployed on your hypervisor clusters. Use these assignments to specify whether you want to
license each software product at either the physical host layer or virtual layer.

Before you begin

Role required: sam_admin

About this task

Preferred licensing assignments take precedence over the cost-based licensing optimizations
that are recommended by default. By using a preferred licensing assignment, you can
bypass these recommended licensing optimizations to better align with your organization's
predetermined licensing strategy. For more information on cost-based licensing optimizations,
see Cost-based licensing optimization for Microsoft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

441


<!-- page 442 -->
Note: You can alternatively license a Microsoft software product on a specific
physical host, virtual machine (VM), user, or device by adding allocations directly to the
corresponding software entitlement. ServiceNow recommends that you use either preferred
licensing assignments only or allocations only on each hypervisor cluster. For more
information on adding allocations to a software entitlement, see Create entitlements in
workspace.

Procedure
1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_device_license_assignment_list.do.
The Cluster License Assignments [samp_device_license_assignment] table opens.
3. Select New.
4. On the form, fill in the fields.
Cluster License Assignment form
Field

Description

License
metric

License metric that you’re using to reconcile the Microsoft software product.

Product
version

Version of the Microsoft software product that you want to specify the licensing
layer for.

Note: If you don’t specify a product version, the Software Asset
Management application automatically selects the most cost effective
version for the licensing assignment.
Licensing Layer that you want to license the Microsoft software product on. The options are
layer
Physical and Virtual.
Product

Microsoft software product that you want to specify the licensing layer for.

Cluster

Hypervisor cluster that you have deployed the Microsoft software product on.

Product
edition

Edition of the Microsoft software product that you want to specify the licensing
layer for.

Note: If you don’t specify a product edition, the Software Asset
Management application automatically selects the most cost effective
edition for the licensing assignment.
Domain

Domain that the licensing assignment is available in.

5. Select Submit.

Result

The preferred licensing assignment is applied to the Microsoft software product.
Optimizing license consumption for Microsoft SQL Server databases and components
You can optimize the license consumption for your Microsoft SQL Server databases and
components based on the component editions that are identified through ITOM Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

442


<!-- page 443 -->
Note: To identify the editions of your Microsoft SQL Server components through ITOM
Discovery, you must request and install version 1.7.0 or later of the Discovery and Service
Mapping Patterns application from the ServiceNow Store .

Note: Both Microsoft SQL Server databases and components consume licenses against
the associated Microsoft SQL Server edition. For Microsoft SQL Server components,
®
the ServiceNow Content Service team automatically associates each component with
an appropriate Microsoft SQL Server edition based on the edition of the component.
By optimizing the license consumption for your databases and components, you are
optimizing licensing for Microsoft SQL Server and its component editions.
ITOM Discovery locates and identifies the Microsoft SQL Server databases and components
across your deployment. When it locates and identifies your Microsoft SQL Server components,
it also identifies the edition of each component. The Software Asset Management application
then creates a software installation record for each of your components based on the identified
component edition. The Software Asset Management application also create a software
installation record for each of your Microsoft SQL Server databases. You can use these software
installation records to reconcile your components and databases based on both the associated
Microsoft SQL Server edition and the following Microsoft SQL Server licensing rules:
• If your Microsoft SQL Server database and components are deployed on the same device,
only one license must be consumed on the device.
• If your Microsoft SQL Server database and components are deployed on different devices,
separate licenses must be consumed on each device.
For more information on Microsoft SQL Server component edition discovery, see MSSQL server
discovery .

Reconciling Microsoft SQL Server components based on the discovered
component editions
You can reconcile Microsoft SQL Server components based on the discovered component
editions so that licenses are optimally consumed against the appropriate Microsoft SQL Server
editions.
When you create software models for your various Microsoft SQL Server editions, such as
Microsoft SQL Server Standard or Enterprise edition, your Microsoft SQL Server components are
automatically associated with an appropriate model based on mappings that are provided by
®
the ServiceNow Content Service team. Mappings between your Microsoft SQL Server software
models and components are based on the edition of each component. The Content Service
team provides these mappings through predefined discovery maps (DMAPs) in the software
library, which is a centralized repository of software content that you can use to normalize your
discovered data. Each DMAP associates a software model with relevant software content, such
as software model suite relationships and software product lifecycles. For more information on
the Content Service and software library, see Software Asset Management Content Service.
The Software Asset Management application considers software model suites during
reconciliation so that you can accurately count your software rights and optimize your
licenses, as child components are licensed against the parent software model and not the
component itself. Reconciliation runs automatically as a scheduled job. However, you can also
run reconciliation on-demand between scheduled jobs. For more information on software
model suites, see Software Asset Management software suites. For instructions on how to run
reconciliation manually through the Software Asset Management classic application, see Run
software reconciliation in Software Asset Management classic. For instructions on how to run
reconciliation manually through the Software Asset Workspace, see Run software reconciliation
in the workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

443


<!-- page 444 -->
Importing Microsoft entitlements from a Microsoft License Statement (MLS)
You can import entitlements from an MLS to automatically define the license details and license
agreements that are matched to your Microsoft software models.
An MLS is a report that contains a comprehensive inventory of licensing information for each of
your Microsoft products. This report provides an in-depth look into your company's entire license
transaction history, which you can use to better forecast your Microsoft licensing needs.
Each MLS contains the following information:
• Organization Summary: Scope of the MLS, including the MLS type and the organizations that
are associated with the MLS.
• License Summary: Summary of the licenses that you are entitled to use.
• Transaction Summary: Detailed transaction information for each license.
• License Agreement: License agreements that are associated with each license.
• Transaction Data: Additional transaction information for each license.
• Frequently Asked Questions and Glossary: Answers to frequently asked questions and
definitions for common Microsoft terminology.
• Pivot Data: Data that you can use to generate a license position for Microsoft.
When you import licensing information from an MLS, Software Asset Management automatically
creates entitlements and license agreements using data from only the Transaction Data tab of
the MLS.
Import Microsoft entitlements from a Microsoft License Statement (MLS) in Software Asset
Management classic
Import entitlements from an MLS using the Software Asset Management classic application.

Before you begin

Before you can import entitlements from an MLS, you must request the MLS from Microsoft.
Microsoft provides the MLS as an Excel file.
Role required: sam_user or sam_admin

Procedure
®

1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_bulk_import_list.do.
The Entitlement Imports [samp_bulk_import] table opens.
3. Select New.
4. On the Entitlement Import form, fill in the fields.
Entitlement Import form
Field

Description

Import type Type of document that you’re importing software entitlements from. The options
are Standard import document and Microsoft license statement (MLS). Set
this field to Microsoft license statement (MLS).
File

Spreadsheet of software entitlements that you want to import. Select Click
to add... to search for and select the MLS Excel file that you requested from
Microsoft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

444


<!-- page 445 -->
Field

Description

Description Brief description of the software entitlement import.
Automatic
creation of
contracts

Option to enable automatic creation of both parent and child contracts for the
selected MLS. Refer to Contracts
for more information about contracts.

Import
status

Status of the import. This field populates automatically.

5. Select Import.
A confirmation message appears, informing you that the import is in progress. You can select
the link in the message to open the Entitlement import list in the Software Asset Workspace,
which provides the status of your import and the complete list of entitlement imports.
6. After the import is complete, open the corresponding entitlement import record to view
additional information about the import.
a. From the Entitlement Imports [samp_bulk_import] table, select your MLS entitlement import.
b. Use the following options to view additional information about the import:
▪ To view additional information about the import status, refer to the following fields:
Import status fields
Field

Description

Import status

Status of the import.

Number
of rows
processed

Number of Excel rows that were processed during the import.

Number
of rows
successful

Number of Excel rows that imported successfully.

Number of
rows with
errors

Number of Excel rows that imported with errors.

Number of
Number of imported Microsoft Software Assurance (SA), Step-up, From
entitlements in SA, or Add-on entitlements that are in the build state and can be linked
build state
to a base entitlement.
▪ To view the complete list of imported entitlements, select the Entitlements related list.
▪ If you enabled the Automatic creation of contracts option in step 4, view the list of
automatically created contracts by selecting the Contracts related list.

Note: These contracts are automatically linked to successfully imported
entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

445


<!-- page 446 -->
▪ To view the list of imported Microsoft SA, Step-up, From SA, or Add-on entitlements that
are in the build state and can be linked to base entitlements, select the Entitlements in
build state related list.
See step 7 for more information on how to assign a Microsoft SA, Step-up, From SA, or
Add-on entitlement to a base entitlement.
7. If your entitlement import contains any Microsoft SA, Step-up, From SA, or Add-on
entitlements, assign those entitlements to base entitlements.

Note: You can assign a From SA or Add-on entitlement to multiple base entitlements.
a. On the Entitlement Import record, select the Entitlements in build state related list.
b. From the list of available Microsoft SA, Step-up, From SA, or Add-on entitlements, select the
entitlement that you want to assign to a base entitlement.
c. On the corresponding Software Entitlement form, select Publish.
d. After the form reloads, select the Related Entitlements tab.
e. In the Related Entitlement column of the Related Entitlements list, double-click Insert a new
row.
f. When prompted, search for and select the base entitlement that you want to assign the
Microsoft SA, Step-up, From SA, or Add-on entitlement to.

Important: The base entitlement for a From SA or Add-on entitlement must use
either the Per User or Per Device license metric. In addition, it cannot already be
assigned with another entitlement or have any active allocations.

Note: If an appropriate base entitlement isn’t available for the given Microsoft SA,
Step-up, From SA, or Add-on entitlement, you can create one.
g. Select the Save (Enter) icon (

).

h. Double-click the corresponding field in the Active rights column of the Related Entitlements
list.
i. When prompted, enter the number of Microsoft SA, Step-up, From SA, or Add-on rights that
you want to grant to the base entitlement.

Important: For From SA rights, you must enter the total number of rights that you
purchased for the base entitlement. For example, if you purchased 100 rights for the
base entitlement, you must grant 100 From SA rights to that entitlement. For Add-on
rights, you can enter any number of rights equal to or less than the total number of
rights that you purchased for the given Add-on entitlement.
j. Select the Save (Enter) icon (

).

k. Select Save on the Software Entitlement form header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

446


<!-- page 447 -->
The Microsoft SA, Step-up, From SA, or Add-on entitlement is assigned to the specified base
entitlement.
l. Return to the Entitlement Import record and repeat steps a to k for each import that you want
to resolve.
8. If your entitlement import contains any errors, identify and resolve those errors.
a. On the Entitlement Import record, select Review import errors.
The Entitlement Import Errors list opens.
b. In the Error status field, select Needs review for the error that you want to resolve.
c. Update the corresponding Entitlement Import Error form as needed to resolve the error.
For descriptions of the Entitlement Import Error form fields, see Entitlement import error
fields. For details about the actions that you can take on entitlement import errors, see
Entitlement import error actions.
d. Select Import.
The associated entitlements are reimported without any errors, and you automatically return
to the Entitlement Import form.
e. Repeat steps a-d for each error that you want to resolve.
Import Microsoft entitlements from a Microsoft License Statement (MLS) in the Software
Asset Workspace
Import entitlements from an MLS using the Software Asset Workspace.

Before you begin

Before you can import entitlements from an MLS, you must request the MLS from Microsoft.
Microsoft provides the MLS as an Excel file.
Role required: sam_user or sam_admin

Procedure
1. From your ServiceNow instance, navigate to Software asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab, displaying the Software asset overview.
2. On the Software asset overview, select Create entitlement.
The Create new entitlement dialog box opens.
3. In the dialog box, select Import multiple entitlements from an Excel file and then select Next.
The dialog box closes and then the Create New Entitlement Import form opens in a new tab.
4. On the form, fill in the fields.
Create New Entitlement Import form
Field

Description

Import type

Type of document that you are importing entitlements from. Set this field to
Microsoft license statement (MLS).

File

File that you want to import entitlements from. Search for and select the
MLS Excel file that you requested from Microsoft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

447


<!-- page 448 -->
Field

Description

Description

Description of the entitlement import. This field populates automatically
based on the file that you selected in the File field.

Automatic
creation of
contracts

Option to enable automatic creation of both parent and child contracts for
the selected MLS. Refer to Contracts
for more information about contracts.

Import status

Status of the import. This field populates automatically.

5. Select Import.
A confirmation message appears, informing you that the import is in progress. You can select
the link in the message to open the Entitlement import list, which provides the status of your
import and the complete list of entitlement imports.
6. After the import is complete, open the corresponding entitlement import record to view
additional information about the import.
a. From the Entitlement import view, select your MLS entitlement import.
The corresponding entitlement import record opens.
b. Use the following options to view additional information about the import:
▪ To view additional information about the import status, refer to the following fields on the
Details tab:
Import status fields
Field

Description

Import status

Status of the import.

Number
of rows
processed

Number of Excel rows that were processed during the import.

Number
of rows
successful

Number of Excel rows that imported successfully.

Number of
rows with
errors

Number of Excel rows that imported with errors.

Number of
Number of imported Microsoft Software Assurance (SA), Step-up, From
entitlements in SA, or Add-on entitlements that are in the build state and can be linked
build state
to a base entitlement.
See step 7 for more information on how to assign a Microsoft SA, Stepup, From SA, or Add-on entitlement to a base entitlement.
▪ To view the complete list of imported entitlements, select the Entitlements tab.
▪ If you enabled the Automatic creation of contracts option in step 4, view the complete list
of automatically created contracts on the Contracts tab.

Note: These contracts are automatically linked to successfully imported
entitlements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

448


<!-- page 449 -->
7. If your entitlement import contains any errors, identify and resolve those errors.
a. On the entitlement import record, select Review import errors.
The corresponding Review entitlement import errors view opens.
b. Use one or both of the following options to resolve your import errors:
▪ Resolve errors related to your imported entitlements.
i. Select the Import errors tab.
ii. In the Error status field, select Needs review for the error that you want to resolve.
The corresponding entitlement import error record opens in a new tab.
iii. Update the record as needed to resolve the error.
For descriptions of the entitlement import error fields, see Entitlement import error
fields. For details about the actions that you can take on entitlement import errors, see
Entitlement import error actions.
iv. Select Import.
The associated entitlements are re-imported without any errors.
v. Close the record to return to the Review entitlement import errors view.
vi. Repeat steps i-v for each error that you want to resolve.
▪ Resolve errors in which imported Microsoft SA, Step-up, From SA, or Add-on entitlements
are not assigned to any base entitlements.

Note: You can assign a From SA or Add-on entitlement to multiple base
entitlements.
i. Select the Relate entitlements tab.
ii. From the list of available Microsoft SA, Step-up, From SA, or Add-on entitlements, select
the entitlement that you want to assign to a base entitlement.
iii. On the software entitlement record, select Publish.
iv. After the record reloads, select the Related Entitlements tab and then select New.
v. On the form, fill in the fields.
Create New Related Entitlement form
Field

Description

Domain

Domain that the base entitlement applies to. The default value is global.

Software
Microsoft SA, Step-up, From SA, or Add-on entitlement that you want to
Entitlement assign to a base entitlement. This field populates automatically.
Related
Base entitlement that you want to assign your Microsoft SA, Step-up,
Entitlement From SA, or Add-on entitlement to.

Important: The base entitlement for a From SA or Add-on
entitlement must use either the Per User or Per Device license
metric. In addition, it cannot already be assigned with another
entitlement or have any active allocations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

449


<!-- page 450 -->
Field

Description

Note: If an appropriate base entitlement is not available for the
given Microsoft SA, Step-up, From SA, or Add-on entitlement, you
can create one.
Active
rights

Number of Microsoft SA, Step-up, From SA, or Add-on rights that you want
to grant to the base entitlement.

Important: For From SA rights, you must enter the total number
of rights that you purchased for the base entitlement. For example,
if you purchased 100 rights for the base entitlement, you must grant
100 From SA rights to that entitlement. For Add-on rights, you can
enter any number of rights equal to or less than the total number of
rights that you purchased for the given Add-on entitlement.

vi. Select Save.
vii. Close the software entitlement record to return to the Review entitlement import errors
view.
viii. Repeat steps i-vii for each Microsoft SA, Step-up, From SA, or Add-on entitlement that
you want to assign to a base entitlement.
Windows and SQL Server Infrastructure report
You can use the Windows and SQL Server Infrastructure report to gain visibility into the
infrastructure details for all physical hosts and virtual machines (VMs) that are running
Microsoft Windows Server or Microsoft SQL Server across your on-premise and public cloud
environments, such as AWS and Microsoft Azure.
The Windows and SQL Server Infrastructure report is available in both the Software Asset
Workspace and the Software Asset Management classic application.
To view this report in the Software Asset Workspace, navigate to Workspaces > Software
Asset Workspace. From the Software Asset Workspace, navigate to License usage > Reports >
Windows and SQL Server Infrastructure.
To view this report in the Software Asset Management classic application, navigate to All >
Reports > View/Run. From the list of available reports, search for and select Windows and SQL
Server infrastructure details report. When the corresponding Edit report page opens, select
Run.
Windows and SQL Server infrastructure report
Field

Description

Deployment
type

Type of deployment that the physical host or VM is running in. The options are
On premise and Cloud.

Cloud
provider

Cloud provider that Microsoft Windows Server or Microsoft SQL Server is
deployed on. The options are AWS and Microsoft Azure.

Note: This field is applicable for cloud deployments only.
vCenter

VMware vCenter Server that you are using to manage the physical host or VM in
a virtual VMware vSphere environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

450


<!-- page 451 -->
Windows and SQL Server infrastructure report (continued)
Field

Description

Note: This field is applicable only if you are using VMware virtualization
technology.
Cluster

Cluster that the physical host or VM resides in.

Host

For physical hosts, this field identifies the host that Microsoft Windows Server or
Microsoft SQL Server is installed on.
For VMs, this field identifies the physical host that the VM is running on.

Host
processor
count

Number of CPUs that are assigned to the physical host.

Host core
count

Number of cores within each CPU that is assigned to the physical host.

Virtualization Virtualization technology that you are using to deploy and manage your physical
technology hosts and VMs.
Virtual
server

VM on which you are running Microsoft Windows Server or Microsoft SQL
Server.

Note: If a VM resides in an on-premise cluster, it can migrate to any
physical host within that cluster. Additionally, if you are using VM-Host
affinity rules to specify the physical hosts on which a VM can run, the VM
can migrate to any physical host that is specified in those rules. In these
scenarios, the same VM can appear on the Windows and SQL Server
Infrastructure report multiple times based on the physical hosts to which it
can migrate.

Note: This field is applicable for VMs only.
Windows
Server
installation

Microsoft Windows Server version that is installed on the physical host or VM.

SQL Server
installation

Microsoft SQL Server version that is installed on the physical host or VM.

VM
processor
count

Number of virtual CPUs (vCPUs) that are assigned to the VM.

VM core
count

Number of virtual cores within each vCPU that is assigned to the VM.

If multiple Microsoft Windows Server versions are installed on the same host or
VM, this field displays all installed versions using a comma-separated list.

If multiple Microsoft SQL Server versions are installed on the same host or VM,
this field displays all installed versions using a comma-separated list.

Note: This field is applicable for VMs only.

Note: This field is applicable for VMs only.

VM CPU
Number of threads that divide each virtual core within the vCPUs that are
thread count assigned to the VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

451


<!-- page 452 -->
Windows and SQL Server infrastructure report (continued)
Field

Description

Note: This field is applicable for VMs only.
Cloud host
type

Type of cloud host that the VM is running on. The options are Shared and
Dedicated.

Note: This field is applicable for cloud deployments only.
Cloud
license type
- Windows
Server

Cloud license type of the Microsoft Windows Server installation. The options are
BYOL and License Included.

Note: This field is applicable for cloud deployments only.

Cloud
Cloud license type of the Microsoft SQL Server installation. The options are
license type BYOL and License Included.
- SQL Server
Note: This field is applicable for cloud deployments only.
Microsoft dashboards in Software Asset Management classic
View installations, cost, and compliance for Microsoft software such as SQL Server in the
Software Asset Management classic application. View subscription use, cost, and compliance for
Microsoft 365.

Note: The add-on Microsoft publisher pack (com.snc.samp.microsoft) plugin must be
installed to view the dashboards.
Dashboards are updated whenever a new reconciliation result is available. You can save charts
in PNG or JPG format.

Software Publisher Analytics dashboard for Microsoft
Access the Software Publisher Analytics dashboard for Microsoft by navigating to Software
Asset > Publisher Overview.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

452


<!-- page 453 -->
Microsoft tab
Report

Source list

Description

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.
Select the report to view
the results in the License
Workbench.

True-up Cost

Product Results

Cost to be compliant based
on the average prices for
entitlements for the rights.

Over-Licensed Amount

Product Results

Cost of licenses owned but
not being used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

453


<!-- page 454 -->
Microsoft tab (continued)
Report

Source list

Description

Reclamations Requiring
Attention

Reclamation Candidates

State is Attention Required.

Potential Savings

Reclamation Candidates

Cost saved if removal
candidates are reclaimed.

Actual Savings Year-to-date

Reclamation Candidates

Closed this Year and the State
is set to Closed Complete.

Products by True-up Cost

Product Results

Greatest true-up costs by
product.

Products by Potential Savings

Reclamation Candidates

Greatest potential savings by
product.

Microsoft Software Lifecycle
Report

Software Lifecycle Report

Number of products in each
software lifecycle phase,
including End of Extended
Support, End of Life, and End
of Support.

Microsoft Products Across
Hybrid Environments

Software Installations

Distribution of Microsoft
products across on-premise
and cloud environments.

License Types on Microsoft
Azure

Software Installations

License types used on
Microsoft Azure.

License Types on AWS

Software Installations

License types used on AWS.

SQL Server Install Breakdown

Software Installations

Total software installations per
SQL Server.

SQL Server Active Right
Breakdown

Software Entitlements

Number of total active rights
per SQL Server.

Office 365 & Adobe Cloud dashboard
Only Microsoft 365 software products that are recognized as subscription software are shown.
Microsoft Office 365 integration must be set up to view compliance information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

454


<!-- page 455 -->
Report

Source list

Description

Number of Assigned
Subscriptions

Software Subscriptions

Aggregate sum of the number
of subscriptions that are used
(for example, user accounts
active).

Percentage of Unused
Subscriptions

Software Subscriptions

Ratio of rights available to
rights owned.

Total Number of Purchased
Subscriptions

License Metric Results

Total number of rights owned.

Current Subscription Spend

License Metric Results

Aggregate sum of the total
cost for subscription rights.

Software Models Out of
Compliance

Software Model Results

Number of software models
out of compliance.
Select the report view
the results in the License
Workbench.

True-up cost

Software Model Results

Sum of true-up costs on the
latest software model results.

Subscriptions Consumption
Trend

Software Subscriptions

Trend assigned, active, and
available subscriptions.

Assigned Subscription
Breakdown

Software Subscriptions

License Metric Results

Breakdown of assigned
subscriptions by software
model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

455


<!-- page 456 -->
Report

Source list

Description

Available Subscription
Breakdown

License Metric Results

Breakdown of total active
rights by software model.

Subscription Spend
Breakdown

License Metric Results

Breakdown of subscription
total cost by product/version/
edition (software model).

Publisher overview for Microsoft in the Software Asset Workspace
View license usage information related to Microsoft in the publisher overview for Microsoft in the
Software Asset Workspace.
From the Software Asset Workspace, access the Microsoft publisher overview by navigating
to License usage > Publishers and then selecting Microsoft from the list of available software
publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the
Microsoft publisher overview.
Microsoft Summary
Report

Description

True-up
cost

Cost to be compliant based on the average price of rights in your Microsoft
software entitlements.

Potential
savings

Potential cost savings for your Microsoft licenses.

Actual
savings

Actual cost savings for your Microsoft licenses.

Unlicensed Summary of your unlicensed entities.
entities
This summary includes the following information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

456


<!-- page 457 -->
Microsoft Summary (continued)
Report

Description

• Unlicensed installs: Total number of unlicensed Microsoft software installations.
Select the number to view the complete list of unlicensed Microsoft software
installations.
• Installs requiring action: Total number of Microsoft software installations that
you must take action on. Select the number to view the complete list of these
Microsoft software installations.
• Unlicensed subscriptions: Total number of unlicensed Microsoft subscriptions.
Select the number to view the complete list of unlicensed Microsoft
subscriptions.
• Unlicensed client access: Total number of unlicensed Microsoft client access
records. Select the number to view the complete list of unlicensed Microsoft
client access records.
Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of Microsoft software installations that were
ignored during reclamation. Select the number to view the complete list of
ignored Microsoft software installations.
• Removal candidates: Total number of Microsoft removal candidates. Select the
number to view the list of all software removal candidates.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.
Supported Microsoft license types
The Software Asset Management publisher pack for Microsoft adds license metrics that are
specific to Microsoft.
The license metrics are available when Microsoft is selected as the Metric group for the
entitlement.

Note: For details on the license metrics that are supported by each Microsoft product, see
License metrics for Microsoft products.

Per user licenses
A per user license is used when each user accessing the software is licensed, regardless of the
number of devices they use to access the software.
To define the number of installations a user has, select the Maximum installs per right on the
Metric Attribute related list of the associated software model. If the user exceeds the number
of installations you've defined, additional rights are consumed until the user is fully licensed, or
there are no more rights available.
You can manage user allocations for the per user license metric. Users are assigned a quantity
of rights. Even if they don't need all of the allocations, the user will consume the number of rights
you've allocated to them. If a user isn't assigned to a device, a right will be consumed for each
unique device with a software installation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

457


<!-- page 458 -->
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for each unique user that has at least one installation of
the software on any device assigned to them.
When a software model has downgrade or upgrade rights to another versions of a software
product, rights are assigned to users with the specified versions of software installed after the
primary version of the software has been fully licensed.

Per device licenses
A per device license is used when each device accessing the software is licensed, regardless of
the number of users accessing the software.
To define the number of installations a device can have, select the Maximum installs per right
on the Metric Attribute related list of the associated software model. If the device exceeds the
number of installations you've defined, additional rights are consumed until the device is fully
licensed, or there are no more rights available.
You can manage device allocations for the per device license metric. Devices are assigned
a quantity of rights. Even if they don't need all of the allocations, the device will consume the
number of rights you've allocated to them.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for each unique device that has at least one installation
of the software.
When a software model has downgrade or upgrade rights to another versions of a software
product, rights are assigned to users with the specified versions of software installed after the
primary version of the software has been fully licensed.

Per core licenses
A server processor is one of the main components of a server. Each server processor contains
smaller processing units called cores and the number of cores your processor has is dependent
on your system hardware.
System hardware runs in an operating system environment (OSE) and they act as middleware
between the operating system and the software applications on your system. OSEs can be either
physical or virtual. Depending on the OSE you have, your processor will be physical, virtual, or a
combination of both.
Regardless of whether your processor is in a physical or virtual OSE, Microsoft requires that
every processor core running SQL Server, Windows Server, or any of their components must
be licensed. However, the number of core licenses you need will depend on whether you are
licensing a physical server or an individual virtual OSE. The number of licenses you need is
based on the core factor table provided by Microsoft.

Note: If you are licensing a Microsoft cluster that contains both physical servers and
virtual OSEs, you can use cost-based licensing optimizations to determine if it is more
cost-effective to license the physical servers only, virtual OSEs only, or a combination of
both. See Cost-based licensing optimization for Microsoft for more information on these
optimizations.
Use the per core license metric for any of your physical or virtual core-based licenses. If you
are licensing a virtual OSE, you must use either an active Microsoft Software Assurance (SA) or
Microsoft software subscription license.
During reconciliation, for a software model that has one or more software entitlements that
use this license metric, a check is done to see which edition of the software is installed. If the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

458


<!-- page 459 -->
software is an Enterprise edition, a set number of rights are consumed based on the normalized
core count on a physical server that has at least one installation of the Enterprise edition
software in the physical operating system environment (OSE) or on a virtual machine (VM)
hosted by the physical server. Another check is run to ensure that the number of OSEs that
have an Enterprise edition install don't exceed the number of core rights applied to the physical
server. If the number of OSEs exceeds the number of core rights, a core right will be consumed
for each additional OSE. If the edition is anything but Enterprise, a right is still consumed for
every core on a physical server that has at least one install in the physical OSE. The difference
is the additional check. In this case, the check ensures that these other editions of software are
only installed on the physical server.
If other editions of software are found in a virtual environment and no other rights are owned,
then the reconciliation result will be not compliant.
You can manage device allocations. Devices are assigned a quantity of rights. Even if they don't
need all of the allocations, the device will consume the number of rights you've allocated to
them. For this license metric, all device allocations should be created against the physical server.
No matter what edition of the software it is, if the normalized core count is less than the specified
value in the Minimum cores per processor metric attribute related to the software model, then
the minimum number of rights will be consumed.
For more information on Microsoft per core licenses, see Microsoft Per Core licensing rules.

Per core (with CAL) licenses
You can manage device allocations for this license metric. Devices are assigned a quantity of
rights. Even if they don't need all of the allocations, the device will consume the number of rights
you've allocated to them. For example, if a device allocation with a quantity of six is created for
a server, but only four core rights are needed to fully license the server, six rights would still be
consumed during reconciliation. The additional two rights would be considered allocated not in
use in the reconciliation results.
For the Per core (with CAL) license metric, device allocations can be created against a physical
server or virtual machine (VM). Device allocations that are created against a VM must be
licensed using either an active Microsoft Software Assurance (SA) or Microsoft software
subscription license. If the core count is less than the specified value in either the Minimum
cores per processor or Minimum cores per server metric attributes of the software model, the
minimum number of rights will be consumed.

Note: If you are licensing device allocations on a Microsoft cluster that contains both
physical servers and VMs, you can use cost-based licensing optimizations to determine if
it is more cost-effective to license the physical servers only, VMs only, or a combination of
both. See Cost-based licensing optimization for Microsoft for more information on these
optimizations.
This license metric should be used with device or user CAL license metrics. You need to create
software entitlements using those license metrics separately.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for every core on a physical server that has at least one
installation of the software in the physical OSE or on a virtual machine hosted by the physical
server. A check runs to verify that the number of installations within an OSE and the number of
active OSEs don't exceed the specified maximums you defined in the Metric Attributes related
list on the Software Model form.
If the specified number of installs and OSEs are exceeded, core rights that are equal to the
number of cores or minimum cores on either the physical server or VM will be consumed until all
installs and OSEs are licensed or there are no more available rights.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

459


<!-- page 460 -->
For more information on Microsoft per core (with CAL) licenses, see Microsoft Per Core (with
CAL) licensing rules.

User CAL licenses
A user CAL license is a client access license (CAL) that allows users to access a server to use its
services, regardless of the number of devices the user uses to access the services.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, the number of rights consumed is equal to total user count in all client access
records related to that software model.

Device CAL licenses
A device CAL license is a client access license (CAL) that allows a set number of devices to
access a server to use its services, regardless of the number of users accessing the services
from the device.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, the number of rights consumed is equal to total device count in all client
access records related to that software model.

Server (per instance) licenses
A server (per instance) license is used to license a set number of software installations on either
a physical server or virtual machine.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for the number of installations that exist in an OSE. If the
number of installations in an OSE exceeds the value specified in the maximum installs per OSE
metric attribute, additional rights will be consumed until all installations on a physical server or
virtual machine are licensed or there are no more rights variable.
You can manage device allocations. Devices are assigned a quantity of rights. Even if the
software installations, the device will consume the number of rights you've allocated to them
during reconciliation. For example, if a device allocation with a quantity of two is created for a
server, but only one server (per instance) right is needed to fully license the server, two rights
would still be consumed during reconciliation. The extra right would be marked as allocated no
in use in the license metric results. Device allocations can be created against physical servers or
virtual machines.

Server (per server) licenses
A server (per server) license is used to license all software installations on a physical server and
any virtual machines hosted by the physical server.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for every unique physical server. This license metric
differs from the per device license metric, which consumes a right for every unique physical
server and virtual machine that has a software installation.
You can manage device allocations. Devices are assigned a quantity of rights. Even if the
software installations, the device will consume the number of rights you've allocated to them
during reconciliation. For example, if a device allocation with a quantity of two is created for a
server, but only one right is needed to fully license the server, two rights would still be consumed
during reconciliation. The extra right would be marked as allocated not in use in the license
metric results. Device allocations should be created against the physical server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

460


<!-- page 461 -->
Per Processor licenses
A per processor licenses is used to license a number of processors on a physical server.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for processors on a physical server that have at least one
installation of the software in the physical OSE or on a virtual machine hosted by the physical
server. The quantity of processors licensed by a single right is determined by the Maximum
processor per rights on the Metric Attribute related list of the software model.
An additional check is done to ensure that the number of installations in an OSE and the number
of OSEs on a server don't exceed the specified maximums in the Maximum installs per OSE and
Maximum active OSEs per server Metric Attribute related list of the software model. If any of the
metric attributes are exceeded, additional rights are consumed until all processors, installs, and
OSEs are licensed, or there are no more available rights. Per processor rights cannot partially
license a physical server or license software installations on two different physical servers.
You can manage device allocations. Devices are assigned a quantity of rights. Even if the
software installations, the device will consume the number of rights you've allocated to them
during reconciliation. All device allocations should be created against the physical server.

User Subscription licenses
User subscription licenses a user for the number of activated software subscriptions.
During reconciliation, for a software model that has one or more software entitlements that use
this license metric, a right is consumed for each unique user that has at least one software
subscription record associated with the software model. Any software installations that
correspond with the software model will also be licensed. However, if a user has software
installations, but no subscription record, that user will not consume a right and the installations
will be unlicensed.

Software Assurance licenses
Microsoft Software Assurance (SA) is the maintenance program used by Microsoft to provide
active maintenance to its users. For more information, see Software license maintenance.

Software Asset Management publisher pack for Oracle
Use the Software Asset Management publisher pack for Oracle to track and optimize licensing
for your Oracle products.
The Oracle publisher pack supports the following Oracle products:
• Oracle Database
• Oracle Database options
• Oracle management packs
• Oracle Weblogic Server
• Oracle Java
To use the publisher pack, activate the Software Asset Management Professional for Oracle
plugin (com.snc.samp.oracle).

Oracle licensing
The Oracle publisher pack adds Oracle specific licensing options for software entitlements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

461


<!-- page 462 -->
Software entitlement fields
Field

Options

Agreement Type

• Generic
• Unlimited License Agreement (ULA)

License metric

• Named User Plus
• Per Processor
• Employee

Metric group

Oracle

Important: The Software Asset Management application supports Bring Your Own
License (BYOL) for Oracle Database and WebLogic servers across hybrid infrastructures.
With BYOL support, you can track licenses for your Oracle Database and WebLogic servers
in both on-premise and public cloud environments. For more information about Oracle
BYOL support, see Bring your own license or subscription to the public cloud.
Additionally, you can use the Oracle Global License Advisory Services (GLAS) to manage
licensing of your deployed Oracle software products. For more information, see Oracle
GLAS data collection .

Oracle license metrics
The Software Asset Management application supports the following license metrics for Oracle:
Named User Plus
The Named User Plus license metric licenses all users and physical devices that
access the following Oracle products:
• Oracle Database
• Oracle Database options
• Oracle management packs
• Oracle Weblogic Server
If a user operates a device that accesses any of these Oracle products, the Named
User Plus license metric licenses both the user and the device. Use this license
metric in environments where users and devices are easily identifiable and
countable.

Important: To use this license metric, you must create a corresponding
client access record. Client access records enable you to track and manage
the users or devices that are accessing a particular version of your software.
The Software Asset Management application can then use the information in
these client access records to reconcile your software. For more information
on client access records, see Create a software client access record
in workspace or Add a software client access record in Software Asset
Management classic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

462


<!-- page 463 -->
The Named User Plus license metric implements different licensing minimums
based on the Oracle Database or Oracle WebLogic Server edition that your users
and devices are accessing.
• If your users and devices are accessing Oracle Database Standard Edition (SE)
or Standard Edition One (SE1), you must have a minimum of five Named User Plus
licenses.
• If your users and devices are accessing Oracle Database Standard Edition 2
(SE2), you must have a minimum of 10 Named User Plus licenses per database
server. In addition, each SE2 database can use a maximum of 16 CPU threads at
any given time.
• If your users and devices are accessing Oracle Database Enterprise Edition (EE),
you must have a minimum of either 25 Named User Plus licenses per processor
or the total number of users and devices that are accessing this database edition.
The license metric sets this licensing minimum to the larger of the two values.
• If your users and devices are accessing Oracle WebLogic Server Standard
Edition, you must have a minimum of 10 Named User Plus licenses per processor.
• If your users and devices are accessing Oracle WebLogic Server Enterprise
Edition, you must have a minimum of 10 Named User Plus licenses per processor
core.
Licensing minimums are automatically applied to the software models for your
Oracle products using the following metric attributes:
• Minimum users per processor (Oracle Database products)
• Minimum NUPs for WebLogic on-premise deployments (Oracle WebLogic
Server products in on-premise environments)
• Minimum NUPs for WebLogic cloud deployments (Oracle WebLogic Server
products in cloud environments)
The Software Asset Management application can then use the metric attribute
values to determine the number of rights that are required for each Oracle product.
To determine this number, the Software Asset Management application multiplies
the appropriate metric attribute value by the number of processors (Oracle
WebLogic Server Standard Edition and all Oracle Database Standard editions) or
processor cores (Oracle WebLogic Server Enterprise Edition and Oracle Database
Enterprise Edition) on the underlying physical server that the Oracle product is
installed or running on. The resulting value is compared against the total number of
users and devices that are accessing the Oracle product. The number of required
rights is set to the larger of the two values.
For example, 20 users are accessing an Enterprise Edition (EE) database that is
running on a physical server with eight processor cores. The Named User Plus
license metric consumes 200 rights because the number of rights that is based
on the metric attribute value (25 minimum licenses x 8 CPU cores = 200 rights) is
greater than the number of users that are accessing the database (20 users).
Per Processor
The Per Processor license metric licenses the server processors on which you
install or run the following Oracle products:
• Oracle Database
• Oracle Database options
• Oracle management packs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

463


<!-- page 464 -->
• Oracle Weblogic Server
• Oracle Java
Although you can install and run Oracle products on physical servers, virtual
servers, partitioned servers, and the cloud, the Per Processor license metric
licenses processors on only the underlying physical server or cloud server.
The Per Processor license metric calculates the number of rights that are required
for your Oracle products by multiplying the total number of processor cores by a
core processor licensing factor, as specified on the Oracle Processor Core Factor
Table . Use this license metric in environments where large numbers of users
and devices are accessing the same environment or where users are not easily
identifiable and countable, such as the Internet.
For example, a physical server that is running an Enterprise Edition (EE) database
has two processors with four cores each. If your core processor licensing factor is
0.5, the Per Processor license metric consumes four rights for the physical server.
2 CPUs x 4 CPU cores x 0.5 licensing factor = 4 rights.
When you allocate rights for a database using the Named User Plus or Per
Processor license metric, Software Asset Management automatically allocates
rights for the associated database options and management packs using the same
license metric.
If you create a Client Access License (CAL) record to specify the number of users
or devices that can access an Oracle Database or WebLogic server, the Software
Asset Management application licenses users and devices using only the Named
User Plus license metric. Software Asset Management does not use the Per
Processor license metric even if Per Processor licenses are available.
Employee
The Employee license metric licenses the total number of full-time, part-time, and
temporary employees, including those employed directly and indirectly through
agents, contractors, and consultants, according to Oracle's definition of internal
business operations.
The Employee license metric calculates the number of licenses that are required
by the total number of employees and not the number of employees that use
the Oracle Java SE Universal. The licensing cost is calculated using a tier-based
pricing model defined by Oracle. The pricing model is stored in the Price tier
[samp_price_tier] table. For more details, see Pricing model for Oracle Java SE
Universal.
Additionally, for the Employee license metric, the true-up cost is shown for a
subscription period of one year.
When you run reconciliation for a software model that has one or more entitlements
with the Employee license metric, a right is consumed for each employee recorded
in the resource value records. You can create a resource value record for the Java
SE software model keeping the value of units consumed same as the number of
employees consuming the licenses. For details, see Create a resource value record.
When you're using a custom tier table, you can update the override license cost
records associated with the Java SE software model. For details, see Create or
update an override license cost record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

464


<!-- page 465 -->
Oracle verified third-party vendor tool
To collect installation and usage data for the Oracle products that are deployed in your
environment, you must use a discovery process. With the verification and enrollment of
ServiceNow in the Oracle Third-Party Tool Vendor (3PTV) Program, the ServiceNow Discovery
application and Software Asset Management application are both verified by Oracle to collect
and report on this data without requiring any Oracle measurement tools. You can collect and
report on data for Oracle Database, Oracle WebLogic Server, Oracle Fusion Middleware, and the
underlying hardware that supports these products.
During contract renewals and audits, Oracle requires you to provide specific usage data for
your Oracle products. You can collect this data by running scripts that are provided by Oracle.
These scripts collect data about the Oracle products that are deployed in your environment, as
well as the physical and virtual hardware that supports those products. However, the process of
collecting and reviewing this data can be very time consuming.
The ServiceNow Discovery application uses Oracle-verified Discovery patterns and reporting to
collect the same data that is provided in the script output. You can collect this data regularly to
track your compliance and minimize unexpected audit results.
For more information on Oracle discovery, see Oracle Global License Advisory Services (GLAS)
data collection .

Note: To access all the benefits of ServiceNow Discovery, request and install the CMDB
CI Class Models application from the ServiceNow Store. See CMDB CI Class Models store
app
for more information on this application.
Oracle Database and WebLogic Server licensing in partitioned environments
The Software Asset Management application supports Oracle licensing rules for Oracle
Database and WebLogic Server in both soft- and hard-partitioned environments. You can use
partitioning to help reduce the number of licenses that are required for your installations.
Oracle Database and WebLogic Server licensing in soft-partitioned environments
The Software Asset Management application supports Oracle Database and WebLogic Server
licensing rules in soft-partitioned environments, such as VMware and Nutanix virtualization
technology.
Soft partitioning enables you to segment the operating system (OS) of the environment into
different OS types and OS versions by using OS resource managers. OS resource managers limit
the number of processors that each Oracle database or WebLogic server can run on by creating
segments in which CPU resources are allocated to applications within the same OS. For more
information about Oracle licensing and soft partitioning, refer to the Oracle Help Center .

VMware vSphere
VMware vSphere is a virtualization platform through which you can install and run Oracle
databases or WebLogic servers on virtual machines (VMs). To run an Oracle database or
WebLogic server on a VM, you must license all processors on the underlying physical ESXi
host that is running your VM. If your physical ESXi host is running multiple VMs simultaneously,
you must still license all processors on the host regardless of how many VMs are running the
Database or WebLogic server.
Oracle licensing on VMware vSphere is based on the VMware vMotion capability that is
associated with each vSphere version. VMware vMotion is the VMware vSphere technology that
enables VMs to migrate from one physical ESXi host to another without service interruptions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

465


<!-- page 466 -->
The Oracle publisher pack supports the following Oracle licensing models on VMware vSphere:
Oracle licensing models on VMware vSphere
VMware
vSphere VMware vMotion capability
version

Licensing model

VMware VMs can migrate to any physical ESXi host
vSphere within the same shared storage under the same
ESXi
datacenter.
5.0 and
earlier

You must license the processors
on all physical ESXi hosts within
the same shared storage under
the same datacenter.

VMware VMs can migrate to any physical ESXi host within
vSphere the same VMware vCenter Server instance.
ESXi
5.1-5.5

You must license the processors
on all physical ESXi hosts within
the same VMware vCenter Server
instance.

VMware
vCenter
Server
6.0 and
later

You must license the processors
on all physical hosts that run
VMware vSphere ESXi 5.1 or later
within all VMware vCenter Server
6.0 and later instances across
your network.

VMs can migrate to physical ESXi hosts within
any VMware vCenter Server instance across
your network. Migration is supported only on
physical hosts that run VMware vSphere ESXi 5.1
or later on VMware vCenter Server 6.0 and later
instances.

Important: If you enable the Use host affinity for reconciling licenses for Oracle

databases and WebLogic servers on VMware at the vCenter(s) aggregation level
option in your Software Asset Management properties, the Software Asset Management
application honors all VM-Host affinity rules when reconciling Oracle licenses within your
VMware vCenter Server instances. In this scenario, licensing is based on the sum of all
physical ESXi hosts that the VMs can reside on, as specified in your VM-Host affinity rules.

For more information about Oracle licensing on VMware, see Understanding Oracle Certification,
Support and Licensing for VMware Environments .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

466


<!-- page 467 -->
Nutanix Acropolis Hypervisor (AHV)
The AHV is a virtualization platform from Nutanix using which you can install and run Oracle
databases and WebLogic servers on Nutanix VMs. According to Oracle’s Server Partitioning
Policy, only specific technologies, possibly with certain modified configuration constraints, are
considered hard partitioning. Nutanix isn’t included in Oracle’s list of approved hard partitioning
technologies. Therefore, to run an Oracle Database on a Nutanix VM, you must license all
physical cores on the AHV host running the VM with Oracle Database.
Additionally, if the physical host is part of a Nutanix Cluster, you must license all the physical
cores in that cluster. The Oracle publisher pack supports licensing at both the cluster level and
the host level, provided there’s no Nutanix cluster.
In the following example, the license consumption for deploying a database on Virtual Machine
VM1 is calculated at the cluster level. This calculation implies that all physical cores across all
hosts in Cluster1 are counted for licensing.

Oracle Database and WebLogic Server licensing in hard-partitioned environments
The Software Asset Management application supports Oracle hard-partitioning licensing rules
for IBM AIX Logical Partition (LPAR), Solaris Logical Domain (LDOM), and Solaris Zone.
When you hard partition a server, the server is divided into smaller systems that run
independently from each other. Each system contains its own processors, network resources,
operating system, memory, and more. For more information on Oracle licensing and hard
partitioning, refer to Oracle Partitioning Policy .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

467


