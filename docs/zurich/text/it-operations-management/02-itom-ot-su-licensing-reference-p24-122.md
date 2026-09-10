# Zurich IT Operations Management — ITOM/OT SU Licensing Reference / ITOM Store upgrades / ITOM Cloud Accelerate +1 more

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 24–122 of 4823

Sections: ITOM/OT SU Licensing Reference (p24); ITOM Store upgrades (p29); ITOM Cloud Accelerate (p30); Cloud Account Management (p31)

---

<!-- page 24 -->
◦ HLA
◦ Governance
◦ Health
3. To create a report for the selected application, select Populate licensable CIs.
4. To accept the confirmation message and generate the report, select Yes.
The new report replaces the data in the previously generated report. You can cancel the report
by selecting the application and then selecting Cancel Job.
5. Wait for several minutes and then refresh the page.
The Status of the application appears Completed when the report is complete.
6. Select the application and then select Show licensable CIs.
The ITOM Licensable CIs page displays the list of CIs with a license.

ITOM/OT SU Licensing Reference
Reference topics provide additional information about scheduled jobs, tables, subscriptions
form and dashboard that you use to configure and administer ITOM/OT SU Licensing.

Components installed with ITOM/OT SU Licensing
Several types of components are installed with activation of the ITOM/OT SU Licensing plugin,
including tables and scheduled jobs.

Scheduled jobs installed
Scheduled job

Description

ITOM Exclusion Tables Update Store

Updates the exclusion list.

ITOM Licensing Aggregator Store

Calculates the average of daily CI counts
for the last 90 days.

ITOM Licensing Cloud Accelerate CI Listing Store

Creates the list of licensable CIs for
ITOM Cloud Accelerate.

ITOM Cloud Accelerate Licensing Usage Count
Store

Calculates the daily CI counts for ITOM
Cloud Accelerate.

Event Management - Node Count Store

Calculates the node count used in Event
Management.

ITOMHealthCIReporterWithOTOMCountITOMStore

Compiles the list of licensable CIs for
ITOM.

ITOMHealthCIReporterWithOTOMCountOTOMStore Compiles the list of licensable CIs for
Operational Technology Management
(OTM).
ITOM Health Licensing Usage Count Store

Calculates the daily CI count for ITOM
AIOps.

ITOM Optimization Licensing Usage Count Store

Calculates the daily CI count for ITOM
Optimization.

ITOM Licensing Optimization CI Listing Store

Compiles the list of licensable CIs for
ITOM Optimization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

24


<!-- page 25 -->
Scheduled job

Description

OTOM Licensing Visibility CI Listing Store

Compiles the list of licensable CIs for
ITOM Visibility (OTM).

ITOM Licensing Discovery CI Listing Store

Compiles the list of licensable CIs for
Discovery.

ITOM Licensing Visibility CI Listing Store

Compiles the list of licensable CIs for
ITOM Visibility.

ITOM Visibility Licensing Usage Count Store

Calculates the daily CI count for ITOM
Visibility.

OTOM Licensing Discovery CI Listing Store

Compiles the list of licensable CIs for
Discovery (OTM).

ITOM DEX Licensing Usage Count Store

Calculates the daily CI counts for ITOM
DEX.

ITOM Licensing DEX CI Listing Store

Creates the list of licensable CIs for
ITOM DEX.

ITOM Licensing Service Observability CI Listing
Store

Creates the list of licensable CIs for
ITOMService Observability.

ITOMService Observability Licensing Usage Count
Store

Calculates the CI counts for
ITOMService Observability.

ITOM Licensing Historical Table Update Store

Creates a table to store all the licensable
CIs daily

Tables installed
For information on how ITOM/OT SU Licensing counts licensable CIs for different ITOM products,
refer to ITOM Subscription Unit license calculation logic (KB0748149) .

Table

Description

ITOM LU Discovery Source Mapping

Contains the list of licensable discovery source for
each category.

[itom_lu_discovery_source_mapping]
ITOM LU Governance App Mapping
[itom_lu_governance_app_mapping]
ITOM LU Governance CIs
[itom_lu_governance_ci]
ITOM License Exclusion Metadata
[itom_license_exclusion_metadata]
License Exclusions
[license_exclusion_list]
Visibility LU Temporary

List of records that contain the mapping of
governance applications to their respective
licensable CIs.
Contains the list of CIs counted under the
Governance license.
Contains the list of exclusion rules applicable to
different license.
Contains the list of CIs that need to be excluded
from the license count based on the exclusion rule.
Contains the list of CIs counted under the
Discovery license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

25


<!-- page 26 -->
Table

Description

[visibility_lu_temp]
ITOM Licensing Category MetaData

Contains licensing metadata.

[itom_lu_category_metadata]
ITOM Licensing Discovery Sources

Contains the categories for all discovery sources.

[itom_lu_discovery_sources]
ITOM LU DEX CIs
[sn_itom_licensing_itom_lu_dex_ci]
Historical Licensable CIs

Contains the list of CIs counted under the DEX
license.
Contains the list of Historical Licensable CIs.

[sn_itom_licensing_itom_lu_historical_cis]

Subscriptions form for the ITOM products
Description of the fields on the Subscriptions form for the ITOM products.
ITOM products subscription form fields
Field

Description

Name

Name of either subscription bundle or ITOM application, if your
organization purchased subscriptions per application separately
(a la carte).

Start date

Date the subscription was activated.

End date

Date till when the subscription is valid.

Purchased

Number of purchased subscriptions per bundle or application (a
la carte).

Allocated

Number of consumed subscription units from a bundle or
application (a la carte). For bundles, this field shows the highest
number of consumed subscription units by applications that are
part of the bundle. For example, if ITOM Visibility consumed 300
subscription units and ITOM AIOps consumed 200 subscription
units, this field shows 300 for the bundle covering these
applications.
The color code indicates the percentage of the subscription
units that your organization consumed. By default, the color code
threshold is 90%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

26


<!-- page 27 -->
ITOM products subscription form fields (continued)
Field

Description

• Green: Your organization has used less than 10% of purchased
subscriptions.
• Yellow: Your organization has used more than 90%, but less
than 100% of purchased subscriptions.
• Red: Your organization has used 100% or more and exceeded
the number of purchased subscriptions. Purchased
subscriptions are overdrawn.

ITOM/OT SU Licensing dashboard
Use the ITOM Licensing dashboard to review the statistics of the resource consumption
and status against your purchased subscriptions. This dashboard contains reports for each
ITOM application. The reports offer visualization of the daily usage count and of the average
consumption of subscription units for 90 days.
The ITOM Licensing dashboard is a part of ITOM Licensing application. See also OTM Licensing
Dashboard at All > OTM > > OTM License > OTM Licensing Dashboard.
Role required: sn_itom_license.reader

Access the Assessment dashboard
Ensure that you have an sn_itom_license.reader role to access the ITOM Licensing Dashboard
located at All > ITOM License > ITOM Licensing Dashboard.
ITOM Licensing dashboard

Use cases
Example of how different people in your organization would use this dashboard, see the following
use case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

27


<!-- page 28 -->
User

Dashboard use

sn_itom_license.reader

Validate the resource usage for different ITOM products.
Report the cases where the organization exceeded the
number of purchased subscription units for specific
resources.

Note: ServiceNow applications refer to devices and applications that comprise a service
instance as configuration items (CIs).

Data visualization
The dashboard includes following visualization:

Usage

Type

Source table

§

ITOM Licensing
Displays bars that
CI Counts
represent counts
[itom_lu_ci_counts]
of CIs of different
and UsageAnalytics
licensable categories
Counts for Tables
for the last 120 days
[usageanalytics_count] per ITOM application.

• ITOM Visibility
• ITOM AIOps
• Health Log Analytics
• ITOM Cloud
Accelerate
• ITOM Discovery
• ITOM Optimization
• ITOM Digital EndUser Experience
(DEX)
• ITOM Service
Observability

Description

The dashboard also
displays the line
that represents the
average consumption
of subscription units
for the last 90 days
using SU ratios where
one server, three
PaaS resources, three
containers, or one
unresolved monitored
object equal 1 SU.
Click the vertical bar
for the desired day to
open the Available CIs
list. The table shows
each CI included in
the daily CI count,
along with daily count
Start and End dates
for each CI. The
Excluded Dates field
shows when the CI
was excluded from the
daily count.

License Report form
Description of the fields on the License Report form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

28


<!-- page 29 -->
License Report form fields
Field

Description

CI Category

Grouping of Configuration Items (CIs) in each application
based on shared characteristics or attributes.

Domain

Domain to which the CI belongs.

Total Count

Average of 90 daily counts of CIs categorized by CI types,
within each ITOM application.

Note: The total count adheres to the above

definition only if the Aggregated condition in the
filter is set as true. When the Aggregated condition
is set as false, the total count represents the daily
count for a specific application and category on that
day.
Subscription Unit Ratio
Total Subscription Units Consumed

Number of CIs in a specific category that need a
subscription.
Total number of subscription units consumed by ITOM
applications within a specific timeframe.
The licensing module calculates this number by using the
subscription units ratio with the count of CIs in each CI
category.

Sum

Total consumption of subscription units by the
application and all ITOM applications.
Appears highlighted under Total Subscription Units
Consumed.

ITOM Store upgrades
To be able to use ITOM at its full capacity, you can deploy the latest out-of-band upgrades from
the ServiceNow Store. Learn about features and enhancements available out-of-band.

What are store upgrades
The ServiceNow Store regularly releases new applications and updates to applications that are
created by ServiceNow. Each application may be on a different release schedule and may be
out-of-band, meaning that the application is not specifically tied to a family release. If you already
have a particular Store application, you can download the latest version to enhance your existing
experience with our products. Since different features are available or enhanced each time an
application is released in the Store, the content and features available in a particular release are
indicated by version number in the documentation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

29


<!-- page 30 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

List of store upgrades
• Agent Client Collector
• Certificate Inventory and Management
• Discovery patterns
• Firewall Audit and Reporting
• CMDB CI Class Models
• Health Log Analytics
• Performance Analytics Content Pack for Cloud Resources
• Application service readiness dashboard in configurable workspace
• ITOM Cloud Accelerate

ITOM Cloud Accelerate
ITOM Cloud Accelerate workflows streamline cloud automation across the cloud adoption
journey via self-service catalogs and controlled workflows. It expedites application migration by
facilitating assessment, planning, and resource migration tracking.

Features of ITOM Cloud Accelerate
ITOM Cloud Accelerate enables organizations to validate their cloud assets against predefined
standards and correct any deviations.
ITOM Cloud Accelerate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

30


<!-- page 31 -->
These automated processes empower businesses to quicken their journey towards cloud
transformation by automating operations on Day 0, Day 1, and Day 2. It offers the following
features:
Cloud Account Management
®

Use the ServiceNow Cloud Account Management app for efficiently managing
and provisioning of cloud accounts. The app allows you to either obtain manual
approvals for account creation—ensuring that the process is closely monitored and
verified by relevant stakeholders—or to automate the approval process based on
predefined rules and conditions, saving time and reducing manual intervention.
Cloud Services Catalog
®

Use the ServiceNow Cloud Services Catalog app for simplified, assisted, and
featured interface to access cloud resources. You can also publish cloud offerings
to a catalog and manage the usage and life cycle of those resources.
Cloud Configuration Governance
®

Use the ServiceNow Cloud Configuration Governance application to check
the configuration settings of cloud resources in your organization against a set
of policies to identify violations. After identifying the violation, use remediation
workflows to mitigate them.
Cloud Action Library
®

Use the ready-to-use actions and subflows of the ServiceNow Cloud Action Library
®
application to interact with the cloud resources of the organization. ServiceNow
ITOM Cloud Accelerate features, such as Cloud Configuration Governance, use
these actions to operate.

ITOM Cloud Accelerate licensing
®

The ServiceNow AI Platform uses a licensing method where your organization is billed for using
ITOM Cloud Accelerate. The ServiceNow Product Documentation doesn't provide information
on prices, packaging, or other details determined by your organization customer contract.
For general information about licensing and subscriptions, see ITOM/OT SU Licensing and
subscriptions.

Deploying ITOM Cloud Accelerate
ITOM Cloud Accelerate features are available as separate apps on ServiceNow Store.
For licensing purposes, the ITOM Cloud Accelerate license provides the CI count for CIs
managed and monitored by Cloud Migration Assessment, Cloud Configuration Governance, or
Cloud Action Library. If different ITOM Cloud Accelerate features report the same CIs as their
resources, the CI count is manipulated to remove the duplication.

Using guided setup to implement IT Operations Management applications
IT Operations Management Guided Setup provides a sequence of tasks that help you configure
IT Operations Management applications on your ServiceNow instance. To open IT Operations
Management guided setup, navigate to Guided Setup > ITOM Guided Setup. For more
information about using the guided setup interface, see Using guided setup .

Cloud Account Management
Cloud Account Management simplifies account management by automating tasks like creation
and provisioning. Predefined policies enable easy suspension, reactivation, and certification of
accounts. Potentially reduce provisioning times from weeks to minutes by automating requests,
approvals, and setups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

31


<!-- page 32 -->
Cloud Account Management brings together ServiceNow cloud solutions in a unified experience
as part of the Cloud Governance Suite.
The Cloud Account Management feature automates the management process for AWS accounts
and Azure subscription creation. Key benefits include automating account management,
streamlining approval workflows, reducing provisioning time, and enhancing security with
automated certifications.
Cloud Account Management workflow

Get Started

Explore

Configure

Learn about Cloud Account
Management concepts and features.

Configure environment and user access.

Use

Reference

Become familiar with workflow to
create and manage cloud accounts.

Get details about components
like fields, tables, and properties.

Exploring Cloud Account Management
The ServiceNow Cloud Account Management in Cloud Workspace application provides a
framework to streamline the cloud account creation and management process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

32


<!-- page 33 -->
Cloud Account Management overview
The automation capabilities of Cloud Account Management in Cloud Workspace simplify
administrative tasks related to account management, such as creation, suspension, reactivation,
and certification. Data certification confirms the integrity and security of user accounts within the
organization's cloud environment.
As a Cloud Account Management admin, you can view the account statistics displayed on the
Home tab, which include critical severity accounts, high severity accounts, suspended accounts,
accounts due for certification, and accounts with undefined budgets.

About Cloud Workspace entitlements
Cloud Account Management dynamically adjusts the features available to you based on your
entitlements.
• Cloud Account Management entitlement becomes available with the ITOM Cloud Accelerate
license.
• The Cloud Governance Suite (CGS) license is a prerequisite to have Cloud Workspace. The
CGS license provides the following capabilities:
◦ Access the home page
◦ Access the asset explorer, which provides an overview of your cloud assets and asset
details
• The Cloud Governance Suite with the Cloud Account Management entitlements (CGS + CAM)
provides the following additional capabilities:
◦ View an overview of your accounts and account details
◦ Submit, view, or approve account requests
◦ Certify an account
◦ View the compliance dashboard
◦ Configure Cloud Account Management or view configuration details
◦ Create request policies to automate the complete account creation and suspension process

Compliance dashboard in Cloud Workspace
The compliance dashboard consolidates data from ITOM Visibility, Cloud Account Management
to provide a unified view of cloud data and key metrics critical for security and compliance
reporting.
For more details, see Viewing the compliance dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

33


<!-- page 34 -->
Cloud account terminology
Cloud Account Management uses the term "cloud account," but other cloud providers use
different terms for similar concepts. The terms are as follows:
• Microsoft Azure Cloud (Azure) refers to subscriptions
• Amazon AWS Cloud (AWS) refers to management and member accounts
• Google Cloud Platform (GCP) refers to projects
Cloud providers offer two main access mechanisms for performing operations:
• Console user access
• Programmatic user access
For Cloud Account Management, these operations are referred to as IAM service accounts.
However, other cloud providers use different terminology:
• AWS refers to the IAM user
• Azure refers to service principals
• GCP refers to service accounts

Cloud Account Management user personas
Personas used in Cloud Account Management
User

Description

Requester

Initiates cloud account creation requests and requests for suspension or
reactivation of their own accounts.

Approver

Reviews account requests and either approves or denies them.

Admin

Confirms that the Cloud Account Management configurations align with cloud
configurations. Customizes the default data certification policy. Onboards
accounts created outside the Cloud Account Management application.

Certifier

Approves an account as certified or failed. Acts as a verification entity by
confirming the accuracy and integrity of the data.

Asset viewer

Can view all the configuration items (CIs) in Asset Explorer and access the
compliance dashboard.

Account
manager

Can view all account details and associated assets. Account managers have
edit access to accounts with primary ownership and read-only access to those
with secondary ownership.

For more information about Cloud Account Management groups and responsibilities, see Cloud
Account Management ACL groups, roles, and responsibilities.

Cloud Account Management Benefits
The Cloud Account Management provides several benefits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

34


<!-- page 35 -->
Cloud Account Management Benefits
Benefit

Feature

Simplifies subscription account creation by
Request a cloud account
defining standardized procedures and user
roles and permissions to promote consistency
Cancel a Cloud account
and compliance with security policies.
request
Enables suspending or reactivating accounts,
and adding unmanaged accounts.
Offers a visualization dashboard to manage
accounts and request policies to automate
account creation, approvals, and budget
checks.

Suspend a Cloud account

Users

Requester

Admin

Reactivate a cloud
account
Add an unmanaged cloud
account
Creating configurations
About data visualization
in Cloud Account
Management
Review request policies

Streamlines performing verifications that a
person or entity has legitimate ownership
or control over an account for security,
compliance, and regulatory purposes.

Certify an account

Certifier

Related topics
About Amazon Web Services API permissions
Components installed with Cloud Account Management
About provision modes in Cloud Account Management
About data visualization in Cloud Account Management
The Cloud Account Management overview dashboard gives a clear view of all cloud accounts
and their compliance status. Cloud Account Management pulls data from Cloud Configuration
Governance to create a simple, visual overview of compliance. As an admin, you can take the
necessary actions for the reported vulnerabilities.

Data visualization process
The workflow for creating a scan configuration for data visualization.
1. Select policy sets:
◦ Choose a predefined policy set or customize policies to specify what to scan for account
vulnerabilities.
◦ Cloud Account Management provides default policies for AWS, Azure, and GCP, which you
can adjust to meet specific compliance or security requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

35


<!-- page 36 -->
2. Select accounts: Identify the accounts to scan by selecting either a management account
(which includes all its member accounts) or individual member accounts.
3. Define a scan schedule or execute an on-demand scan: Set up a scan schedule or run an
on-demand scan to evaluate vulnerabilities based on the selected policies for the specified
accounts.
4. Daily scans:
◦ Conduct daily scans to identify vulnerabilities and compliance issues in accounts.
◦ These scans generate reports on violations, severity levels, and account aliases, providing a
detailed view of account compliance.
5. Track costs:
◦ Cloud Account Management integrates with the Cloud Cost Management Workspace to
track budgets and usage of each account.
◦ Confirm Cloud Cost Management Workspace version 8.1 or above is installed, and billing is
configured.
To set up data visualization, see Set up scan configuration for data visualization.
About Amazon Web Services API permissions
Cloud Account Management interacts with Amazon Web Services to create and manage
subscription accounts.

Note: You must establish an AWS service account for Cloud Account Management that is
separate from the account for Cloud Discovery.
The following API permissions are required to start a new subscription account in AWS:
• budgets: CreateBudgetAction
• budgets: DescribeBudgetAction
• budgets: ModifyBudget
• budgets: ViewBudget
• organizations: AttachPolicy
• organizations: CreateAccount
• organizations: CloseAccount
• organizations: DescribeAccount
• organizations: DescribePolicy
• organizations: DescribeOrganization
• organizations: DescribeOrganizationalUnit
• organizations: DescribeCreateAccountStatus
• organizations: ListRoots
• organizations: ListAccounts
• organizations: ListTagsForResource
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

36


<!-- page 37 -->
• organizations: ListAWSServiceAccessForOrganization",
• organizations: ListAccounts
• organizations: ListParents
• organizations: ListOrganizationalUnitsForParent
• organizations: MoveAccount
• organizations: TagResource
• iam: GetAccountSummary
• sts: AssumeRole

Note:
For more details on API permissions, download the Cloud Discovery REST API permissions
spreadsheet
so you can research and grant the user permissions required for running the
discovery process.
About provision modes in Cloud Account Management
Cloud Account Management supports both Terraform (Cloud and Enterprise) and cloud native
interface provision modes.

Terraform support
Terraform templates are configuration files that specify the infrastructure resources needed
for a specific application or environment using the Hashicorp Configuration Language (HCL).
Cloud Account Management dynamically retrieves Terraform credentials and templates from
the Git repository during the Terraform account creation process. Using the Terraform template,
the ServiceNow instance interacts with the cloud organization’s IAM (Identity and Access
Management) to retrieve the user's identity.

Cloud native interface support
An AWS or Azure admin creates the IAM user with the specified permissions, and the Cloud
Account Management admin enters the credentials of the IAM user into the ServiceNow
instance. No additional steps are required for users to access the cloud native interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

37


<!-- page 38 -->
Cloud Account Management provision modes

About policies in Cloud Account Management
Cloud Account Management provides policy-driven rules to automate account provisioning,
approvals, and security. These policies improve governance, control costs, enhance security,
and promote sustainability in cloud operations. Regular reviews promote consistency and
efficiency in managing cloud infrastructure.
Cloud Account Management provides policies that you can use for the following purposes:
• Suspending or reactivating AWS accounts. For more details, see Set up suspension of an AWS
account using service control policy.
• Auditing accounts and promoting compliance with security and governance standards. For
more details, see Review default Cloud Account Management certification policy.
• Automating general approval, budget approval, and configuration assignments through the
request policies listed in the following table.
Cloud Account Management request policies
Request policy

For more information

Subscription Account Creation
General Approval

Automate General Approval policy process

Subscription Account Creation
Budget Approval

Automate Budget Approval policy process

Subscription Account Creation
Configuration Assignment

Automate Configuration Assignment policy process

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

38


<!-- page 39 -->
Benefits of Cloud Account Management request policies
• Improved governance: Promotes consistent policies across all cloud accounts.
• Cost savings: Helps prevent overspending by managing accounts efficiently.
• Enhanced security: Includes security controls as part of performance and availability.
You can automate the account approval process, budget approval process, and configuration
assignment process. To help promote consistency with the cloud subscription account creation
process, regularly review and update your policies. For more information, see Review request
policies.

Configuring Cloud Account Management
Configuring the Cloud Account Management application involves a set of required tasks,
integrations, and setups to be completed before initiating service account creation and
provisioning.
The steps involved are different for AWS and Azure. These configurations are listed in the
following tables.
Configuration steps for AWS
No. Task

1

Task
Owner

Impacted
Input
Feature

Email
Admin

Create None
an
account

AWS
Admin

All
None
features

Output

Purpose

Email
Alias

A single
AD
email
across
multiple
AWS
accounts
streamlines
management,
enhances
security,
and
boosts
collaboration.

Set up and verify root email in AWS

2

Set up an Identity Access Manager
account for a ServiceNow user in AWS

AWS
Access
Key
AWS
Secret
Key

A
centralized
IAM
user
in the
management
account
efficiently
manages
multiple
AWS
accounts
via a
CloudFormation
template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

39


<!-- page 40 -->
Configuration steps for AWS (continued)
No. Task

3

Task
Owner

Impacted
Input
Feature

AWS
Admin

Account None
suspension

Output

Purpose

SCP
Policy
ID

Adding
an
account
number
to the
AWS
organization's
Service
Control
Policy
blocks
the
creation
of new
resources
and
helps
prevent
overspending,
while
existing
resources
remain
unaffected.

Set up suspension of an AWS account
using service control policy

4

Setting up Terraform and GitHub

Note: This step isn’t required if

Create
Terraform an
Admin
account
for AWS
DevOps
Admin

AWS
Access
Key
AWS
Secret
Key

cloud native interface is used for
provisioning the account.

5

Create a cloud native interface account
configuration

ServiceNow
Create None
AI
an
Platform account
Admin
for
Cloud
Native
Interface

GitHub
Terraform templates
API Key deployed
Token
to
Terraform
Terraform Cloud
OAuth
or
Token
Enterprise
ID
streamline
account
Terraform
creation
Org
and
promote
VCS
Identifier consistent
configurations.
Terraform
URL
None

No
additional
procedure
is
needed
for
cloud
native
interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

40


<!-- page 41 -->
Configuration steps for AWS (continued)
No. Task

Task
Owner

Impacted
Input
Feature

Output

Note: This step isn’t required if

You can
proceed
to
Install
Cloud
Workspace.

Terraform is used for provisioning
the account.

6

Populate Cloud Account Management
dependent tables

ServiceNow
All
Discovery
Cloud
Cloud
AI
features Credentials
Discovery
Organization
Platform
or
Admin
Service
AWS
Graph
Org Unit Connector
for
Cloud
AWS to
Service
import
Account
cloud
organization
structures
and
create
subscription
accounts.

1. Create a service account
2. Define and run discovery schedule

7

Provisioning modes for Cloud Account
Management in Cloud Workspace
• Set up Terraform API key in ServiceNow
• Set up AWS API configuration
information in ServiceNow

ServiceNow
Create
None
Email
AI
an
Platform account Alias
Admin
Terraform
Cloud
API Key
Token
Terraform
Cloud
OAuth
Token
ID
Terraform
Cloud
Org
VCS
Identifier

8

ServiceNow
Visualization
None
AI
Platform
Admin
Set up scan configuration for data
visualization

Purpose

None

Streamline
provisioning
with
flexible
modes
like
Terraform
and
cloud
native
interface,
centralizes
management,
enhances
security,
optimizes
costs,
and
improves
governance.
Data
visualization
requires
scanning
all
account
violations
based

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

41


<!-- page 42 -->
Configuration steps for AWS (continued)
No. Task

Task
Owner

Impacted
Input
Feature

Output

Purpose

on the
policy
set.
9

ServiceNow
All
None
AI
features
Platform
Admin

None

Confirm
that
members
are
assigned
to the
correct
group
for
them to
perform
the
account
request,
approval,
provisioning,
and
certification
process.
Assign
members
to the
correct
groups
for
proper
permissions,
helping
prevent
unauthorized
access
and
promoting
security.

Cloud
All
None
Workspace
features
Admin

None

Configure
before
creating,
suspending,
or
scanning
accounts.

Cloud
All
None
Workspace
features
Admin

None

Certify
all
cloud
service
accounts
either

Add members to the group

10

Creating configurations
11

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

42


<!-- page 43 -->
Configuration steps for AWS (continued)
No. Task

Task
Owner

Impacted
Input
Feature

Output

Review default Cloud Account
Management certification policy

12

created
or
boarded
after
discovery
can be
certified.
The
admin
can also
customize
the
default
policy
or
create a
policy.
The
default
policy
helps to
certify
all the
available
cloud
service
accounts
once
every
90
days.
Cloud
All
None
Workspace
features
Admin

Review request policies

Purpose

None

Request
Policies
are
rules
that
govern
the
behavior
of
request
workflows
by
applying
data
checks
and
conditions.
Regularly
reviewing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

43


<!-- page 44 -->
Configuration steps for AWS (continued)
Task
Owner

No. Task

Impacted
Input
Feature

Output

Purpose

and
updating
these
policies
confirms
that
your
cloud
account
request
process
remains
consistent
with the
procedure
for
creating
cloud
subscription
accounts.

Configuration steps for Azure
Impacted
Input
feature

No. Name

Task Owner

1

Azure Admin

AccountNone
suspension

Configure the
OAuth
permission
Client ID and
assign the
OAuth
permission
Client
to a user who
Secret
suspends or
reactivates
Tenant
the account.
ID

ServiceNow AI
Platform Admin

All
features OAuth
Client
ID

None

Configure account
suspension in Azure

2

Set up Azure Service
Principal credential

OAuth
Client
Secret
Tenant
ID

Output

Purpose

Provide
the Azure
credentials
obtained from
your Azure
administrator.
These
credentials
are used
to create a
suspension
profile and
enables you
to suspend
temporarily

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

44


<!-- page 45 -->
Configuration steps for Azure (continued)
No. Name

Task Owner

Impacted
Input
feature

Output

Purpose

or terminate
Azure
accounts as
needed.
3

ServiceNow AI
Platform Admin

Create None
an
account
for
Cloud
Native
Interface

ServiceNow AI
Platform Admin

All
Discovery
Cloud
Cloud
features Credentials
Discovery
Organization
import cloud
organization
Azure
structures
Management
and create
Group
subscription
accounts.
Cloud
Service
Account

ServiceNow AI
Platform Admin

Visualization
None

None

Data
visualization
requires
scanning
all account
violations
based on the
policy set.

ServiceNow AI
Platform Admin

All
None
features

None

Confirm that
members are
assigned to
the correct
group for
them to
perform the
account

Create a cloud native
interface account
configuration

None

Note: This step

No additional
procedure is
needed for
cloud native
interface.
You can
proceed to
Install Cloud
Workspace.

isn’t required
if Terraform
is used for
provisioning the
account.
4

Populate Cloud
Account Management
dependent tables
1. Create a service
account
2. Define and run
discovery schedule
5

Set up scan
configuration for data
visualization
6

Add members to the
group

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

45


<!-- page 46 -->
Configuration steps for Azure (continued)
No. Name

Task Owner

Impacted
Input
feature

Output

Purpose

request,
approval,
provisioning,
and
certification
process.
Assign
members to
the correct
groups
for proper
permissions,
helping
prevent
unauthorized
access and
promoting
security.
7

Cloud Workspace
Admin

All
None
features

None

Configure
before
creating,
suspending,
or scanning
accounts.

Cloud Workspace
Admin

All
None
features

None

Certify all
cloud service
accounts
either
created or
boarded after
discovery can
be certified.
The admin
can also
customize the
default policy
or create
a policy.
The default
policy helps
to certify all
the available
cloud service
accounts
once every 90
days.

Creating
configurations
8

Review default Cloud
Account Management
certification policy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

46


<!-- page 47 -->
Configuring cloud providers
The topics in this section cover various cloud configurations required to set up and work with
Cloud Account Management in Cloud Workspace.
Setting up AWS cloud
This section covers all the topics required to set up AWS cloud. The topics are arranged based
on configuration priority.
Setting up a root email
The app creates accounts with a unique request ID and root email, promoting distinct emails for
each account and simplifying management.
Shared root email account benefits:
• Reduces administrative burden: No need for individual email addresses for AWS accounts.
• Centralizes notifications: All notifications from the AWS account delivered to a single mailbox.
• Improves collaboration: Shared email access enables the DevOps team to view and
collaborate on tasks.

Note: Make sure you note the following points when provisioning a new subscription
account:
1. The app dynamically appends a request ID (for example, CWSAREQ0000002) to
a predefined root email address (aws-ccoe@mycompany.com). This process
creates a unique email address for each account in a structured format (aws-ccoe
+CWSAREQ0000002@mycompany.com).
2. After the account is provisioned, AWS sends emails in this format that are received at a
central email account aws-ccoe@mycompany.com.
Set up and verify root email in AWS
Create a unique email address to manage several accounts. Having multiple accounts and
emails can be a significant challenge for an AWS admin. A single AD email for multiple AWS
accounts simplifies management.

Before you begin

Role required: Email / AD admin

About this task
Procedure
1. Create an email address similar to aws-ccoe@mycompany.com.
2. Send a test email from your email to aws-ccoe+test@mycompany.com.
3. Confirm that the test email is received in the aws-ccoe+test@mycompany.com mailbox.

What to do next

Share the confirmed email address with the Provisioner or ServiceNow AI Platform admin for
configuration purposes.
Once you receive an account creation confirmation email on aws-ccoe@mycompany.com,
set the root credentials manually based on your company's security standards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

47


<!-- page 48 -->
Set up an Identity Access Manager account for a ServiceNow user in AWS
AWSCreate an AWS CloudFormation Identity Access Manager (IAM) user in the management
account using the CloudFormation template (CFT) so you can manage multiple AWS accounts
with a centralized IAM user.

Before you begin

Ensure that the target user account has the required AWS IAM permissions. For more
information, see About Amazon Web Services API permissions.
Role required: AWS admin.

Procedure
1. Log in to the AWS Management console.
2. Access the CloudFormation console by entering CloudFormation in the search bar and
selecting it.
3. On the CloudFormation console, select Create Stack.
A stack is a collection of AWS resources that you manage as a single unit.
4. Copy the CloudFormation template (CFT) code into a file with a .yml extension and save the
file.
AWSTemplateFormatVersion: '2010-09-09'
Description: This script is executed in Management Account
where the ServiceNow user is created.
Metadata:
AWS::CloudFormation::Interface:
ParameterGroups:
- Label:
default: User Credentials
Parameters:
- SNUserName
ParameterLabels:
SNUserName:
default: User Name
Parameters:
SNUserName:
Type: String
Description: User name for CW Service Account user
MinLength: '6'
MaxLength: '15'
ConstraintDescription: The username must be between 6 and
15 characters
Resources:
SnowCWMemberAccountAccessGroup:
Type: 'AWS::IAM::Group'
Properties:
GroupName: SnowCWMemberAccountAccessGroup
SnowCWAccountAccessPolicy:
Type: 'AWS::IAM::Policy'
Properties:
PolicyName: SnowCWAccountAccessPolicy
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

48


<!-- page 49 -->
PolicyDocument:
Statement:
- Sid: ServiceNowCWUserAccess
Effect: Allow
Action:
- 'organizations:ListRoots'
- 'organizations:ListTagsForResource'
- 'organizations:DescribeAccount'
- 'organizations:CreateAccount'
'organizations:ListAWSServiceAccessForOrganization'
- 'organizations:TagResource'
- 'organizations:ListAccounts'
- 'organizations:ListRoots'
- 'organizations:ListTagsForResource'
- 'organizations:DescribeAccount'
- 'organizations:CreateAccount'
'organizations:ListAWSServiceAccessForOrganization'
- 'organizations:TagResource'
- 'organizations:ListAccounts'
- 'organizations:CloseAccount'
- 'organizations:DescribeOrganization'
- 'organizations:DescribeOrganizationalUnit'
- 'organizations:ListParents'
'organizations:ListOrganizationalUnitsForParent'
- 'organizations:MoveAccount'
- 'organizations:DescribeCreateAccountStatus'
- 'organizations:AttachPolicy'
- 'organizations:DescribePolicy'
- 'organizations:ListAccounts'
- 'budgets:CreateBudgetAction'
- 'budgets:ModifyBudget'
- 'budgets:ViewBudget'
- 'budgets:ListTagsForResource'
- 'iam:GetAccountSummary'
- 'iam:GetAccountPasswordPolicy'
- 'budgets:DescribeBudgetAction'
- 'iam:ListAccountAliases'
- 'sts:AssumeRole'
- 'iam:GetRole'
- 'iam:ListAccountAliases'
- 'iam:GetAccountPasswordPolicy'
- 'organizations:DetachPolicy'
- 'iam:GetAccountAuthorizationDetails'
Resource: '*'
Groups:
- !Ref SnowCWMemberAccountAccessGroup
CreateServicenowUser:
Type: 'AWS::IAM::User'
Properties:
Path: /
UserName: !Ref SNUserName
AddSnowUserToSnowCWMemberAccountAccessGroup:
Type: 'AWS::IAM::UserToGroupAddition'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

49


<!-- page 50 -->
Properties:
GroupName: SnowCWMemberAccountAccessGroup
Users:
- !Ref SNUserName
DependsOn: CreateServicenowUser
Outputs:
ServiceNowUserARN:
Description: ARN of ServiceNow user
Value: !GetAtt
- CreateServicenowUser
- Arn
ServiceNowUser:
Description: ServiceNow user
Value: !Ref SNUserName
5. On the Create Stack page, select Choose an existing template > Upload a template file >
Choose file to choose a template file from your local computer.
6. Select Next to continue and to validate the template.
7. On the Specify stack details page, enter a name for the template in the Stack name field.
Note the following format requirements for a stack name:
◦ Can contain only case-sensitive alphanumeric characters and hyphens
◦ Must start with an alphabetic character
◦ Can't be longer than 128 characters
8. In the User Name field, enter a Cloud Account Management service account user name.
9. Select Next.
10. On the Configure stack options page, select the I acknowledge that AWS CloudFormation
might create IAM resources with custom names check box and select Next.
11. On the Review and create page, select Submit to launch your stack.
The IAM account gets created.
12. Add security credentials.
a. Select Resources.
b. Select the user name link.
c. In the Access Keys section, select Create access key.
d. On the Access key best practices & alternatives page, choose the Third-party service
option.
This access key provides access for a third-party application or service that monitors or
manages your AWS resources.
e. Select the I understand the above recommendation and want to proceed to create an
access key check box and select Next.
f. Select Create access key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

50


<!-- page 51 -->
g. On the Review access keys page, download the access key file and select Done.

Note: Share the access key and secret key with the Terraform admin and ServiceNow
AI Platform admin.

What to do next

Set up suspension of an AWS account using service control policy
Set up an Identity Access Manager in AWS GovCloud
Create AWS CloudFormation Identity Access Manager (IAM) resources for three AWS account
types in the management account using the CloudFormation templates (CFT) to integrate
ServiceNow Cloud Account management (CAM) with AWS GovCloud.

Before you begin

Verify that the target user account has the required AWS IAM permissions. For more information,
see About Amazon Web Services API permissions.

Note: Always follow your organization's security policies when implementing IAM
permissions.
Role required: AWS admin

About this task

AWS GovCloud accounts are always linked to commercial accounts, which means IAM resources
must be created across three AWS account types:
• AWS Commercial Management Account: The standard AWS account that links to GovCloud.
• AWS GovCloud Root Management Account: The main account in the GovCloud environment.
• AWS GovCloud Organization Management Account: The account for managing organization
resources in the GovCloud environment.

Procedure
1. Copy each CloudFormation template (CFT) code into different files with a .yml extension and
save the files.
2. Log in to the AWS Management console using your root user credentials.
3. Follow the steps to execute each script in sequence.
a. AWS Commercial Management Account CFT script
i. Log in to the Commercial AWS console.
ii. Access the CloudFormation console by entering CloudFormation in the search bar
and selecting it.
iii. On the CloudFormation console, select Create Stack > Choose an existing template >
Upload a template file > Choose file to choose a template file from your local computer.
A stack is a collection of AWS resources that you can manage as a single unit.
iv. Use the saved Commercial CFT script and set the SNUserName parameter.
v. Record the output parameters: SNUserARN and SNUser.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

51


<!-- page 52 -->
AWSTemplateFormatVersion: '2010-09-09'
Description: This script creates a ServiceNow user in the AWS
Commercial Management Account for Cloud Account Management
(CAM) integration.
Metadata:
AWS::CloudFormation::Interface:
ParameterGroups:
- Label:
default: User Credentials
Parameters:
- SNUserName
ParameterLabels:
SNUserName:
default: User Name in the AWS Commercial environment
Parameters:
SNUserName:
Type: String
Description: User name for ServiceNow Cloud Workspace
application in AWS Commercial Environment
MinLength: '6'
MaxLength: '15'
ConstraintDescription: The username must be between 6 and
15 characters
Resources:
# AWS Commercial Resources
SnowCWMemberAccountAccessGroup:
Type: 'AWS::IAM::Group'
Properties:
GroupName: SnowCWMemberAccountAccessGroup
Description: IAM Group for ServiceNow Cloud Workspace
users with permissions to manage AWS Organizations
SnowCWAccountAccessPolicy:
Type: 'AWS::IAM::Policy'
Properties:
PolicyName: SnowCWAccountAccessPolicy
PolicyDocument:
Version: '2012-10-17'
Statement:
# Create Account Workflow Permissions
- Sid: ServiceNowCreateAccountAccess
Effect: Allow
Action:
- 'budgets:CreateBudgetAction'
- 'budgets:DescribeBudgetAction'
- 'organizations:CreateGovCloudAccount'
- 'organizations:DescribeCreateAccountStatus'
- 'organizations:MoveAccount'
- 'organizations:TagResource'
- 'organizations:ListRoots'
Resource: '*'
# Account Management Workflow Permissions
- Sid: ServiceNowAccountManagementAccess
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

52


<!-- page 53 -->
Effect: Allow
Action:
- 'budgets:ListTagsForResource'
- 'budgets:ModifyBudget'
- 'budgets:ViewBudget'
- 'iam:GetAccountPasswordPolicy'
- 'iam:GetAccountSummary'
- 'iam:GetRole'
- 'iam:ListAccountAliases'
- 'organizations:AttachPolicy'
- 'organizations:DescribePolicy'
- 'organizations:DetachPolicy'
- 'sts:AssumeRole'
Resource: '*'
# Discovery Workflow Permissions
- Sid: ServiceNowDiscoveryAccess
Effect: Allow
Action:
- 'organizations:DescribeAccount'
- 'organizations:DescribeOrganization'
- 'organizations:DescribeOrganizationalUnit'
- 'organizations:ListAccounts'
'organizations:ListAWSServiceAccessForOrganization'
'organizations:ListOrganizationalUnitsForParent'
- 'organizations:ListParents'
- 'organizations:ListRoots'
- 'organizations:ListTagsForResource'
Resource: '*'
Groups:
- !Ref SnowCWMemberAccountAccessGroup
Description: Policy that grants permissions required for
ServiceNow CAM in the AWS Commercial environment
CreateServicenowUser:
Type: 'AWS::IAM::User'
Properties:
Path: /
UserName: !Ref SNUserName
Tags:
- Key: Purpose
Value: ServiceNowCAMIntegration
Description: IAM user for ServiceNow CAM integration with
AWS Commercial environment
AddSnowUserToSnowCWMemberAccountAccessGroup:
Type: 'AWS::IAM::UserToGroupAddition'
Properties:
GroupName: SnowCWMemberAccountAccessGroup
Users:
- !Ref SNUserName
DependsOn: CreateServicenowUser
Description: Adds the ServiceNow user to the access group
Outputs:
SNUserARN:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

53


<!-- page 54 -->
Description: ARN of ServiceNow user in AWS Commercial
environment
Value: !GetAtt CreateServicenowUser.Arn
SNUser:
Description: Username of the created ServiceNow user in
AWS Commercial environment
Value: !Ref SNUserName
b. AWS GovCloud Root Management Account CFT script
i. Log in to the GovCloud AWS console.
ii. Access the CloudFormation console by entering CloudFormation in the search bar
and selecting it.
iii. On the CloudFormation console, select Create Stack > Choose an existing template >
Upload a template file > Choose file to choose a template file from your local computer.
iv. Use the saved GovCloud root CFT script and set the SNGovUserName parameter.
v. Record the output parameters: SNGovUserARN and SNGovUser.

Note:
For simplicity, this template uses a wildcard (*) in the Resource ARN for the
SnowCWGovCloudUserPolicy, enabling the ServiceNow user to assume the role in
any GovCloud account. While this works functionally, it grants more permissions than
necessary.
For production environments:
▪ Add a parameter for the organization account ID: OrgAccountId: Type:
String
▪ Update the Resource field:
Resource: !Sub
'arn:aws-usgov:iam::${OrgAccountId}:role/ServiceNowGovCrossAccountR
ole'
▪ For working with multiple accounts, see CloudFormation Parameters
CommaDelimitedList
▪ Review AWS IAM Best Practices

and Using

for more guidance on securing IAM policies

AWSTemplateFormatVersion: '2010-09-09'
Description: This script creates a ServiceNow user in the AWS
GovCloud Management Account for Cloud Account Management
(CAM) integration.
Metadata:
AWS::CloudFormation::Interface:
ParameterGroups:
- Label:
default: User Credentials
Parameters:
- SNGovUserName
ParameterLabels:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

54


<!-- page 55 -->
SNGovUserName:
default: AWS User Name in the GovCloud environment
Parameters:
SNGovUserName:
Type: String
Description: User name for ServiceNow Cloud Workspace
application in AWS GovCloud Environment
MinLength: '6'
MaxLength: '15'
ConstraintDescription: The username must be between 6 and
15 characters
Resources:
# AWS GovCloud Resources
SnowCWGovCloudAccessGroup:
Type: 'AWS::IAM::Group'
Properties:
GroupName: SnowCWGovCloudAccessGroup
Description: IAM Group for ServiceNow Cloud Workspace
users in AWS GovCloud environment
CreateGovCloudServicenowUser:
Type: 'AWS::IAM::User'
Properties:
Path: /
UserName: !Ref SNGovUserName
Tags:
- Key: Purpose
Value: ServiceNowCAMIntegration
Description: IAM user for ServiceNow CAM integration with
AWS GovCloud environment
SnowCWGovCloudUserPolicy:
Type: 'AWS::IAM::Policy'
Properties:
PolicyName: SnowCWGovCloudUserPolicy
PolicyDocument:
Version: '2012-10-17'
Statement:
- Effect: Allow
Action: 'sts:AssumeRole'
Resource:
'arn:aws-us-gov:iam::*:role/ServiceNowGovCrossAccountRole'
- Effect: Allow
Action: 'sts:AssumeRole'
Resource:
'arn:aws-us-gov:iam::*:role/OrganizationAccountAccessRole'
Groups:
- !Ref SnowCWGovCloudAccessGroup
Description: Policy that grants basic permissions and
ability to assume the cross-account role
AddSnowUserToSnowCWGovCloudAccessGroup:
Type: 'AWS::IAM::UserToGroupAddition'
Properties:
GroupName: SnowCWGovCloudAccessGroup
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

55


<!-- page 56 -->
Users:
- !Ref SNGovUserName
DependsOn:
- CreateGovCloudServicenowUser
- SnowCWGovCloudAccessGroup
Description: Adds the ServiceNow GovCloud user to the
access group
Outputs:
SNGovUserARN:
Description: ARN of ServiceNow user in AWS GovCloud
environment
Value: !GetAtt CreateGovCloudServicenowUser.Arn
SNGovUser:
Description: Username of the created ServiceNow user in
AWS GovCloud environment
Value: !Ref SNGovUserName
c. AWS GovCloud Organization Management Account CFT script
i. Log in to the GovCloud Organization AWS console.
ii. Access the CloudFormation console by entering and selecting CloudFormation in the
search bar.
iii. On the CloudFormation console, select Create Stack > Choose an existing template >
Upload a template file > Choose file to choose a template file from your local computer.
iv. Use the saved GovCloud Organization CFT script and set the SNGovUserARN parameter
to the output recorded from the AWS GovCloud Root Management Account CFT script.
v. Record the output parameter: RoleARN.
AWSTemplateFormatVersion: '2010-09-09'
Description: This template creates the
ServiceNowGovCrossAccountRole in the AWS Organization
Management Account for ServiceNow CAM integration.
Metadata:
AWS::CloudFormation::Interface:
ParameterGroups:
- Label:
default: Role Configuration
Parameters:
- SNGovUserARN
ParameterLabels:
SNGovUserARN:
default: ServiceNow GovCloud User ARN
Parameters:
SNGovUserARN:
Type: String
Description: ARN of the ServiceNow GovCloud user that
will assume this role
AllowedPattern:
'^arn:aws(-[a-z0-9-]+)?:iam::[0-9]{12}:user/.*$'
ConstraintDescription: Must be a valid AWS IAM user ARN

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

56


<!-- page 57 -->
Resources:
ServiceNowGovCrossAccountRole:
Type: 'AWS::IAM::Role'
Properties:
RoleName: ServiceNowGovCrossAccountRole
Description: Role used by ServiceNow CAM for
cross-account operations in AWS GovCloud
AssumeRolePolicyDocument:
Version: '2012-10-17'
Statement:
- Effect: Allow
Principal:
AWS: !Ref SNGovUserARN
Action: 'sts:AssumeRole'
Policies:
- PolicyName: ServiceNowGovCloudPolicy
PolicyDocument:
Version: '2012-10-17'
Statement:
# Create Account Workflow Permissions
- Sid: ServiceNowGovCreateAccountAccess
Effect: Allow
Action:
'organizations:InviteAccountToOrganization'
- 'organizations:ListRoots'
- 'organizations:MoveAccount'
- 'organizations:TagResource'
Resource: '*'
# Account Management Workflow Permissions
- Sid: ServiceNowGovAccountManagementAccess
Effect: Allow
Action:
- 'iam:GetAccountAuthorizationDetails'
- 'iam:GetAccountPasswordPolicy'
- 'iam:GetAccountSummary'
- 'iam:GetRole'
- 'iam:ListAccountAliases'
- 'organizations:AttachPolicy'
- 'organizations:DescribePolicy'
- 'organizations:DetachPolicy'
Resource: '*'
# Discovery Workflow Permissions
- Sid: ServiceNowGovDiscoveryAccess
Effect: Allow
Action:
- 'ec2:DescribeRegions'
- 'organizations:DescribeAccount'
- 'organizations:DescribeOrganization'
'organizations:DescribeOrganizationalUnit'
- 'organizations:ListAccounts'
'organizations:ListAWSServiceAccessForOrganization'
'organizations:ListOrganizationalUnitsForParent'
- 'organizations:ListParents'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

57


<!-- page 58 -->
- 'organizations:ListRoots'
- 'organizations:ListTagsForResource'
Resource: '*'
Outputs:
RoleARN:
Description: ARN of the ServiceNowGovCrossAccountRole
Value: !GetAtt ServiceNowGovCrossAccountRole.Arn
4. Select Next to continue and validate the template.
5. On the Specify stack details page, enter a name for the template in the Stack name field.
A stack name:
◦ Can contain only case-sensitive alphanumeric characters and hyphens
◦ Must start with an alphabetic character
◦ Cannot be longer than 128 characters
6. In the User Name field, enter a Cloud Account Management service account user name.
7. Select Next.
8. On the Configure stack options page, select the I acknowledge that AWS CloudFormation
might create IAM resources with custom names check box and select Next.
9. On the Review and create page, select Submit to launch your stack.
The IAM account gets created.
10. To add security credentials for the two users created:
a. Select Resources.
b. Select the user name link.
c. In the Access Keys section, select Create access key.
d. On the Access key best practices & alternatives page, choose the Third-party service
option.
You can use this access key to enable access for a third-party application or service that
monitors or manages your AWS resources.
e. Select the I understand the above recommendation and want to proceed to create an
access key check box and select Next.
f. Select Create access key.
g. In the Review access keys page, download the access key file and select Done.

Note: Share the access key and secret key with the Terraform admin and ServiceNow
AI Platform admin.
Configuring Service Control Policy in AWS
The AWS admin configures a Service Control Policy (SCP) and shares its ID with the ServiceNow
AI Platform admin for Cloud Account Management setup. Cloud Account Management enforces
the SCP via API calls to block resource creation in the account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

58


<!-- page 59 -->
The process involved in creating and using a Service Control Policy:
1. The AWS admin sets up a Service Control Policy (SCP) in the management account, using a list
of resources from the CFT script. The admin can customize this list by adding more resource
types.
2. The AWS admin shares the SCP ID with the ServiceNow admin, who uses it for registration
during the Cloud Account Management configuration process.
3. The Cloud Account Management app submits a suspension request, triggering an API call
to the AWS Organizations Attach Policy API. This API enforces the SCP to block users from
creating resources in that account.
Copy the following content to a file and save the file as CloudFormation template (extension as
*.cft):
AWSTemplateFormatVersion: 2010-09-09
Description: SCP policy for ServiceNow Cloud Workspace to
restrict creation of new resources.
Resources:
PolicyTestTemplate:
Type: AWS::Organizations::Policy
Properties:
Type: SERVICE_CONTROL_POLICY
Name: CAM_SCP_SuspendAccount_Policy
Content:
Version: 2012-10-17
Statement:
- Sid: CAMSCPSuspendAccountPolicy
Effect: Deny
Action:
- 'ec2:RunInstances'
- 'ec2:CreateVolume'
- 'ec2:CreateSnapshot'
- 'ec2:CreateImage'
- 's3:CreateBucket'
- 'iam:CreateUser'
- 'iam:CreateRole'
- 'iam:CreatePolicy'
- 'dynamodb:CreateTable'
- 'sqs:CreateQueue'
- 'sns:CreateTopic'
- 'lambda:CreateFunction'
- 'ec2:CreateVpc'
- 'ec2:CreateSubnet'
- 'ec2:CreateInternetGateway'
- 'ec2:CreateRoute'
- 'rds:CreateDBInstance'
- 'redshift:CreateCluster'
Resource: '*'
Set up suspension of an AWS account using service control policy
Set up a restriction on cloud account creation. For example, when the account owner isn’t in
the organization or if there are budget constraints. Using Cloud Account Management, admin
adds the account number to the AWS organization's service control policy, promoting existing
accounts to continue to function normally while blocking new account creation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

59


<!-- page 60 -->
Before you begin

Verify you have saved the CloudFormation template. For more details, see Configuring Service
Control Policy in AWS.
Role required: AWS admin

Procedure
1. Log in to the AWS Management console.
2. Enter CloudFormation in the search bar and then select it.
3. On the CloudFormation console, select Create Stack.
4. On the Create Stack page, select Choose an existing template > Upload a template file >
Choose file to choose a template file from your local computer.
5. Select Next to continue and to validate the template.
6. On the Specify stack details page, enter a CloudFormation stack name in the Stack
name field.
The stack name is an identifier that helps you find a particular stack from a list of stacks. A
stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must
start with an alphabetic character and can't be longer than 128 characters.
7. Select Next and then select Submit.

Result

Once the CloudFormation Template (CFT) creates the policy, an Amazon Resource Name (ARN)
is assigned. An ARN typically follows the format:
arn:aws:organizations::1234567890:policy/o-99t3h155el/service_co
ntrol_policy/p-328wg3yb
To view the ARN, go to AWS Organization > Policies > Service control policies >
CAM_SCP_SupsendAccount_policy.
The key element that you must provide to the ServiceNow AI Platform admin is the policy
element, which in this example is: p-328wg3yb.

What to do next

Provisioning modes for Cloud Account Management in Cloud Workspace
Provisioning modes for Cloud Account Management in Cloud Workspace
Cloud Account Management in Cloud Workspace offers flexible provision modes such as
Terraform and cloud native interfaces while centralizing management, enhancing security,
optimizing costs, and improving governance.

Overview on provision modes
Provisioning modes for creating AWS accounts are:
• Terraform- Setting up Terraform and GitHub.
• Cloud native interface- There's no additional procedure required for cloud native interface. You
can proceed to Install Cloud Workspace.

Note: To know more on API permissions, see About Amazon Web Services API
permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

60


<!-- page 61 -->
Cloud Account Management provision modes

Setting up Terraform and GitHub
Simplify cloud account provisioning using Terraform. The workflow provides the basic steps
involved in setting up Terraform and GitHub.
Publish Terraform templates
Publish the Terraform template defined by the application in GitHub to enable version control,
collaboration, and centralized storage.

Before you begin

Role required: Terraform admin

Procedure
1. Create a GitHub repository dedicated to your Terraform templates.
2. Save the following codes in a separate file.
◦ File name: awsaccount.tf
terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = "~>5.0"
}
}
}
provider "aws" {
region = var.region
}
resource "aws_organizations_account" "account" {
email = var.root_email
name = var.account_name
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

61


<!-- page 62 -->
tags = var.tags
parent_id = var.parent_id
close_on_deletion=var.close_delete
create_govcloud=var.gov_cloud
}
resource "aws_budgets_budget" "cost" {
name = join("-", ["SN-CAM-Monthly-Budget",
aws_organizations_account.account.id])
count = var.monthly_budget > 0 ? 1 : 0
budget_type = "COST"
limit_amount = var.monthly_budget
limit_unit
= "USD"
time_unit
= "MONTHLY"
cost_filter {
name = "LinkedAccount"
values = [
aws_organizations_account.account.id
]
}
notification {
comparison_operator
= "GREATER_THAN"
threshold
= 100
threshold_type
= "PERCENTAGE"
notification_type
= "FORECASTED"
subscriber_email_addresses = [var.root_email,
var.notification_email]
}
notification {
comparison_operator
= "GREATER_THAN"
threshold
= 85
threshold_type
= "PERCENTAGE"
notification_type
= "ACTUAL"
subscriber_email_addresses = [var.root_email,
var.notification_email]
}
notification {
comparison_operator
= "GREATER_THAN"
threshold
= 100
threshold_type
= "PERCENTAGE"
notification_type
= "ACTUAL"
subscriber_email_addresses = [var.root_email,
var.notification_email]
}
}
◦ File name: variables.tf
variable "region" {
type = string
default = "us-east-1"
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

62


<!-- page 63 -->
variable "account_name" {
type = string
description = "(Required) Account Name"
}
variable "root_email" {
type = string
description = "(Required) Account Email"
}
variable tags{
type = map(string)
description = "(Required) Tags for the resource"
}
variable "close_delete" {
type = bool
description = "Close Account on deletion"
default = true
}
variable "gov_cloud" {
type = bool
description = "Gov Cloud Account"
default = false
}
variable "parent_id" {
type = string
description = "(Required) Account Parent Organizational
Unit"
}
variable monthly_budget {
type = number
default = 0
}
variable notification_email {
type = string
description = "Additional email where Budget Notifications
are to be sent"
}
3. Push the Terraform files to the remote repository.
4. Make a note of the location or URL once the template is stored in the GitHub.
This template is then referenced in Terraform Cloud and the ServiceNow instance to automate
the creation of a subscription account.

Important:
Don’t modify the template as the variables are closely connected to the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

63


<!-- page 64 -->
Create a Terraform organization for Cloud Account Management in Cloud Workspace
Integrate with Terraform Cloud/Terraform Enterprise to organize accounts, define workflows,
enforce security, improve collaboration, and enhance scalability.

Before you begin

Role required: Terraform admin
Attributes required for this setup:
• AWS Access Key
• AWS Secret Key
Make sure you have access to Terraform Cloud or Terraform Enterprise to perform the following
procedure.

Procedure
1. Log in and navigate to the Terraform Cloud (https://app.terraform.io/session) or
Terraform Enterprise portal ( https://<tfe_server_url>/api/v1).
2. Select the user name or organization name.
3. In the modal window, enter a unique org name and other details.
4. Select Create Organization.

Note:
◦ After a new organization is created, you’ll receive confirmation within the platform.
You can manage your organization settings, add members, and configure workspaces
within your newly created organization.
◦ To see to the official Terraform documentation:
▪ Terraform Cloud: https://developer.hashicorp.com/terraform/cloud-docs/usersteams-organizations/organizations
▪ Terraform Enterprise: https://developer.hashicorp.com/terraform/cloud-docs/usersteams-organizations/organizations
5. In Terraform org, navigate to Settings > Variable set > Create variable set.
A variable set is a collection of variables shareable across multiple workspaces.
6. Provide a descriptive name like AWS credentials.
7. Select the appropriate scope (organization or a workspace).
8. Create two variable sets within the Variables section as follows:
◦ Key: AWS_ACCESS_KEY_ID and Value: <AWS access key>
◦ Key: AWS_SECRET_ACCESS_KEY and Value: <AWS secret key>

Note: Select as Sensitive to restrict the visibility of credentials to unauthorized
personnel with Terraform access.
For more details on variable sets, see https://developer.hashicorp.com/terraform/tutorials/
cloud-get-started/cloud-create-variable-set
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

64


<!-- page 65 -->
Integrate Terraform Cloud with GitHub
Integrate GitHub with Terraform to link workspaces to repositories, enabling version control,
change tracking, and rollbacks.

Before you begin

Role required: Terraform admin or DevOps team member

Procedure
1. Go to the Terraform org created for this application.
2. Navigate to Settings > Providers.
3. Select Add a VCS provider.
4. From the GitHub drop-down list, choose a GitHub.com (Custom).
5. Select the link Register a new OAuth Application.

6. Select Register application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

65


<!-- page 66 -->
7. Copy the client ID.
8. Select Generate a new client secret and copy the generated Client Secret.
9. Go back to the Terraform console where the Add a VCS provider page is open and paste both
Client ID and Client Secret.

10. Select Connect and continue.
11. Select Authorize.

Note: Follow the platform-specific instructions to authorize Terraform Cloud to access
your GitHub repository.
For more details, see the official documentation: https://developer.hashicorp.com/
terraform/cloud-docs/vcs/Github-enterprise .
12. On the Advance Settings page, select Skip and finish.

What to do next

Make a note of the OAuth Token ID and share it with the ServiceNow admin.

Create Terraform API token
Generating API tokens with limited permissions enhances security, enables fine-grained control,
facilitates automation, and provides temporary access within your Terraform organization.

Before you begin

Role required: Terraform admin

Procedure
1. Log in to the Terraform console.
2. Select Account Settings from the user profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

66


<!-- page 67 -->
3. Select Tokens and then select Create an API token.
4. Enter Description.
5. Set the Expiration date.

Note: The expiration date should align with the security standards of your company.
6. Select Generate token.
7. Share the following details with the ServiceNow admin to register in the ServiceNow instance:
◦ VCS Identifier or the GitHub repository location, where you have stored the Terraform
template, for example: https://github.com/<your_repository>/camcreate-aws-account.
◦ Terraform Organization Name
◦ Terraform OAuth Token ID
◦ Terraform API Key Token
◦ Terraform URL

What to do next

Setting up Cloud Account Management in Cloud Workspace
Add members to the group
Set up Terraform API key in ServiceNow.
Set up scan configuration for data visualization.
Setting up Azure cloud
This section covers all the topics required to set up Azure cloud. The topics are arranged in order
of configuration priority.
Configure account suspension in Azure
Manage an Azure subscription using the permission and by assigning the role to a user. The role
must have the permission to execute the APIs for suspending and reactivating an Azure account.

Before you begin

Role required: Azure admin

Procedure
1. Sign in to the Azure organization.
2. Search and select Management groups.
3. Select Tenant Root Group.
4. Select Access Control > Roles.
5. Select Add and then select Add custom role.
6. In the Custom role name box, specify a name for the custom role.
The name must be unique for the Microsoft Entra directory.
7. Select Next.
8. On the Permissions tab, select Next.
9. On the Assignable scopes tab, you specify where your custom role is available for assignment,
such as management group, subscriptions, or resource groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

67


<!-- page 68 -->
10. Select Add assignable scopes to open the Add assignable scopes pane.
11. On the JSON tab, paste the following code:
{
"properties": {
"roleName": "Policy Lock/Unlock Manager",
"description": "Allows locking and unlocking Azure
Policy assignments at management group level",
"assignableScopes": [
"/providers/Microsoft.Management/managementGroups/<ManagementG
roupId>”
],
"permissions": [
{
"actions": [
"Microsoft.Authorization/policyAssignments/write",
"Microsoft.Authorization/policyAssignments/delete",
"Microsoft.Authorization/policyAssignments/read"
],
"notActions": [],
"dataActions": [],
"notDataActions": []
}
]
}
}
12. Select Next and then select Create.

What to do next

You must assign the permission to a role. For more information, see https://learn.microsoft.com/
en-us/azure/role-based-access-control/role-assignments-portal .
Configure a lock/unlock policy. For more information, see Set up suspension of a subscription
using Azure policy.
Set up Azure Service Principal credential
Provide the Azure credentials obtained from your Azure administrator. These credentials are
used to create a suspension profile and enables you to suspend temporarily or terminate Azure
accounts as needed.

Before you begin

Review the Permissions required for Azure Service Principal topic before creating a Azure
Service Principal credential.
Role required: ServiceNow AI Platform admin

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > Connections & Credentials > Credentials.
3. From the list, select Azure Service Principal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

68


<!-- page 69 -->
4. In the Connections & Credentials form, provide the following information.

Field

Value

Name

Name of the service principal to register with the instance. For example, Azure
service principal credentials.

Tenant ID

Azure Directory ID value from the text file.

Client ID

Azure Application ID value from the text file.

Secret
key

Azure Application key value from the text file.

Credential The credential alias that you want to tie to the OAuth 2.0 credential. By default,
Alias
use the predefined alias name as: sn_itom_cam.CAM_Azure_Connection
5. In the API Key field, enter the key obtained from the admin.
6. To complete the process, select Submit.
Set up suspension of a subscription using Azure policy
Create the policy at the root level to lock or unlock an Azure account. As an Azure administrator,
lock an Azure subscription, resource group, or resource to avoid accidental deletions and
modifications.

Before you begin

Make sure you have already configured the permission. For more information, see Configure
account suspension in Azure.
Role required: Azure admin

Procedure
1. Sign in to the Azure organization.
2. Search for and select Users.
3. Under the user name list, select a user.
4. From the navigation pane, select Assigned roles.
5. Under the Administrative roles, add the Global Administrator role by selecting Add
Assignments.
6. Enter Microsoft Entra ID in the search box and select Microsoft Entra ID > Properties.
7. Under Access Management for Azure resources, set the toggle to Yes.
Using this option, you can manage access to all Azure subscriptions and management groups
in this tenant.
8. Search for and select Policy.
9. Select + Policy definition.
10. Enter the following:
a. Select the tenant root group using the ellipsis on Definition location.
You can select either a management group or a subscription. If you select the tenant root
group, all child subscriptions can also be managed.
b. Enter the name of the policy definition. For example, LockAccount_policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

69


<!-- page 70 -->
c. The description of what the policy definition is intended to do.
d. Under POLICY RULE, copy the following JSON code:
{
"properties": {
"displayName": "CAM_LockAccount_Policy",
"policyType": "Custom",
"mode": "All",
"description": "Blocks the creation of resources and
configurations that fall under Azure Policy enforcement.",
"parameters": {
"allowedResourceTypes": {
"type": "Array",
"metadata": {
"displayName": "Allowed Resource Types",
"description": "List of resource types
that are allowed for creation. Any resource type not listed
here will be blocked.",
"strongType": "resourceTypes"
},
"defaultValue": []
},
"allowedLocations": {
"type": "Array",
"metadata": {
"displayName": "Allowed Locations",
"description": "List of allowed Azure
regions for resource creation."
},
"defaultValue": []
},
"effect": {
"type": "String",
"metadata": {
"displayName": "Effect",
"description": "The effect determines
what happens when the policy rule is evaluated to match"
},
"allowedValues": [
"Audit",
"Deny",
"Disabled"
],
"defaultValue": "Deny"
}
},
"policyRule": {
"if": {
"anyOf": [
{
"not": {
"field": "type",
"in":
"[parameters('allowedResourceTypes')]"
}
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

70


<!-- page 71 -->
{
"not": {
"field": "location",
"in":
"[parameters('allowedLocations')]"
}
}
]
},
"then": {
"effect": "[parameters('effect')]"
}
}
}
}
e. Select Save.

Note: To verify if the policy is created, go to PolicyDefinitions. Change the filter Scope
and Policy type to find the policy.
f. Select the policy name and copy the Definition ID.

Note: This Definition ID is required when you Create a suspend account configuration.
What to do next

Setting up Cloud Account Management in Cloud Workspace
Add members to the group
Set up Azure connection
Set up scan configuration for data visualization
Setting up Cloud Account Management in Cloud Workspace
This section covers all the general topics required to set up Cloud Account Management. The
topics are arranged in order of configuration priority.
Install Cloud Workspace
You can install the Cloud Workspace application (sn_itom_cam) if you have the admin role. The
®
application includes demo data and installs related ServiceNow Store applications and plugins
if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Cloud Account Management
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

Roles are installed with Cloud Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

71


<!-- page 72 -->
For more information, see Plugins installed in Cloud Account Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Workspace application (sn_itom_cam) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the available versions are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Populate Cloud Account Management dependent tables
Provide the required information for cloud account creation and provisioning.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Add environment elements to help categorize cloud accounts based on multiple
environments.
a. Navigate to All and search for sys_choice.LIST.
b. On the Choice page, select Element from the drop-down list and enter environment in
the search field.
c. If environment elements you want to use do not exist, create them.
i. Select New.
ii. On the form, fill in the required fields.
Choice New record form
Field

Value

Table

Choice [sys_choice] table

Element

environment (case sensitive)

Label

The name for the environment you want to
appear on the cloud account request page,
for example, Production.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

72


<!-- page 73 -->
Field

Value

Value

The same value as the label.

iii. Select Submit.
2. Populate the remaining tables.
a. Navigate to All and search for the table name.
b. Add the relevant information.

Table name

Description

Environment (sys_choice)

Contains translated text for options that appear in lists.

Cost Center
(cmn_cost_center)

Contains commonly used reference between financial
systems and IT. Cost center records represent business
entities and have a related list of CI Cost Center
Relationships that measure the cost center's consumption of
business services.

Business Unit
(business_unit)

Contains information on the business units within your
organization, including functions like Finance, HR, or IT.

Department
(cmn_department)

Contains the names of the departments in your organization.

System User (sys_user)

Contains user information for the ServiceNow instance.

Create a service account
Create a service account in CAM. A service account holds the credential and account
information that you created in your provider account. Discovery uses the information to access
your provider account and then obtain information on each logical datacenter that is associated
with the account.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Service Accounts.
2. Fill in the fields.
For more information, see Cloud Service Account form.
3. Select Submit.
Define and run discovery schedule
The discovery schedule is the control point for running discoveries. The schedule controls when
discovery runs, defines the MID Server to use, the type of discovery that should run, and the IP
addresses to query.

Before you begin

Role required: discovery_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

73


<!-- page 74 -->
Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
2. On the Cloud Admin Portal, navigate to Manage > Discovery Schedules.
3. Select Add New Schedule.
4. Fill in the details (by selecting the provider).
For more information on the field details, see Create a new discovery schedule form reference.
If the system can’t detect an appropriate MID Server, you’re prompted to configure a MID
Server.
5. Select Next.
After the schedule runs, the system discovers resources from the org and org units linked to
the AWS account or Azure tenant and management groups. The details are populated in the
following tables:
◦ cmdb_ci_cloud_org_list.do
◦ For AWS: cmdb_ci_aws_org_unit_list.do
◦ For Azure: cmdb_ci_azure_management_group
Create an application service for Cloud Account Management
Create an application service to standardize the organization, maintenance, and monitoring of
services in your organization.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Configuration > Application Services.
2. Select New.
3. In the Basic Details section, enter a name.
This name appears in the account request form once you select the environment.
4. Select Environment from the drop-down list.
The selected environment is mapped to the application service.
5. Select Next.
6. Select Next > Done.
An application service is successfully created.
Review default Cloud Account Management certification policy
Review the default certification policy provided in Cloud Account Management to validate data
against the policy set. This default policy certifies all available cloud service accounts every 90
days. Administrators can customize the default policy or create one as needed.

Before you begin

Role required: sn_itom_cam.cw_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

74


<!-- page 75 -->
Procedure
1. Navigate to All > Cloud Workspace > Account Certification.
The policies dashboard opens in CMDB Workspace, displaying existing policies under the
Published Policies section.
2. Select CW Certification Policy > View Policy to review policy details.
3. For creating or customizing a policy, see Create a CMDB Data Manager policy

.

Note:
◦ To stop data validation or edit a policy, select Deactivate Policy.
◦ After the policy is executed, view tasks by selecting the My Work tab.
◦ Once the tasks are assigned to the Cloud Account Management Certifier group,
it enables certifiers to review read-only fields and modify those fields that they’re
permitted to edit.
◦ For certifying an account, see Certify an account.

What to do next

Review request policies
Configure a custom name for Cloud Account Management
Configure a custom name for Cloud Account Management. You can optionally re-brand the
Cloud Account Management with your company or any custom name. The name change is
applicable only on the Cloud Account Management home page and navigation.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. From the list of titles, search for the Cloud Account Management and double-click on the name
to make the modification.
3. Enter a custom name and select the check

mark.

4. Re-login to see the change.
Create a variable set for Request cloud account catalog
Customize the Request cloud account catalog by creating or editing variable sets. A variable set
groups related variables into a single, reusable collection. Select only the necessary variables for
specific cloud account requests to ensure a streamlined and uniform process.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Cloud Workspace.
2. Enter sc_cat_item.LIST in the navigation filter.
3. In the sc_cat_item.LIST table, search for and click the Request Cloud Account property.
4. Click the Variable Sets tab and click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

75


<!-- page 76 -->
The Variable Set screen appears.
5. Fill in the form details (as shown in the table).

Field

Description

Title

Unique name for the variable set

Internal Name

A (unique) variable set name for internal use.

Note: If this field is empty, its value

is auto-populated based on the Title
field for all variable types except break,
container split, and container end.
Layout

Layout display selections from: 1 Column
Wide, 2 Columns Wide alternating sides, or
2 Columns Wide, one side, then the other.

Order

Order number for the variable set.

Description

Description for the variable set.

6. Click Submit.
The new variable set is created and appears in the Variable Sets tab. Open the new variable
set and click New in the Cloud Variables tab to create variables for the set.
Edit a variable for Request cloud account catalog
Customize the cloud account request process by creating or editing variable to collect essential
information during cloud account request.

Before you begin

Avoid removing the existing Request cloud account variables, as these variables are essential for
creating a valid CAM request.
Role required: sn_itom_cam.cw_admin

About this task

Modify the Request cloud account form by creating or editing variables in the catalog. You can
edit a variable to change its order, make the variable active or inactive, modify its permission and
availability settings.

Procedure
1. Navigate to Workspaces > Cloud Workspace.
2. Enter sc_cat_item.LIST in the navigation filter.
3. In the sc_cat_item.LIST table, search for and click the Request Cloud Account property.
4. Click the Variable Sets subtab, and click the variable set.
5. Select the variable that you want to edit, or to create a variable, click New.
6. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

76


<!-- page 77 -->
Cloud Variable form
Field

Description

Type

Variable type to create.
If you select Lookup Select Box, the Type
Specifications subtab displays these fields:
◦ Use Pool Filter: Select this check box to
add a pool filter to the field.
◦ Pool: Select a pool to offer the cloud
service user a list of values from an
existing table in the catalog order form. For
example, you can select CloudAccountPool
to get a list of all the cloud accounts.
◦ Pool Filter: Select a filter to further narrow
down the choices in the pool.

Variable Set

The variable set that the variable belongs to.

Mandatory

Option to make the variable mandatory as
part of the ordering process.

Active

Option to make the variable available for use.

Order

Order that the variable is placed on the
page for the catalog item. The variables
are organized from top to bottom, from the
least to greatest order value. For example,
a variable with an order value of 1 is placed
above other variables with higher-order
values.

Questions
Field

Description

Question

Question to ask users ordering the catalog
item.

Note: If you select Select Box in the

Type field, a Question Choices subtab
appears at the end of the screen. You
can enter a specific list of choices for
the question.
Name

A name to identify the question.

Note: If this field is empty, its value is
auto-populated based on the Question
field for all variable types except break,
container split, and container end,
HTML, container start, label, UI page,
and duration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

77


<!-- page 78 -->
Field

Description

Tooltip

Tooltip text to display when users point to the
variable. Enter a brief note to describe the
purpose of the question.

Example text

Hint that's displayed in the question field
before a user enters a value. Applicable for
the following variables:
◦ IP address
◦ Email
◦ URL
◦ Single Line text
◦ Multi Line text
◦ Date
◦ Date/Time

Annotation
Field

Description

Show Help

If selected, displays the help text for the
variable.

Always Expanded

This option appears only when the Show
help check box is selected.
If selected, the Help text field value is
expanded by default when the catalog item
page loads.

Help tag

If the Always Expanded check box is
cleared, click the value specified in this field
to display the Help text field value.

Help text

Help information for a service catalog
variable.

Instructions

Information that requires rich text formatting
or adding images to support help information.

Note: For HTML tables, use sizes that
are within the width of the variable.

Type Specifications (The fields in this section vary for each variable type)
Field

Description

Variable Width

Width for the variable on the catalog item
page, to specify what percentage of the
screen size that it can span.
This field appears for all variable types
except for break, container end, container

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

78


<!-- page 79 -->
Field

Description

start, container split, container layout, and
label variables.
Validation (Regex)

Regular expression that validates the user
input for the property.

Validation Error (Regex)

If the expression isn't valid, an error appears.

Default Value
Field

Description

Default Value

Default value for the variable.

Variable Attributes

Attributes for this variable.

Permissions
Field

Description

Read Roles

Roles that can view the variable before or
after requesting the catalog item or record
producer. Only a user with the roles specified
in this field can view the variable.

Write Roles

Roles that can edit the variable in the variable
editor after requesting the catalog item or
record producer. If a user doesn't have the
roles specified in this field, the variable is
read-only in the variable editor.

Create Roles

Roles that can create values for the variable
before requesting the catalog item or
record producer. If a user doesn't have the
specified role, the variable is read-only
before requesting the catalog item or record
producer.

Availability
Visible

If selected, the variable is visible in the item
form before ordering the item, in the Variable
editor after ordering the item, and in the cart
view of the item.

Read-only

If selected, the variable is read-only in the
Cloud User Portal and cannot be edited.

7. Click Update once you have made all the changes to the variable.
Configure a custom catalog ID in Cloud Account Management account request
Configure the catalog ID used for Cloud Account Management request to map the custom
service catalog and streamline account provisioning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

79


<!-- page 80 -->
Before you begin

Verify whether the catalog is a valid service catalog tested on various portals, such as the
Employee Center.
Role required: sn_itom_cam.cw_admin

About this task

The Catalog ID uniquely identifies the Catalog used for Cloud Account Management. To map
your custom cloud account request catalog, update the default sys_id value with the custom
catalog sys_id value.

Procedure
1. Navigate to Workspaces > Cloud Workspace.
2. Enter sys_properties.list in the navigation filter.
3. In the System Properties [sys_properties] table, search for and click the
sn_itom_cam.cam_catalog_id record.
4. In the Value field, enter the unique sys_id of the custom catalog.

Note: You can add only one sys_id in the Value field.
5. Click Update.
Add members to the group
Ensure accurate assignment of members to their respective groups to streamline account
requests, approvals, provisioning, and certification. Grant necessary permissions through proper
group assignment to prevent unauthorized access and maintain security.

Before you begin

Role required: ServiceNow AI Platform admin

Procedure
1. Navigate to All > Users and Groups > Groups.
2. Search for *ITOM in the search field.
3. Assign a member to each ITOM group by selecting an entry.
To know more about ITOM Cloud Account Management user roles, see Components installed
with Cloud Account Management.
4. Under the Roles section, select Edit.
5. Search the user and move to the group members list.
6. Select Save.
Set up AWS API configuration information in ServiceNow
The credentials provided by your AWS administrator are used in this procedure to create a
suspension profile, enabling you to temporarily suspend or terminate AWS accounts as needed.

Before you begin

The below procedure is only required if you're managing AWS accounts on Cloud Account
Management.
Role required: ServiceNow AI Platform admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

80


<!-- page 81 -->
Procedure
1. Log in to ServiceNow instance.
2. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
3. Select New.
4. In the Name field, enter the alias name.
The format should be 'cloud org name-key' (for example, org1-tfkey).
5. From the Type drop-down list, select Credential.
6. Select Submit.
7. Select the aliases name from the list that you entered earlier.
8. Under the Credentials tab, select New.
9. From the list, select AWS Credentials as your credential type.
10. In the Name field, enter the alias name.
11. In the API Key and Secret Access Key fields, enter the keys obtained from the admin.
12. Select Submit.
Set up Terraform API key in ServiceNow
Add the Terraform API key to the ServiceNow instance to ensure consistent and error-free
infrastructure provisioning.

Before you begin

The below procedure is only required if you're integrating Terraform.
Role required: ServiceNow AI Platform admin

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > Connections & Credentials > Credentials.
3. From the list, select API Key Credentials.
4. In the Name field, enter the name.
5. In the API Key field, enter the key obtained from the Terraform admin.
6. To complete the process, select Submit.
Set up Azure connection
Add and configure an Azure connection with your Azure portal. Using the connection credentials,
the Cloud Account Management application creates Azure subscriptions. This is a one-time
configuration step.

Before you begin

The below procedure is only required if you're creating Azure subscriptions.
Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Flow Designer.
2. Select Integrations > Connections > Outbound.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

81


<!-- page 82 -->
3. Search and select Azure Connection (sn_itom_cam).
4. Select View Details.
5. Select Configure.
6. In the Configure Connection dialog box, provide the following information.
Configure Connection
Field

Description

Connection name

Unique name for the Azure OAuth
connection.

Connection URL

The default URL is automatically populated. If
necessary, you can modify the URL.

OAuth Client ID

The client ID of the application registered in
the Azure OAuth server.

OAuth Client Secret

The client secret of the application registered
in the Azure OAuth server.

OAuth Token URL

The URL that specifies the endpoint to get
the access token from the OAuth server. The
default URL is automatically populated. If
necessary, you can modify the URL.

7. Select Configure and Get OAuth Token.
8. Optional: To view the connection alias, select View connection alias.
Set up scan configuration for data visualization
Visualize all account violations by scanning them using the selected policy set. Display the
severity of all violations on the admin dashboard to take appropriate actions.

Before you begin

Make sure you have referred to the default policies (Policy list for scanning cloud accounts). To
create a custom policy set, see Create a policy set.
Role required: sn_itom_cam.cw_admin or sn_itom_ccg.scheduling_admin

Procedure
1. Navigate to All > Cloud Configuration Governance > Scan Configurations.
2. Create a scan configuration by selecting New.
3. Identify the configuration by entering Name and Description.
4. Under the Configuration tab, select a Cloud Provider Type from the lookup.
5. Select the Unlock Policy Sets icon (
6. Select the Lock Policy Sets icon (
7. Select Additional actions icon (
current settings.

) and select a policy set from the list.
).

) or right-click on the top bar and select Save to save the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

82


<!-- page 83 -->
8. Under the Service Account column, select all the management accounts and member
accounts from the lookup.

Note: Selecting a management account scans all current and future member accounts
automatically. Choosing individual member accounts requires manual selection for each
scan.
9. Select Setup Schedule and set the schedule as necessary.
10. Select Update.
11. Synchronize the configuration with the Cloud Account Management app by selecting Sync
CAM

Config.

Note:
◦ To view the synchronized configuration, navigate to All > Cloud Workspace >
Configuration.
◦ If you have synchronized the configuration, you don’t have to create a Scan Account
configuration mentioned in Create a scan account configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

83


<!-- page 84 -->
12. Optional: To run an on-demand scan, select Execute.

Note: You can create unlimited configurations for each account. An account may have
multiple scan configurations, with violations and assessments based on all of them.
Creating configurations
Setting up the Cloud Account Management app is a prerequisite task before proceeding to
create, suspend, or scan a service account. By configuring Cloud Account Management, you
can ensure that the application is ready to effectively execute account management tasks and
deliver the desired results.
Create a Terraform account configuration
Configure the Cloud Account Management app as a foundational step before creating a
service account using Terraform. Proper Cloud Account Management setup ensures the
application is optimally prepared to handle account management functions and achieve
desired outcomes.Define and set up Terraform-based configurations to automate cloud account
provisioning, including required credentials and infrastructure templates.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > Configuration.
2. Select New.
3. Enter the details in the New Configuration form.
To fill the form fields, see Terraform account configuration fields.
4. Select Submit.

What to do next

Review default Cloud Account Management certification policy
Create a cloud native interface account configuration
Configure cloud accounts using the native interface of supported cloud providers like AWS or
Azure to enable seamless provisioning and integration.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > Configuration.
2. Select New.
3. On the New Configuration form, fill in the fields.
For a description of the field values, see Cloud native interface configuration account fields.
4. If you’re creating a GovCloud configuration, turn on the This is a GovCloud config option.
This action adds fields for entering your GovCloud organization details in the configuration
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

84


<!-- page 85 -->
Note: GovCloud is supported only for the AWS cloud provider.
5. Select Submit.

What to do next

Review default Cloud Account Management certification policy
Create a suspend account configuration
Set up a suspension profile that allows temporary suspension or termination of cloud accounts to
support cost control or policy enforcement.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > Configuration.
2. Select New.
3. On the New Configuration form, fill in the fields.
For a description of the field values, see Suspend account configuration fields.
4. If you are creating a GovCloud configuration, turn on the This is a GovCloud config option.

Note: GovCloud is supported only for AWS cloud provider.
5. Select Submit.

What to do next

Review default Cloud Account Management certification policy
Create a scan account configuration
Configure the Cloud Account Management app before scanning a service account to confirm it’s
ready for effective account management.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > Configuration.
2. Select New.
3. In the New Configuration form, provide the following information.
Configuration type: Scan accounts
Field Name

Description

Cloud provider Name of the cloud provider platform such as AWS, Azure, or GCP.
Name

Name for the configuration.

Service
accounts

The service account and its member accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

85


<!-- page 86 -->
Field Name

Description

Note: Selecting a management account automatically scans all
current and future member accounts. However, if you select individual
member accounts, each must be chosen manually for scanning.
CCG scan
configuration

Cloud Configuration Governance (CCG) scan configuration used for getting
the violations for all accounts in the selected cloud organization.

Description

Information that can be recorded in work notes.

4. Select Submit.

What to do next

Review default Cloud Account Management certification policy
Review request policies
Review and update request policies to confirm they align with your cloud account request
process. These policies enforce data checks and conditions, promoting consistency in creating
cloud subscription accounts.

Before you begin

Role required: sn_itom_cam.cw_admin

About this task

Certain steps in request processing often require manual intervention. These interventions
include general approval, finance approval, and assigning configuration and AWS organizational
unit. However, these steps can be automated when specific criteria are met. Cloud Account
Management integrates with the PaCE plugin to define and manage these criteria as policies.
For each step, an entry is created in the sn_itom_cam_automation_activity table, and
the associated policies are displayed under the Request Policies tab in the Cloud Workspace.
Each policy is linked to an activity via the Mappings tab within the policy, although only one
policy is supported according to automation activity.

Note: Currently, Azure account creation can’t be automated.
Procedure
1. Navigate to All > Cloud Workspace > Request Policies.
The existing policies appear under the All Policies section and are further classified as active
policies and inactive policies.
2. View or customize an existing policy by selecting the policy name.
3. Under the Policy Builder tab, review the policy conditions.
4. Optional: To modify an existing policy, select Create copy.
5. Optional: To add a condition, select New condition set.
6. Optional: To remove a condition, select the delete icon

.

Note: For more information on managing policies, see Manage PaCE policies

.

What to do next

These sections explain how to modify, test, and publish the automation policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

86


<!-- page 87 -->
• Automate General Approval policy process
• Automate Budget Approval policy process
• Automate Configuration Assignment policy process
Automate General Approval policy process
Automate the general approval or rejection of requests based on predefined conditions.
Requests are automatically approved when the criteria are met. Otherwise, the system waits for
manual approval. You can modify the default policy to include additional conditions as needed.

Before you begin

Role required: sn_itom_cam.cw_admin

About this task

This procedure demonstrates how to approve or reject an account using the general account
approval policy. For example, if an account request includes a predefined approval policy, this
process explains how the request is approved or rejected automatically.

Procedure
1. Navigate to All > Cloud Workspace > Request Policies.
2. Select Subscription Account Creation General Approval.
3. Customize the policy by selecting Create copy.
4. Under the Policy builder tab, in the If condition block, make a note of the source fields against
the highlighted values.

Note: In this section, you’re validating two conditions:
a. Business Application = empty
b. Application Service = empty
5. Select Mappings.
6. Verify if the Document assigned is Automation Activity: General auto approval for
subscription account creation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

87


<!-- page 88 -->
Note:
◦ If no document is linked, select Add and choose the General auto approval for
subscription account creation document.
◦ Map only one policy according to automation.
◦ View or create documents in the sn_itom_cam_automation_activity.list
table.
7. Optional: To remove auto-approval, go to the Mappings tab and delete the mapped
document.

What to do next
To test the policy, see Test updates to a PaCE policy version
To publish the policy, see Publish a PaCE policy version

.

.

To add a new approval step in the flow designer, see Using Workflow Studio

.

Automate Budget Approval policy process
Automate finance approvals for Cloud Account Management requests based on predefined
conditions. Approve requests automatically when criteria are met. Otherwise, wait for manual
approval. Modify the default policy to include additional conditions as necessary.

Before you begin

Role required: sn_itom_cam.cw_admin

About this task

This procedure demonstrates how to approve or reject a budget using the account budget
approval policy. For example, if an account request includes a predefined approval policy, this
process explains how the budget request is approved or rejected automatically.

Procedure
1. Navigate to All > Cloud Workspace > Request Policies.
2. Select Subscription Account Creation Budget Approval.
3. Customize the policy by selecting Create copy.
4. Under the Policy builder tab, in the If condition block, make a note of the source fields against
the highlighted values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

88


<!-- page 89 -->
Note: In this section, you're validating two conditions:
a. Environment = Development
b. Monthly budget <= 500
a. Environment = Development or Test
b. Monthly budget = > 5000
5. Select Mappings.
6. Verify if the Document is assigned to Automation Activity: Finance auto approval for
subscription account creation.

Note:
◦ If no document is linked, select Add and choose the Finance auto approval for
subscription account creation document.
◦ Map only one policy according to automation.
◦ View or create documents in the sn_itom_cam_automation_activity.list
table.
7. Optional: To remove auto-approval, go to the Mappings tab and delete the mapped
document.

What to do next
To test the policy, see Test updates to a PaCE policy version
To publish the policy, see Publish a PaCE policy version

.

.

To add a new approval step in the flow designer, see Using Workflow Studio

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

89


<!-- page 90 -->
Automate Configuration Assignment policy process
Automate assigning configurations and AWS organizational units in requests based on specified
conditions. When conditions are met and approvals are complete, requests move forward
without admin input. Update the default policy to include specific conditions and values for
configuration and AWS organizational unit.

Before you begin

Role required: sn_itom_cam.cw_admin

About this task

This procedure demonstrates how to assign account configuration using the assignment policy.
For example, when the account creation request is approved and awaits for the provisioning
configuration information, this automation is executed.

Procedure
1. Navigate to All > Cloud Workspace > Request Policies.
2. Select Subscription Account Creation Configuration Assignment.
3. Customize the policy by selecting Create copy.
4. Under the Policy builder tab, in the If condition block, make a note of the values that you're
validating.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

90


<!-- page 91 -->
Note: In this section, you're validating:
a. Environment = Development
b. Business unit = business-app-1
5. To select the configuration and AWS org unit output, select Data collectors from the Data
sources section.
6. Select Add.
7. Select Get AWS Config Assignment Results.
8. In the Add data collector dialog box, under the Details tab, fill in the Label and Variable name
fields.
These field values are used to identify the data collector.
9. Under the Inputs tab, fill in the fields.
Data collector Inputs fields
Field

Description

Application Configuration

The application configuration for the AWS
cloud provider of the create account type.

Organizational Unit

Organizational unit (OU) are the list of units
populated automatically after discovery is
run.

Note:
The selected AWS org unit in the data
collector should be part of the same
Cloud Organization provided in the
configuration.
GovCloud Organization

The GovCloud organization into which the
account will be moved. This field is applicable
only for AWS GovCloud accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

91


<!-- page 92 -->
Field

Description

GovCloud Organizational Unit

This field is applicable only for AWS
GovCloud accounts.

10. Select Save.
The new data collector entry is saved. Only when the If condition is met, the then condition
gets executed.
11. Select the output result as follows.

12. To save the policy, select Save.

Note:
◦ If necessary, you can enhance the Log message for the result. For some examples, you
can see the default-published policies.
◦ Map only one policy according to automation.
◦ This configuration approval policy is inactive by default. You can deactivate to stop the
automation.

What to do next
To test the policy, see Test updates to a PaCE policy version
To publish the policy, see Publish a PaCE policy version

.

.

To add a new approval step in the flow designer, see Using Workflow Studio

.

Configure cloud asset collection table
Configure the Cloud Asset Collection Configs table to collect cloud assets or add comments to
the CI entries.

Before you begin

Role required: sn_itom_cam.cw_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

92


<!-- page 93 -->
Procedure
1. Navigate to All > Cloud Workspace.
2. Remove the URL after *service-now.com/ and enter the table name
sn_itom_cam_asset_collection_config_list.do.
The table entries are as follows.

3. Double-click an entry to update the Active or Comments column, then select the Save icon

.

Note: You can stop collecting cloud assets by setting the Active column as false.
Using Cloud Account Management in Cloud Workspace
The Cloud Account Management app provides the capability to manage your cloud accounts.
Viewing Cloud Account Management dashboards
Cloud Account Management has two types of dashboards: one for requesters and another for
admins. Depending on the logged- in user, an appropriate dashboard appears.

Viewing the compliance dashboard
The Cloud Workspace compliance dashboard provides insights that help security teams identify
cloud resources without ownership information and flag vulnerable or at-risk resources. This
information helps team members conduct security audits and confirm compliance with industry
regulations across cloud environments.
As an admin, you can access the dashboard by navigating to All > Cloud Workspace > Monitor
and track.
Compliance dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

93


<!-- page 94 -->
Note:
• The Compliance dashboard displays only the accounts discovered in your instance.
• The Compliance dashboard hides the provider card if no accounts are provisioned.

Viewing the admin home page
View account statuses and violations, actionable insights, and administrative controls on the
admin home page.
As an admin or asset viewer, you can access the homepage by navigating to All > Cloud
Workspace.
Admin or asset viewer dashboard

Note:
• The Needs attention widget appears only for admins with the Cloud Account
Management entitlement.
• The Other cloud tools widget displays the applications installed on your instance. Cloud
Discovery is a prerequisite for installing Cloud Account Management.

Viewing the requester home page
View and manage cloud account requests on requester page. The home page provides a view of
requested, approved, denied, pending, and active accounts.
Requesters can access the requester home page by navigating to All > Cloud Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

94


<!-- page 95 -->
Requester home page

Viewing the Cloud asset overview page
The Cloud asset overview page helps cloud governance and operations teams monitor, track,
and act on compliance and asset details more efficiently. As an asset viewer, you can view all
assets and drill down to see detailed information for each configuration item (CI).
can access the Cloud asset overview page by navigating to All > Cloud Workspace and then in
the Monitor and track tab, select Cloud asset explorer > Overview.
Cloud asset overview page

Note: You can enable or disable the Asset collection configuration to list the CIs. For more
information, see Configure cloud asset collection table.
Viewing the requester home page
View and manage cloud account requests on requester page. The home page provides a view of
requested, approved, denied, pending, and active accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

95


<!-- page 96 -->
You can access the home page in either of two ways.
• Navigate to All > Cloud Workspace
• Navigate to Workspaces > Cloud Workspace
Requester home page

Viewing the home page
View account statuses and violations, actionable insights, and administrative controls on the
home page.

Access the home page
As an admin or asset viewer, you can access the home page in either of two ways.
• Navigate to All > Cloud Workspace
• Navigate to Workspaces > Cloud Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

96


<!-- page 97 -->
Admin dashboard

Note:
• The Needs attention widget appears only for admins with the Cloud Account
Management entitlement.
• The Other cloud tools widget displays the applications installed on your instance. Cloud
Discovery is a prerequisite for installing Cloud Account Management.
Viewing the compliance dashboard
The Cloud Workspace compliance dashboard provides insights that help security teams identify
cloud resources without ownership information and flag vulnerable or at-risk resources. This
information helps team members conduct security audits and confirm compliance with industry
regulations across cloud environments.

Access the compliance dashboard
As an admin, you can access the dashboard by navigating to All > Cloud Workspace > Monitor
and track.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

97


<!-- page 98 -->
Compliance dashboard

Note:
• The Compliance dashboard displays only the accounts discovered in your instance.
• The Compliance dashboard hides the provider card if no accounts are provisioned.
Viewing the cloud asset explorer
The dashboard helps cloud governance and operations teams monitor, track, and act on
compliance and asset details more efficiently. As an asset viewer, you can view all assets and
drill down to see detailed information for each configuration item (CI).
You can access the dashboard in either of two ways.
• Navigate to All > Cloud Workspace > Cloud asset explorer
• Navigate to Workspaces > Cloud Workspace > Cloud asset explorer
Cloud asset explorer dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

98


<!-- page 99 -->
Note: You can enable or disable the Asset collection configuration to list the CIs. For more
information, see Configure cloud asset collection table.
Viewing cloud assets
This page displays the Cloud assets view. It lists all compute assets across connected cloud
providers such as AWS, Azure, GCP, and OCI along with location, cloud account, installation
status, owner, discovered dates, ownership attestation, and cost center.
As an admin, you can access the dashboard by navigating to All > Cloud Workspace > Monitor
and track
Cloud assets

Click the respective name to view the details.
View cloud asset details

In Asset Explorer, retired configuration items (CIs) remain in the asset table as long as they exist
in the CMDB, even after retirement. To manage this, users can configure a custom retention
period (in seconds) that automatically removes retired CIs from the asset table after the defined
duration. For example, setting the property to 86,400 seconds (1 day) ensures that a retired CI
is removed from the asset table one day after retirement, even though it may continue to exist in
the CMDB. This helps improve performance for high-volume environments by ensuring that only
active CIs remain in the asset table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

99


<!-- page 100 -->
For more information about the various sections, see Managing the Cloud Workspace asset
details.
Viewing the cloud accounts page
The Cloud accounts page displays information used to access and manage the life cycle of
multiple cloud subscription accounts.

Access the dashboard
As a Cloud Account Management (CAM) admin, you can access the Accounts page in either of
two ways.
• Navigate to All > Cloud Workspace
•
• Navigate to Workspaces > Cloud Workspace
Cloud accounts page

Note: The configuration violations data is populated only if the user is a CAM admin or
account manager and the Cloud Configuration Governance content pack is installed.
The following metrics are displayed:
• All accounts: The total number of cloud accounts.
• Critical config violations: The number of cloud accounts with critical configuration violations.
• Critical security findings: The number of cloud accounts with critical security findings.
• Due for certification: The number of accounts due for certification.
• Unmanaged: The number of unmanaged accounts.
For more information, see Cloud account details.
Viewing cloud account details
The Cloud account details page is a comprehensive dashboard that provides information to help
you manage a subscribed account.

Access the Cloud account details page
1. Access Cloud Workspace.
As an admin, you can access the Cloud Accounts page in either of two ways.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

100


<!-- page 101 -->
◦ Navigate to All > Cloud Workspace
◦ Navigate to Workspaces > Cloud Workspace
2. Select Manage and Configure.
3. Select the account name to view the details of the corresponding account.
The details provided for the account are listed in the following table.
Cloud account overview details
Entry

Description

Total assets

The total number of assets associated with
the account.

Critical configuration violations

The number of critical configuration
violations.

Critical security findings

The total number of critical security findings.

Account details

A section providing additional information
about the account, including:
◦ Cloud provider: The cloud service
provider, such as AWS.
◦ Created: The date and time when the
account was created.
◦ Alias: An alias for the account.
◦ Cost center: The name or the unique ID of
the cost center.
◦ Business unit: The name or the unique ID
of the business unit.
◦ Application service: The application
service associated with this account.
◦ Department: The name or the unique ID of
the department.
◦ Cloud org: The unique ID of the Cloud
organization.
◦ Cloud account group: The Cloud account
group associated with this account.

People responsible for the account

The individuals or teams responsible for
managing the account such as the account
owner, email group, and primary and
secondary teams.

Tags

The discovered tag key-value pairs from the
cloud provider.

Certification

The certification status, last certification date,
last certified by, and certification due date of
the account.
The possible statuses are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

101


<!-- page 102 -->
Entry

Description

◦ Pending (yellow)
◦ Failed (red)
◦ Certified (blue)
Creating a cloud account
Creating a cloud account involves a requester submitting an account request, an approver
approving or rejecting the request, and that admin provisioning the account.
Request a cloud account
Request a cloud account as a requester. A notification email is sent when the requester creates
an account request.

Before you begin

The ServiceNow admin must have populated the data for the account owner, cost center,
business unit, department, and business application.
Role required: sn_itom_cam.cw_requester

Procedure
1. Navigate to All > Cloud Workspace.
2. From the home page, select Request.
3. On the Request new cloud account form, fill in the fields.
For a description of the field values, see New cloud account request form.

Note: For information about how to create your custom catalog, see Configure a custom
catalog ID in Cloud Account Management account request.
4. Request a GovCloud cloud account by selecting the This is a GovCloud account check box.
This action adds fields for entering your GovCloud organization details in the cloud context.

Note: GovCloud account creation is supported only for the AWS cloud provider.
5. Select Submit.
Approve a cloud account request
Approve or deny a cloud account request as an approver. A notification email is received
when the requester creates an account request. When a cloud account is requested, the table
captures and retrieves the details of the request. Once the Cloud Account Management request
is approved, it’s assigned to a provisioner, such as CCOE, DevOps, or SRE.

Before you begin

Role required: sn_itom_cam.cw_approver

Procedure
1. Navigate to All > Cloud Workspace > View accounts.
2. Select Requests > Pending approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

102


<!-- page 103 -->
3. Review the request and select Approve or Deny.
4. Confirm your decision.
Provision a cloud account
Provision a cloud account as an admin through Cloud Workspace.

Before you begin

Confirm that the cloud context has been configured. For more information, see Creating
configurations.
Discovery must have been performed on the cloud admin portal.
Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > Requests.
2. On the Account requests page, select the Approved requests tile.
3. Select the account to provision.
4. In the Select cloud context section, fill in the fields.

Field

Description

Cloud Provider

This field is automatically set to the cloud
provider platform in the request.

CAM configuration

Configuration name of the cloud organization.

Organizational unit (appears for AWS)

Organizational unit (OU) are the list of units
populated automatically after discovery is
run.

GovCloud Organization (appears for AWS
GovCloud requests)

The AWS GovCloud organization to which the
GovCloud account will be invited.

GovCloud Organizational unit (appears for
AWS GovCloud requests)

The Organizational unit (OU) to which the
GovCloud account will be moved.

Management group (appears for Azure)

Management groups help you manage
multiple subscriptions by applying
governance settings that automatically apply
to all subscriptions within them. This field is
automatically set to the management group
found after discovery is performed.

5. If you are provisioning an Azure account, determine whether to use an existing billing account
or create and add a new billing account.
Option

Action

Add an exist­
ing billing ac­
count

Select an existing account from the drop-down list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

103


<!-- page 104 -->
Option

Action

a. Select the Create new billing account icon (

).

Create and
b. Select Single account.
add a new sin­
c. In the Account name field, enter the account name.
gle account
d. In the Display name field, enter the display name.
e. Select Add.
a. Select the Create new billing account icon (

).

b. Select Bulk upload.
c. Search for and select the Tenant name.
d. Below the Enter API response field, select the link
.
Create and
add new bulk e. Sign in to your Azure portal.
accounts
f. From the Azure portal, copy the sample JSON response that appears un­
der the EnrollmentAccountsListByBillingAccount section.
g. In the Cloud Account Management application, paste the sample JSON re­
sponse in the Enter API response field.
h. Select Add.
6. If you are provisioning an Azure account, determine whether to use an existing enrollment
account or create and add a new enrollment account.
An enrollment account is a management unit within a billing account for organizations with
an Enterprise Agreement (EA) that is used to organize and control Azure subscriptions and
resources.
Option

Action

Enrollment ac­
Select an existing account.
count
a. Select the Create new enrollment account icon (

).

b. Select Single account.
Create and
add a new sin­ c. In the Account name field, enter the account name.
gle account
d. In the Display name field, enter the display name.
e. Search for and select the Tenant name.
f. Select Add.
a. Select the Create new enrollment account icon (
b. Select Bulk upload.
Create and
add new bulk c. Search for and select the Tenant name.
accounts
d. Below the Enter API response field, select the link

).

.

e. Sign in to your Azure portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

104


<!-- page 105 -->
Option

Action

f. From the Azure portal, copy the sample JSON response that appears un­
der the EnrollmentAccountsListByBillingAccount section.
g. In the Cloud Account Management application, paste the sample JSON re­
sponse in the Enter API response field.
h. Select Add.
7. Optional: Provide a comment.
a. In the Work notes section, enter your comments in the Comments text field.
b. Select Post Comment.
8. At the top-right corner of the screen, select Provision.
9. In the dialog box, confirm the provisioning request by selecting Yes.

Result

Based on the defined context, Cloud Account Management creates a subscription account
within the specified cloud organization and AWS organization unit or Azure management group.
Managing cloud accounts
Managing a cloud account enables you to accomplish a range of tasks such as canceling,
suspending, or reactivating cloud accounts, and adding unmanaged accounts.
Account management activities
Activity

Description

Cancel a Cloud account
request

Requesters can cancel their own account requests.

Suspend a Cloud account

Suspended accounts can still be used along with its resources,
but new resources can’t be created for it. Before requesting
account suspension, the ServiceNow admin must have already
set up a suspension configuration.

Reactivate a cloud account

Suspended accounts can be reactivated.

Add an unmanaged cloud
account

You can import cloud accounts to manage them.

Cancel a Cloud account request
Cancel an account request that you have submitted.

Before you begin

Role required: sn_itom_cam.cw_requester

Procedure
1. Navigate to All > Cloud Workspace > Home.
2. Select the Requests tab.
3. Select an account under the Requested pane.
4. Select Cancel Request.
5. Select Yes to confirm.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

105


<!-- page 106 -->
Suspend a Cloud account
Suspend an account when there’s a budget constraint or the account owner isn’t available in the
organization. Only admins and account owners can see the suspended accounts.

Before you begin

An account requires a suspend profile to be suspended. For more information, see Set up
suspension of an AWS account using service control policy.
Role required: sn_itom_cam.cw_admin or sn_itom_cam.cw_requestor

Procedure
1. Navigate to All > Cloud Workspace > Home.
2. Select Subscription Accounts.
3. Under the Managed Accounts section, select Active.
4. Select an account check box and select Suspend.
5. In the confirmation dialog box, enter the reason for suspension and select Yes.
◦ Once you have created a suspension request, the request is sent to the admin for approval.
◦ Suspended accounts are listed under the Managed Accounts > Suspended section.
Reactivate a cloud account
Reactivate an account that was previously suspended if there is a need retrieve the account.
After reactivating an account, the account status changes from suspended to active. Only Cloud
Account Management managed accounts can be reactivated.

About this task

Only an admin or account owner can view the reactivated account.

Before you begin

A suspend profile must exist for an account to be reactivated. For more details, see Set up
suspension of an AWS account using service control policy.
Role required: sn_itom_cam.cw_admin or sn_itom_cam.cw_requestor

Procedure
1. Navigate to All > Cloud Workspace > Home.
2. Select Subscription Accounts.
3. In the Managed Accounts section, select Suspended.
4. Select an entry in the list of suspended accounts and select Reactivate.
5. Enter a reason for reactivation in the Reason field and select Yes.
The reactivation request is sent for approval. Reactivated accounts are listed in the Managed
Accounts section.
Add an unmanaged cloud account
Managing a cloud account involves tracking budgets, checking for configuration violations, and
validating certificates. The procedure helps you to onboard an unmanaged cloud account.

Before you begin

Role required: sn_itom_cam.cw_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

106


<!-- page 107 -->
Procedure
1. Navigate to All > Cloud Workspace > Subscription accounts.
2. In the Unmanaged Accounts section, select All Accounts.
3. Select an account and select Manage Account.

Note: Currently, only AWS accounts are supported.
4. On the Request form, fill in Cost center, Department, Account owner, and Business Unit fields.
For a description of the field values, see New cloud account request form.
5. Select Update Account Details & Manage.
A confirmation message appears saying your account is onboarded.
Update cloud account details
Keep account details up to date so you can identify and resolve policy violations effectively.

Before you begin

Role required: sn_itom_cam.cw_admin

Procedure
1. Navigate to All > Cloud Workspace > View accounts.
2. Under All cloud accounts, select an account.
The Overview tab displays General details, Ownership details, and Certification details.
3. Optional: Update account information if necessary.
a. Select the Edit icon (

).

b. Update the information.

Fields

Description

Cost center

Cost center name to associate with this account.

Business unit

Business unit name to associate with this account.

Application
service

The project or application to associate with this account.

Department

Department name to associate with this account.

4. Optional: Update the account owner details if necessary.
a. Select the Edit icon (

).

b. Select the account owner from the Account Owner from the drop-down list.
c. Select the primary teams from thePrimary Teams from the drop-down list.
d. Select the secondary teams from theSecondary Teams from the drop-down list.
5. Optional: Propagate the name change to associated cloud assets or stop propagation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

107


<!-- page 108 -->
◦ Propagate the owner information to the cloud account and all associated CIs directly linked
to the cloud account, overriding any existing owner information, by selecting the Propagate
Ownership to Cloud Assets check-box.
Associated CIs include items like S3 bucket or VM. CIs not directly linked to the cloud
account include things like Azure Availability Zones.
◦ To remove future propagation of the owner information, clear the Propagate Ownership to
Cloud Assets check-box.
The owner name is no longer assigned to newly associated CIs but is retained for the
existing ones.

Note:
If you have a large number of CIs, the propagation might take some time and changes
might not be reflected immediately. You can check the progress by accessing the
sn_itom_cam_subscription_account_batch_job_list table and checking the status of
"owner_name" jobs listed in the Parameters column.
6. Select the Save icon (

).

Certify an account
A certification task represents the work of verifying and certifying the data associated with a
record. The certifier reviews tasks created after data validation against the published policy.
Account certification helps resolve issues like outdated ownership, inactive user profiles, and
improper permissions in cloud accounts.

Before you begin

Make sure that the admin has reviewed the Cloud Account Management default policy.
Optionally, the admin can customize or add new policies based on the organization requirement.
For more information, see Review default Cloud Account Management certification policy. The
ITOM Cloud Account Management Certifier Group must contain at least one user.

Note: Cloud Account Management admin can add users to the Cloud Account

Management Certifier Group by navigating to All > Account Certification > ITOM CAM
Certifier Group > Group Members.
Role required: sn_itom_cam.cw_certifier

About this task
Procedure
1. Navigate to All > Cloud Workspace > Account Certification Tasks.
The list under Certification Tasks shows pending certification tasks.
2. In the Certification tasks tab, select the certification task that you want to review.
3. Review the details of the certification task, then select Review records to certify.
4. Select the records that you want to conclude the review for in the Review not completed tab,
and then select Certify or Fail.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

108


<!-- page 109 -->
Cloud Account Management certification review

Note: If you select Fail, the task is moved to the registry and Cloud Account
Management admin will take the next action. You can also reassign the ownership of a
task.
5. Select the records that you want to review in details and then select Review records.
6. Select Submit when all the records have been reviewed.
The Submit button isn't available until all the records in the task are reviewed and the task is
complete.
7. Optional: Assign owners (if they’re empty) by select and hold (or right-click) on the Owned By
entry and selecting the name from the lookup.

Note:
The account certification state changes to pending if it meets the admin's policy
conditions for recertification.
For more information on certifying a task, see Review certification tasks in CMDB
Workspace .

Cloud Account Management reference
Reference topics provide additional information for configuring and using the Cloud Account
Management in Cloud Workspace application.
Components installed with Cloud Account Management
Several user roles are installed with the Cloud Account Management app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

109


<!-- page 110 -->
Roles installed

Role

Description

Requester

Team lead or representative of the application.

[sn_itom_cam.cw_requester]

• Initiates cloud account creation requests.
• Create requests for suspension or reactivation
of their own accounts.

Approver

Supervisor, manager, or finance approver.

[sn_itom_cam.cw_approver]

Reviews requests and either approves or denies
them.

Admin

Cloud Center of Excellence (CCOE) or Sites
Reliability Engineer (SRE) team member.

[sn_itom_cam.cw_admin]

• Confirms that Cloud Account Management
configurations align with the cloud and
Terraform configurations.

Group that
provides the
role

ITOM CAM
Requester
Group

ITOM CAM
Approver
Group
ITOM CAM
Admin
Group

• Customizes the data certification policy.
• Creates accounts that are outside the Cloud
Account Management application.
Marks an account as certified or failed.

Certifier
[sn_itom_cam.cw_certifier]

ITOM CAM
Certifier
Group

To return to the main topic, see Exploring Cloud Account Management.
Terraform account configuration fields
Terraform account configuration form and related list field descriptions.
Configuration type: Create account
Field

Description

Provision mode

Name of the provision mode. Here it should be Terraform.

Cloud provider

The name of the cloud provider platform. Currently, only AWS is
supported.

Cloud organization

The cloud organization where the subscription account is created. For
more details, see Populate Cloud Account Management dependent
tables.

Name

A name to identify the configuration.

Root email

Cloud Account Management uses an email address to generate the
root email ID for newly created account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

110


<!-- page 111 -->
Configuration type: Create account (continued)
Field

Description

For example, if your root email ID is myawsaccount@example.com,
the Cloud Account Management application appends a request ID to
generate myawsaccount-CWSAREQ0000001@example.com.

Note: To create a root email, see Set up and verify root email in
AWS.
Terraform URL

A default URL appears. You can customize the URL by selecting the
edit icon

.

Terraform OAuth Token The OAuth token ID provided when you configured the VCS provider
ID
in Terraform.
Terraform credentials
Terraform organization

VCS identifier

Description

The Terraform credentials that you had configured. The entries are
populated from the CMDB records.
The Terraform organization name used as a workspace to create a
subscription.
GitHub (or Version Control System (VCS)) location of the Terraform
template.
Option to provide a description for the Terraform account.

To return to the procedure, see Create a Terraform account configuration.
Cloud native interface configuration account fields
Cloud native interface configuration account form and related list field descriptions.
Configuration type: Create account
Field

Description

Provision mode

Name of the provision mode. Here it should be Cloud native interface.

Cloud provider

Name of the cloud provider platform. Currently supports AWS and
Azure platforms.

This is a GovCloud
config (applicable only
for AWS)

Option to enable GovCloud settings for an AWS configuration.

Cloud organization

The cloud organization where the subscription account is to be
created.

Name

A name to identify the configuration.

Root email (AWS)

Cloud Account Management uses an email address to generate the
root email ID for newly created account.
For example, if your root email ID is myawsaccount@example.com,
the Cloud Account Management application appends a request ID to
generate myawsaccount-CWSAREQ0000001@example.com.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

111


<!-- page 112 -->
Configuration type: Create account (continued)
Field

Description

Note: To create a root email, see Set up and verify root email in
AWS.
Cloud credential alias

Alias created to access all the Cloud APIs. The entries are populated
from the CMDB records.

Note: Only Cloud Account Management admin can configure
the cloud credential alias. To configure the cloud credential
alias, see Set up AWS API configuration information in
ServiceNow.
Description

Information that can be recorded in work notes.

GovCloud credential
alias (only if the
GovCloudoption is
enabled)

Alias created for the credential to provide access to all Cloud APIs on
the GovCloud environment.

GovCloud Org STS
Role (only if the
GovCloud option is
enabled)

Name of an IAM role used to assume a role within a GovCloud
organization that can invite and manage standalone GovCloud
accounts.

Linked GovCloud orgs
(only if the GovCloud
option is enabled)

List of GovCloud organizations into which the standalone GovCloud
account can be moved.

To return to the procedure, see Create a cloud native interface account configuration.
New cloud account request form
New cloud account request form and field descriptions.
Request a Cloud Account
Fields

Description

Environment

Name of the environment.

This is a
Option to request an AWS GovCloud account.
GovCloud account
(applicable only for
AWS)
Desired cloud
provider

Name of the cloud provider platform such as AWS or Azure.

Cloud account
name suffix

Suffix a name for easier tracking.

Cloud account
name

Auto-populated cloud account name.

Monthly Budget
Limit

Monthly budget for this account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

112


<!-- page 113 -->
Request a Cloud Account (continued)
Fields

Description

Note:
If the budget threshold is reached, an email alert is sent to the
root user of the AWS organization account and owner of the newly
created account.
Even if the threshold is exceeded, there are no restrictions in
accessing the account but you can’t create resources for the
suspended account.
Project/
application service

The project or application to associate with this account.

Cost center

Cost center to associate with this account.

Business Unit

Business unit to associate with this account.

Department

Department to associate with this account.

Business
application

Business application to associate with this account.

Tags

Key-value information to categories the account. For example, by region,
country, organization, or a branch.

Account owner

Owner of this account.

Propagate
The account owner information is propagated to all assets for this
ownership to cloud account.
assets.
Primary teams

The teams that will manage the account and assets, acting as the
responsible party when the owner is absent.

Secondary teams

The secondary team that will support the account.

To return to the procedure, see Request a cloud account.
Suspend account configuration fields
Suspend the account configuration form and related list field descriptions.
Configuration type: Suspend account
Field

Description

Cloud provider

Name of the cloud provider platform. The entries are retrieved from the
CMDB records.

This is a GovCloud
config (applicable
only for AWS)

Option to enable GovCloud settings for an AWS configuration.

Cloud organization

The cloud organization that creates the subscription account.

Name

A name to identify the configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

113


<!-- page 114 -->
Configuration type: Suspend account (continued)
Field

Description

Cloud credential
alias

The cloud credential alias that you had configured. The entries are
populated from the CMDB records.

Suspension
SCP policy ID
(applicable only for
AWS)

The AWS suspension policy ID. This policy ID is used to suspend the
AWS account. Service control policies limit the resources, services, and
API operations.
This field is automatically set to the ID retrieved from the suspension
service control policy. For more information, see Set up suspension of an
AWS account using service control policy.

Azure suspension
policy ID
(applicable only for
Azure)

The Azure suspension policy ID. This policy ID is used to suspend the
Azure account. Service control policies limit the resources, services, and
API operations.
To configure Azure suspend policy, see Set up suspension of a
subscription using Azure policy.

Description

Information that can be recorded in work notes.

To return to the procedure, see Suspend a Cloud account.
Policy list for scanning cloud accounts
A list of default policies provided for scanning the cloud accounts.

Default policies for scan accounts
Policy Name

Description

Check AWS
Discovery
Schedule

Verifies whether an AWS account has a discovery schedule attached.
Running discovery regularly helps facilitate the identification and
management of potential security risks.

Check AWS
Account Alias

Verifies an AWS account has a unique alias to improve account
management, reduce errors, and promote clarity and traceability within
your AWS infrastructure.

Note: Make sure you have API permission for iam:
ListAccountAliases.
Check AWS
Account Owner
Tag

Verifies whether an AWS account has a designated owner to enhance
accountability, streamline incident response, and facilitate communication
within your AWS environment.

Check AWS
Custom Password
Policy

Verifies whether a custom password policy is set for every AWS account. A
robust password requirement for all IAM users significantly increases the
difficulty for attackers to crack passwords through brute-force attacks or
credential theft attempts, ultimately enhancing the overall security of your
AWS infrastructure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

114


<!-- page 115 -->
Policy Name

Description

Note: Make sure you have API permission for iam:
GetAccountPasswordPolicy.
Check AWS Failed
Certification

Verifies the AWS account certification status. Failed certifications indicate
potential security vulnerabilities because compromised credentials might
not be deactivated promptly and provide a window of opportunity for
attackers to exploit these weaknesses.

Check AWS
Pending
Certification

Verifies whether an AWS account certification is in a pending state to
enable the prompt resolution of pending certifications and avoid potential
security vulnerabilities.

Check AWS Strong Verifies whether an AWS account adheres to a strong password policy
Password Policy
to promote security. This policy mandates robust password complexity
requirements, significantly bolstering your AWS environment's defense
against unauthorized access.

Note: Make sure you have API permission for iam:
GetAccountPasswordPolicy.
Check Azure
Discovery
Schedule

Verifies whether Azure account has a discovery schedule attached. This
policy helps secure and up-to-date resource landscape to facilitate the
identification and management of potential security risks.

Check Azure
Account Owner
Tag

Verifies if Azure account has a designated owner tag to enhance
accountability and facilitate communication within your Azure
environment. This policy readily identifies the responsible party for each
account, promoting a culture of ownership and streamlined incident
response.

Check Azure
Verifies Azure account certification status for failure to promote strong
Failed Certification access control by proactively monitoring for any service account with a
failed certification status. Failed certifications indicate potential security
vulnerabilities, as compromised credentials might not be deactivated
promptly. This policy minimizes the window of opportunity for attackers to
exploit these weaknesses.
Check Azure
Pending
Certification

Verifies if Azure service account certification is in a pending state. This
monitoring enables prompt resolution of pending certification and avoids
potential security vulnerabilities.

Check GCP
Discovery
Schedule

Verifies whether GCP account has a discovery schedule attached. This
policy helps secure and up-to-date resource landscape to facilitate the
identification and management of potential security risks.

Check GCP
Account Owner
Tag

Verifies if GCP account has a designated owner tag to enhance
accountability and facilitate communication within your GCP environment.
This policy readily identifies the responsible party for each account,
promoting a culture of ownership and streamlined incident response.

Check GCP Failed
Certification

Verifies GCP account certification status for failure to promote strong
access control by proactively monitoring for any service account with a
failed certification status. Failed certifications indicate potential security
vulnerabilities, as compromised credentials might not be deactivated
promptly. This policy minimizes the window of opportunity for attackers to
exploit these weaknesses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

115


<!-- page 116 -->
Policy Name

Description

Check GCP
Pending
Certification

Verifies if GCP account certification is in a pending state. This monitoring
enables prompt resolution of pending certification and avoids potential
security vulnerabilities.

To return to the procedure, see Set up scan configuration for data visualization.
Cloud Account Management ACL groups, roles, and responsibilities
Access control lists (ACLs), groups, and roles in Cloud Account Management control how access
permissions are organized and managed within a cloud environment.

Groups and roles in Cloud Account Management
Cloud Account Management groups and responsibilities
Group

Role

Responsibilities

ITOM Cloud Account
Management requester
group

sn_itom_cam.cw_requester
• Initiates cloud account requests:
Triggers the process for creating
cloud accounts.
• Justifies account creation: Provides
clear and compelling reasons for why
each cloud account is needed.
• Gathers and submits account
information: Collects and submits all
the necessary details required for
successful cloud account creation.
• Manages account status: Request
suspension or reactivation of cloud
accounts as needed.

ITOM Cloud Account
Management approver
group

sn_itom_cam.cw_approver
• Evaluates and approves account
requests: Review account creation
requests, carefully assessing their
validity and alignment with budget
constraints. Following this evaluation,
the administrator grants approval or
denial of the request.
• Verifies budgetary compliance:
Confirms that the requested cloud
account aligns with available
budgetary resources before granting
approval.
• Communicates decisions with clear
rationale: Communicates clearly
the approval or denial decision to
the requester by adding a comment
to the request itself. This comment
should provide a concise and
informative explanation for the
decision.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

116


<!-- page 117 -->
Cloud Account Management groups and responsibilities (continued)
Group

Role

ITOM Cloud Account
Management admin group

sn_itom_cam.cw_admin

Responsibilities

• Verifies configuration alignment:
Verifies that Cloud Account
Management configurations are
consistent and aligned with both
cloud provider configurations and
Terraform configurations. This
process promotes secure access
management practices across all
environments.
• Provisions cloud accounts:
Configures the cloud context to
provision new cloud accounts,
streamlining the account creation
process.
• Troubleshoots provisioning issues:
Diagnoses and resolves any
problems encountered during cloud
account provisioning, promoting
successful account creation.
• Customizes data certification
policy: Tailors the Cloud Account
Management default data
certification policy to meet specific
organizational requirements,
promoting appropriate data handling
procedures.
• Manages all accounts: Oversees
all cloud accounts, including CWmanaged accounts and on-boarded
accounts, guaranteeing centralized
control and visibility.

ITOM Cloud Account
Management certifier group

sn_itom_cam.cw_certifier

• Certifies discovered accounts:
Reviews discovered accounts listed
in the Subscription Accounts tab
and designates them as certified if
they meet compliance standards
or failed if they don't. This process
verifies proper vetting and ongoing
monitoring of cloud accounts.
• Manages verification tasks: Accesses
and reviews verification tasks
associated with cloud accounts.
Following review, the administrator
can certify tasks to indicate their
successful completion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

117


<!-- page 118 -->
How they work together
Cloud Account Management groups and responsibilities
Group

Role

Responsibilities

ITOM Cloud Account
Management requester
group

sn_itom_cam.cw_requester
• Initiates cloud account requests:
Triggers the process for creating
cloud accounts and provides the
information for creating the account.
• Manages account status: Requests
suspension or reactivation of cloud
accounts.

ITOM Cloud Account
Management approver
group

sn_itom_cam.cw_approver
• Evaluates and approves account
requests.

ITOM Cloud Account
Management certifier group

sn_itom_cam.cw_certifier

ITOM Cloud Account
Management admin group

sn_itom_cam.cw_admin

• Verifies budgetary compliance of
requested cloud accounts and
alignment with available budgetary
resources.

• Certifies discovered accounts.
• Accesses and reviews verification
tasks associated with cloud
accounts.

• Verifies that Cloud Account
Management configurations are
consistent and aligned with both
cloud provider configurations and
Terraform configurations.
• Provisions cloud accounts.
• Troubleshoots provisioning issues:
Diagnoses and resolves any
problems encountered during cloud
account provisioning.
• Customizes data certification policies
to meet specific organizational
requirements.
• Oversees all cloud accounts,
including CW-managed and onboarded accounts, guaranteeing
centralized control and visibility.

To return to the main topic, see Exploring Cloud Account Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

118


<!-- page 119 -->
Permissions required for Azure Service Principal
This table provides the permissions needed to create, close or cancel an Azure subscription,
download billing details, and tag subscriptions.
Roles required for Azure Service Principal
Role

Action

Role definition ID

EnrollmentReader

Enrollment readers can
view data at the enrollment,
department, and account
scopes. This data includes
charges for all subscriptions
under these scopes, even
across tenants, and displays
the AzurePrepayment
(previously called monetary
commitment) balance
associated with the
enrollment.

24f8edb6-1668-4659b5e2-40bb5f3a7d7e

DepartmentReader

Download the usage
details for the department
you administer. You can
also view the usage and
charges associated with your
department.

db609904a47f-4794-9be8-9bd86fbffd8a

Microsoft.Billing/
billingAccounts/read

Read the list of billing
accounts.

Microsoft.Management/
managementGroups/
subscriptions/write

Move subscription to the
appropriate location once
created

Microsoft.Management/
managementGroups/write
Microsoft.Resources/tags/
write

Add tags to the subscription.

Microsoft.Billing/
billingAccounts/
billingSubscriptions/cancel/
write

Close or cancel a
subscription.

Managing the Cloud Workspace asset details
This page allows the user to view, edit, and manage a comprehensive set of details of a cloud
asset such as its attributes, its health, and its records.
The cloud asset page is a centralized, highly organized, and comprehensive set of sections with
cloud asset details. This page is used to examine and edit cloud asset attributes, relationships,
tags, services and offerings, account health and data associated with the cloud asset, resources,
activities, and related services.
The following sections describe the various sections of the cloud asset page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

119


<!-- page 120 -->
Summary
The Summary section provides a consolidated view of key information for the selected
configuration item (CI). This page helps you quickly access metadata, ownership details,
operational status, discovery timestamps, and critical attributes required for monitoring and
decision-making.

Attributes
The Attributes section displays all UI sections configured in the Explore CI view for the CI class.
Select Attributes to access the available subsections. By default, the Discovery and Operational
subsections align with the corresponding sections in the Explore CI view. The All subsection lists
all CI attributes. Mandatory attributes are marked with an asterisk (*) and must have a value.

Tags
This section lists tags stored as key/value pairs in the Key Values [cmdb_key_value] table. These
cloud tags are typically associated with CIs and resources from providers like AWS and Google
Cloud Platform. Cloud tags are used in ITOM applications such as Tag Governance and are key
to Tag-based discovery in Service Mapping. They are automatically populated by Discovery
and Service Graph Connectors and can be grouped and managed as needed within your
organization.

Resources
This Resources section displays the resources linked to the CI and corresponds to the Related
Lists defined in the Explore CI view.

Activity
This section shows related items such as open incidents and the activity stream for the CI on the
following tabs:
Related Items
Pie charts that by default include Open incidents (Incidents table), Open changes
(Change Request table), and Open problems (Problem table), broken down by
priority or state.
CI history
History of the activities related to the CI, such as value changes in the CI attributes,
listed in chronological order.

Relationships
This section shows the CI relationships, which include:
• Total relationships: Total number of relationships for this CI
• Duplicate relationships: Total number of duplicate relationship for this CI
• Stale relationships: Total number of stale relationship for this CI

Services and Offerings
This section shows cards with counts of the following services and offerings associated with the
CI:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

120


<!-- page 121 -->
• Service Instance: Any CI related to the Service Instance [cmdb_ci_service_auto] table where
Service Classification is Application Service.
• Business Service Offering: Any Service Instance, which has a relationship to Service_Offering
where Service Classification is Business Service.
• Technology Management Offering: Any Service Instance, which has a relationship to
Service_Offering where Service Classification is Technical Service or the CI is related to a
Dynamic CI Group, which is part of a Technical Service Offering.
• Technology Management Service: Parent of a Technology Management Offering.

Health
This section shows aggregations from the latest CMDB Health test results for the Completeness,
Correctness, Compliance, and Relationship KPIs, and the aggregated state of attestation. Color
codes are used to denote pass/fail scores.

Note: For more information on each section, see Manage CI details in CI Form

.

Cloud Asset Collection table
Stores metadata of cloud assets collected from providers for IT operations.
A Cloud Asset Collection Table is a structured repository in IT Operations Management that
stores and manages metadata of cloud resources collected from multiple cloud service
providers. The table stores all discovered or synced cloud assets, such as virtual machines,
storage buckets, and databases after collection from cloud environments.
Cloud Asset Collection Configuration fields
Field

Description

Active

Indicates whether this specific cloud asset collection configuration is
enabled or turned off.
• True – The configuration is active for the selected CI. It has been
processed and populated in the flat table, and assets are collected
according to the defined schedule.
• False – The configuration is inactive, and no assets are collected.

Category

High-level classification of collected cloud assets, such as Compute,
Storage, Networking, Database, or Security.

Subcategory

Granular classification under the main category. Examples include Virtual
Machines, Containers, and Functions under Compute; Block Storage,
Object Storage, and File Storage under Storage.

CI Class Name

CMDB class where collected assets are stored such as
cmdb_ci_vm_instance for virtual machines.

Provider

Cloud service provider from which assets are collected.

Last Processed
Time

Timestamp of the last successful Asset Collection run.
Useful for:
• Tracking data freshness
• Troubleshooting delays or failures

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

121


<!-- page 122 -->
Cloud Asset Collection Configuration fields (continued)
Field

Description

Comments

Free-text field for notes or context about the configuration.

Cloud account details
The Cloud account details table provides detailed information about each account.
Cloud account details table
Entry

Description

Account name

The name of the cloud account.

Cloud Provider

The cloud service provider, such as AWS.

Account Id

The unique identifier for the account.

Account status

The current status of the account. The
available statuses are:
• Active
• Suspended
• Closed

Cloud bill this month

The cloud expenditure for the current month.

Owned by

The owner of the account.

Total assets

The total number of assets associated with the
account.

Configuration violations

The number of configuration violations.

Security Findings

The total number of security findings.

Alias

An alias for the account.

Cloud Organization

The cloud organization associated with the
account.

Application Service

The application service associated with the
account.

Business Application

The business application associated with the
account.

Cost center

The cost center associated with the account.

Created

The date and time when the record was
®
created in the ServiceNow instance.

Certification Status

The certification status of the account.
The possible statuses are:
• Pending (yellow)
• Failed (red)
• Certified (blue)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

122


