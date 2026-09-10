# Zurich IT Asset Management — SaaS License Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 530–679 of 2359 | Part 1 of 3

Sections: SaaS License Management (p530)

---

<!-- page 530 -->
transferred to the ServiceNow instance. The data is normalized and reconciled to produce
reports. You can see the total spend on engineering software, the most denied products, license
usage over time, and many other reports on the Engineering License Overview dashboard
(Software Asset Management classic application) or the Engineering License overview
dashboard in workspace (Software Asset Workspace).

Important: For more details on the OpenLM setup and configuration, refer to the
Supporting Links and Docs section of the OpenLM Adapter Integration
ServiceNow Store.

page in the

For more details on the Open iT setup and configuration, refer to the Open iT
LicenseAnalyzer page in the ServiceNow Store.

SaaS License Management
SaaS License Management helps organizations track and control cloud-based applications and
service subscriptions as part of Software Asset Management (SAM). It promotes ownership,
visibility, agility, and accountability, enabling better cost control and efficient use of resources.

SaaS subscription models
SaaS applications and services are typically subscribed to on a per-user basis. They generally
fall into two categories:
• Hybrid SaaS
Hybrid SaaS combines on-premise installations with cloud-based subscriptions. It’s commonly
used by organizations that require offline access to certain applications while also using
cloud features for collaboration. This model is also suitable for businesses with compliance
requirements that mandate local installations. For example, a Microsoft 365 subscription
enables you to access cloud services and install applications like Microsoft Excel on their
devices. SAM supports the following Hybrid SaaS integrations:
◦ Adobe Cloud integration
◦ Microsoft 365 integration
• Direct SaaS
Direct SaaS refers to applications where all data and functionality are hosted in the cloud
and accessed through the internet. You typically log in via a web browser or a dedicated app
without installing software locally. For example, a Miro subscriber accesses the application
entirely online. This model is common for organizations that prioritize ease of deployment and
minimal maintenance, and for teams that work remotely or across multiple locations.

Important: This topic focuses on the Direct SaaS category. It explains how to get
started, identifies areas where Direct SaaS can be applied, and outlines ways to use
available solutions and workflows effectively.

Managing Direct SaaS with the SaaS License Management application
Managing Direct SaaS applications can vary based on organizational needs. The best approach
depends on factors such as the level of integration required, available APIs, and whether Single
Sign-On (SSO) is in place.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

530


<!-- page 531 -->
• Use Direct Integration when you need deep usage insights and automated license
management for supported vendors.
• Use SaaS License Connections when you want flexibility to connect any SaaS app with a
public API and prefer a low-code setup.
• Use SSO Integration when you need visibility into apps connected through an SSO provider
and want to address SaaS sprawl.
For more information about installing SaaS License Management, see Request SaaS License
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

531


<!-- page 532 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

532


<!-- page 533 -->
Approaches to manage your SaaS applications
Option

Direct Integration

Key features

Benefits

• Base system or default
direct integrations

• Provides detailed usage
insights

• Automated license
reclamation

• Automates license
management
• Reduces manual effort

SaaS License Connections

SSO Integration

• Connect to any SaaS
application with a public API

• Flexible for any SaaS
application

• Low-code framework using
®
ServiceNow via Integration
Hub
and Workflow Studio

• Customizable workflows

• Connect via SSO providers
such as Okta and Microsoft
Entra ID.

• Helps tackle SaaS sprawl

• Download the list of
applications or users

• Improves cost control
• Simplifies user access
management

• Identify overlapping
software and rationalize
applications

Request SaaS License Management
Request the Software Asset Management - SaaS License Management plugin (sn_sam_saas_int)
so that you can create and manage integrations with your SaaS and Single Sign-on (SSO)
applications. You can use these integrations to track license usage and to reclaim unused
licenses.

Before you begin

Activate the ServiceNow Software Asset Management Professional plugin (com.snc.samp)
on your ServiceNow instance. For more information on how to request and activate the
Software Asset Management Professional plugin (com.snc.samp), see Request Software Asset
Management.
Role required: admin

About this task

To use the SaaS License Management application, you must request the Software Asset
Management — SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow
Store.

Note: When upgrading to the Software Asset Management – SaaS License Management
plugin (sn_sam_saas_int) version 16.0.6 or later in the Zurich release, verify that the
Software Asset Workspace store app (sn_sam_workspace) is updated to version 9.0.4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

533


<!-- page 534 -->
Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter Software Asset Management - SaaS License
Management and then select Search.
4. Select the result called Software Asset Management - SaaS License Management.
5. On the Software Asset Management - SaaS License Management page, select Request Install.
6. In the ServiceNow Request for App Installation - Software Asset Management - SaaS License
Management dialog box, fill in the fields.
ServiceNow Request for App Installation - Software Asset Management - SaaS License
Management dialog box
Field

Description

Instance
Name

Name of the instance on which you want to install the plugin. After you enter the
instance name, select Validate Instance to verify that the instance exists.

Reason
for
request

Reason for requesting the plugin.

7. Select Request.
8. Select Close.

Result

If your request is approved, you receive an email with detailed instructions on how to install the
plugin.

What to do next

Install the plugin according to the instructions from the email.
Navigate to All > Admin Center > Application Manager. On the Application Manager page,
search for and select Software Asset Management - SaaS License Management.
After the application is installed and ready for use, you can choose the required SaaS
applications that you need by selecting Install optional features on the Application Manager
page.
You can see the primary features and the list of optional features that you can select in the
Review Installation Details dialog box. If you haven't selected any optional features, you would
get the base system features of this application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

534


<!-- page 535 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

535


<!-- page 536 -->
After you select the optional features, select Install. You can initiate or schedule the installation
process by selecting Install now or Install later. View the installation progress and you’ll get a
success message after the installation is complete.
Installed with SaaS License Management
User roles and tables are installed with SaaS License Management. Demo data is available for
the Software Asset Management - SaaS License Management (sn_sam_saas_int) plugin.

User roles
Role

Description

sam_integrator Inherits the sam_user role and can also create and manage SaaS integration
profiles.

Tables
Table

Description

Custom Subscription Product Definitions
Enables you to create and update
[samp_sw_custom_subscription_product_definition] customized software models for SaaS and
SSO applications.
Custom Subscription Integration
[samp_sw_custom_subscription_integration]

List of SaaS and SSO providers for your
custom integration profiles.

Product profile types
[samp_sw_product_profile_type]

Provides a mapping between integration
profile types and products in the Software
Product [samp_sw_product] table.

SAM Subscription Script Routes
[sam_saas_script_route]

Stores which script includes and scopes
implement a given integration type
to register available integrations from
separate scoped apps.

SSO Application [samp_sso_application]

List of all SSO applications for all SSO
integrations.

SSO Application Groups
[m2m_sso_group_application]

Provides a mapping between connected
SSO applications and the directory groups
that have access to them.

SSO Application Role [samp_sso_application_role]

List of SSO users and groups for all
connected SSO applications.

SSO Application Users [m2m_sso_user_application] Provides a mapping between connected
SSO applications and the directory users
that have access to them.
SSO Integration Profile
[samp_sso_integration_profile]

List of all SSO integration profiles.

SSO Subscription [samp_sso_subscription]

List of SSO subscriptions for all connected
SSO applications.

Subscription Consumption Summaries
[sam_saas_consumption_summary]

Consumption summary information
including units consumed, monthly
consumption, and contract dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

536


<!-- page 537 -->
Table

Description

Subscription Integration
[samp_sw_subscription_integration]

List of SaaS and SSO providers that
is mapped to subscription products
in the Subscription Product Definition
[samp_sw_subscription_product_definition]
table.

Subscription Product Definitions
[samp_sw_subscription_product_definition]

SaaS License Management uses this table
to automatically create software models
for SaaS and SSO applications. Software
models are automatically created for
applications with an External Catalog ID
that matches an Identifier in this table.

Subscription Usage Summary
[samp_subscription_usage_summary]

Software usage summary information
including rights owned, rights assigned,
stale rights, available rights, and cost.

Unrecognized Subscription Identifiers
[samp_sw_unrecognized_subscription_identifier]

List of subscription identifiers that are not
associated with a software model.

SaaS License Management setup for large companies
Set up SaaS License Management for large companies to confirm that you can view all SaaS
usage data in your ServiceNow instance.
Some large companies must update the

com.snc.pa.dc.max_row_count_indicator_source system property before
creating integration profiles. If either of the following conditions is true for your company, an
admin must update this property.
• If there are more than 50,000 user subscriptions for the SaaS applications, excluding the
subscriptions for Adobe Cloud and Microsoft 365.
• If there are more than 50,000 user subscriptions for Adobe Cloud and Microsoft 365
combined.
Update the com.snc.pa.dc.max_row_count_indicator_source system property
to be the greater value between your subscriptions for the two groups. For example, if you have
60,000 user subscriptions for SaaS applications combined and 25,000 user subscriptions for
Adobe Cloud and Microsoft 365 combined, update the property to be 60,000.

Note: For more information about how to use the

com.snc.pa.dc.max_row_count_indicator_source property, see Data
collector properties

.

SaaS Overview dashboard
Optimize how much your organization spends on SaaS and SSO licensing by analyzing the
subscription usage, cost, and compliance of your SaaS applications and SSO providers using
the SaaS Overview dashboard.

Important: The SaaS Overview dashboard is available in both the Software Asset
Management classic application and the Software Asset Workspace. This topic provides
information on the SaaS Overview dashboard in the Software Asset Management classic
application. For information on the SaaS Overview dashboard in the Software Asset
Workspace, see SaaS overview dashboard in workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

537


<!-- page 538 -->
The Engineering License Overview dashboard is no longer available for new Zurich users who
have activated the Software Asset Management Professional (com.snc.samp) plugin or upgraded
to Zurich without activating the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin prior to
Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you have access to
this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from the
Dashboards navigation menu.
The SaaS Overview dashboard displays information about the usage, costs, and potential
savings that are associated with your SaaS and SSO applications. Access this dashboard by
navigating to SaaS License > Overview. You can filter the dashboard by software model or
publisher. Click any report to see more information.

Note: To view your organization's software usage and compliance for Microsoft Office 365
and Adobe Cloud, navigate to SaaS License > Office 365 & Adobe Cloud.
SaaS Overview dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

538


<!-- page 539 -->
SaaS Overview reports
Report

Description

Current
Subscription
Spend

Total cost of all active subscription software entitlements.

Percentage
Percentage of subscriptions that don't meet the usage requirements that are
of Unused
defined by reclamation rules. This percentage is calculated as the number of
Subscriptions stale rights (subscriptions that have limited to no activity within the activity
threshold that is defined in the reclamation rule) divided by the total number of
assigned rights.
SaaS
Potential
Savings

Potential cost saved if you reclaim unused subscriptions.

Assigned
Total number of assigned subscriptions.
Subscriptions
True-up Cost

Cost to have the number of rights you own match the number of rights you've
assigned to users. This metric helps to verify that your organization is paying for
all the rights that your organization is using.

Actual
Total yearly savings for all subscription software. This value is calculated as the
Savings Year- total savings from closed complete reclamation candidates.
to-Date
Snapshot
of Last
Meaningful
Activity

Distribution of users based on their subscription software usage behavior. Use
this data to identify the users with the highest software usage and determine
the most appropriate threshold for your software reclamation rules. This report
displays the data for the last 30 days, 30–60 days, 60–90 days, and 90–120
days.

Stale
Subscriptions Total number of stale subscriptions for each subscription profile. If you have
multiple profiles for the same subscription software, this report displays each
by Instance
profile separately.
You can filter the data that is displayed on this report by selecting an option
from the Breakdown list. To view the stale subscriptions for both SaaS and SSO
subscription profiles, select All Subscriptions. To view the stale subscriptions
for only SaaS subscription profiles, select Subscriptions Excluding SSO.
Subscription
Spend by
Cost Center

Total cost of all active subscription software entitlements by cost center.

Potential
SaaS Savings Potential cost saved for each subscription profile if you reclaim unused
subscriptions.
by Instance
You can filter the data that is displayed on this report by selecting an option
from the Breakdown list. To view the potential savings for both SaaS and SSO
subscription profiles, select All Subscriptions. To view the potential savings for
only SaaS subscription profiles, select Subscriptions Excluding SSO.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

539


<!-- page 540 -->
Integrate with SaaS applications
Create an integration profile to view software usage information and optimize stale licenses.
A SaaS integration profile pulls your company's software usage information from the software
vendor. This information includes a list of all users and identifies which users haven't recently
used the software.
You can create an integration profile for the following SaaS applications:
• Adobe Cloud
• Adobe Workfront
• Aha!
• Asana
• Box
• Calendly
• Cisco Webex
• Confluence Cloud
• CrowdStrike
• Docusign
• Dropbox
• Google Workspace
• GitHub
• GoTo
• Jira Software
• Looker
• Microsoft 365
• Microsoft Dynamics 365 and Power Apps
• Miro
• monday.com
• PagerDuty
• Rally
• Roadmunk
• Salesforce CRM
• Salesforce Marketing Cloud
• SAP Ariba
• SAP S/4HANA Public Cloud
• Slack
• SmartRecruiters
• Smartsheet
• SAP SuccessFactors
• SurveyMonkey
• Tableau Cloud
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

540


<!-- page 541 -->
• Trello
• Workday
• Workplace from Facebook
• Zendesk
• Zoom
You can also create integrations for Adobe Cloud and Microsoft Office 365. For more information,
see Microsoft 365 integration and Software Asset Management publisher pack for Adobe.
If you want to integrate with a SaaS application that is not on this list, you can create a custom
integration profile. For more information, see Create a custom integration profile.

Note:
The SaaS integration automatically creates a software model and a reclamation rule for the
software. Always review the reclamation rule to make sure that reclamation candidates are
identified using the criteria you want.
After reviewing the reclamation rule, create a software entitlement to track purchased licenses
and cost.
Integrating with SaaS applications

After following this process, you're ready to start reclaiming unused licenses to reduce software
costs for your company.
Integrating with Adobe Workfront
Integrating your Software Asset Management application with the Adobe Workfront application
enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Adobe Workfront application

Authentication scopes

Download subscriptions

administrator

None

Pull user activity

administrator

None

Reclaim subscription

administrator

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

541


<!-- page 542 -->
Generate a Workfront API key
Generate an API key for authenticating Workfront API requests.

Before you begin

Workfront Role required: administrator

Procedure
1. From a web browser, open Adobe Workfront

.

2. Log in using your admin credentials.
Your Adobe Workfront instance opens.
3. On the page header of your Adobe Workfront instance, select the Main Menu icon (
then select Setup.

) and

4. From the left navigation menu of the Setup page, navigate to System > Customer Info.
The Customer Info page opens.
5. In the API Key Settings section, select Generate API Key.
Adobe Workfront automatically generates your API key and displays it under Your User's API
Key.
6. Copy your API key and save it in a secure location for later use.
7. In the same section, select the time period after which you want the API key to expire from the
After creation, API keys expire list.
The default time period is one month.

Note: You can change this time period at any time. Whenever you change the time
period, the newly selected time period begins from the moment that you make the
change.
Create a Workfront integration profile
Create a Workfront integration profile to track software subscriptions and optimize licensing for
your Workfront applications.

Before you begin

To create a Workfront integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Workfront Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Workfront integration profile in
Core UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Workfront Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Workfront from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Workfront Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile. This field is automatically set to Workfront
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Workfront Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Workfront
Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Workfront
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_workfront_spoke.Workfront.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection dialog box
Field

Description

Connection Information
Connection
Name

Name of the Workfront connection. This field populates automatically.

Connection
URL

URL for the connection.
Enter https://<domain-name>.my.workfront.com, where
<domain-name> is your company subdomain.

Credential Information
API Key

API key for your Workfront applications.
Enter the same API key that you generated in Generate a Workfront API key.

8. Select Create.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.
12. Optional: To optimize memory and avoid performance issues in your Workfront flow, you can
turn off the flow engine reporting level.
a. Navigate to System Properties > All Properties.
b. Select the com.snc.process_flow.reporting.level system property.
c. On the System Property page, set the Value to OFF.
d. Select Update.
13. Optional: Reduce the number of items in the execution details.
a. Navigate to System Properties > All Properties.
b. Select the com.snc.process_flow.reporting.datastream.item.lastn
system property.
c. On the System Property page, set the Value to 10.
d. Select Update.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Aha!
Integrating your Software Asset Management application with the Aha! service enables you to
track your software subscriptions and to reclaim unused licenses.
For more information about the Aha! service, see Aha! Product management guide

.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Aha!
application

Authentication scopes

Download subscriptions

admin

None

Pull user activity

admin

None

Reclaim subscription

admin

None

Create an Aha! OAuth2 application
Create an Aha! OAuth2 application to get access to the Aha! API.

Before you begin

Aha! Role required: admin

Procedure
1. Go to OAuth2 Authentication

.

2. Log in to the Aha! site using your admin credentials.
3. On the Personal settings page, select Developer.
4. Select the OAuth applications tab.
5. Select Register OAuth application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
6. On the Register new OAuth application form, enter
https://instance/oauth_redirect.do as the Redirect URI, where instance is
the name of your ServiceNow instance.
7. Select Create.
The OAuth applications tab shows Client ID and Client Secret keys.
8. Note down the values in the Client ID and Client Secret fields.
Create an Aha! integration profile
Create an integration profile to track software subscriptions and optimize licensing for the Aha!
service.

Before you begin

To create an Aha! integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Aha! Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Aha! integration profile in Core
UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Aha Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Aha! from the drop-down list.
d. Select Continue.

2. In the Display name field, enter a display name of your choice.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Aha Integration.

Status

Status of the integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
Field

Description

◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.
Profile
Type

Type of integration profile. This field is automatically set to Aha! Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Aha!
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Aha!
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to sn_aha_spoke.Aha_.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Fields

Descriptions

Connection Name

Name of the integration profile.

Connection URL

Connection URL for Aha!.

OAuth Client ID

OAuth2 key that you received while creating
an OAuth2 authentication from the Aha! site.

OAuth Client Secret

OAuth Client Secret key that you received
while creating an OAuth2 authentication from
the Aha! site.

OAuth Redirect URL

ServiceNow redirect URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
8. Select Create and Get OAuth Token and then select Authorize.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Asana
Integrating your Software Asset Management application with the Asana application enables you
to track your software subscriptions and to reclaim unused licenses.

Note: This integration supports all plans of Asana at organization level only.
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Asana
Authentication scopes
application

Download subscriptions

admin

default

Pull user activity

admin

default

Reclaim subscription

admin

default

Register an Asana OAuth 2.0 application
Register an Asana OAuth application to access the Asana API 1.0 and to receive a Client ID and
Client secret.

Before you begin

Asana Role required: admin

Procedure
1. Log in to your Asana account.
2. Select the user's profile icon.
3. Select Settings.
4. Select the Apps tab.
5. Navigate to the developer console window by selecting the View developer console link.
6. Select + Create new app.
7. On the Create new app page, provide a name for your application and then select the
Integrate Asana and another tool check box.
8. Select the I agree to the Asana API Terms check box and then select Create app.
9. Optional: Provide basic information about your application.
10. Select OAuth.
11. Copy the Client ID and Client secret for later use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
12. In the Redirect URLs field, select + Add redirect URL.
13. Enter https://<instance>.service-now.com/oauth_redirect.do where
<instance> is the name of your ServiceNow instance.
Create an Asana integration profile
Create an Asana integration profile to track software subscriptions and optimize licensing for
your Asana solutions.

Before you begin

The Software Asset Management - SaaS License Management Integrations plugin
(sn_sam_saas_int) must be installed from the ServiceNow Store .
Role required: admin or sam_integrator

Important: You must select the Asana Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Asana Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Asana from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration profile form
Field

Value

Display name

Name of the integration profile. For example,
Asana integration.

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
Field

Value

Profile type

Type of integration profile. This field is
automatically set to Asana Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Asana
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Asana Update
User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Asana
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_asana_spoke.Asana.
5. Open the connection & credential aliases record by selecting the preview icon (
Connection & Credential field.

) beside the

6. Select Open Record in the record preview.
7. Select the Create New Connection & Credential related link.
8. In the Create Connection and Credential dialog box, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
Create Connection and Credential dialog box
Field

Value

Connection Name of the Asana connection. This field populates automatically.
Name
Connection URL for the connection. This field is automatically set to https://
URL
app.asana.com.
Client ID

Client ID that you created while registering Asana OAuth application.

Client
Secret

Client secret that you created while registering Asana OAuth application.

OAuth
Redirect
URL

This field is automatically populated to https://<instance
name>.service-now.com/oauth_redirect.do, where instance
name is the name of your ServiceNow instance.

9. Select Create and Get OAuth Token.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
11. After the connection is verified, select Publish.
12. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Box
Integrating your Software Asset Management application with the Box service enables you to
track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Box
application

Authentication scopes

Download subscriptions

Co-Admin with Manage
users permission

Manage users

Pull user activity

Co-Admin with Run new
reports and access existing
reports permission

Manage enterprise
properties

• Co-Admin with Manage
users permission

• Manage users

Reclaim subscription

• Co-Admin with View
users' content permission

• Read all files and folders
stored in Box
• Write all files and folders
stored in Box

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
For additional information on the Box service, see the Box Community

.

Create a Box application
Create an application on the Box Platform.

Before you begin

Box Role required: Refer to the Minimal user permissions table.

Procedure
1. Navigate to the Box Developer Console

and sign in to your account.

2. On the My Apps page, select Create New App.
3. Select Custom App.
4. On the Authentication Method page, select Standard OAuth 2.0 (User Authentication).
5. Enter an application name, and then select Create App.
6. On the Configuration page, obtain the Client ID and Client Secret.
You’ll need to copy and paste these values into your ServiceNow instance in the following
steps.

Note: Your Client ID and Client secret are sensitive. Don’t share them.
7. Enter https://instance.service-now.com/oauth_redirect.do as the
Redirect URI, where instance is the name of your ServiceNow instance.
8. Select the following application scope check boxes:
◦ Read and write all files and folders stored in Box
◦ Manage users
◦ Manage enterprise properties
These scopes enable the integration to get a list of users, get user activity, and reclaim unused
subscriptions.
9. Select Save Changes.
Create a Box integration profile
Create an integration profile to track software subscriptions and optimize licensing for the Box
service.

Before you begin

To create a Box integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the Box integration profile in Core
UI is inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Box Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Box from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of the integration profile. For example, Box Integration

Client Id Client ID for the OAuth application created in the SaaS admin account.
Redirect URL of the OAuth provider that you're redirected to after authentication. This value
url
is automatically populated.
Client
secret

Password associated with the client ID.

Profile
type

Type of integration profile. This value is automatically set to Box
Subscription.

Analyze
user
activity
from

You can choose to start analyzing data from the current date or from up to 60 days
in the past. Choosing a date in the past enables you to detect stale subscriptions
without waiting in real time because you can see subscriptions that haven't been
used recently. Because choosing a date in the past increases the amount of data
that is analyzed, it could take several hours for you to be able to view the results.

3. In the Process configuration section, review the required user roles or API permissions
specified in the Vendor configuration field for each process to minimize security risks and
optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, the activity
scheduled job SAM - Refresh <displayname> Events isn't created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit.
Your ServiceNow instance creates a draft integration profile.
5. On the integration profile, select Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
6. In the pop-up window, select your Box admin account and select Allow.

Note: When user subscriptions are reclaimed, files from the reclaimed accounts are
transferred to the admin account selected in this step. This account can be a different
admin account than the one used to set up the integration. If you transfer files to a new
admin, you can select the Get OAuth Token related link again at any time to select a
different admin account. After selecting a new admin, you can reclaim the old admin
account to transfer all of their files to the new admin, including all previously reclaimed
user files.
7. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
8. After the connection is validated, select Publish.
9. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
validated and scheduled jobs are created, you must revalidate the connections because
the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Events job gets deleted.

Result

You can view events performed by individual users up to one year prior to the current date. For
more information, see Review a software reclamation rule. Software Asset Management pulls

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
the events from the time that you start downloading user subscriptions irrespective of the profile
creation date.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
Integrating with Calendly
Integrating your Software Asset Management application with the Calendly service enables you
to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Calendly application

Authentication scopes

Download subscriptions

admin

None

Pull user activity

admin

None

Reclaim subscription

admin

None

Create a Calendly OAuth application
Register a public application with the Calendly service so that you can access the Calendly API
using OAuth 2.0.

Before you begin

Calendly Role required: admin
You must have a Google or GitHub account to sign up for a Calendly developer.

Procedure
1. Navigate to Calendly developer portal

.

◦ If you already have a Calendly developer account, sign in with your credentials and go to
step 3.
◦ If you don't have a Calendly developer account account, complete step 2.
2. Optional: Sign up for a Calendly developer account through your GitHub or Google account
by selecting Sign Up on the top-right corner of the Calendly Developer Site page.
This account isn't associated with your Calendly Google user account.
3. Navigate to Account > My Apps to create a OAuth application.
4. Select Create a new app.
5. On the form, fill in the fields.
Create Oauth app form
Field

Description

Name of app

Name of your application.

Kind of app

The application type such as Web or Native.

Environment type

The environment type that you want to
associate your application to, such as
Sandbox or Production.

Redirect URI

ServiceNow redirect URL. For example,
https://app.example.com/auth.

6. Select Save & Continue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
What to do next

Copy your Client ID and Client Secret.

Important:
You must copy these values as you can't access the Client Secret again.
Create a Calendly integration profile
Create an integration profile to track software subscriptions and optimize stale licenses for the
Calendly service.

Before you begin

To create a Calendly integration profile, request the Software Asset Management - SaaS License
Management (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Calendly Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Calendly integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Calendly Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Calendly from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Calendly Integration.

Status

Status of the integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
Field

Description

◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.
Profile
Type

Type of integration profile.
This field is automatically set to Calendly Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Calendly Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Calendly
Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Calendly
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_calendly_spoke.Calendly.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection
Name

Name of the connection.

Connection
URL

Base URL for the Calendly API. This field is automatically set to https://
api.calendly.com.

OAuth Client
ID

Client ID that is assigned to the public application that you registered with
the Calendly service.

OAuth Client
Secret

Client secret that is assigned to the public application that you registered
with the Calendly service.

OAuth
Redirect URL

URL of the OAuth provider that users are redirected to after authentication.
This field populates automatically based on your instance name.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. In the Authorize App dialog box, log in to your Calendly account.
The dialog box closes and then you automatically return to the integration profile form.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
11. After the connection is verified, select Publish.
12. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Cisco Webex
Integrating your Software Asset Management application with Cisco Webex applications enable
you to track your software subscriptions and reclaim unused licenses.
The supported Cisco Webex applications are:
• Webex Meetings
• Webex Teams
• Webex Training
• Webex Events
• Webex Support Session
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Cisco
Webex application

Download subscriptions

Read-only admin

Authentication scopes

• sparkadmin:licenses_read
• spark-admin:people_read

Pull user activity

• Compliance Officer
• Full admin

• sparkcompliance:events_read
• meeting:admin_schedule_read

Reclaim subscription

Full admin

• spark-admin:people_read
• spark-admin:people_write

Create a Webex Meetings OAuth application
Create an OAuth integration application in Cisco Webex for Developers.

Before you begin

Webex Role required: Refer to the Minimal user permissions table.

Procedure
1. Login to Webex developer portal

by using your Webex credentials.

2. Select your profile icon and then select My Webex Apps.
3. Navigate to Create a New App > Select Integration > Create an Integration.
4. On the form, fill in the fields:
New Integration form
Field

Value

Will This
No
Integration
Use A Mobile
SDK?
Integration
Name

Name of your integration as it appears in Webex. For example, ServiceNow
integration.

Contact
Email

Email address of the administrator.

Icon

Icon to appear on the My Apps page. Either upload your own application icon
or select one from the list of default icons.

Description

Description of your integration. For example, functionality of the integration
and its benefits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
Field

Value

Redirect URI

The URI that will be redirected to when completing an OAuth
grant flow.https://<instance>.service-now.com/
oauth_redirect.do, where instance is the name of your ServiceNow
instance.

Scopes

To access the integration APIs, you must select the
meeting:admin_schedule_read scope.

5. Select Add Integration.
6. Copy and save the OAuth Client ID and OAuth Client Secret that appear for later use.
Create a Webex Teams OAuth application
Create an OAuth integration application in Cisco Webex for Developers.

Before you begin

Webex Role required: Refer to the Minimal user permissions table.

Procedure
1. Navigate and log in to Cisco Webex for Developers

.

2. Under the profile icon, select My Webex Apps.
3. Navigate to Create a New App > Select Integration > Create an Integration.
4. On the form, fill in the fields:
New Integration form
Field

Value

Will This
No
Integration
Use A Mobile
SDK?
Integration
Name

Name of your integration as it appears in Webex. For example, ServiceNow
integration.

Contact
Email

Email address of the administrator.

Icon

Icon to appear on the My Apps page. Either upload your own application icon
or select one from the list of default icons.

Description

Description of your integration. For example, functionality of the integration
and its benefits.

Redirect URI

The URI that will be redirected to when completing an OAuth
grant flow.https://<instance>.service-now.com/
oauth_redirect.do, where instance is the name of your ServiceNow
instance.

Scopes

To access the integration APIs, you must select these scopes:
◦ spark-admin:licenses_read
◦ spark-admin:organizations_read
◦ spark-admin:people_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
Field

Value

◦ spark-admin:people_write
◦ spark-admin:roles_read
◦ spark-compliance:events_read
◦ meeting:admin_schedule_read
5. Select Add Integration.
6. Copy and save the OAuth Client ID and OAuth Client Secret that appear for later use.
Create a Webex integration profile
Create an integration profile to track software subscriptions and optimize licensing for the Cisco
Webex applications.

Before you begin

To create a Webex integration profile, request the Cisco Webex Meetings and Webex Teams
spoke apps from the ServiceNow Store .
ServiceNow Role required: admin or sam_integrator

Important: You must select Cisco Webex Teams Spoke and Cisco Webex Meetings

Spoke check boxes for this integration while installing optional features on the Application
Manager
page. For more information about choosing the required SaaS applications, see
Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Webex integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Webex Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Webex from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
Integration profile form
Field

Description

Display
name

Name of the profile.

Status

Status of the integration profile.

For example, Webex integration.

◦ If you haven’t published the integration profile, this field is automatically set to
Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.
Profile
type

Type of integration profile.
This field is automatically set to Webex Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Cisco
Webex Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Cisco Webex
Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Cisco
Webex Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


<!-- page 568 -->
4. Select Save.
A draft integration profile is created.
In the Download Subscription Subflow tab, the Connection & Credential field appears
and is automatically set to sn_cisco_teams_spk.CiscoWebexTeams. In the Calculate
Activity Subflow tab, the Connection & Credential field appears and is automatically set to
sn_webex_mtg_spoke.Webex.

Note: The automatically populated value in the Connection & credential field changes
based on the selection in the Download activity and Reclaim subscriptions check
boxes.

Automatically populated Connection & credential values based on the selection
Selection

Connection & credential value

Both Download activity and Reclaim
subscriptions are selected.

sn_cisco_teams_spk.webex_subscription_activity_reclaim

Only Download activity is selected.

sn_cisco_teams_spk.webex_subscription_activity

Only Reclaim subscriptions is selected.

sn_cisco_teams_spk.webex_subscription_reclaim

Both Download activity and Reclaim
subscriptions aren’t selected.

sn_cisco_teams_spk.webex_subscription

5. In the Download Subscription Subflow tab, select the preview icon (
) next to the
Connection & Credential field and then select Open Record in the record preview.
6. Select the Create New Connection & Credential related link.
7. On the form, fill in the OAuth Client ID and OAuth Client Secret that you had saved while
creating the Webex Teams OAuth application.
Leave all other fields as is.
8. Select Create and Get OAuth Token.

Note: Make sure you're logged in to your ServiceNow instance using your local admin
credentials. Logging in with SSO user credentials might cause the tokens to be generated
automatically.
For the role required to perform this step, refer to the Minimal user permissions table.
9. When prompted, log in using your Webex Email address and Password.
10. After the connection is successfully created, navigate to the Webex integration profile.
11. In the Calculate Activity Subflow tab, select the preview icon (
) next to the Connection &
Credential field and then select Open Record in the record preview.
12. Select the Create New Connection & Credential related link.
13. On the form, fill in the fields.
Create Connection and Credential form
Connection
Replace <subdomain> with the Webex Meeting site domain configured for the
URL
organization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
Log in to the Webex admin portal and navigate to SERVICES >
Meeting > Sites. In the Site name column, <subdomain> is the part of
<subdomain>.webex.com in the site name.
Webex
User name or email address to log in to Webex.
Admin User
Name
14. Fill in the OAuth Client ID and OAuth Client Secret values that you saved while creating the
Webex Meetings OAuth application.
15. Select Create and Get OAuth Token and follow the steps to get an OAuth token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
16. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
17. After the connection is verified, select Publish.
18. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple Cisco Webex integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Confluence Cloud
Integrating your Software Asset Management application with the Confluence Cloud application
enables you to track your software subscriptions and to reclaim unused licenses.
Currently this integration supports only one site integration per profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Confluence Cloud application

Download subscriptions

User role for confluence
product

Authentication scopes

• Read user groups
(read:confluence-groups)
• Read user
(read:confluence-user)

Pull user activity

User role for confluence
product

Reclaim subscription

site admin

Search Confluence content
and space summaries
(search:confluence)
• Read user groups
(read:confluence-groups)
• Create, remove, and
update user groups
(write:confluence-groups)

Create a Confluence Cloud OAuth 2.0 (3LO) application
Create a Confluence Cloud OAuth 2.0 (3LO) application to enable access to the Confluence
Cloud API.

Before you begin

Atlassian Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, open the Atlassian Developer portal

.

2. Log in to your site admin account.
3. On the page header of the portal, select your profile icon and then select Developer console.
The My apps page of the Atlassian Developer Console opens.
4. Select the Create app menu and then select OAuth 2.0 (3LO) integration.
The Create a new OAuth 2.0 (3LO) integration page opens.
5. Enter a name for the OAuth 2.0 (3LO) application in the Name field.
6. Select the I agree to be bound by Atlassian's developer terms check box and then select
Create.
7. Configure the authorization settings for your application.
a. From the left navigation pane, select Authorization.
b. Select Configure for the OAuth 2.0 (3LO) authorization type.
The OAuth 2.0 authorization code grants (3LO) for apps page opens.
c. In the Callback URL field, enter the URL of the OAuth provider that users are redirected to
after authentication.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
Enter https://instance.service-now.com/oauth_redirect.do, where
<instance> is the name of your ServiceNow instance.
d. Select Save changes.
8. Configure API scopes for your application.
API scopes specify the level of access that the application has to the Atlassian APIs.
a. From the left navigation pane, select Permissions.
b. From the list of available APIs, locate the Confluence API and then select Add.
The Add action button automatically changes to the Configure action button.
c. Select Configure.
The Confluence API page opens.
d. Add the following scopes for the Confluence API:
▪ Search Confluence content and space summaries
▪ Read user groups
▪ Create, remove, and update user groups
▪ Read user
9. Retrieve the client ID and client secret that are assigned to your application.
a. From the left navigation pane, select Settings.
b. In the Authentication details section, copy the values in the Client ID and Secret fields.
Save them in a secure location for later use.
Obtain the Cloud ID value of Confluence Cloud instance
Obtain the value of the Cloud ID of the Confluence Cloud cloud instance. This value is required
during the configuration of the connection record in your ServiceNow instance.

Before you begin

Confluence Cloud Role required: admin

Procedure
1. Log in to Atlassian Administration

.

2. Select the Select button against the required organization.
3. Select the Products tab.
4. On the Products page, select Manage product on the Confluence product row.
The URL is in the following format in a new window: https://admin.atlassian.com/
o/<orgID>/products/conf/<Cloud-Id>.
5. Copy the value of the Cloud ID for later use.
Create a Confluence Cloud integration profile
Create a Confluence Cloud integration profile to track software subscriptions and optimize
licensing for your Confluence Cloud applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
Before you begin

To create a Confluence Cloud integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
Atlassian Role required: site admin
ServiceNow Role required: sam_integrator, sn_confluence_spoke.confluence_cloud_admin

Important: You must select the Confluence Cloud Spoke check box for this integration
while installing optional features on the Application Manager
page. For more information
about choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Confluence Cloud integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Confluence Cloud Integration Pro­
file.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Confluence Cloud from the dropdown list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
Name

Name of the integration profile. For example, Confluence Cloud
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to Confluence Cloud Subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Confluence Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Confluence
Cloud Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
Confluence Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_conflunce_spoke.confluence_subscription_activity_reclaim when all the processes are
selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
Note: The automatically populated value in the Connection & credential field changes
based on the selection in the Download activity and Reclaim subscriptions check
boxes.

Automatically populated Connection & credential values based on the selection
Selection

Connection & credential value

Both Download activity and Reclaim
subscriptions are selected.

sn_conflunce_spoke.confluence_subscription_activity_reclai

Only Download activity is selected.

sn_conflunce_spoke.confluence_subscription_activity

Only Reclaim subscriptions is selected.

sn_conflunce_spoke.confluence_subscription_reclaim

Both Download activity and Reclaim
subscriptions aren’t selected.

sn_conflunce_spoke.confluence_subscription

5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection.

Connection Provide the URL of your Confluence Cloud instance in the https://
URL
api.atlassian.com/ex/confluence/<Cloud-ID format.
For more information about getting the value of Cloud ID, see Obtain the Cloud
ID value of Confluence Cloud instance.
OAuth
Client ID

Client ID that is assigned to your Confluence Cloud OAuth 2.0 (3LO)
application.

OAuth
Client
Secret

Client secret that is assigned to your Confluence Cloud OAuth 2.0 (3LO)
application.

OAuth
Redirect
URL

URL of the OAuth provider that users are redirected to after authentication.
This field populates automatically based on the callback URL that you specified
in Create a Confluence Cloud OAuth 2.0 (3LO) application.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. When the dialog box appears, grant permission to the Confluence Cloud application.
The dialog box closes and you automatically return to the Connection & Credential Aliases
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
10. Specify the groups that have access to Confluence products.
By specifying these groups on your ServiceNow instance, you can retrieve data and manage
licenses for only the users within these groups.
a. In a new tab, open the Atlassian Administration portal

.

b. Log in to the admin account with a site_admin role.
c. Select the Select button against the required organization.
d. Select the Products tab.
e. On the Products page, select Manage product on the Confluence product row.
f. View the list of groups that have access to Confluence products.
Take note of this information for later use.
g. Return to your ServiceNow instance and navigate to Confluence Cloud > Confluence
Groups.
h. On the Confluence Groups form, select the Add Groups related link.
The Add Confluence Groups dialog box opens.
i. Select the Connection & Credential that was set on the integration profile.
j. In the Available list, select the groups that have access to Confluence products.

Tip: The Available list includes all groups that are associated with your Atlassian
account. Select only the groups that have access to Confluence products.
k. Select the right arrow button to move the groups from the Available list to the Selected list.
l. Select OK.
11. Return to your integration profile and then select the integration profile.
12. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
13. After the connection is verified, select Publish.
14. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If all of the
following related lists aren't visible for an integration profile in the default view, you can select the
custom integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple Confluence Cloud integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with CrowdStrike
Integrating your Software Asset Management application with the CrowdStrike enables you to
view CrowdStrike active host sensors information and check license compliance.

Note: CrowdStrike currently doesn't support the APIs for integration in regulated
environments, including US-GOV-1 (GovCloud) or US-GOV-2 CrowdStrike clouds.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
CrowdStrike application

Download consumption

Falcon administrator

Authentication scopes

Sensor usage scope with
read permissions

This process is applicable for Yokohama Patch 1, Software Asset Management - SaaS
License Management (sn_sam_saas_int) 15.0.8, and Software Asset Management
(sn_itam_samp) 2.1.0 version onwards. If you are on any version for Yokohama below Patch
1, refer KB1801232 .
Register a CrowdStrike OAuth application
Register the CrowdStrike OAuth application to access the CrowdStrike API and to receive a
Client ID and Client secret.

Before you begin

The CrowdStrike Integration Hub spoke must be active. For more information, see CrowdStrike
spoke .
CrowdStrike Role required: Falcon administrator

Important:
• To use the Sensor Usage APIs, your API client must be assigned the Sensor usage scope
with Read permissions.
• Contact your account team to enable the following feature flags:
◦ Hourly usage data feature flag: This flag must be enabled for your Customer
Identification (CID) to view hourly usage data.
◦ Aggregated usage data feature flag: This flag must be enabled to get aggregated usage
data in multi-CID (non-Flight Control) accounts.

Procedure
1. Log in to Falcon

using your admin credentials.

2. Navigate to Support and resources > API Clients and Keys.
3. Select Create API Client.
4. Provide the client name and description.
5. Select the Read check box for the Sensor usage scope.
6. Select Create.
The API client created screen is displayed.
7. Copy the Client ID and Secret for later use.
8. Select Done.
Create a CrowdStrike integration profile
Create a CrowdStrike integration profile to track software subscriptions and optimize licensing for
your CrowdStrike applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
ServiceNow Role required: admin or sam_integrator

Important: You must select the CrowdStrike Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the CrowdStrike integration profile
in Core UI is inactive.

Note: When upgrading to Yokohama patch 1 with Software Asset Management - SaaS
License Management (sn_sam_saas_int) 15.0.8 and Software Asset Management
(sn_itam_samp) 2.1.0 store applications installed, you must delete the entitlements for the
existing CrowdStrike integration profiles. Then, create entitlements for various CrowdStrike
products, such as Falcon Endpoint Protection and Falcon Discover, based on their license
metrics. These metrics include Reserved Hourly Average Sensor and Sensor Subscription,
which are found under the CrowdStrike license metric group.
• If any existing CrowdStrike profiles are in the Draft state, create new integration profiles
and delete the existing ones.
• If any existing CrowdStrike profiles are in the Published state, their state changes to Draft.
If you are on any version for Yokohama below patch 1, refer KB1801232

.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select CrowdStrike Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select CrowdStrike from the drop-down
list.
d. Select Continue.

2. On the form, fill in the fields.
Integration profile form
Field

Value

Display name

Name of the integration profile. For example,
CrowdStrike integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
Field

Value

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

Profile type

Type of integration profile. This field
is automatically set to CrowdStrike
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for the process to minimize security risks and optimize SaaS licenses.

Note: The Download consumptions check box is selected by default and you can't

clear it. Verify that the Subflow field is set to CrowdStrike Download Weekly and Hourly
Sensor Usage.
For more information about the required roles and scopes, see Minimal user permissions
table.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_crowdstrk_spoke.CrowdStrike.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Value

Connection Information
Connection Name

Name of the CrowdStrike connection. This
field populates automatically.

Connection URL

URL for the connection. This field
is automatically set to https://
api.crowdstrike.com.
Each CrowdStrike cloud has a different base
URL. Use the base URL that corresponds to
the cloud where your integration is hosted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
Field

Value

◦ US-1: https://
api.crowdstrike.com
◦ US-2: https://
api.us-2.crowdstrike.com
◦ EU-1: https://
api.eu-1.crowdstrike.com
Credential Information
OAuth Client ID

Client ID that you generated while configuring
the CrowdStrike API settings.

OAuth Client Secret

Client Secret that you generated while
configuring the CrowdStrike API settings.

OAuth Redirect URL

https://<instance name>/
oauth_redirect.do, where the instance
name is the name of your ServiceNow
instance.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
The OAuth token is generated successfully.
9. On the Integration Profile form, proceed with the Workload product mapping by selecting the
CrowdStrike Product Workload Mappings tab.
Workload mapping is essential for accurately associating specific products with the types
of workloads they manage (for example, servers, desktops, containers). This is because
CrowdStrike provides data on workloads and not direct product-to-machine connections.
With workload mapping, you can correctly count license usage and ensure compliance. The
system adds up the relevant workloads for each product based on this mapping, preventing
over- or under-counting. This new approach replaces previous methods and aligns with how
CrowdStrike now tracks usage, making it easier to manage compliance.
a. On the CrowdStrike Product Workload Mappings page, select New.

Note: The software entitlements and software models must be created before
proceeding to the next step.
▪ For more information on creating software entitlements in the Software Asset Management
classic application, see Create entitlements in Software Asset Management classic.
▪ For more information on creating software entitlements in the Software Asset Workspace,
see Create entitlements in workspace.
▪ For more information on creating software entitlements using the Software Asset
Management Playbook, see Create entitlements using the guided walk-through.
b. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
CrowdStrike Product Workload Mapping form
Field

Description

Integration profile

This field is automatically set to the
integration profile for which the workload
mapping is being created.

Workload

Endpoints are physical or virtual devices,
such as a computer, server, laptop, desktop
computer, mobile, cellular, container, pod, or
virtual machine image.
Endpoints are sometimes referred to as
workloads.
For example,
▪ containers
▪ public_cloud_with_containers
▪ servers_without_containers
▪ chrome_os

Software model

Profile of the software, which includes
publisher, version, and discovery map.

License metric

License metric for the selected software
model.
▪ Reserved Hourly Average Sensor: This
metric counts the number of unique active
endpoints per clock-hour and averages
them over a rolling 28-day period. The
count of Reserved Hourly Average Sensor
Licenses resets at the start of each clockhour.
▪ Sensor Subscription: This metric
calculates license usage by averaging
endpoint counts over four consecutive
weeks. Weekly endpoint counts are
based on the total number of endpoints
consumed in the previous seven days.

c. Select Save.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
You can also validate connections before creating CrowdStrike product workload mappings.

Important: You must provide the Workload product mapping before publishing the
profile.
11. After the connection is verified and the workload product mapping is provided, select Publish.
12. In the Publish Confirmation dialog box, select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
Result

This integration pulls or creates usage records in the CrowdStrike Product Usage
[samp_crowdstrike_product_usage] table and CAL records in the Client Access
[samp_sw_client_access] table.

What to do next

If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Docusign
Integrating your Software Asset Management application with the Docusign service enables you
to track your software subscriptions and to reclaim unused licenses.
You can integrate your Software Asset Management application with the Docusign service
at Organization level and Account level. However, an integration profile can be either at the
Organization level or Account level.
• Integrate with Docusign at Organization level
• Integrate with Docusign at Account level
Integrate with Docusign at Organization level
Integrating your Software Asset Management application with the Docusign service at the
organization level enables you to track your software subscriptions and envelope consumption
data.

Note: Integration with Docusign at the organization level is done using the Data feed API,
so the user's last activities aren’t tracked as part of this integration.
For more information about the Docusign service, see the DocuSign Developer site

.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Docusign application

Authentication scopes

Download subscriptions

admin

No scopes

Download consumption

admin

No scopes

This process is applicable for Zurich patch 4, Software Asset Management - SaaS License
Management (sn_sam_saas_int) 16.0.8, and Software Asset Management (sn_itam_samp)
2.1.0 version onwards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
Register a Docusign application
Register a Docusign application through the Docusign admin portal.

Before you begin

Docusign Role required: admin

Procedure
1. Log in to your Docusign demo (non-production) account.
You can use any subaccount for logging in that is later promoted to the corresponding
production account.
2. Go to the Admin tab.
◦ If you already have an API integration key from a previous integration ready for use in
production, skip to step 25.
◦ If you don't have your API integration key saved, you must generate a new one.
3. On the side navigation pane, select Account Profile and copy the Organization ID for later
use.
4. Navigate to INTEGRATIONS > Apps and Keys.
5. In the Apps and Integration Keys section, select Add App and Integration Key.
6. On the Add Integration Key form, provide a name in the App Name field and select CREATE
APP.
Save the Integration Key (Client ID) and Secret Key (Client secret) in a secure location for later
use.

Important: You must request the Docusign support team for enabling the Data feed
API on the integration key that you’re generating. If you’re using an Enterprise Pro plan,
the Data feed API is free for you with organization management. If you’re using a low-tier
plan, you can opt for organization management as an add-on. For further information,
contact the Docusign support team.
7. Select Save.
8. Generate the RSA keypair for your application by selecting Generate RSA.
9. Save the public key and private key in a secure location for later use.
10. Generate the JSON Web Token (JWT).
You can create a JWT by using an online JWT tool, such as jwt.io
values for the header, body, and signature sections.

, and adding the following

a. Add the following code in the header section:
{
"alg": "RS256",
"cty": "JWT"
}
b. Add the following code in the body section:
{
"iss": "<your_integration_key>",
"aud": "account-d.docusign.com",
"iat": 1764669845,
"exp": 1764675845,
"scope": "datafeeds"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
}
c. In the signature section, add the private key that you saved in step 9.
d. Copy the encoded JWT and save it in a secure location for later use.
11. Download the latest version of the Postman App

and skip the login.

12. Enter the URL in the POST request as https://account-d.docusign.com/oauth/auth

.

13. On the Body tab, enter the request parameters.
a. Enter urn:ietf:params:oauth:grant-type:jwt-bearer as the grant_type.
b. Enter the encoded JWT as the assertion.
14. Select Send.
The access token is generated in the response

body.
15. Copy the access token and use it for a new GET request to get the data feeds.
16. Enter the URL in the GET field as https://api-d.docusign.net/reporting/
v3/date_feeds/organizations/<org-id>.
Here, org-id is the Organization ID that you saved in step 3.
17. On the Authorization tab, enter the access token as the Bearer Token.
18. Select Send 20 times to make 20 API calls.

Important: You must invoke a minimum of 20 API calls to register your application
through the Docusign admin portal.
19. Navigate to Apps and Integration Keys on the Docusign admin portal.
20. Select Actions > View API Dashboard next to your application.
21. Wait a few minutes for Docusign to register all the 20 API calls.
22. Navigate to INTEGRATIONS > Apps and Keys and select Submit for review.
After 5-20 minutes, your application review is complete. You can promote the application to
your production account.
23. Select Actions > Start-Go-Live review to promote the application to the production account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
24. Select an eligible production account to manage the integration key.
25. Log in to your Docusign production account.
You must use the production account that corresponds to the demo sub-account that you used
for logging in the Docusign portal.
26. Verify that the integration key is present in the production account.
Generate RSA keypair for Docusign integration
Generate RSA keys to integrate the Docusign application with your ServiceNow instance.

Before you begin

Docusign requirements:
• Docusign account
• Docusign app configured to integrate with ServiceNow
• Role required: Docusign administrator

About this task

The integration of Docusign at the organization level enables access to all subaccounts using a
single integration key generated in any one subaccount.

Procedure
1. Log in to your Docusign production content account.
2. Go to the Admin tab.
3. Navigate to INTEGRATIONS > Apps and Keys.
4. Next to your application, select Actions > Edit.
5. Select Generate RSA and save the Key Pair ID, Public Key, and Private Key for later use.
Generate a Java Key Store certificate
Generate a Java Key Store (JKS) certificate for the JSON Web Token (JWT) authentication of your
Docusign integration profile.

Before you begin

Role required: admin

Procedure
1. Open a text editor for code, such as Sublime Text, and create a file.
2. Paste the Private key that you had generated from your Docusign integrator app.
For more information, see Generate RSA keypair for Docusign integration.

Note: Make sure to include both the beginning and ending of the private key.
3. Save the file with the .key extension.
For example, privatekey.key.
4. Open the command line interface (CLI) and navigate to the directory where you saved the file
with the .key extension.
5. Create a CA signed certificate using your private key by executing the command:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
openssl req -new -x509 -key <file-name>.key -out
<certificate-name>.pem -days 1095
You're prompted to provide details such as country name and province name.
6. Enter the required details.
7. Create a PKCS 12 file using your private key and CA signed certificate by executing the
command:
openssl pkcs12 -export -in <certificate-name>.pem -inkey
<file-name>.key -certfile <certificate-name>.pem -out
<PKCS-12-file-name>.p12
You're prompted to provide a password for the file.
8. Enter the export password or the source keystore password.
9. Create the JKS file by executing this command:
keytool -importkeystore -srckeystore
<PKCS-12-file-name>.p12 -srcstoretype pkcs12 -destkeystore
<JKS-certificate-filename>.jks -deststoretype JKS
You're prompted to provide a password for the JKS file.
10. Provide the same password for the destination and source keystore passwords.
Create a Docusign integration profile at Organization level
Create an integration profile to track software subscriptions and optimize licensing for the
Docusign service.

Before you begin

To create a Docusign integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

An organization level integration profile uses the Docusign Data feed API that retrieves detailed
subscription and consumption data across an entire organization. It aggregates data from all
subaccounts under an organization, offering a centralized view of envelope activity and usage.
If you’re using Software Asset Workspace, the option to create the Docusign integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select DocuSign Integration Profile.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
Interface

Action

c. Select DocuSign from the drop-down list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
name

Name of the integration profile. For example, DocuSign Integration

Integration
type

The default value is set to Organization Level.

Contract
start date

The date on which the contract agreement became effective.

Profile type

Type of integration profile. This value is automatically set to DocuSign
Subscription.

This date is not same as the date when your Docusign account was created.

Organization The organization ID to which this account belongs.
Id
You can find this value in your Docusign account on the Admin tab. Navigate to
Account Profile and copy the Organization ID.

Renewal
period
(months)

The frequency at which envelope consumption gets renewed.
For example, if you enter a renewal period of three months, then the
consumption data is renewed every three months. The renewal period governs
the consumption cycle and is separate from the overall contract term.

3. Review the required user roles or API permissions specified in the Process configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see the Minimal user
permissions table.
The Download subscriptions check box is selected by default and you can't clear it.
The Download Consumption check box is selected by default.
4. Select Submit.
A draft integration profile is created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
The Connection & Credential field appears and is automatically set to
sn_sam_saas_int.Docusign_OAuth_with_JWT.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Information
Connection Name of the connection.
Name
Connection This field is automatically set to https://api.docusign.net.
URL
Credential Information
Integration
Key

The API integration key that you had generated in the Register a Docusign
application procedure.

Key Pair ID

The key pair ID of the private key that you had generated in the Generate RSA
keypair for Docusign integration procedure.

Audience
URI

Enter account.docusign.com as the URI.

Keystore
Password

Password associated with the uploaded JKS file that you had created in the
Generate a Java Key Store certificate procedure.

8. Locate the JKS file on your device by selecting Keystore.
For more information on creating the JKS file, see Generate a Java Key Store certificate.
9. Select Create and Get OAuth Token.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models
and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Scheduled Jobs
• Scheduled Job Results

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
• Unrecognized Subscription Identifiers
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrate with Docusign at Account level
Integrating your Software Asset Management application with the Docusign service enables you
to track your software subscriptions and to reclaim unused licenses.
Docusign purchases made through resellers don’t reflect within the Docusign standard billing
system. So no values are returned through the APIs for envelope consumption that is available to
ServiceNow.

Important: Docusign has removed the lastLogin field from the Users API, so the
user's last activities are no longer tracked as part of this integration. The Software Asset
Management application now creates reclamation candidates based on the subscription
assigned date.
For more information about the Docusign service, see the DocuSign Developer site

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Docusign application

Authentication scopes

Download subscriptions

admin

No scopes

Reclaim subscription

admin

No scopes

Register a Docusign application
Register a Docusign application through the Docusign admin portal.

Before you begin

Docusign Role required: admin

Procedure
1. Log in to your Docusign demo (non-production) account.
2. Select your profile picture.
3. Select My Apps and Keys.
◦ If you already have an API integration key from a previous integration ready for use in
production, skip to step 33.
◦ If you don't have your client secret saved, you must generate a new one.
4. On the side pane, select INTEGRATIONS > Apps and Keys.
5. In the Apps and Integration Keys section, select ADD APP AND INTEGRATION KEY.
6. On the Add Integration Key form, provide a name in the App Name field and selectCREATE
APP.
7. Select ADD URI under the Redirect URIs field in the Additional Settings section.
8. Add https://oauth.pstmn.io/v1/browser-callback.
9. Select ADD URI again and add https://ServiceNow instance.servicenow.com/oauth_redirect.do.
10. Select ADD SECRET KEY.
Save the Integration Key (Client ID) and Secret Key (Client secret) in a secure location to use
them later in the Postman App and the Integration Key (Client ID) in the ServiceNow instance.
11. Select Save.
12. Download the latest version of Postman App

and skip the login.

13. Select New Collection and provide a name to the collection.
14. Select the Authorization tab.
15. From the Type list menu, select OAuth 2.0.
16. Provide a name and complete the fields on the Configuration Options tab to create a token:

Field

Value

Callback URL

https://oauth.pstmn.io/v1/browser-callback

Auth URL

https://account-d.docusign.com/oauth/auth

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
Field

Value

Access Token URL https://account-d.docusign.com/oauth/token
Client ID

The integration key from your Docusign demo account created in step 10.

Client Secret

The secret key from your Docusign demo account step 10.

17. Select Get New Access Token.
You're redirected to Docusign.
18. Select Accept.
19. After the access token is collected and authentication is complete, copy the Access Token to
use it later.
20. Select New Request to create a GET request for your account id.
21. Enter the URL in the GET field as https://account-d.docusign.com/oauth/
userinfo.
22. On the Headers tab, select Authorization under KEY and enter Bearer <Access Token
that you copied during authentication> under Value.
23. Select Send and verify that your request is complete.
The account id is displayed in the response body.
24. Duplicate the GET request.
Copy the authorization key and value under Headers.
25. Update the URL in the GET field to https://demo.docusign.net/restapi/
v2/accounts/<account-id>/users.
Here, account-id is the ID that you saved from the previous request.
26. Select Send 20 times to make 20 API calls.
You must invoke a minimum of 20 API calls to register your application through the Docusign
admin portal.
27. Navigate to Apps and Integration Keys on the Docusign admin portal.
28. Select Actions > View API Dashboard next to your application.
29. Wait a few minutes for Docusign to register all the 20 API calls.
30. Navigate to INTEGRATIONS > Apps and Keys and select Submit for review.
After 5-20 minutes, your application review is complete. You can promote the application to
your production account.
31. Select Actions > Start-Go- Live review to promote the application to the production account.
32. Select an eligible production account to manage the integration key.
33. Log in to your Docusign production account.
34. Select your profile picture.
35. Select Go to Admin.
36. On the side pane, select INTEGRATIONS > Apps and Keys.
Locate your API Account ID to use for the integration profile in your ServiceNow instance.
37. Next to your application, select Actions > Edit.
38. Select ADD URI and add https://ServiceNow instance.service-now.com/
oauth_redirect.do.
39. Select ADD SECRET KEY.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
Save the Secret Key (Client secret) for your production account in a secure location to use it in
your ServiceNow instance.
40. Select Save.
Create a Docusign integration profile at Account level
Create a Docusign integration profile at Account level to track software subscriptions and
optimize licensing for the Docusign service.

Before you begin

To create a Docusign integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the Docusign integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select DocuSign Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select DocuSign from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
name

Name of the integration profile. For example, DocuSign Integration

Integration The default value is set to Account Level.
type
Client Id

Client ID for the OAuth application created in the SaaS admin account in the
Register a Docusign application procedure.

Redirect
url

URL of the OAuth provider that you're redirected to after authentication. This
value is automatically populated.

Technical
account Id

API Account ID from your Docusign production account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
Field

Description

Instance
URL

URL of the login page used for accessing your Docusign production account.
This field is automatically set to https://account.docusign.com.

Client
secret

Password associated with the client ID created in the Register a Docusign
application procedure.

Profile
type

Type of integration profile. This value is automatically set to DocuSign
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see the Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit.
A draft integration profile is created.
5. On the integration profile, select Get OAuth Token and follow the steps to get an OAuth token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
6. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.

Result

You can view events performed by individual users up to one year prior to the current date. For
more information, see Review a software reclamation rule. Software Asset Management pulls
the events from the time that you start downloading user subscriptions irrespective of the profile
creation date.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Dropbox
Integrating your Software Asset Management application with the Dropbox service enables you
to track your software subscriptions and to reclaim unused licenses.
For more information about the Dropbox service, see the Dropbox Business User and Admin
Guides .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Dropbox application

Download subscriptions

Security Admin

Authentication scopes

• members.read
• team_data.member

Pull user activity

Security Admin

• events.read
• team_data.member

Reclaim subscription

Security Admin

• team_info.read
• members.write
• members.delete

Create a Dropbox application for user subscriptions
Create an application on the DBX Platform for Developers.

Before you begin

Dropbox Role required: Refer to the Minimal user permissions table.

Procedure
1. Navigate to Dropbox Developer Apps

and sign in to your account.

2. On the My Apps page, select Create App.
3. Select scoped access API.
4. Specify the type of access to Full Dropbox.
5. Enter a name for your application and select Create app.
6. Select the Permission tab.
7. Select these permission check boxes:
◦ team_info.read
◦ members.write
◦ members.delete
◦ groups.read
◦ events.read
◦ team_data.member
8. Select Submit to save the changes.
9. Navigate to the Settings tab.
10. Obtain the App key and App secret.
You will need to copy and paste these values into the Client ID and Client Secret fields in your
ServiceNow instance in the following steps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
Note: Your App key (client ID) and App secret (client secret) are sensitive. Do not share
them.
11. Enter https://instance.service-now.com/oauth_redirect.do as the redirect
URI, where instance is the name of your ServiceNow instance.
12. Click the Branding tab and then click Save changes.
Create a Dropbox integration profile
Create an integration profile to track software subscriptions and optimize licensing for the
Dropbox service.

Before you begin

To create a Dropbox integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the Dropbox integration profile in
Core UI is inactive.

Procedure
1. Using the information from the application with the permissions set to Team member file
access, return to your ServiceNow instance to create an integration profile.
2. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Dropbox Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Dropbox from the drop-down list.
d. Select Continue.

3. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of the integration profile. For example, DropBox Integration

Client Id Client ID for the OAuth application created in the SaaS admin account.
Redirect URL of the OAuth provider that you're redirected to after authentication. This value
url
is automatically populated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
Field

Value

Client
secret

Password associated with the client ID.

Profile
type

Type of integration profile. This value is automatically set to DropBox Subscription.

Analyze
In the Analyze user activity field, you can also select the date and time starting
user
activity from when you want to analyze the user activity. By default, you can analyze user
activity up to 60 days prior to the current date and view events performed by
from
individual users from the time you create this profile.

Note: Software Asset Management pulls the events from the time that you
start analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software
reclamation rules. For more information, see Review a software reclamation rule.
4. In the Process configuration section, review the required user roles or API permissions
specified in the Vendor configuration field for each process to minimize security risks and
optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, the activity
scheduled job SAM - Refresh <displayname> Events isn't created.
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
5. Select Submit after completing all the required fields.
Your ServiceNow instance creates a draft integration profile.
6. On the integration profile form, select Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


<!-- page 599 -->
7. Navigate to the Dropbox application.
◦ Select Allow if you have already logged in to the Dropbox application.
◦ If you haven't logged in to the Dropbox application, log in with your admin credentials and
then continue with the next steps.

Note: When user subscriptions are reclaimed, files from the reclaimed accounts are
transferred to the admin account selected in this step. This account can be a different
admin account than the one used to set up the integration. If you have to start transferring
files to a new admin, you can select the Get OAuth Token related link again at any time
to select a different admin account. After selecting a new admin, you can reclaim the
old admin account to transfer all of their files to the new admin, including all previously
reclaimed user files.
8. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.

Note: If you clear the Download Activity check box after the integration profile is
validated and scheduled jobs are created, you must revalidate the connections because
the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Events job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Google Workspace
Integrating your Software Asset Management application with the Google Workspace service
enables you to track your software subscriptions and to reclaim unused licenses.

Note: The Google Workspace integration supports the following products:
• Google Apps
• Google Vault SKUs
• Archived User SKUs
For additional information about the Google Workspace service, see Google Workspace Admin
Help .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Required user role in the
Authentication scopes
Google Workspace application

Admin API privileges: Users
Read

• [Admin SDK
API] https://
www.googleapis.com/
auth/
admin.directory.user.readonly

• [Admin SDK
API] https://
www.googleapis.com/
auth/
admin.directory.domain.readonly
• [Enterprise License
Manager API] https://
www.googleapis.com/
auth/
apps.licensing
Pull user activity

Admin API privileges: Users
Read

• [Admin SDK
API] https://
www.googleapis.com/
auth/
admin.directory.user.readonly
• [Admin SDK
API] https://
www.googleapis.com/
auth/
admin.reports.usage.readonly

Reclaim subscription

Super Administrator

• [Admin SDK
API] https://
www.googleapis.com/
auth/
admin.directory.user.readonly
• [People SDK
API] https://
www.googleapis.com/
auth/
userinfo.email
• [People SDK
API] https://
www.googleapis.com/
auth/
userinfo.profile

• [Admin SDK
API] https://
© 2025 ServiceNow, Inc. All rights reserved.
601
www.googleapis.com/
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow,
Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.
auth/


<!-- page 602 -->
Create a Google Workspace project
Create a new project in the Google API Console.

Before you begin

Google Workspace Role required: Refer to the Minimal user permissions table.

Procedure
1. Log in to Google API Console

.

2. Select Select a project > New Project.
3. Enter a name for your project in the Project name, then select your Organization and Location.
4. Select Create.
5. Select the OAuth consent screen on the left navigation menu.
6. Select User Type as Internal and select Create.
7. Enter the App name and select User support email in the App information section.
8. In Authorized domains, select the ADD DOMAIN button and add service-now.com.
9. Enter Email addresses in the Developer contact information section.
10. Select Save and Continue to add scopes.
11. On the Scopes page, select the Add or Remove Scopes button.
12. In the Manually add scopes section, enter the following scopes by pasting them to the text
area:
◦ https://www.googleapis.com/auth/apps.licensing
◦ https://www.googleapis.com/auth/admin.directory.user
◦ https://www.googleapis.com/auth/admin.directory.user.readonly
◦ https://www.googleapis.com/auth/admin.directory.domain.readonly
◦ https://www.googleapis.com/auth/admin.datatransfer
◦ https://www.googleapis.com/auth/admin.datatransfer.readonly
◦ https://www.googleapis.com/auth/admin.reports.usage.readonly
◦ https://www.googleapis.com/auth/userinfo.profile
◦ https://www.googleapis.com/auth/userinfo.email
13. Select ADD TO TABLE and then select Update.
14. Select Save and Continue.
15. Select Credentials on the left navigation menu and select CREATE CREDENTIALS.
16. Select OAuth client ID.
17. Fill out the form as shown and select Create.

Field

Value

Application type

Web application

Note: Selecting a value for this
field causes the remaining fields
to be displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
Field

Value

Name

Any name of your choice

Authorized JavaScript origins

https://instance.service-now.com, where
instance is the name of your ServiceNow
instance

Authorized redirect URIs

https://instance.service-now.com/
oauth_redirect.do, where instance is the name of
your ServiceNow instance

18. Select OK.
You can now view your client ID and client secret that you would use in your ServiceNow
instance.

Note: Your client ID and client secret are sensitive. Don't share them.
19. Select Library on the left navigation menu.
Search for and enable the following APIs:
◦ Enterprise License Manager API
◦ Admin SDK
◦ Google People API
Create a Google Workspace integration profile
Create an integration profile to track software subscriptions and optimize licensing for the
Google Workspace service.

Before you begin

To create a Google Workspace integration profile, request the Software Asset Management SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

About this task

If you’re using Software Asset Workspace, the option to create the Google Workspace integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Google Workspace Integration Pro­
file.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
Interface

Action

c. Select Google Workspace from the dropdown list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of the integration profile. For example, Google Workspace
Integration

Client Id

Client ID for the OAuth application created in the SaaS admin account.

Redirect
url

URL of the OAuth provider that you're redirected to after authentication. This
value is automatically populated.

Client
secret

Password associated with the client ID.

Profile
type

Type of integration profile. This value is automatically set to Google
Workspace Subscription.

3. In the Process configuration section, review the required user roles or API permissions
specified in the Vendor configuration field for each process to minimize security risks and
optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦ The Download Activity check box is selected by default. If you clear it, the activity
scheduled job SAM - Refresh <displayname> Events isn't created.
In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Submit after completing all the required fields.
Your ServiceNow instance creates a draft integration profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
5. On the integration profile, select Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
6. In the pop-up window, select your Google admin account and select Allow.

Note: When user subscriptions are reclaimed, files from the reclaimed accounts are
transferred to the admin account selected in this step. This account can be a different
admin account than the one used to set up the integration. If you have to start transferring
files to a new admin, you can select the Get OAuth Token related link again at any time
to select a different admin account. After selecting a new admin, you can reclaim the
old admin account to transfer all of their files to the new admin, including all previously
reclaimed user files.
7. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.

Note: If you clear the Download Activity check box after the integration profile is
validated and scheduled jobs are created, you must revalidate the connections because
the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Events job gets deleted.

Result

You can view events performed by individual users up to one year prior to the current date. For
more information, see Review a software reclamation rule. Software Asset Management pulls
the events from the time that you start downloading user subscriptions irrespective of the profile
creation date.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with GitHub
Integrating your Software Asset Management application with the GitHub repository hosting
service enables you to track your software subscriptions and reclaim unused licenses.
With this integration, you can retrieve and analyze licensing information for both the GitHub
Enterprise Cloud and GitHub Enterprise Server applications.
• Integrate with GitHub Enterprise Cloud
• Integrate with GitHub Enterprise Server
Integrate with GitHub Enterprise Cloud
Integrating your Software Asset Management application with the GitHub Enterprise Cloud
application help you track your software subscriptions and reclaim unused licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
GitHub Enterprise Cloud
application

Authentication scopes

Download subscriptions

Organization owner

read:org

Pull user activity

Organization owner

• read:org
• repo

Reclaim subscription

Organization owner

write:org

Generate an API access token for GitHub Enterprise Cloud
Generate a token that you can use to access the GitHub Enterprise Cloud API.

Before you begin

GitHub Role required: organization owner
The user account that you use for authentication should be able to read all repositories in the
organization they’re a part of.

About this task

The GitHub repository hosting service uses personal access tokens to grant users access to the
GitHub API. Personal access tokens function similarly to OAuth access tokens by authorizing API
requests. By generating a personal access token to authorize your GitHub Enterprise Cloud API
requests, you can gain access to the GitHub Enterprise Cloud API.

Procedure
1. From a web browser, open GitHub

.

2. Sign in to your GitHub account.
3. On the GitHub page header, select your profile photo and then select Settings.
Your profile settings open.
4. From the left navigation pane, select Developer Settings.
Your developer settings open.
5. From the left navigation pane, select Personal access tokens.
6. Select Tokens (classic).
7. On the Personal access tokens page, select Generate new token.
8. Select Generate new token (classic).
9. If you’re prompted to confirm your password before proceeding, enter your GitHub password
and then select Confirm password.
10. On the New personal access token form, describe the purpose of the token in the Note field.
11. To give your token an expiration, select the Expiration drop-down menu and select a default
value or use the calendar picker.
12. In the Select scopes form section, enable the repo, write:org, and read:org OAuth scopes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
OAuth scopes limit the level of access that the application has to your protected resources.
The repo OAuth scope gives you full control of your private repositories. The write:org and
read:org OAuth scopes enable you to manage your entire organization, including all teams,
projects, and memberships. See Scopes for OAuth Apps
for more information about GitHub
OAuth scopes.
a. Enable the repo OAuth scope by selecting the repo check box.
By enabling this OAuth scope, you automatically enable the repo:status, repo_deployment,
public_repo, repo:invite, and security_events OAuth scopes.
b. Enable the write:org and read:org OAuth scope.
13. Select Generate token.
Your personal access token generates.
14. Copy the access token and save it in a secure location for later use.
15. To use your token to access resources owned by an organization that uses SAML single signon, authorize the token.
For more information, see Authorizing a personal access token for use with SAML single signon .
Create a GitHub Enterprise Cloud integration profile
Create a GitHub Enterprise Enterprise Cloud integration profile to track software subscriptions
and optimize licensing for your GitHub Enterprise Cloud applications.

Before you begin

To create a GitHub Enterprise Cloud integration profile, request the Software Asset Management
- SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the GitHub Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the GitHub Cloud integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select GitHub Cloud Integration Profile.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
Interface

Action

c. Select GitHub Cloud from the drop-down
list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, GitHub Cloud
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
type

Type of integration profile.
This field is automatically set to github_cloud_subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to GitHub
Cloud Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
Software Asset Management pulls the members, outside collaborators, pending invitations,
and pending outside collaborators to provide a complete view of your GitHub Enterprise
Cloud Subscriptions.

Important: To pull pending outside collaborators, enable the

sn_sam_saas_int.pull_pending_collaborator_github system
property. A higher number of repositories would lead to an increased number of API
transactions.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to GitHub Cloud
Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.

Tip: To avoid performance issues with this subflow, the best approach is to set the

Analyze user activity from field to a maximum of seven days before the current date.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to GitHub
Cloud Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_github_spoke.GitHub.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Name of the GitHub connection.
Name
Connection URL of the GitHub API endpoint.
URL
Enter https://api.github.com.
Use MID
Server

Option that enables your ServiceNow instance to use a MID Server for
communication with your GitHub Enterprise Cloud applications.
◦ If your instance requires a MID Server, set this field to true.
◦ If your instance doesn’t require a MID Server, leave this field empty.

Important: To enable this option, you must already have a MID Server
set up on your instance. See MID Server
API Key

for detailed instructions.

Personal access token that enables you to access the GitHub Enterprise Cloud
API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
Field

Description

◦ If the GitHub spoke version installed is 2.2.5 or higher, enter <api-key>.
◦ If the GitHub spoke version installed is lower than 2.2.5, enter Bearer
<api-key>.
The <api-key> is the personal access token that you generated in Generate
an API access token for GitHub Enterprise Cloud
8. Select Create.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrate with GitHub Enterprise Server
Integrating your Software Asset Management application with the GitHub Enterprise Server
application help you track your software subscriptions and reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
GitHub Enterprise Server
application

Authentication scopes

Download subscriptions

site admininistrator

site_admin

Reclaim subscription

site admininistrator

site_admin

Generate an API access token for GitHub Enterprise Server
Generate a token that you can use to access the GitHub Enterprise Server API.

Before you begin

GitHub Role required: site administrator

About this task

The GitHub repository hosting service uses personal access tokens to grant users access to the
GitHub API. Personal access tokens function similarly to OAuth access tokens by authorizing API
requests. By generating a personal access token to authorize your GitHub Enterprise Server API
requests, you can gain access to the GitHub Enterprise Server API.

Procedure
1. From a web browser, open your GitHub Enterprise Server instance.
2. Sign in to your GitHub account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
3. On the GitHub page header, select your profile photo and then select Settings.
Your profile settings open.
4. From the left navigation pane, select Developer Settings.
Your developer settings open.
5. From the left navigation pane, select Personal access tokens.
6. On the Personal access tokens page, select Generate new token.
7. If you’re prompted to confirm your password before proceeding, enter your GitHub password
and then select Confirm password.
8. On the New personal access token form, describe the purpose of the token in the Note field.
9. In the Select scopes form section, enable the site_admin OAuth scope by selecting the
site_admin check box.
OAuth scopes limit the level of access that the application has to your protected resources.
The site_admin OAuth scope enables you to manage your enterprise users, organizations, and
repositories.
10. Select Generate token.
Your personal access token generates.
11. Copy the access token and save it in a secure location for later use.
Create a GitHub Enterprise Server integration profile
Create a GitHub Enterprise Server integration profile to track software subscriptions and optimize
licensing for your GitHub Enterprise Server applications.

Before you begin

To create a GitHub Enterprise Server integration profile, request the Software Asset Management
- SaaS License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the GitHub Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the GitHub Server integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select GitHub Server Subscription Profile.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
Interface

Action

c. Select GitHub Server from the drop-down
list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, GitHub Server
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
type

Type of integration profile. This field is automatically set to
github_server_subscription.

3. In the Process configuration section, review the required user roles or API permissions
specified in the Vendor configuration field for each process to minimize security risks and
optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
◦ The Download subscriptions check box is selected by default and you can't clear it.
◦

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
◦ The Reclaim subscriptions check box is selected by default. If you don't want to reclaim
subscriptions, you can clear this check box. If you clear it, the removal candidates are
created but the reclaim subscription subflow isn't triggered or the reclamation process isn't
initiated.
4. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_github_spoke.GitHub_Server.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Name of the GitHub connection.
Name
Connection URL of the GitHub API endpoint.
URL
Enter https://api.github.com.
Use MID
Server

Option that enables your ServiceNow instance to use a MID Server for
communication with your GitHub Enterprise Cloud applications.
◦ If your instance requires a MID Server, set this field to true.
◦ If your instance doesn’t require a MID Server, leave this field empty.

Important: To enable this option, you must already have a MID Server
set up on your instance. See MID Server
API Key

for detailed instructions.

Personal access token that enables you to access the GitHub Enterprise Cloud
API.
◦ If the GitHub spoke version installed is 2.2.5 or higher, enter <api-key>.
◦ If the GitHub spoke version installed is lower than 2.2.5, enter Bearer
<api-key>.
The <api-key> is the personal access token that you generated in Generate
an API access token for GitHub Enterprise Server.

8. Select Create.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
10. After the connection is validated, select Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
11. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with GoTo
Integrating your Software Asset Management application with GoTo applications enable you to
track your software subscriptions and reclaim unused licenses.
With this integration, you can retrieve and analyze licensing information for the following GoTo
applications:
• GoToMeeting (user subscriptions, user activity, and reclamation candidates)
• GoToWebinar (user subscriptions, user activity, and reclamation candidates)
• GoToConnect (user subscriptions, user activity, and reclamation candidates)
• GoToTraining (user subscriptions only)
• GoToAssist (user subscriptions only)
• OpenVoice (user subscriptions only)
Use this information to manage and optimize your GoTo license position.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Pull user activity

Required user role in the GoTo
application

Authentication scopes

LogMeIn developer account
and admin role

• Profile

LogMeIn developer account
and admin role

• Profile

• Admin Center

• Admin Center
• GoToConnect

Reclaim subscription

LogMeIn developer account
and admin role

Admin Center

Create a GoTo OAuth client
Create an OAuth client for authenticating GoTo API requests.

Before you begin

GoTo Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, open the GoTo Developer Center

.

2. Sign in using your LogMeIn developer account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
If you have not already set up a LogMeIn developer account, see How to login or create a
developer account
for detailed instructions.
3. From the LogMeIn Developers home page, select the OAuth Clients tab.
4. Select Create a client.
5. On the Details tab of the Create client form, fill in the client details.
Details tab
Field

Description

Client
name

Name of the OAuth client.

Description Optional description for the OAuth client.
Redirect
URLs

Redirect URL of the ServiceNow instance on which you’re integrating your GoTo
applications. Enter https://<instance-url>/oauth_redirect.do,
where <instance-url> is the URL of your ServiceNow instance.

6. Select Next.
7. On the Scopes tab, specify the level of access that the OAuth client has to your GoTo users
and applications.
Scopes tab
Field

Description

Profile

OAuth scopes for getting and modifying user information for your
authenticated users. The Get user information scope is enabled
automatically. Select the check box to enable the Modify user details
scope.

GoToMeeting,
GoToWebinar, OAuth scope for creating, starting, and modifying sessions for your
or GoToTraining GoToMeeting, GoToWebinar, and GoToTraining applications. Select the
check box to enable this scope.

Note: The SaaS License Management GoTo integration doesn’t
support license management for the GoToTraining application.
GoToAssist
Remote
Support or
Service Desk

OAuth scope for creating, starting, and modifying sessions for the
GoToAssist Remote Support and Service Desk applications. Leave this
check box unselected.

Note: The SaaS License Management GoTo integration doesn’t
support license management for the GoToAssist applications.

SCIM

OAuth scope for automating user management using the System for
Cross-domain Identity Management (SCIM) protocol. Leave this check box
unselected.

Admin Center

OAuth scope for managing LogMeIn users through the GoTo Admin Center.
Select the check box to enable this scope.

GoToConnect

OAuth scope for initiating phone calls and other telephone services using
the GoToConnect. If GoToConnect license is enabled, select these check
boxes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
Field

Description

◦ Access call history for phone lines in the PBX [cr.v1.read]
◦ Retrieve your phone line information [users.v1.lines.read]
8. Select Save.
9. On the Credentials tab, copy the values in the Client ID and Client secret fields.
Save them in a secure location for later use.
10. Select the check box to verify that you have stored the client secret.
11. Select Done.
Create a GoTo integration profile
Create a GoTo integration profile to track software subscriptions and optimize licensing for your
GoTo applications.

Before you begin

To create a GoTo integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the GoTo Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the GoTo integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select GoTo Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select GoTo from the drop-down list.
d. Select Continue.

2. On the form, fill in the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, GoTo Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to GoTo Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to GoTo
Download Subscriptions.
This subflow is used for all supported GoTo applications.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to GoTo Update
User Activity.
This subflow is used for only the GoToMeeting and GoToWebinar applications.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to GoTo
Reclaim Subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
This subflow is used for only the GoToMeeting and GoToWebinar applications.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to sn_goto_spoke.GoTo.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection.

OAuth Client Client ID that is assigned to your GoTo application.
ID
OAuth Client Client secret that is assigned to your GoTo application.
Secret
OAuth
URL of the OAuth provider that users are redirected to after authentication.
Redirect URL
This field populates automatically based on the OAuth redirect URL that you
specified in Create a GoTo OAuth client.
8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. In the Authorize App dialog box, select Allow.
10. Select Allow.
The OAuth access token becomes available for authorizing your GoTo connection.
11. If GoToConnect license is enabled, navigate to the Connections tab.
12. Find the connection for GoToConnect and select View Details.
13. Select Get OAuth Token to generate a token for GoToConnect.
14. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
15. After the connection is verified, select Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
16. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Jira Software Cloud
Integrating your Software Asset Management application with Atlassian Jira Software Cloud
enables you to track your software subscriptions and to reclaim unused licenses.

Note: Currently this integration supports only one site integration per profile.
• If your installed Jira spoke version is 4.1.0 or higher, you can integrate Jira with your
ServiceNow instance by using one of the following methods:
◦ Basic authentication
◦ OAuth 2.0
• If your installed Jira spoke version is lower than 4.1.0, integrate Jira with your ServiceNow
instance by Basic authentication method.
Integrate with Jira Software Cloud using basic authentication
Integrate the Software Asset Management application and Jira using an API key to authenticate
ServiceNow requests.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Jira
Software Cloud application

Authentication scopes

Download subscriptions

Permission to access Jira

None

Pull user activity

• Administer Jira global
permission

None

• Browse projects
permission for the project
containing the issue.
If issue-level security is
configured, issue-level
security permission to
view the issue.
Reclaim subscription

Site administration, that is,
member of the site-admin
group

None

You can integrate a ServiceNow instance with multiple Jira instances. For this integration, create
a connection and credential alias record and a connection record for each Jira instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
Create a Jira account API token
Create an API token in Jira to authenticate requests.

Before you begin

Jira Role required: Refer the Minimal user permissions table.

Procedure
1. Navigate to Atlassian API Tokens

.

2. Select Create API token.
3. Enter a name for your API token, then select Create.
4. Copy the API token and save it.
You’ll use the token later.
Create the child alias record for Jira
Configure the default connection and credential alias record to authenticate the requests from
ServiceNow.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
2. Open the alias record for Jira that is shipped with the spoke.
Verify that the ID of the alias record is sn_jira_spoke_jira.
3. Create the child alias by navigating to the Related Links section and selecting the Child Aliases
tab.
The Application scope must be Jira Spoke.
4. Select New.
5. Enter a unique and descriptive name for the child alias.
6. Select Submit.

Result

The child alias appears in the list on the Child Aliases tab. You can select the child alias and
verify the values in the ID and Application fields.
Create a Jira Software Cloud integration profile
Create an integration profile to track software subscriptions and optimize licensing for Atlassian
Jira Software Cloud.

Before you begin

To create a Jira integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .
To enable the integration profile to retrieve and update user activity through the Jira Update User
Activity subflow, set the com.glide.transform.json.max-partial-length system
property Value to 32768.
Atlassian Role required: site admin
ServiceNow Role required: admin or sam_integrator
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
Important: You must select the Jira Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Jira integration profile in Core
UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Jira Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Jira from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of your choice. For example, Jira integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
type

Jira Subscription. This field is automatically populated.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Jira
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Jira Update
User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Jira
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_jira_spoke.jira_subscription_activity_reclaim.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting the child alias that you had created in Create
the child alias record for Jira.
6. Select Save.
7. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
8. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
9. On the form, fill in the fields.
Create Connection and Credential form
Field

Description

Connection URL

URL of your Jira instance in https://
api.atlassian.com/ex/jira/
<Cloud-Id> format.

User Name

Email address of the user.

API Key

The API token that you generated for Jira.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
10. Select Create.
11. On your ServiceNow instance, specify the groups that have access to Jira products.
By specifying these groups on your ServiceNow instance, you can retrieve data and manage
licenses for only the users within these groups.
a. In a new tab, open the Atlassian Administration portal

.

b. Log in to your site admin account.
c. Select the Select button against the required organization.
d. Select the Products tab.
e. On the Products page, select Manage product on the Jira product row.
f. View the list of groups that have access to Jira Software.
Take note of this information for later use.
g. Return to your ServiceNow instance and navigate to Jira > Jira Groups.
h. On the Jira Groups form, select the Add Groups related link.
The Add Jira Groups dialog box opens.
i. In the Available list, select the groups that have access to Jira products.

Tip: The Available list includes all groups that are associated with your Atlassian
account. Select only the groups that have access to Jira products.
j. Select the right arrow button to move the groups from the Available list to the Selected list.
k. Select OK.
12. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
13. After the connection is verified, select Publish.
14. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If all of the
following related lists aren't visible for an integration profile in the default view, you can select the
custom integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple Jira integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrate with Jira Software Cloud using OAuth 2.0
Integrate the Software Asset Management application with your Jira account using OAuth to
authenticate ServiceNow requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Jira
Software Cloud application

Download subscriptions

Permission to access Jira

Authentication scopes

• read:application-role:jira
• read:group:jira
• read:user:jira
• read:avatar:jira

Pull user activity

• Administer Jira global
permission
• Browse projects
permission for the project
containing the issue.
If issue-level security is
configured, issue-level
security permission to
view the issue.

Reclaim subscription

Site administration, that is,
member of the site-admin
group

• read:user:jira
• read:issue-details:jira
• read:audit-log:jira
• read:avatar:jira
• read:fieldconfiguration:jira
• read:issue-meta:jira

• read:group:jira
• write:group:jira

Create an OAuth 2.0 integration in Jira account
Create an OAuth 2.0 integration in the Atlassian Developer console to authenticate the requests.

Before you begin

Jira Role required: Refer the Minimal user permissions table.

Procedure
1. Log in to Atlassian Developer console

.

2. Under My apps, select Create and select OAuth 2.0 integration.
3. On the form, provide a name for the integration and select Create.
The integration is created and the value of App ID is displayed.
4. Select Authorization.
a. Select Add under Action.
b. In Callback URL, provide the URL of your ServiceNow instance in this format: https://
<ServiceNow-Instance-Name>.service-now.com/oauth_redirect.do.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
For example, https://example.service-now.com/oauth_redirect.do.
c. Select Save changes.
5. Select Settings.
6. Under Authentication details, copy the values of Client ID and Client Secret.
7. Select Permissions > Jira API > Configure.
8. Select the Granular scopes tab.
9. Select Edit Scopes to add the following scopes:
◦ read:application-role:jira
◦ read:group:jira
◦ read:user:jira
◦ read:avatar:jira
◦ read:audit-log:jira
◦ read:issue-details:jira
◦ read:field-configuration:jira
◦ read:issue-meta:jira
◦ write:group:jira
You can configure other scopes according to your requirement.
Obtain the Cloud ID value of Jira instance
Obtain the value of the Cloud ID of the Jira cloud instance. This value is required during the
configuration of the connection record in your ServiceNow instance.

Before you begin

Jira Role required: admin

Procedure
1. Log in to Atlassian Administration

.

2. Select the Select button against the required organization.
3. On the side navigation pane, select Apps > Atlassian apps.
4. On the Apps page, select Manage product on the Jira product row.
The URL is in the following format in a new window: https://admin.atlassian.com/
o/<orgID>/products/jira-software/<Cloud-Id>.
5. Copy the value of Cloud ID and secure it for later use.
Create a Jira Software Cloud integration profile
Create an integration profile to track software subscriptions and optimize licensing for Atlassian
Jira Software Cloud.

Before you begin

To create a Jira integration profile, request the Software Asset Management - SaaS License
Management plugin (sn_sam_saas_int) from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
To enable the integration profile to retrieve and update user activity through the Jira Update User
Activity subflow, set the com.glide.transform.json.max-partial-length system
property Value to 32768.
Atlassian Role required: site admin
ServiceNow Role required: admin or sam_integrator

Important: You must select the Jira Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Jira integration profile in Core
UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Jira Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Jira from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Value

Display
name

Name of your choice. For example, Jira integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
type

Jira Subscription. This field is automatically populated.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Jira
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Jira Update
User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Jira
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_jira_spoke.jira_subscription_activity_reclaim.

Note: The automatically populated value in the Connection & credential field changes
based on the selection in the Download activity and Reclaim subscriptions check
boxes.

Automatically populated Connection & credential values based on the selection
Selection

Connection & credential value

Both Download activity and Reclaim
subscriptions are selected.

sn_jira_spoke.jira_subscription_activity_reclaim

Only Download activity is selected.

sn_jira_spoke.jira_subscription_activity

Only Reclaim subscriptions is selected.

sn_jira_spoke.jira_subscription_reclaim

Both Download activity and Reclaim
subscriptions aren’t selected.

sn_jira_spoke.jira_subscription

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Name of the connection.
Name
Connection Base URL for the Jira API.
URL
This field is automatically set to https://api.atlassian.com/
ex/jira/<Cloud-ID>.
OAuth
Client ID

Client ID that is assigned to your Jira application.

OAuth
Client
Secret

Client secret that is assigned to your Jira application.

OAuth
Redirect
URL

URL of the OAuth provider that users are redirected to after authentication.
This field populates automatically based and contains the URL of the
ServiceNow instance that you specified in Create an OAuth 2.0 integration in
Jira account.

8. Select Create and Get OAuth Token.
9. On your ServiceNow instance, specify the groups that have access to Jira products.
By specifying these groups on your ServiceNow instance, you can retrieve data and manage
licenses for only the users within these groups.
a. In a new tab, open the Atlassian Administration portal

.

b. Log in to your site admin account.
c. Select the Select button against the required organization.
d. Select the Products tab.
e. On the Products page, select Manage product on the Jira product row.
f. View the list of groups that have access to Jira Software.
Secure this information for later use.
g. Return to your ServiceNow instance and navigate to Jira > Jira Groups.
h. On the Jira Groups form, select the Add Groups related link.
The Add Jira Groups dialog box opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
i. In the Available list, select the groups that have access to Jira products.

Tip: The Available list includes all groups that are associated with your Atlassian
account. Select only the groups that have access to Jira products.
j. Select the right arrow button to move the groups from the Available list to the Selected list.
k. Select OK.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
11. After the connection is verified, select Publish.
12. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If all of the
following related lists aren't visible for an integration profile in the default view, you can select the
custom integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple Jira integration profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


<!-- page 635 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Looker
Integrating your Software Asset Management application with the Looker, a Google Cloud
application enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Box
application

Authentication scopes

Download subscriptions

User with see_users
permission

None

Pull user activity

User with see_users
permission

None

Reclaim subscription

admin

None

Configure Looker API key settings
Configure API key settings to manage and retrieve Looker API keys.

Before you begin

Looker Role required: admin

Procedure
1. Log in to your Looker (https://<instancename>.looker.com/) instance.
2. Select the gear icon to open Admin settings.
3. Select Users > Open the admin user account.
4. Select Edit API3 Keys under the Profile tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
5. Select New API3 Key.
6. Copy the Client ID and Client secret for later use.
Create a Looker integration profile
Create a Looker integration profile to track software subscriptions and optimize licensing for your
Looker solutions.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
ServiceNow Role required: admin or sam_integrator

Important: You must select the Looker Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Looker integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Looker Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Looker from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration profile form
Field

Value

Display name

Name of the integration profile. For example,
Looker integration.

Status

Status of the integration profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
Field

Value

◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.
Profile type

Type of integration profile. This field is
automatically set to Looker Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Looker
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Looker
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to
sn_looker_spoke.Looker.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Information
Connection Name of the Looker connection. This field populates automatically.
Name
Connection Looker base URL for the API. This field is automatically set to https://
URL
<instance_name>.looker.com.
Credential Information
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
Field

Description

OAuth
Client ID

Client ID that is assigned to your Looker application.

OAuth
Client
Secret

Client secret that is assigned to your Looker application.

OAuth
Redirect
URL

https://<instance name>/oauth_redirect.do, where instance
name is the name of your ServiceNow instance.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
The dialog box closes and you automatically return to the integration profile form.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


<!-- page 639 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Microsoft Dynamics 365 and Power Apps
Integrating your ServiceNow instance with the Microsoft Dynamics 365 and Power Apps service
enables you to track your software subscriptions and to reclaim unused licenses.

Important:
This integration retrieves user subscription details for all Microsoft Dynamics 365 and
Power Apps products. Furthermore, Software Asset Management provides license
compliance for the products using user subscription-based models.
For optimization, Software Asset Management automatically tracks the last activity date and
identifies low-usage for the following applications:
• Dynamics 365 for Sales (Professional, Premium, Enterprise)
• Dynamics 365 for Customer Service (Professional, Enterprise, Enterprise for Government,
Professional Attach to Qualifying Dynamics, Sales and Customer Service Enterprise)
• Dynamics 365 for Team Members
• Microsoft Relationship Sales (MRS)
For more information about the Microsoft 365 service, see Microsoft 365 frequently asked
questions .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

639


<!-- page 640 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Microsoft Dynamics 365 and
Power Apps application

Download subscriptions

Global Reader

Authentication scopes

• LicenseAssignment.Read.All
• User.Read.All

Pull user activity

Dynamics 365 administrator

user_impersonation

Set up Microsoft Azure Active Directory
Set up Microsoft Azure Active Directory (AD).

Before you begin

Role required: Global administrator and Dynamics 365 administrator in Microsoft admin center

Procedure
1. Log in to the Microsoft Azure portal using an admin account and navigate to Azure Active
Directory.
2. Navigate to the App registrations section and select App registration under + Add.
3. On the Register an application form, fill in the fields.
Register an application form fields
Field

Description

Name

Name of the application that you want to
register.

Supported account types

The account with the required organizational
directory.

Redirect URI

URL that accesses Azure. Typically the URL of
the ServiceNow instance.

Important: You must select Web in

the Select a platform drop-down list
because Azure AD app must be a web
application in App registration for this
setup.
4. Select Register.
5. Open the application that you registered and navigate to the Overview section.
6. Collect the Application (client) ID and Directory (tenant) ID.
7. Navigate to the Certificates and Secrets section.
8. Create a client secret and collect the client secret key.
You need the client secret key while configuring your ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

640


<!-- page 641 -->
9. Under API Permission, select + Add a permission and then select APIs my organization uses.
10. Select Microsoft Graph and add the necessary permissions for both Delegated and
Application types as required.
◦ Organization.Read.All
◦ User.Read.All
◦ Offline_access
11. Select Dynamics CRM and add the following permission.
user_impersonation

Note: These steps aren't applicable for user_impersonation or Microsoft Dynamics
CRM connection because the user_impersonation scope is offered as a Delegated
permission in Microsoft Dynamics CRM.
12. Under Grant consent, select Grant admin consent.
13. In the Authentication section, under the Redirect URI, enter the redirect URI of the ServiceNow
instance.
Set up Microsoft Dynamics 365 and Power Apps
Set the system-level settings for Microsoft Dynamics 365 and Power Apps.

Before you begin

Role required: admin

Procedure
1. Go to https://admin.powerplatform.microsoft.com/

.

2. Under Environments, select the environment for which you want to pull the dynamics activities.
3. From the top ribbon, select Settings.
4. Select Audit and logs.
5. Select the following check boxes.
◦ Start Auditing
◦ Log access
◦ Read logs
6. Select Additional Audit Settings.
7. From the Settings list, select Auditing.
8. Select Global Audit Settings.
9. Select the following check boxes.
◦ Start Auditing
◦ Audit user access
◦ Start Read Audit
◦ Common Entities
◦ Sales Entities
◦ Customer Service Entities
10. Select OK.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
Set up ServiceNow instance for Microsoft Dynamics 365 and Power Apps
Set up ServiceNow instance for Microsoft Dynamics 365 and Power Apps to track your software
subscriptions and to reclaim unused licenses.

Before you begin

Role required: admin or sam_integrator

Important: You must select the Microsoft Dynamics 365 Spoke check box for this
integration while installing optional features on the Application Manager
page. For more
information about choosing the required SaaS applications, see Request SaaS License
Management.

About this task

If you’re using Software Asset Workspace, the option to create the Microsoft Dynamics 365 and
Power Apps integration profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
Core UI

b. Select New.
c. Select Microsoft Dynamics 365 and Pow­
er Apps Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Microsoft Dynamics 365 and Pow­
er Apps from the drop-down list.
d. Select Continue.

2. In the Display name field, enter a name of your choice.
3. Under the Calculate Activity Subflow tab in the Analyze user activity from field, select the
date since when you want to pull the activity.
4. Select Save.
A draft integration profile is created. In the Download Subscription Subflow
tab, the Connection & Credential field appears and is automatically set to
sn_ms_365_spoke.Microsoft_365_Graph. In the Calculate Activity Subflow
tab, the Connection & Credential field appears and is automatically set to
sn_ms_365_spoke.Microsoft_365_Dynamics.
5. Under the Download Subscription Subflow tab, beside the Connection & Credential field,
select the preview ( ) icon.
6. Under the Please Enter the Credential Information section, enter the values you received
from Set up Microsoft Azure Active Directory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

642


<!-- page 643 -->
a. In the Tenant ID field, enter your Tenant ID.
b. In the OAuth Client ID field, enter the OAuth Client ID.
c. In the OAuth Client Secret field, enter the OAuth Client Secret key.
7. Select Create and Get OAuth Token.

Important: This step must be executed by a user with the Global administrator role in
the Microsoft admin center.
8. If you’re prompted to log in to your Microsoft 365 account, enter your Microsoft 365 credentials
and log in to your Microsoft 365 account.
9. Under the Calculate Activity Subflow tab, beside the Connection & Credential field, select
the Preview ( ) icon.
10. Select Create New connection and credential alias.
11. In the Create Connection and Credential window, perform the following.
a. In the Connection URL field, enter the connection URL.
To fetch Connection URL, log in to the Microsoft Admin portal and navigate to Admin
Centers > All admin centers > Select Dynamics 365 apps > Environments. Select the
environment you want to integrate with. The environment URL is the Connection URL.
b. Select the permission type to ensure your application accesses data correctly and securely.
The permission type can be Application Permissions or Delegated Permissions depending
on the application's data access requirements. For more information on permission types,
see Software Asset Management publisher pack for Microsoft.
c. In the OAuth Client ID field, enter the OAuth Client ID.
d. In the OAuth Client Secret field, enter the OAuth Client Secret key.
12. Select Create and Get OAuth Token.

Important: This step must be executed by a user with the Dynamics 365 administrator
role in the Microsoft admin center.
13. Return to the integration profile.
14. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
15. After the connection is verified, select Publish.
16. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Optimizing Microsoft Dynamics 365 subscriptions
Evaluating the software usage activity of Microsoft Dynamics 365 subscriptions helps you
monitor license usage, optimize license allocation, and potentially reduce costs for the assigned
licenses. Software usage activity refers to how software products are being used.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
Based on the software usage activity and the incurred cost, Software Asset Management
generates optimization recommendations for your software subscriptions that include the
following:
• Low usage subscriptions
Software Asset Management recommends reclaiming the low usage subscriptions. For
example, if the last activity date is 60 days prior to the current date, the subscription is
considered a low usage subscription.
• Consolidated subscriptions
If a user has multiple base licenses for different Microsoft Dynamics 365 applications, Software
Asset Management recommends consolidating the subscriptions to optimize licensing. This
approach involves purchasing one base license and obtaining the rest as attached licenses,
ensuring compliance with Microsoft's licensing terms while being more cost-effective.
For example, if Dynamics 365 Commerce, Dynamics 365 Finance, and Dynamics 365 Human
Resources base license subscriptions are purchased for a user, Software Asset Management
recommends using Dynamics 365 Commerce as base license and Dynamics 365 Finance
and Dynamics 365 Human Resources as attached licenses to the base license. For more
information, you can download the Dynamics 365 Licensing Guide from the Dynamics 365
pricing overview page .
After completing the Integrating with Microsoft Dynamics 365 and Power Apps integration, you
can view the usage activity information in the Software Subscription [samp_sw_subscription]
table.
Related topics
Reclamation rules
Integrating with Miro Enterprise
Integrating your Software Asset Management application with the Miro Enterprise application
enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Miro
Enterprise application

Authentication scopes

Download subscriptions

Company admin

organizations:read

Pull user activity

Company admin

organizations:read

Reclaim subscription

Company admin

None

Create a Miro Enterprise OAuth 2.0 application
Create a Miro Enterprise OAuth 2.0 application to enable access to the Miro API.

Before you begin

Miro Role required: Refer to the Minimal user permissions table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
Procedure
1. From a web browser, open the Miro Platform

.

2. If you have not created any teams within your organization or you want to build and test the
OAuth 2.0 application using fake data, get a developer team .
3. On the page header of the Miro Platform, select Your Apps.
The sign-up page opens.
4. Sign in using your Company Admin credentials.
Your default organization profile opens.
5. At the top of the left navigation pane, select the organization profile icon to select the
organization that you want to build the OAuth 2.0 application for.
The profile for the selected organization opens.
6. On the left navigation pane, select Profile settings.
7. Select the API, SDK & Embed tab of your profile settings.
8. In the Your apps section, select the I agree to the Terms and Conditions check box and then
select Create new app.
9. In the dialog box, fill in the fields.
Create new app dialog box
Field

Description

App name

Name of the OAuth 2.0 application.

Description

Brief description of the OAuth 2.0 application.

10. Select the team that you want to build the OAuth 2.0 application for.
11. Select Create app.
The settings for your newly created app open.
12. In the Your app <app-name> section, copy the values in the Client id and Client secret fields.
Save them in a secure location for later use.
13. In the Redirect URLs section, enter the URL of the OAuth provider that users are redirected to
after authentication and then select Add.
Enter https://instance.service-now.com/oauth_redirect.do, where
<instance> is the name of your ServiceNow instance.
14. In the OAuth scopes section, enable the organizations:read OAuth scope.
OAuth scopes specify the level of access that the application has to your protected resources.
The organizations:read OAuth scope enables your application to read information about your
organizations and organization members.

What to do next

Keep your organization profile open so that you can enable SCIM (System for Cross-domain
Identity Management) on your Miro Enterprise account. For more information, see Enable SCIM
on your Miro Enterprise account.
Enable SCIM on your Miro Enterprise account
Enable SCIM (System for Cross-domain Identity Management) on your Miro Enterprise account
so that you can generate an API access token for authenticating your Miro API requests.

Before you begin

Miro Role required: Refer to the Minimal user permissions table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
Procedure
1. On the left navigation pane of your Miro organization profile, select Security.
2. On the Security page, select the option to Enable SSO/SAML.
3. After SSO/SAML is enabled, select the option to enable SCIM Provisioning.
Miro automatically generates and displays your API access token in the Api Token field.
4. Optional: Select the Send email notifications to users provisioned by SCIM check box to
enable Miro to send email notifications to all users that have been provisioned using SCIM.
5. Copy the API access token in the Api Token field.
Save it in a secure location for later use.
Create a Miro Enterprise integration profile
Create a Miro Enterprise integration profile to track software subscriptions and optimize licensing
for your Miro Enterprise applications.

Before you begin

To create a Miro Enterprise integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Miro Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Miro Enterprise integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Miro Enterprise Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Miro Enterprise from the drop-down
list.
d. Select Continue.

2. On the form, fill in the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Miro Enterprise
Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to Miro Enterprise Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information about the required roles and scopes, see Minimal user
permissions table.
4. Select Save.
A draft integration profile is created.
5. In the Download Subscription Subflow section, verify that the Connection & credential field
is set to sn_miro_spoke.Miro_Enterprise and the Subflow field is set to Miro Download
Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
a. Open the connection & credential aliases record by selecting the preview icon ( ) next to
the Connection & Credential field and then selecting Open Record in the record preview.
b. On the Connection & Credential Aliases form, select the Create New Connection &
Credential related link.
c. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection dialog box
Field

Description

Connection Information
Connection Name of the Miro Enterprise connection. This field populates automatically.
Name
Credential Information
OAuth
Client ID

Client ID that is assigned to your Miro Enterprise OAuth 2.0 application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
Field

Description

OAuth
Client
Secret

Client secret that is assigned to your Miro Enterprise OAuth 2.0 application.

OAuth
Redirect
URL

URL of the OAuth provider that users are redirected to after authentication.
This field populates automatically based on the redirect URL that you
specified in Create a Miro Enterprise OAuth 2.0 application.

d. Select Create and Get OAuth Token.

Important: This step must be executed by a ServiceNow admin with the Company
Admin role in Miro.
e. On the Miro OAuth authorization dialog box, locate the team that you built the Miro
Enterprise OAuth 2.0 application for and then select Install.

Note: If another ServiceNow instance is using the same credentials, you would be
prompted for a reinstall.
The OAuth access token becomes available for authorizing your Miro Enterprise connection.
6. In the Reclaim Subscription Subflow section, verify that the Connection & credential field is
set to sn_miro_spoke.Miro_Enterprise_SCIM and the Subflow field is set to Miro Reclaim
Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want to
reclaim subscriptions, you can clear this check box. If you clear it, the removal candidates
are created but the reclaim subscription subflow isn't triggered or the reclamation
process isn't initiated.
a. Open the connection & credential aliases record by selecting the preview icon ( ) next to
the Connection & Credential field and then selecting Open Record in the record preview.
b. On the Connection & Credential Aliases form, select the Create New Connection &
Credential related link.
c. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection Information
Connection Name of the Miro Enterprise SCIM connection. This field populates
Name
automatically.
Credential Information
API Token

API access token for authenticating Miro API requests.
Enter the same API access token that you generated and copied in Enable
SCIM on your Miro Enterprise account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
d. Select Create.
The dialog box closes and you automatically return to the integration profile form.
7. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
8. After the connection is validated, select Publish.
9. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with monday.com
Integrating your Software Asset Management application with monday.com enables you to track
your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
monday.com application

Authentication scopes

Download subscriptions

Member

users:read

Pull user activity

Member

users:read

Create a monday OAuth2 application
Create a monday OAuth2 application to authorize access to the monday.com API.

Before you begin

monday.com Role required: Refer to the Minimal user permissions table.

About this task

A monday application enables you to build workflows, user experiences, and products on top
of the existing monday.com work operating system (Work OS). When you configure a monday
application to use OAuth2, access is granted to the monday.com API so that it can read and
modify user data.

Procedure
1. From a web browser, go to monday.com

.

2. Log in using your admin credentials.
3. Select your profile icon and then select Developers.
The My Apps page opens.
4. Select Create App.
The Basic Information page for the new application opens.
5. In the Display Information section, fill in the fields.
Display Information
Field

Description

Name

Name of the monday application.

Short Description

Description of the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
6. Optional: In the same section, add your own application icon by selecting the auto-generated
icon and then selecting an icon image.
You can also change the icon color by selecting App Color and then selecting either a
preset or custom color. If you don’t add your own application icon or select an icon color, the
application uses the auto-generated icon and default icon color.
7. In the App Credentials section, copy the values in the Client ID and Client Secret fields.
Save them in a secure location for later use.
8. Select Save App.
9. From the left navigation menu of the new application, navigate to General > OAuth.
The Scopes tab of the OAuth & Permissions page opens.
10. In the Scopes section, specify how the application can access or use different types of user
data by selecting the check box for the users:read OAuth scope.
11. Select Save Feature.
12. Select the Redirect URLs tab of the OAuth & Permissions page.
13. In the Redirect URLs section, enter the URL of the OAuth provider that users are redirected to
after authentication.
Enter https://instance.service-now.com/oauth_redirect.do, where
<instance> is the name of your ServiceNow instance.
14. Select Save Feature.
Create a monday.com integration profile
Create a monday.com integration profile to track software subscriptions and optimize licensing
for your monday applications.

Before you begin

To create a monday.com integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the monday.com Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the monday.com integration
profile in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select monday.com Integration Profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
Interface

Action

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
Software Asset Workspace

b. Select New.
c. Select monday.com from the drop-down
list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, monday.com Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to monday.com Subscription.

3. View the required user roles or API permissions to minimize security risks and optimize SaaS
licenses.
For more information about the required roles and scopes, see Minimal user permissions
table.
4. In the Download Subscription Subflow section, verify that the Subflow field is set
to monday.com Download Subscriptions.

Note:
Note: The Download subscriptions check box is selected by default and you can't
clear it.
5. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_monday_com_spok.Monday.
6. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
7. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
8. In the dialog box, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
Create Connection and Credential dialog box
Field

Description

Connection
Name

Name of the connection.

Connection
URL

Base URL for the monday.com API.

OAuth
Client ID

Client ID that is assigned to your monday application.

OAuth
Client
Secret

Client secret that is assigned to your monday application.

OAuth
Redirect
URL

URL of the OAuth provider that users are redirected to after authentication.

This field is automatically set to https://api.monday.com/.

This field populates automatically based on the redirect URL that you specified
in Create a monday OAuth2 application.

9. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
10. In the Authorize App dialog box, sign in using the same monday.com credentials that you used
to create your monday application.
11. Select Allow.
The dialog box closes and then you automatically return to the integration profile form.
12. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
13. After the connection is verified, select Publish.
14. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with PagerDuty
Integrating your Software Asset Management application with the PagerDuty application enables
you to track your software subscriptions and to reclaim unused licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
PagerDuty application

Download subscriptions

• Create OAuth app:
Manager

Authentication scopes

• Scoped OAuth: users:read
• Classic User OAuth: Read

• Token generation:
Observer
Pull user activity

Reclaim subscription

• Create OAuth app:
Manager

• Scoped OAuth:
oncalls:read

• Token generation:
Observer

• Classic User OAuth: Read

Create OAuth app and token
generation: Global admin

• Scoped OAuth:
users:write
• Classic User OAuth: Read/
Write

Create a PagerDuty application
Create a PagerDuty application to integrate with your ServiceNow instance.

Before you begin
• Activate the PagerDuty spoke. For more information, see PagerDuty Spoke

.

• PagerDuty Role required: Refer to the Minimal user permissions table.

Procedure
1. From a web browser, log in to the PagerDuty portal

using your account credentials.

2. Log in to your PagerDuty account.
3. Enable Developer Mode.
◦ If you’re logged in with a developer account, you can access Developer Mode automatically.
◦ If you’re logged in with a customer account, you must enable Developer Mode manually by
following these steps.
a. Select the INTEGRATIONS tab.
b. In the DEVELOPER TOOLS section, navigate to App Registration.
You’re redirected to the Add New App page in Developer Mode.
4. On the Add New App page, select New App.
5. On the App Information form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
App Information form
Field

Description

Name

Name of the PagerDuty application. For example, ServiceNow
Integration.

Description Brief description of the application.
6. Select OAuth 2.0 in the Functionality section.
7. Select Next.
PagerDuty registers your application and then returns you to the Add New App page.
Configure OAuth 2.0 for your PagerDuty application
After you create a PagerDuty application, configure OAuth 2.0 to authorize your application to
administer PagerDuty and access user-specific data on user login.

Before you begin

PagerDuty Role required: Refer to the Minimal user permissions table.

Procedure
1. On the Add New App page of your PagerDuty account, select Scoped OAuth or Classic User
OAuth in the Authorization section.
For more information about the permission scopes, refer to the Minimal user permissions
table.
2. In the Redirect URL field, enter the URL of the OAuth provider that users are redirected to after
authentication.
For example, https://<instance-name>/oauth_redirect.do, where
<instance-name> is the name of your ServiceNow instance.
3. In the Permission Scope field, select the required permission.
4. Select Register App.
5. From the OAuth 2.0 Client Information window, copy the values in the Client ID and Client
Secret fields.
Save them in a secure location for later use.
6. Select Continue.
Create a PagerDuty integration profile
Create a PagerDuty integration profile to track software subscriptions and optimize licensing for
your PagerDuty applications.

Before you begin

To create a PagerDuty integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the PagerDuty Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
About this task

If you’re using Software Asset Workspace, the option to create the PagerDuty integration profile
in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select PagerDuty Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select PagerDuty from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, PagerDuty Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile.
This field is automatically set to PagerDuty Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
PagerDuty Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to PagerDuty
Update User Activity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to PagerDuty
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_pagerduty_spoke.PagerDuty.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Name

Name of the connection. For example, PagerDuty Connection.

OAuth
Client
ID

Client ID that is assigned to your PagerDuty application.

OAuth
Client
Secret

Client secret that is assigned to your PagerDuty application.

OAuth
URL of the OAuth provider that users are redirected to after authentication. Enter
Redirect https://<instance-name>/oauth_redirect.do, where <instanceURL
name> is the name of your ServiceNow instance.
8. Select Create and Get OAuth Token.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
Note: For the role required to perform this step, refer to the Minimal user permissions
table.
You’re redirected to the PagerDuty Accounts page.
9. Select the same PagerDuty account that you used to create your PagerDuty application.
10. When you’re prompted to Authorize <pagerduty-app-name> to use your account, select
Submit Consent.
Your ServiceNow instance creates an OAuth token for PagerDuty and then automatically
returns you to the Integration Profile form.
11. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
12. After the connection is verified, select Publish.
13. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Rally
Integrating your Software Asset Management application with the Broadcom Rally application
enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the Rally
application

Authentication scopes

Download subscriptions

Workspace admin

None

Pull user activity

Workspace admin

None

Reclaim subscription

Workspace admin

None

Register a Rally OAuth application
Register the Rally OAuth application to access the Rally API 2.0 and to receive a Client ID and
Client secret.

Before you begin
The Rally Integration Hub spoke must be active. For more information, see Rally spoke

.

Rally Role required: Refer to the Minimal user permissions table.

Procedure
1. Log in to CA Agile Central

by using your admin credentials.

2. On the page header, select your profile and then select My Settings.
3. Navigate to Access > OAUTH CLIENTS.
4. Select Create.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
5. In the dialog box, fill in the fields.
Create Oauth Client dialog box
Field

Value

Application Name

Provide a name for the application.

Callback URL

Callback URL of the ServiceNow instance to
which the application is to be integrated. For
example, https://<instance_url>/
oauth_redirect.do.

6. Select Next.
7. Copy the Client ID and Client secret for later use.
Create a Rally integration profile
Create a Rally integration profile to track software subscriptions and optimize licensing for your
Rally solutions.

Before you begin

The Software Asset Management - SaaS License Management plugin (sn_sam_saas_int) must
be installed from the ServiceNow Store .
Role required: admin or sam_integrator

Important: You must select the Rally Spoke check box for this integration while installing
optional features on the Application Manager
page. For more information about choosing
the required SaaS applications, see Request SaaS License Management.

About this task

If you are using Software Asset Workspace, the option to create the Rally integration profile in
Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Rally Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.

Software Asset Workspace

b. Select New.
c. Select Rally from the drop-down list.
d. Select Continue.

2. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
Integration profile form
Field

Value

Display name

Name of the integration profile. For example,
Rally integration.

Status

Status of the integration profile.
◦ If you have not published the integration
profile, this field is automatically set to
Draft.
◦ If you have already published the
integration profile, this field is automatically
set to Published.

Profile type

Type of integration profile. This field is
automatically set to Rally Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to Rally
Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Rally
Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
A draft integration profile is created.
The Connection & Credential field appears and is automatically set to sn_rally_spoke.Rally.
5. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
6. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
7. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential
Field

Value

Connection Information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
Field

Value

Connection Name

Name of the Rally connection. This field
populates automatically.

Connection URL

URL for the connection. This field
is automatically set to https://
rally1.rallydev.com/slm/
webservice.

Credential Information
OAuth Client ID

Client ID that you generated while configuring
Rally API settings.

OAuth Client Secret

Client Secret that you generated while
configuring Rally API settings.

OAuth Redirect URL

https://<instance_name>/
oauth_redirect.do, where instance
name is the name of your ServiceNow
instance.

8. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
9. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
The dialog box closes and you automatically return to the integration profile form.
10. After the connection is verified, select Publish.
11. In the Publish Confirmation dialog box, select OK.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Roadmunk
Integrating your Software Asset Management application with the Roadmunk application
enables you to track your software subscriptions and to reclaim unused licenses.

Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Required user role in the
Roadmunk application

Authentication scopes

Download subscriptions

Account Admin

No scopes

Pull user activity

Account Admin

No scopes

Reclaim subscription

Account Admin

No scopes

Generate a Roadmunk API access token
Generate an API access token that authorizes access to the Roadmunk GraphQL API.

Before you begin

Roadmunk Role required: Account Admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
Procedure
1. From a web browser, open Roadmunk

.

2. Log in using your account admin credentials.
3. On the left navigation menu of the Roadmunk dashboard, select your profile icon and then
select Account Settings.
4. On the page header of your account settings, select the Integrations tab.
5. Under Existing Integrations, select Add an integration.
6. When prompted to select an integration to configure, select API Tokens.
7. On the Roadmunk API Tokens form, enter a name for your API access token in the Application
Name field.
8. Select Create API Token.
The API access token is generated and then the API Token Created dialog box opens.
9. On the API Token Created dialog box, copy your API access token by selecting Copy To
Clipboard.
Save it in a secure location for later use.
Create a Roadmunk integration profile
Create a Roadmunk integration profile to track software subscriptions and optimize licensing for
your Roadmunk applications.

Before you begin

To create a Roadmunk integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Roadmunk Spoke check box for this integration while
installing optional features on the Application Manager
page. For more information about
choosing the required SaaS applications, see Request SaaS License Management.

About this task

If you’re using Software Asset Workspace, the option to create the Roadmunk integration profile
in Core UI is inactive.

Procedure
1. Navigate to the integration profile.
Interface

Core UI

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.
b. Select New.
c. Select Roadmunk Integration Profile.

Software Asset Workspace

a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
Interface

Action

c. Select Roadmunk from the drop-down list.
d. Select Continue.
2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display
Name

Name of the integration profile. For example, Roadmunk Integration.

Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set
to Draft.
◦ If you have already published the integration profile, this field is automatically
set to Published.

Profile
Type

Type of integration profile. This field is automatically set to Roadmunk
Subscription.

3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Roadmunk Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Calculate Activity Subflow section, verify that the Subflow field is set to Roadmunk
Update User Activity.

Note: The Download Activity check box is selected by default. If you clear it, the
activity scheduled job SAM - Refresh <displayname> Activity isn't
created.

In the Analyze user activity field, you can also select the date and time starting from when
you want to analyze the user activity. By default, you can analyze user activity up to 60 days
prior to the current date and view events performed by individual users from the time you
create this profile.

Note: Software Asset Management pulls the events from the time that you start
analyzing user activity irrespective of the profile creation date.
You can modify this value in the Last activity threshold field of your software reclamation
rules. For more information, see Review a software reclamation rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
c. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to
Roadmunk Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
4. Select Save.
Your ServiceNow instance creates a draft integration profile.
The Connection & Credential field appears and is automatically set to
sn_roadmunk_spoke.Roadmunk.
5. Optional: To avoid your integration profile from including inactive users in your list of
Roadmunk subscriptions, enable the Roadmunk Download Subscriptions subflow to download
only the active users in your Roadmunk account.
By default, the Roadmunk Download Subscriptions subflow downloads all users in your
Roadmunk account, including both active and inactive users.
a. In a new tab or window, open Roadmunk

.

b. Log in using your Account Admin credentials.
The Roadmunk dashboard opens.
c. On the left navigation menu of the Roadmunk dashboard, select your profile icon and then
select Account Settings.
Your account settings open.
d. On the page header of your account settings, select the Reports tab.
e. From the list of available Roadmunk reports, select Download User CSV.
The Roadmunk User Report downloads in .csv format.
f. Return to the Integration Profile form.
g. On the form header, select the Manage Attachments icon (

).

h. In the Attachments dialog box, select Choose file to locate and select the Roadmunk User
Report that you downloaded in step e.
i. After the report uploads successfully, close the dialog box to return to the Integration Profile
form.

Tip: For continuously removing inactive users from your list of Roadmunk subscriptions,
download and attach the latest version of the Roadmunk User Report periodically.
6. Open the connection & credential aliases record by selecting the preview icon ( ) next to the
Connection & Credential field and then selecting Open Record in the record preview.
7. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
8. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection dialog box
Field

Description

Connection Information
Connection Name of the Roadmunk connection. This field populates automatically.
Name
Connection URL for the connection. This field is automatically set to https://appURL
gateway.roadmunk.com, where app is the default geographic region (North
America) in which the connection is being created.
If you’re creating the connection outside of the default app (North America)
region, you can change the value of the region to either eu (Europe) or apac
(Asia-Pacific Region).
Credential Information
API Token

API access token that authorizes access to the Roadmunk GraphQL API.
Enter the same API access token that you generated in Generate a Roadmunk
API access token.

9. Select Create.
10. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions and Calculate Activity APIs, but
not the Reclaim Subscriptions APIs.
11. After the connection is verified, select Publish.
12. Select Publish.
13. In the Publish Confirmation dialog box, select OK.

Note: If you clear the Download Activity check box after the integration profile is
published, you must revalidate the connections and then republish the integration profile
because the following events occur:
◦ The Status field on the integration profile form changes to Draft.
◦ The Validate connection button shows up on the form.
◦ The current SAM - Refresh <displayname> Activity job gets deleted.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Integrating with Salesforce CRM
Integrating your Software Asset Management application with the Salesforce customer
relationship management (CRM) services enable you to track your software subscriptions and to
reclaim unused licenses.

Note:
If you’re using Software Asset Workspace, use SaaS Playbook for integrating your
ServiceNow instance with the Salesforce CRM. For more information about creating
a Salesforce CRM integration profile through Playbook, see Create a Salesforce CRM
integration.
The supported Salesforce CRM services include

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
• Salesforce Sales Cloud
• Salesforce Service Cloud
• Salesforce Platform
• Salesforce Customer Community
• Salesforce Partner Community
• Salesforce Company Community
• Salesforce Chatter
Both Salesforce Classic and Salesforce Lightning organizations are supported.

Note: You can track entitlements for other services that you pay for but aren’t user
subscription based by using custom license metrics. See Add a custom license metric for
more details on how to create a custom license metric.
The Salesforce account that you use to connect the integration requires a Salesforce user
license and the following user access permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
Important: Minimize security risks and protect information by granting access only to the
necessary user or API permissions.
Minimal user permissions
Process

Download subscriptions

Required user role in the
Salesforce CRM application

User with the following
permissions:
• View Setup and
Configuration
• API Enabled

Authentication scopes

Application with grant type
Authorization code:
• manage your data (api)
• Perform requests on
your behalf at any time
(refresh_token, offline
access)
Application with grant type
Client Credentials: manage
your data (api)

Pull user activity

User with the following
permissions:
• View Setup and
Configuration
• API Enabled

Application with grant type
Authorization code:
• manage your data (api)
• Perform requests on
your behalf at any time
(refresh_token, offline
access)
Application with grant type
Client Credentials: manage
your data (api)

Reclaim subscription

User with Admin
permissions

Application with grant type
Authorization code:
• manage your data (api)
• Perform requests on
your behalf at any time
(refresh_token, offline
access)
Application with grant type
Client Credentials: manage
your data (api)

Download consumption

User with the following
permissions:
• View Setup and
Configuration
• API Enabled

Application with grant type
Authorization code:
• manage your data (api)
• Perform requests on
your behalf at any time
(refresh_token, offline
access)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

Application with grant type

672


<!-- page 673 -->
These are optional permissions that may be required when minimum permissions are restricted
due to your organization's security policies.
User access permissions
Permission

Enabled Description

View
Developer
Name

Yes

Allows you to view the DeveloperName field via the API. Salesforce
APIs.

Manage
Internal
Users

Yes

Allows you to create and modify internal users. Allows you to view Setup
pages.

Manage
Users

Yes

Allows you to create, edit, and deactivate users. Additionally, you can
manage security settings, including profiles and roles.

View All
Profiles

Yes

Allows you to view all user profiles regardless of the profile filter
settings.

View All
Users

Yes

Allows you to view all users regardless of the sharing settings.

For additional information on the Salesforce CRM services, see the Salesforce Developer
Documentation .
The Client Credentials grant type is supported in Software Asset Management - SaaS License
Management (sn_sam_saas_int) 16.1.0, Salesforce CRM application 2.0.2, and Salesforce CRM
Spoke 2.4.0 version onwards.
Register a Salesforce application
Register an application through the Salesforce admin portal.

Before you begin

Salesforce Role required: admin

Procedure
1. Log in to Salesforce .
You can also switch from the Lightning UI.
2. Select the setup icon

and then select Setup.

3. Search for and select App Manager in the setup page search bar.
4. On the App Manager page, select New External Client App to create an external client
application.
5. On the form, fill in the fields.
New Connection App form
Field

Description

Basic Information
External Client App Name

Name of your application.

API Name

Name of the API. This field is automatically
populated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
Field

Description

Contact Email

The email address that you want to associate
with the application.

Distribution State

The scope of distribution of the application.
Select Local as the distribution state.

Contact Phone

The phone number that you want to
associate with the application.

Info URL

The URL of the web page with more
information about your application.

Logo URL

The URL of your logo image that is displayed
with the connected application.

Icon URL

The URL of the icon for the connected
application.

Description

Description of the application.

API (Enable OAuth Settings)
Enable OAuth

Option to enable OAuth settings.
Select this option to enable the OAuth
settings.

Callback URL

URL of the OAuth provider that users are
redirected to after authentication.
Enter https://instance.servicenow.com/oauth_redirect.do,
where <instance> is the name of your
ServiceNow instance.

OAuth Scopes

OAuth scopes that determine the amount of
access that is granted to an access token.
The following values are required:
◦ Manage user data via APIs (api)
◦ Perform requests at any time
(refresh_token, offline_access)

Security
Require Secret for Web Server Flow

The option to implement the Require Secret
for Web Server Flow in your external client
app or connected app settings.
Select this option.

Require Secret for Refresh Token Flow

The option in your external client app or
connected app while implementing the
refresh token flow using a server-side
callback handler.
Select this option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
Field

Description

Require Proof Key for Code Exchange (PKCE)
Extension for Supported Authorization Flows

Clear this option.

6. Select Create.
The application registration is complete and you're redirected to the Manage External Client
Apps page.
7. Verify and edit the policies for the registered application by selecting Edit.
8. In the OAuth Policies section, verify that the Permitted Users field is set to Admin approved
users are pre-authorized for the ServiceNow application.

Note: Admin-approved users who are preauthorized enable any users with the
corresponding profile or permission set to access the application without prior
authorization. For more information, see Pre-Authorize User App Access Through
Connected App Policies .
9. In the App Policies section, select either the profile of the integration user or the profile of the
user that you want to use for the integration.
10. In the App Authorization section, verify that the Refresh token policy field is set to Refresh
token is valid until revoked and the IP Relaxation field is set to Relax IP restrictions.
11. Select Save.
12. Retrieve OAuth credentials.
a. Navigate to Settings > OAuth Settings and then select Consumer Key and Secret.
The Salesforce login page opens in a new window.
b. Enter your credentials to log in to Salesforce.
c. Copy the Consumer Key and Consumer Secret and save them in a secure location for later
use.
Create a Salesforce CRM integration profile
Create an integration profile to track software subscriptions and optimize licensing for the
Salesforce CRM services.

Note: You must create Salesforce CRM integration only in the Global scope.
Create your first Salesforce CRM integration profile
Create an integration profile for the first Salesforce organization for which you want to track
software subscriptions and optimize licensing.

Before you begin

To create a Salesforce CRM integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin

Important: You must select the Software Asset Management integration with

Salesforce CRM check box for this integration while installing optional features on the
Application Manager
page. For more information about choosing the required SaaS
applications, see Request SaaS License Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
About this task

If you’re using Software Asset Workspace, the option to create the Salesforce CRM integration
profile in Core UI is inactive.
If you’re using Software Asset Workspace, use SaaS Playbook for integrating your ServiceNow
instance with Salesforce CRM. For more information about creating a Salesforce CRM integration
profile through Playbook, see Create a Salesforce CRM integration.

Procedure
1. Navigate to the integration profile.
Interface

Action

a. Navigate to All > Software Asset > SaaS Li­
cense > Direct Integration Profiles.

Core UI

b. Select New.
c. Select Salesforce CRM Integration Profile.
a. Navigate to License operations > User Sub­
scriptions > Direct integration profiles.
b. Select New.

Software Asset Workspace

c. Select Salesforce CRM from the dropdown list.
d. Select Continue.
The Playbook launches for Salesforce CRM
integration and the next steps aren't valid.
For more information, see Create a Sales­
force CRM integration.

2. On the form, fill in the fields.
Integration Profile form
Field

Description

Display Name of the integration profile.
name
Enter a name that uniquely identifies the Salesforce organization for which you’re
creating this integration profile. For example, SFDC Org1.

Tip: Keep this name short to help it displays better during reporting.
Status

Status of the integration profile.
◦ If you have not published the integration profile, this field is automatically set to
Draft.
◦ If you have already published the integration profile, this field is automatically set
to Published.

Profile
type

Type of integration profile. This value is automatically set to Salesforce CRM
Subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
3. Review the required user roles or API permissions specified in the Vendor configuration field
for each process to minimize security risks and optimize SaaS licenses.

Note: For more information, see Minimal user permissions table.
a. In the Download Subscription Subflow section, verify that the Subflow field is set to
Salesforce CRM Download Subscriptions.

Note: The Download subscriptions check box is selected by default and you can't
clear it.
b. In the Reclaim Subscription Subflow section, verify that the Subflow field is set to Salesforce
CRM Reclaim Subscription.

Note: The Reclaim subscriptions check box is selected by default. If you don't want
to reclaim subscriptions, you can clear this check box. If you clear it, the removal
candidates are created but the reclaim subscription subflow isn't triggered or the
reclamation process isn't initiated.
c. On the Download Consumption Subflow tab, verify that the Subflow field is set to
Salesforce CRM Download Consumption.
4. Select Save.

Note: The Calculate Activity Subflow isn’t required for Salesforce CRM integrations
because these integrations use information about last user login from the user records.
Your instance creates a draft integration profile. You can view consumption counts for the
specific consumption based Salesforce CRM application.
The Connection & Credential field appears and is automatically set to
sn_sforce_v2_spoke.Salesforce.
5. Open the connection & credential aliases record by selecting the preview icon (
Connection & Credential field to configure the child alias.

) next to the

6. Select Open Record in the record preview.
7. On the Connection & Credential Aliases form, select the Create New Connection & Credential
related link.
8. In the Create Connection and Credential dialog box, fill in the fields.
Create Connection and Credential dialog box
Field

Description

Connection information
Connection
Name

Name of the connection.

Connection
URL (Instance
URL)

URL that displays after logging in to Salesforce or your custom domain URL
of Salesforce.

Enter a name that uniquely identifies the Salesforce organization for which
you’re creating this connection and credential. For example, SFDC Org1.

Credential information
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
Field

Description

Grant type

The grant type for your application according to your authentication needs.
Possible values are:
◦ Authorization Code
◦ Client Credentials

OAuth Client
ID

Client ID (consumer key) that is assigned to your Salesforce application.

OAuth Client
Secret

Client secret (consumer secret) that is assigned to your Salesforce
application.

OAuth Redirect URL of the OAuth provider that users are redirected to after authentication.
URL
This is generally the URL of the ServiceNow instance that you specified in
Register a Salesforce application.
9. Select Create and Get OAuth Token.

Note: For the role required to perform this step, refer to the Minimal user permissions
table.
10. In the OAuth2 dialog box, log in to the same Salesforce admin account that you used to create
your Salesforce application.

Tip: If the dialog box doesn’t open automatically, check to make sure that pop-ups are
allowed on your browser.
If you have selected Client Credentials as the grant type, the OAuth2 dialog box doesn't
appear.
Your ServiceNow instance creates an OAuth token for Salesforce.
11. Return to your integration profile by navigating to SaaS License > Administration > Direct
Integration Profiles and then selecting the profile from the Integration Profiles list.
12. On the integration profile form, select Validate Connection to verify the connection and
credential details of this integration.
Validating the connection verifies the Download Subscriptions APIs, but not the Reclaim
Subscriptions APIs.
13. After the connection is verified, select Publish.
14. In the Publish Confirmation dialog box, select OK.

Result

After you publish the integration profile, your ServiceNow instance begins retrieving data from
your Salesforce CRM services. For organizations with fewer than 100 users, this process typically
takes only a few minutes to complete. For organizations with 100–5000 users, this process can
take around 15 minutes to complete. For organizations with over 5000 users, this process can
take over one hour to complete.

What to do next

After the integration connects, your ServiceNow instance automatically creates software models,
reclamation rules, and software subscriptions that are refreshed daily.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
After creating an integration profile, view information about the profile in the Software Asset
Workspace by navigating to License operations > User subscription > Direct integration
profiles. You can select an integration profile to view the following related lists. If the following
related lists aren't visible for an integration profile in the default view, you can select the custom
integration view from the Details tab:
• Software Models
• Unrecognized Subscription Identifiers
• Scheduled Jobs
• Scheduled Job Results
• Software Subscriptions
• Subscription Identifier Exclusion Rule
• Subscription User Exclusion Rule
After creating an integration profile, you can define subscription exclusion rules to keep certain
subscriptions from license cost calculations. For more information, see Subscription exclusions
for SaaS and SSO applications.
If you want to set up multiple integration profiles with unique connections, create child aliases to
manage different configurations and settings for each integration profile. For more information,
see Create a child alias to set up multiple integration profiles.
Review all automatically generated reclamation rules to reclaim user subscriptions. For more
information, see Review a software reclamation rule.
Create software entitlements for the automatically generated software models to track used
software against owned software.
• For more information on creating software entitlements in the Software Asset Management
Core UI, see Create entitlements in Software Asset Management classic.
• For more information on creating software entitlements in the Software Asset Workspace, see
Create entitlements in workspace.
• For more information on creating software entitlements using the Software Asset Management
Playbook, see Create entitlements using the guided walk-through.
Reconciliation also runs on your subscriptions as a scheduled job or on-demand. You can view
your reconciliation results in the License Workbench (Software Asset Management classic
application) or the License usage view (Software Asset Workspace). Use these results to
determine your license compliance position and to remediate any non-compliance.
• For more information on running reconciliation in the Software Asset Management classic
application, see Run software reconciliation in Software Asset Management classic.
• For more information on running reconciliation in the Software Asset Workspace, see Run
software reconciliation in the workspace.
Create additional Salesforce CRM integration profiles
Create an integration profile for each additional Salesforce organization that you want to track
software subscriptions and optimize licensing for.

Before you begin

To create a Salesforce CRM integration profile, request the Software Asset Management - SaaS
License Management plugin (sn_sam_saas_int) from the ServiceNow Store .
ServiceNow Role required: sam_integrator or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


