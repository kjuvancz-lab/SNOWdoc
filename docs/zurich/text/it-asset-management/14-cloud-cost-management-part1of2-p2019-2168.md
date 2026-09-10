# Zurich IT Asset Management — Cloud Cost Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2019–2168 of 2359 | Part 1 of 2

Sections: Cloud Cost Management (p2019); Explore (p2021); Configure (p2063); Use (p2134); Reference (p2182)

---

<!-- page 2019 -->
Navigation option

Procedure

Note: You must select an order line
that you have already completed the
Asset ship task for.
c. On the inbound asset order line record, se­
lect the Asset tasks tab.

Provider asset tasks

From the navigation menu of the Asset opera­
tions view, navigate to Provider > Provider as­
set tasks.

3. From the list of available tasks, select the task number for the Receive task that you want to
complete.
4. On the Details tab of the Receive task, fill in the fields.
Details tab
Field

Description

Due date

Date and time at which you must complete the task.

Asset

Asset that was shipped to the customer.

Asset received

Option that indicates if the customer received the asset. Select either Yes
or No.

Assignment
group

Group that the task is assigned to.

Assigned to

User who the task is assigned to.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

5. Select Close Task.

Note: If you want to save your progress and close the task at a later time, select Save
instead. You can return to the task at any time.

Result
• The Receive task closes with an updated state of Closed Complete.
• The inbound asset order line moves to the Completed stage.
• The state of the asset changes to In Transit.

Cloud Cost Management
®

ServiceNow Cloud Cost Management application (formerly known as Cloud Insights) gives you
visibility and control of your cloud usage and costs and helps you to discover all of your cloud
resources, breaks down cloud spend by cost center, business service, and other entity, provides

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2019


<!-- page 2020 -->
recommendations on how to reduce cloud spend, and automates repetitive cost optimization
tasks.
Watch this short video for an introduction to the Cloud Cost Management application.
Watch this short video for an introduction to the Cloud Cost Management application.

Important: Cloud Cost Management version 8.0.0 and below are in the Planned
Deprecation phase (see Deprecation Process
for more details). These versions won’t be
available on the ServiceNow Store for download and installation for new deployments, but
continue to be supported for existing deployments.

Explore

Configure

Use

Learn the key features and
business value that the
Cloud Cost Management
application offers.

Activate Cloud Cost
Management supporting
plugins, features, and
assign roles to enable
additional setup activities.

Automate and streamline
manual processes by
automating cloud tasks.

Cloud Cost
Management Infra Stack

Reference

Learn the key features
and business value
that the Cloud Cost
Management Infra
Stack application offers.

Get details about the
roles, domain separation,
and service categories in
Cloud Cost Management.

Learn
What is cloud cost management (CCM)?

Troubleshoot and get help
• Ask or answer questions in the Cloud Cost Management ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2020


<!-- page 2021 -->
Exploring Cloud Cost Management
Learn more about Cloud Cost Management with a sample workflow and reviewing the benefits
that it can provide for different users in your organization.

Cloud Cost Management overview
Cloud Cost Management helps you analyze the full range of costs related with cloud assets so
you can identify and act on chances to save money and optimize operations.

Cloud Cost Management workflow
Cloud Cost Management continuously monitors your cloud infrastructure to analyze costs so you
can identify and act on resources to save money and optimize operations.
Monitor your cloud infrastructure

Cloud Cost Management benefits
Benefit

Feature

Users

Optimize cloud costs and usage by gaining
complete visibility of your cloud spend and
usage through an intuitive and streamlined
user interface.

Cloud Cost
Management
Workspace

Executives/FinOps
Practitioners/Cloud
Managers/Cloud
Administrators

Rightsize cloud resources by getting
automated recommendations on how to
reduce cloud costs by correctly dimensioning
cloud resources to match usage.

Rightsizing resources

Cloud Administrators/
Application owners

Decrease costs by the conversion of ondemand payment plans to reservation plans
for your cloud resources.

Reservation or Saving
plans

Cloud Administrators/
Application owners

Identify cost optimizations targets by analyzing Unused resources
areas of high spend and stranded cloud
assets.

Cloud Administrators/
Application owners

Turn off resources when not in use by
identifying cloud resources that aren’t
used outside normal working hours and
automatically turn them off and on.

Business hours

Cloud Administrators/
Application owners

Allocate budgets

Cloud budgets

FinOps Practitioners/
Cloud Administrators

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2021


<!-- page 2022 -->
Benefit

Feature

Users

Automate optimization approvals by
integrating cloud optimization tasks into your
existing change management processes.

Change
Management

FinOps Practitioners/
Cloud Administrators

Cloud Cost Management Infra Stack
Use the Cloud Cost Management Infra Stack application to process and download billing files
with improved data processing speed. The Cloud Cost Management Infra Stack application also
supports high transaction volumes.

Overview of the Cloud Cost Management Infra Stack application
The Cloud Cost Management Infra Stack application is an optional plugin that can be installed
alongside Cloud Cost Management version 8.1 and later from the ServiceNow Store. Installing
this plugin also activates the Glide Fenix (com.glide.fenix) plugin.

Important: If you have activated the Cloud Cost Management Infra Stack application,
you can't deactivate it later.
Provider-specific credential aliases are installed by default with the Cloud Cost Management
Infra Stack application.

Provider

Credential alias

AWS

ccm_aws_alias

Microsoft Azure

ccm_azure_alias

Google Cloud

ccm_google_alias

For the billing download job to complete successfully, you should map the alias that's applicable
to your cloud provider with the corresponding credentials.

Benefits of the Cloud Cost Management Infra Stack application
The Cloud Cost Management Infra Stack application offers several key benefits for more efficient
and effective cloud cost management. These benefits enable organizations to optimize their
cloud resources and reduce overall costs.
Improved data download speed
The application significantly improves data processing speed, which enables faster
processing and analysis of billing files.
Support for high transaction volumes
It’s designed to handle high transaction volumes efficiently, making it suitable for
large-scale cloud environments.
Enhanced performance with Kubernetes
The application uses a Kubernetes cluster that helps it process billing data quickly
and manage complex cloud infrastructures effectively.
Better cloud cost management
By providing frequent insights and faster data processing, the Cloud Cost
Management Infra Stack application enables organizations to manage their cloud
costs effectively and make informed decisions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2022


<!-- page 2023 -->
Requirements for processing billing jobs using the Cloud Cost Management
Infra Stack application
The framework of the Cloud Cost Management Infra Stack application enables parallel
processing of billing files, resulting in faster processing of large files. The application processes
billing jobs using a Kubernetes cluster that's outside Cloud Cost Management Glide but within
ServiceNow datacenters.
You must fulfill these requirements to process billing jobs.
• Map all the provider-specific credentials of your billing download jobs to the corresponding
credential alias. For example, if you have two AWS credentials, map them to ccm_aws_alias so
that the billing download job completes successfully. For more details on mapping credentials
to aliases, see Credential aliases for Discovery .

Note: If you’re upgrading from an earlier version to Cloud Cost Management version
10.0 and have installed the Cloud Cost Management Infra Stack application, the mapping
of credentials to alias happens automatically for all active billing download jobs. However,
for any new job, you should do the mapping manually.
• Make sure to have enough storage on your Cloud Cost Management Glide database for storing
the attachments of the AWS billing job with Assume role authentication temporarily until the
billing download job is processed. After the job is complete, these temporary attachments
are deleted from the Glide database. The storage that you should have depends on the
size of data on AWS. For more details, see Processing AWS billing jobs with Assume role
authentication.

Cloud Cost Management Workspace
Use the Cloud Cost Management Workspace, the intuitive and streamlined user interface of
the Cloud Cost Management application, to analyze the full range of costs that are associated
with cloud resources. You can identify and act on opportunities to save money and optimize
operations.
The Cloud Cost Management Workspace is a unified medium with multiple views. The views
let you analyze costs, spend, budget of your cloud resources, and provides insight into how IT
supports business application and services through various dashboards.
The Cloud Cost Management Workspace contains the following views:
• Cloud Cost Management overview: Use the Cloud Cost Management Workspace through this
simplified overview page and get insights into your cloud resources.
• Budget view: Reduce cloud spend by proactively understanding the budget compliance of
your cloud resources.
• Spend view: Analyze and understand the spend on your cloud resources.
• Operations view: View and manage recommendations, cost usage tags, and admin-related
operations.
• Admin view: Install, set up, and configure Cloud Cost Management through a guided
experience.

Note: You can view the reports and data based on your role. For more information, see
Cloud Cost Management roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2023


<!-- page 2024 -->
Cloud Cost Management overview
Enhance your experience by using the modernized and user-friendly Cloud Cost Management
overview. This simplified overview page helps you use the Cloud Cost Management application
more effectively by reducing complexity.

Important: If you have the insights_owner role, only the accounts that are assigned to
you appear in the filters and data.
Use the Cloud Cost Management overview to,
• Understand how you currently spend on cloud resources or service accounts for the last 30
days.
• Gain insights into key metrics such as the total budget and potential savings for your cloud
resources.
• Analyze your spend breakdown and group your results by provider, service category, service
account, cloud service, or purchase option. You can also sort your results by months past such
as 3, 6, 9, or 12 months, actual cost or amortized cost, and by hiding or showing the future cost.

Note: You can view the forecast grouped only by provider or service account.
• View cloud spending analytics based on provider, service category, and cloud service.
• Get information about the top spend trends that are grouped by service category, cloud
service, cost center, business service, and provider.
• Understand your savings breakdown by viewing your potential and actual saving.
• Get actionable insights into your cloud resources through alerts and recommendations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2024


<!-- page 2025 -->
Overview
Report

Description

Total spend this month

Actual spend on your service accounts or
cloud resources for the last 30 days.
The Forecasted spend this month amount
displays the total future spends for all your
cloud assets.
The Compared to last month percentage
amount shows the spend difference of the
current month and last month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2025


<!-- page 2026 -->
Overview (continued)
Report

Description

Total budget

Total budget of your service accounts or cloud
assets where the current date falls between
the start date and end date of the budget.
For a budget owner, the budget for only the
created policies is displayed.
The Forecasted variance amount shows the
budget amount based on the spend on your
cloud resources, which is
Forecasted spend this month Total budget
.

Total potential saving

Total saving for your cloud assets based on all
the recommendations that you haven't acted
on.

Monthly spend breakdown

Monthly spend breakdown grouped by
provider, service category, service account,
cloud service, or purchase option. The results
can be sorted by time range and cost type.
Use the Show forecast toggle switch for hiding
or showing the future cost.
Selecting a monthly spend breakdown bar
navigates you to the Spend analytics page. For
more information, see Spend analytics.

Top spend trend
Report

Description

Top spend trend

Spend trend or actual cost grouped by service
category, cloud service, cost center, business
service, and provider.

Actual vs potential savings
Report

Description

Actual vs potential savings grouped by
provider, service category, and environment

Actual vs potential savings grouped by
provider, service category, and environment.

Note: To view the Actual vs potential
savings grouped by environment chart,
you must create tag categories as
Production and Non Production. For
more information about creating a tag
category, see Create and update a tag
category.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2026


<!-- page 2027 -->
Actual vs potential savings (continued)
Report

Description

Potential saving indicates the total spend on
your cloud resources that could be optimized
by the recommendations.
Actual saving indicates the total savings
achieved by following the recommendations to
optimize your cloud resources.

Alerts

Note: The alerts that you view on the Cloud Cost Management
Overview page are for the last one week.

Alert

Description

Last <provider> billing download job failed

The billing download job that downloads
organizes, and stores billing data for your
payer account has failed.

Last <provider> price sheet download job
failed

The price sheet download job that download
and stores price sheet data for your cloud
provider has failed.

Scheduled jobs failed

One or more scheduled jobs, which automate
processes for cloud providers have failed.

<Number> declined recommendations

Number of recommendations that you’ve
declined, which indicates potential savings.

<Number> failed recommendations

Number of recommendations that have failed,
which indicates potential savings for your
cloud resources.

Recommendations
Recommendation

Description

All

Displays all the recommendations that Cloud
Cost Management provides for your cloud
assets.

Business hour

The Business hour recommendation helps you
identify resources that are running when they
should be powered off.

Reservation/Saving plans

The reservation and saving recommendation
helps you identify resources that would save
you money with reservation plans or saving
plans.
You can accept or decline the reservation and
saving recommendation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2027


<!-- page 2028 -->
Recommendations (continued)
Recommendation

Description

Rightsizing

The Rightsizing recommendation helps you
identify the users, user groups, or locations
that are wasting money by running overprovisioned or underused resources.
You can schedule the rightsizing processes
and specify the amount of potential rightsizing
savings that triggers notifications.

Unused

The Unused recommendation helps you
identify the unused resources.
You can schedule unused machines to be
powered off or terminated.

Spend analytics
The Spend analytics page helps you gain visibility to your cloud costs by displaying your cloud,
Kubernetes, and shared resources spend over a time range or a cost type that you specify.

Important: If you have the insights_owner role, only the accounts that are assigned to
you appear in the filters and data.
Use the Spend analytics page to view the following:
• Cloud spend analytics
• Kubernetes spend analytics
• Shared cost analytics

Note: You can't view the spend of your resources for nested
tag values. For example, {"name":"test","created-

by":"xyz","prod":"false","shared_resource":"false"}.

Cloud spend analytics
Select the Cloud spend analytics tab to do the following tasks:
• Understand how you currently spend on cloud resources for a period that you can select in the
Time range field.
• Group the cloud spend analytics by using either of the following values:
◦ Provider
◦ Purchase option
◦ Region
◦ Service account
◦ Service category
◦ Cloud service
◦ Resource group
◦ Tag category
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2028


<!-- page 2029 -->
• Sort your cloud spend results by the current month or select a time range such as 3, 6, 9, or 12
months.
• Get a better picture of your results by searching and selecting values through the following
filters:
◦ Provider
◦ Master Service Account
◦ Service account
◦ Region
◦ Service category
◦ Cloud service
◦ Purchase option
◦ Resource group
◦ Tag category

Note: For more information about tag categories and the list of default tag categories,
see Tags and tag categories and List of default tag categories.
◦ Tag values
◦ Tag categories selected

Kubernetes spend analytics
Select the Kubernetes spend analytics tab to do the following tasks:
• Understand how you currently spend on Kubernetes on the cloud for a period that you can
select in the Time range field.
• Group the Kubernetes spend analytics by using either of the following values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2029


<!-- page 2030 -->
◦ Kubernetes cluster
◦ Kubernetes namespace
◦ Tag category
• Select the cost type as Actual cost or Amortized cost.
◦ Actual cost: Each billing period, your organization pays for direct cloud services.
◦ Amortized cost: Your organization pays the effective cost of the upfront and monthly
reservation fees spread across the billing period. The amortized cost type is described in
detail on the provider site.
• Sort your Kubernetes spend results by the current month or select a time range such as 3, 6, 9,
or 12 months.
• Get a better picture of your results by searching and selecting values through the following
filters:
◦ Provider
◦ Master Service Account
◦ Service account
◦ Region
◦ Kubernetes cluster
◦ Kubernetes namespace
◦ Purchase option
◦ Resource group
◦ Tag category

Note: For more information about tag categories and the list of default tag categories,
see Tags and tag categories and List of default tag categories.
◦ Tag value
◦ Tag categories selected
• View details of cost per Kubernetes cluster and cost per Kubernetes namespace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2030


<!-- page 2031 -->
Shared cost analytics
Select the Shared cost analytics tab to do the following tasks:
• Understand how you currently spend on shared cloud resources for a period that you can
select in the Time range field.
• Group the Shared cost analytics by using either of the following values:
◦ Provider
◦ Purchase option
◦ Region
◦ Service account
◦ Service category
◦ Cloud service
◦ Resource group
◦ Tag category
• Select Cost type as Actual cost or Amortized cost.
◦ Actual cost: Each billing period, your organization pays for direct cloud services.
◦ Amortized cost: Your organization pays the effective cost of the upfront and monthly
reservation fees spread across the billing period. The amortized cost type is described in
detail on the provider site.
• Sort your shared resources cost results by the current month or select a time range such as 3,
6, 9, or 12 months.
• Get a better picture of your results by searching and selecting values through the following
filters:
◦ Provider
◦ Master Service Account
◦ Service account
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2031


<!-- page 2032 -->
◦ Region
◦ Service category
◦ Cloud service
◦ Purchase option
◦ Resource group
◦ Tag category

Note: For more information about tag categories and the list of default tag categories,
see Tags and tag categories and List of default tag categories.
◦ Tag value
◦ Tag categories selected
• View details of the direct cost and shared cost of your cloud resources.

Related topics
Cloud service categories in Cloud Cost Management
Tags and tag categories
Create and update a tag category
Create or update a shared cost allocation policy
Budget view
Understand budget compliance by groups and service accounts can significantly improve
oversight and reduce cloud spend.

Important: If you have the insights_owner role, only the accounts that are assigned to
you appear in the filters and data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2032


<!-- page 2033 -->
Use the Budget view to:
• View your total budget and spend on your cloud assets.
• Analyze your future spend and understand if you are within or over the budget.
• Manage your cloud spend, you can define and monitor custom Budget plans.
• Create and manage a budget policy. For more information, see Create or update a budget
policy.

Budget overview
Report

Description

Total budget

Valid budget of your cloud assets for the
current period.

Total spend

Total spend on your cloud assets for the
current month.
Indicates if your current spend is within or has
exceeded the budget.

Forecasted spend

Forecasted spend based on the total spend
on your cloud resources.
Indicates if your forecasted spend is within or
has exceeded the budget.

Budget vs Spend

Comparison between budget and current or
forecasted spend of each budget policy.
You can filter the data by:
• Budget owner
• Budget name
• Budget vs current spend
• Budget vs forecasted spend

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2033


<!-- page 2034 -->
All budgets
After you create or modify a budget policy, the policies get displayed on the All Budgets page.
Find the details of the budget such as overrun, surplus, or invalid budgets. You can view only the
overrun budgets by toggling the Show overrun budget only toggle button. Search a budget by its
name, owner, or provider.

Spend view
Ensure accurate cost reporting by using the Spend view in the Cloud Cost Management
Workspace.

Important: If you have the insights_owner role, only the accounts that are assigned to
you appear in the filters and data.
Use the Spend view to analyze and understand the spend on your assets that are grouped by
various categories:
• Daily spend by service category
• Spend per cost center
• Spend per purchase option
• Spend per business application
• Cost allocation, displaying shared and direct cost
• Spend per region

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2034


<!-- page 2035 -->
Operations view
Use the Operations view in the Cloud Cost Management Workspace to view and manage
recommendations, cost usage tags, and administration-related operations.

Important: If you have the insights_owner role, only the accounts that are assigned to
you appear in the filters and data.
You can access the Operations view by navigating to Cloud Cost Management
Workspace > Operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2035


<!-- page 2036 -->
The Operations view lets you do the following tasks by expanding each category in the Lists tab:
• Overview: View your total savings by recommendation type and the number of
recommendations to review, which are grouped by their state.
• Recommendations: View the savings of your cloud assets by recommendation type such as
Rightsizing, Unused resources, Reservation/Saving plans, and Business hours. Select the
recommendation type to view detailed reports and act accordingly:
◦ Rightsizing: View the total potential savings by service category, total potential savings
by change group, number of resources that are scheduled, completed, declined, failed,
and excluded for rightsizing. You can also exclude or schedule resources for rightsizing
resources, configure the rightsize settings, and create service category metrics. For more
information, see Resize resources with Rightsizing.
◦ Unused resources: View the total potential savings by service category, total potential
savings by change group, number of unused resources that are scheduled, completed,
declined, failed, and excluded. You can also exclude or schedule unused resources to
identify resources that are wasting money because they aren’t used, configure the unused
settings, and create unused recommendations. For more information, see Manage unused
resources.
◦ Reservation/Saving plans: View upfront cost to reserve, overall RI utilization percentage,
potential savings by service category. You can accept or decline the recommendations for
reserved instances. For more information, see Reduce resource cost with Reservation Plans
◦ Business hours: View the total potential savings by service category, total potential
savings by change group, business hour against non-business hour spend, and number
of resources that are scheduled, completed, declined, failed, and excluded from business
hour policies. You can also exclude resources from the policies. For more information, see
Improve resource usage with Business hours.
• Cost usage tags: Associate resource usage with particular business entities. For more
information, see Tags and tag categories.
◦ Tag categories: Create and update tag categories.
◦ Tag names: Create tag names for the tag categories.
For more information, see Create and update a tag category.
• Administration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2036


<!-- page 2037 -->
◦ Service accounts: Create service accounts for AWS, Azure, and Google to store the
credentials and access information for your account.
▪ Add an AWS service account
▪ Add a Microsoft Azure government service account
▪ Add a Google Cloud service account
◦ Credentials: Create credentials for accessing AWS, Azure, and Google accounts.
▪ Set up access to AWS billing and usage data
▪ Set up access to Microsoft Azure billing and usage data
▪ Set up access to Google Cloud billing and usage data
◦ Billing download jobs: View, manage, and schedule the jobs that download billing data for
AWS, Azure, and Google.
▪ Schedule and manage the jobs that download AWS billing data
▪ Schedule and manage the jobs that download Azure billing data
▪ Schedule and manage the jobs that download Google Cloud billing data
◦ Price sheet download jobs: View, manage, and schedule the jobs that download the price
sheet for AWS, Azure, and Google.
▪ Schedule and manage the Cloud Cost Management jobs that download AWS price sheets
▪ Schedule and manage the Cloud Cost Management jobs that download Microsoft Azure
price sheets
▪ Schedule and manage the Cloud Cost Management jobs that download Google Cloud
price sheets
◦ Business hours schedules: Create a schedule for business hours. For more information, see
Create Business hours schedule.
◦ Unassigned resources: View list of unassigned resources and details of the resources such
as provider, region, CMDB CI, service account and category, and SyS ID.
◦ Global exclusions: Exclude resources for ensuring that cost data for a particular resource
doesn’t appear in a report. For more information, see Exclude a resource from all Cloud Cost
Management reports.
◦ Job executions: View the job execution details of the following:
▪ Billing download
▪ Price sheet download
▪ Spend
▪ Budget
▪ Rightsizing/Unused
▪ Business hour
▪ Unassigned
▪ Reservation plan
◦ Account to owner mappings: Set up or update ownership of service accounts. For more
information, see Assign service accounts to an insights_owner and Update or reassign
insights_owner privileges.
◦ View insights owners: View the list of insights owner and also create a cloud service
account. For more information, see View the service accounts owned by an insights_owner.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2037


<!-- page 2038 -->
◦ AWS price discounts: View and specify the provider discount rate for each service account.
For more information, see Specify rate discounts to enable accurate pricing for Rightsizing
recommendations.
◦ AWS Gov account mappings: Create mapping of AWS Gov account to a linked service
account. For more information, see Create AWS Gov accounts mapping.
◦ Shared cost allocation policies: Create, update, and view shared cost allocation policies
with different allocation types to split the cost of shared cloud resources among various
business lines. For more information, see Create or update a shared cost allocation policy.
• Tools- Compare MetricBase with Spend data: Compare MetricBase (Clotho) data with your
Spend data for Amazon Web Services (AWS), Azure, and Google Cloud Platform (GCP) and
easily diagnose and troubleshoot Cloud Cost Management billing issues. For more information
see, Compare MetricBase data with spend data.

Note: This option is available with Cloud Cost Management 8.0.0 version or later.
Admin view
Use the Admin view in the Cloud Cost Management Workspace that enables you to install, set
up, and configure the application through a guided experience.
The Admin view lets you to:
• Get to value faster by using Guided Setup for configuring Cloud Cost Management for AWS,
Azure and GCP. Guided Setup provides a prescriptive guidance on the tasks that you must
perform for completing the configuration. This Guided Setup organizes configuration activities
into various categories tor ease of use.
• Watch a tutorial to familiarize with Cloud Cost Management.
• View helpful resources and related products or features.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2038


<!-- page 2039 -->
Using Guided Setup to implement Cloud Cost Management
Guided Setup provides a sequence of tasks that help you configure Cloud Cost Management on
your ServiceNow instance.
To open Cloud Cost Management Guided Setup for AWS, Microsoft Azure, and GCP, navigate to
Workspaces > Cloud Cost Management Workspace > Admin > Create integrations >
Integrate.
For more information, see Guided Setup

.

Find the following steps on the Admin view for Guided Setup:
• Activate plug-ins: Verify that all required plugins and dependencies are installed.

Note: You must add the Guided Setup 2.1.2 version.
• Configure integrations: Create integrations with cloud providers such as Amazon Web
Services AWS, Microsoft Azure, and Google Cloud Platform (GCP).
• Preference settings: Review the default settings or edit them according to your needs for
various features in the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2039


<!-- page 2040 -->
Visibility into Cloud Cost Management KPIs using the Asset Management
Executive Dashboard
Use the Asset Management Executive Dashboard to gain visibility into critical KPIs for Hardware
Asset Management, Software Asset Management, and Cloud Cost Management applications via
a single dashboard.
To access the Asset Management Executive dashboard, you must either have Software Asset
Management or Hardware Asset Management in your ServiceNow instance.
To view the Asset Management Executive dashboard, navigate to Asset Executive Workspace >
Asset Management Executive Dashboard. A user with the role of sn_itam_common.asset_exec
can access the dashboard.
Asset Management Executive Dashboard

You can filter the results in the dashboard by product, domain, or by both product and domain. If
you filter by domain, the filter gets applied to all the widgets. If you filter by product, since some
widgets are applicable for certain products, the filter isn’t applied to all the widgets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2040


<!-- page 2041 -->
After you select a filter, a blue box gets displayed on the right side of each widget displaying one
of the numbers:
• 0: Indicates that no filter is applied to a widget.
• 1: Indicates that only one filter is applied to a widget.
• 2: Indicates that both the filters are applied to a widget.

Note: To use the domain filter, you must activate the plugins:
com.glide.domain.msp_extensions.installer and com.snc.pa.domain_support.
The schedule job, Asset Management - Populate KPI aggregate table, runs
daily to update the data on the dashboard. To view the latest data for a widget, select the widget
to display the list view page.
The dashboard widgets vary depending on the application plugins that you've activated in your
instance. The widgets available with each application are listed in the following table:
Asset Management Executive Dashboard widgets
Widget

Total spend

Actual
savings

Software Asset
Management

Hardware Asset
Management

Total cost of all
entitlements for all
products.

Total cost of
all hardware
assets whose
status is either In
Source table:
stock, In use, In
License
maintenance,or In
Metric Results
transit
[samp_license_metric_result].
Source table:
Hardware
[alm_hardware].
Total yearly savings
for all products.
This value is
calculated as the
total savings from
closed complete
reclamation
candidates.

Not applicable

Cost saved if
removal candidates
are reclaimed.

Total active cost of all cloud
resources.
Source table: Spend Report
Daily Aggregated Cost
[sn_cld_spend_core_daily_aggregated_cost].

This value is calculated as the
monthly savings on cloud resources.

Note: This widget gets
displayed only if you have the
Software Asset Management
application installed on your
instance.

Source table:
Removal Candidate
[samp_sw_reclamation_candidate].

Potential
savings

Cloud Cost Management

Not applicable

Source table: Cloud
Insights Rightsizing
Recommendation Automatics
(sn_clin_core_rs_recommendation_automatic)
where State = Completed.
Total of potential savings on a
monthly basis on cloud rightsizing,
cloud unused machines, cloud
reservations, and cloud business
hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2041


<!-- page 2042 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

Note: This widget appears

Source table:
Removal Candidate
[samp_sw_reclamation_candidate].

only if you have the Software
Asset Management application
installed on your instance.
Source tables:
• Cloud Insights Rightsizing
Recommendation Automatics
[sn_clin_core_rs_recommendation_automatic].
• Cloud Insights Unused
Recommendation
[sn_clin_core_rs_unused_recommendation].
• Reserved Instance
Recommendation
[sn_clin_core_ri_recommendation].

Assessment
Fulfillment time bar
fulfillment
graph of software
time
requests from the
Service Catalog. The
graph shows the
number of requests
and the number of
days taken to close
those requests in
the ranges of 0-5,
6-10, 11-20, 21-30, 31+
days.

Fulfillment time bar
graph of hardware
requests from the
Service Catalog.
The graph shows
the number of
requests and the
number of days
taken to close
those requests in
the ranges of 0-5,
6-10, 11-20, 21-30,
31+ days.

Not applicable

Source table: Asset
Source table: Asset
fulfillment time
[asset_fulfillment_time].fulfillment time
[asset_fulfillment_time].
Completed
software
success
goals

Number of success
goals completed
for the Software
Asset Management
application.

Not applicable

Not applicable

Source table: SAM
Success Goal
[samp_success_goal].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2042


<!-- page 2043 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

Note: This
widget is
available only
when the
Software Asset
Workspace
(sn_sam_workspace)
store
application is
installed.
Completed
hardware
success
goals

Not applicable

Number of success
goals completed
for the Hardware
Asset Management
application.

Not applicable

Source table: HAM
Success Goal
[sn_hamp_success_goal]

Note: This
widget is
available
only when
Hardware
Asset
Management
(sn_hamp) is
installed.
Software
success
savings

Actual savings from
completed success
goals.

Not applicable

Not applicable

Source table: SAM
Success Goal
[samp_success_goal].

Note: This
widget is
available only
when the
Software Asset
Workspace
(sn_sam_workspace)
store
application is
installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2043


<!-- page 2044 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Hardware
success
savings

Software Asset
Management

Not applicable

Hardware Asset
Management

Cloud Cost Management

Actual savings from
completed success
goals.
Source table: HAM
Success Goal
[sn_hamp_success_goal]

Note: This
widget is
available
only when
Hardware
Asset
Management
(sn_hamp) is
installed.
Missing
hardware
assets

Not applicable

Count of missing,
lost, or stolen
hardware assets.

Not applicable

Source table:
Missing
Hardware Assets
[missing_hardware_assets].
Software
true-up cost Cost of the products
actually being used.

Not applicable

Not applicable

Source table:
Product Results
[samp_product_result].
Expiring
contracts in
90 days

Count of software
contracts that are
going to expire in the
next 90 days.

Count of hardware
contracts that are
going to expire in
the next 90 days.

Not applicable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2044


<!-- page 2045 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Assets
pulled from
pool vs
net new
purchase

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

Note: If the

Note: If

Software Asset
Management
application and
the Hardware
Asset
Management
application
both exist in
your instance,
then this
widget shows
the total
number of
software and
hardware
contracts
together; not
individual
contracts for
software and
hardware.

Software
Asset
Management
and Hardware
Asset
Management
both exist in
your instance,
then this
widget shows
the total
number of
software and
hardware
contracts
together; not
individual
contracts for
software and
hardware.

Bar charts
representing the
number of requests
for software assets
being fulfilled from
your inventory
versus creating
purchase orders for
new assets.

Bar charts
representing the
number of requests
for hardware assets
being fulfilled from
your inventory
versus creating
purchase orders for
new assets.

Bar charts representing the number
of assets used from your inventory
versus new assets being procured
via purchase orders.

Source tables:

• Net new assets: Purchase order
line items [proc_po_item].

Note: Ensure

Source tables:
• Pool assets: Spend
Report Monthly Cost
[sn_cld_spend_core_monthly_cost].

that the
• Pool assets:
Procurement
Consume
(com.snc.procurement)
Asset Task
plugin is
[consume_asset_task].
activated in
• Net new assets:
your instance
Purchase order
to view
line items
software[proc_po_item].
related data for
this widget.
Source tables:
• Pool assets:
Assigned
Allocations
[alm_licenses_assigned].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2045


<!-- page 2046 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

• Net new assets:
Purchase order
line items
[proc_po_item].
End of life
models in
next 90
days

Number of software
models that are
reaching their end
of life in the next 90
days.

Number of
hardware models
that are reaching
their end of life in
the next 90 days.

• End of life

• End of life

• End of support

• End of support

• End of extended
support

• End of extended
support

Not applicable

Source table:
Source table:
Software
Hardware model
Lifecycle Report
[cmdb_hardware_model_lifecycle].
[sam_sw_product_lifecycle_report].

Discovering your cloud resources for use
Select the service accounts to discover, the credentials for accessing the accounts, and the MID
Servers that scan the resources. If you use the Discovery application, the Discovery Manager
wizard simplifies the configuration process for discovering cloud attributes. If you use a different
method for discovering resources, you can skip this configuration operation.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Initial set up from the home page

Important: This configuration process applies only if you use the Discovery application
to discover cloud resources. You skip this configuration operation if you use a different
method such as Service Graph Connector to discover resources. For more information
about this method, see Service Graph Connectors .
During initial installation, on the home page, when you select the Set up Discovery Schedule
button in the Configure and Run Discovery section, the Discover Schedules form opens. For
detailed instructions for different cloud providers, see:
• AWS events-driven discovery

or AWS SSM discovery

• Azure Cloud Discovery
• Google Cloud Platform Discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2046


<!-- page 2047 -->
About Cloud Discovery
The Cloud Discovery plugin includes the necessary components from Cloud Provisioning and
Governance to perform Cloud Discovery. For more information, see Cloud Discovery .
Related topics
Discovery basics

Reservation or Saving plans
The Reservation or Saving plans feature recommends resources that could decrease costs by
the conversion of on-demand payment plans to reservation plans. These plans are also called
committed-use discounts, committed-use savings plans, or reserved instance plans.

Note: Azure Managed Disk reserved instance to save over your on-demand costs is
supported.

How the Reservation/Saving plans feature works
1. Each time that billing and usage data are updated, the system collects the list of resources that
the provider recommends would cost less under reservation plans over the planned lifetime.
2. The Reservation or Saving plans feature sorts the resources by estimated savings and displays
the list on the Reservation/Saving plans page. You can navigate to Cloud Cost Management
Workspace > Operations > Recommendations > Reservation/Saving plans to view the list.
For more information, see Reduce resource cost with Reservation Plans.
3. The Reserved Instances page has three tabs such as New, Accepted, and Declined. You can
use the tabs to sort the recommendations into categories for action. If you change your mind,
you can move a resource from any tab to any other tab.

Rightsizing resources
The Rightsizing feature analyzes resource usage to recommend better sizes for resources that
are wasting money by being over-provisioned or underused. A confidence rating and predicted
savings support each recommendation. Schedule Rightsizing jobs to resize the resources you
specify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2047


<!-- page 2048 -->
How Rightsizing works

The system updates Rightsizing recommendations each time that billing and usage data are
updated.
Follow this process to define a Rightsizing job:
1. On the Rightsizing recommendations page, select the resources to rightsize based on your
analysis of the recommendations. For more information, see Resize resources with Rightsizing.
2. Add the resources to a Rightsizing job. The job can be a new or an already-defined one.
3. Specify the date and time for the job to run.
4. Specify the type of approval required for the Rightsizing action.
Rightsizing operations are directly integrated with the ServiceNow Change Management
feature.
◦ Auto-approval: Generates a Standard Change request and the change request is autoapproved.
◦ Manual approval: Generates a Normal Change request and the appropriate user approves
the change request.
5. Save the job.
When you save the job, the system immediately generates the change requests. Later, at the
scheduled time, the system runs the job. The job performs the following operations:
• For each approved change, resize the resource. For a resource in the ON state, stop the
resource, resize it, and then restart it. If the attempt to resize fails, perform a rollback. For more
information, see AWS only – Rollback on failed Rightsizing attempts.
• Update the Rightsizing reports with new recommendations and with approved, successful,
pending, rejected, and failed changes.
For pending, rejected, and failed change requests, you can reschedule the resources into
another job.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2048


<!-- page 2049 -->
Note: Rightsizing operation on a stopped AWS Relational Database Service
(RDS) database isn’t supported from the AWS provider. If you try to perform
Rightsizing on stopped databases, the resize operation fails with the error
InvalidDBInstanceState - You can't modify a stopped DB
instance. Start the DB instance, and then modify it..

How Cloud Cost Management generates Rightsizing recommendations
Cloud Cost Management uses a process that is optimized for each provider.
• Rightsizing analysis for AWS
• Rightsizing analysis for Microsoft Azure
• Rightsizing analysis for Google Cloud

Recommendations
The Cloud Cost Management application can generate recommendations for Virtual Machines
(AWS, Azure, GCP), SQL Databases (Azure, GCP), and RDS Databases (AWS). CPU, memory,
and network usage metrics are used to generate database rightsizing recommendations for the
database resources.
The Cloud Cost Management application generates recommendations for storage volumes for
AWS and Azure providers:
• Cloud category - AWS Elastic Block Store for Storage Volumes: Service category is storage.
• Cloud category - Azure Disk for Storage Volumes: Service category is storage.

Confidence levels in recommendations
Each recommendation that the system makes to rightsize a resource has an associated
confidence level. You consider the confidence level while deciding whether to rightsize a
resource. Confidence levels reflect the following factors:
• High confidence requires the following conditions:
◦ The system has 10 or more days of usage data for the resource.
◦ The current and recommended family/generation are identical.
• Medium confidence requires the following conditions:
◦ The system has less than 10 days of usage data for the resource.
◦ The current and recommended family/generation are identical.
• Low confidence: The current and recommended family/generation are different.
Rightsizing analysis for AWS
Cloud Cost Management uses a process that is optimized for each provider. For AWS, Cloud
Cost Management compares the calculated potential costs to actual billed costs and then
generates recommendations.

How Rightsizing resources analysis works for AWS
To generate accurate Rightsizing resources recommendations, Cloud Cost Management follows
this procedure every time billing data is updated:
• Obtain costs from the updated billing data tables.
• Collect the CPU and memory usage data for each resource for the preceding 14 days.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2049


<!-- page 2050 -->
Important:
◦ To enable Rightsizing, you must define memory metrics to obtain memory usage data.
For more information, see Define a metric threshold.
◦ Recommendations are generated only for CPU usage data.
• Obtain rates for resource types and sizes from the price sheet data tables.
• If available, obtain percentage discount rates from the discount tables and apply the
appropriate discounts to the rates on the price sheet.
• Compare the calculated potential costs to the actual billed costs and then generate
recommendations.
◦ If the average top 20% of CPU usage is less than 1%, then the resource is recommended for
Unused resources processes.
◦ If the average top 20% of CPU usage is greater than 1% but less than 40%, then the resource
is recommended for Rightsizing processes. The recommended memory size is calculated
so that the peak usage during the analysis period would be no more than 80% of the
recommended size. For example, a resource currently has 16 GB and the available sizes are
4 GB, 8 GB, and 16 GB. If the resource used a peak of 3.99 GB over the analysis period, then
the recommendation would be 8 GB.

Important: If you have installed the Cloud Cost Management Infra Stack application,
for AWS Rightsizing recommendations to work accurately, you must use the
GetCostAndUsageWithResources API to retrieve the cost and usage metrics with
resources for your account from your provider (through AWS Portal). For more information,
see GetCostAndUsageWithResources API Reference topic in the AWS Billing and Cost
Management Documentation.

Resources that aren't considered
Resources with the following AWS attributes aren't considered for Rightsizing recommendations:
• Members of an Auto Scaling group (ASG)
• Burstable
• Not in a VPC
• Not backed by an EBS root volume
• Don't have enhanced network support
• Virtualization type isn't HVM
• Spot instance
AWS only – Rollback on failed Rightsizing attempts
AWS only: If a Rightsizing action fails, the system immediately performs a rollback to return the
resource to its original size, restarts the resource if needed, updates the change request with full
details, and updates Rightsizing report data.

Note:
This description of rollback operations applies only to AWS environments. Cloud Cost
Management performs rollback operations for AWS environments.
Cloud Cost Management doesn’t perform rollback for Microsoft Azure environments.
Instead, the Azure Update service performs rollback.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2050


<!-- page 2051 -->
Rollback operations (AWS only)
In a successful Rightsizing job, the system resizes each resource that has an approved change
request. If a resource is in the ON state, the process stops the resource, resizes (modifies) it, and
then restarts it. If a resource is in the OFF state, the process resizes the resource but doesn’t
start it.
A resource might fail to restart, for example, when the new size would exceed the quota limit for a
resource type or for a constrained availability zone.
A Rightsizing job proceeds in batches of resources, grouped by provider/service account/region.
If any modified resource in a batch fails to restart, then each resource in the batch is rolled back
to its original size and then restarted. The system then updates the change requests for the
resources and sets the Rightsizing recommendation status on Rightsizing reports to Failed.
Resources in a batch that were in the OFF state aren’t rolled back or marked as failed.
Rightsizing analysis for Microsoft Azure
Cloud Cost Management uses an optimized Rightsizing process for each provider.

How Rightsizing analysis works for Microsoft Azure
The Azure Advisor service generates the recommendations that appear in the Rightsizing
reports. Cloud Cost Management displays the recommendations that the Azure Advisor service
generates. Cloud Cost Management updates the reports whenever billing data is updated.
For details on how the values are generated, see the Azure Advisor documentation at Microsoft
Learn .
Rightsizing analysis for Google Cloud
Cloud Cost Management uses an optimized Rightsizing process for each provider.

How Rightsizing analysis works for Google Cloud
The Google Cloud compute engine generates the recommendations that appear in the
Rightsizing reports. Cloud Cost Management displays the recommendations that the Google
Cloud compute engine generates. Cloud Cost Management updates the reports whenever billing
data is updated.
For details on how the values are generated, see Google Cloud documentation

.

Note: The Google Cloud console may show the same resources for both Unused
resources and Rightsizing recommendations. If the same resources are displayed, Cloud
Cost Management shows the information in Unused resources and excludes it from the
Rightsizing recommendations with the reason, Recommendation already present
in unused.

Roles required for Google Insights modules
To get the recommendations from the Google Cloud console and perform start, stop, resize, and
delete operations, you need the following roles.
• compute.autoscalers.get compute.autoscalers.list compute.disks.delete
• compute.disks.get compute.disks.getIamPolicy compute.disks.list compute.disks.resize
• compute.disks.update compute.instances.delete compute.instances.getIamPolicy
• compute.instances.setDiskAutoDelete compute.instances.start compute.instances.stop
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2051


<!-- page 2052 -->
• compute.instances.update recommender.computeAddressIdleResourceInsights.get
• recommender.computeAddressIdleResourceInsights.list
• recommender.computeAddressIdleResourceRecommendations.get
• recommender.computeAddressIdleResourceRecommendations.list
• recommender.computeDiskIdleResourceInsights.get
• recommender.computeDiskIdleResourceInsights.list
• recommender.computeDiskIdleResourceRecommendations.get
• recommender.computeDiskIdleResourceRecommendations.list
• recommender.computeImageIdleResourceInsights.get
• recommender.computeImageIdleResourceInsights.list
• recommender.computeImageIdleResourceRecommendations.get
• recommender.computeImageIdleResourceRecommendations.list
• recommender.computeInstanceGroupManagerMachineTypeRecommendations.get
• recommender.computeInstanceGroupManagerMachineTypeRecommendations.list
• recommender.computeInstanceIdleResourceRecommendations.get
• recommender.computeInstanceIdleResourceRecommendations.list
• recommender.computeInstanceMachineTypeRecommendations.get
• recommender.computeInstanceMachineTypeRecommendations.list
• recommender.locations.get recommender.locations.list
• resourcemanager.projects.get resourcemanager.projects.list

Unused resources
The Unused resources feature analyzes usage data to identify resources that are wasting
money because they aren’t used. Schedule Unused resources jobs to power off or terminate the
resources that you specify.

Recommendations
For AWS and GCP, database recommendations are fetched from the provider. For Azure, Cloud
Cost Management generates recommendations for idle databases.
Storage volume recommendations are fetched for AWS, Azure, and GCP from the providers:
• AWS (AWS Elastic Block Store for Storage Volumes)
• Azure (Azure Disk for Storage Volumes)
• GCP (Persistent Disk for Storage Volumes)
Cloud Cost Management generates aged snapshot recommendations for the following
providers:
• AWS (Amazon EBS Snapshot)
• Azure (Azure Snapshot for Storage Snapshots)
• GCP (GCP Snapshot for Storage Snapshots)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2052


<!-- page 2053 -->
How the Unused resources feature works

1. On the Unused resources recommendations page, select the resources to terminate or power
off based on your analysis of the recommendations. For more information, see Manage unused
resources.
2. Add the resources to an Unused resources job, either a new job or an already-defined job.
3. Specify the date and time for the job to run.
4. Specify the action to take on the selected resources:
◦ Power off the resource.
◦ Terminate the resource.
◦ Terminate the resource and delete storage. Only root or primary storage is deleted.
5. Specify the type of approval required for the specified action. Unused resources operations
are directly integrated with the ServiceNow Change Management feature.
◦ Auto-approval: Generates a Standard Change request and the change request is autoapproved.
◦ Manual approval: Generates a Normal Change request and the appropriate user approves
the change request.
6. Specify the Change template to use when generating the change requests.
7. Save the job.
The system immediately generates the change requests. Later, at the scheduled time, the system
runs the job to power off or terminate all resources for which the changes are approved. The
instance updates Unused resources reports with new recommendations and with approved,
successful, pending, rejected, and failed changes. For resources that failed power off or
termination, you can reschedule the resources into another job.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2053


<!-- page 2054 -->
How Cloud Cost Management generates Unused resources recommendations
Cloud Cost Management uses an optimized process for each provider.
• Unused resources analysis for AWS
• Unused resources analysis for Microsoft Azure
• Unused resources analysis for Google Cloud
Related topics
Schedule unused resources to be powered off or terminated
Change Management
Exclude a resource from all Cloud Cost Management reports
Unused resources analysis for AWS
Cloud Cost Management uses an optimized Unused resources process for each provider. For
AWS, Cloud Cost Management compares the calculated potential costs to actual billed costs
and then generates recommendations.

How Unused resources analysis works for AWS
To generate accurate Unused resources recommendations, Cloud Cost Management follows this
procedure every time billing data is updated:
• Obtain costs from the updated billing data tables.
• Collect the CPU and memory usage data for each resource for the preceding 14 days.
• Obtain rates for resource types and sizes from the price sheet data tables.
• If available, obtain percentage discount rates from the discount tables and apply the
appropriate discounts to the rates on the price sheet.
• Compare the calculated potential costs to the actual billed costs and then generate
recommendations.
◦ If the average top 20% of CPU usage is less than 1%, then the resource is recommended for
Unused resources processes.
◦ If the average top 20% of CPU usage is greater than 1% but less than 40%, then the resource
is recommended for Rightsizing processes. The recommended memory size is calculated
so that the peak usage during the analysis period would be no more than 80% of the
recommended size. For example, a resource currently has 16 GB and the available sizes are
4 GB, 8 GB, and 16 GB. If the resource used a peak of 3.99 GB over the analysis period, then
the recommendation would be 8 GB.

Resources that aren't considered
Resources with the following AWS attributes aren't considered for Unused resources
recommendations:
• Members of an Auto Scaling group (ASG)
• Burstable
• Not in a VPC
• Not backed by an EBS root volume
• Don't have enhanced network support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2054


<!-- page 2055 -->
• Virtualization type isn't HVM
• Spot instance
Unused resources analysis for Microsoft Azure
Cloud Cost Management uses an optimized Unused resources process for each provider.

How Unused resources analysis works for Microsoft Azure
The Azure Advisor service generates the recommendations that appear in the Unused resources
reports. Cloud Cost Management displays the recommendations that the Azure Advisor service
generates. Cloud Cost Management updates the reports whenever billing data is updated.
For details on how the values are generated, see the Azure Advisor documentation at Microsoft
Learn .
Unused resources analysis for Google Cloud
Cloud Cost Management uses an optimized Unused resources process for each provider.

How Unused resources analysis works for Google Cloud
The Google Cloud compute engine generates the recommendations that appear in the Unused
resources reports. Cloud Cost Management displays the recommendations that the Google
Cloud compute engine generates. Cloud Cost Management updates the reports whenever billing
data is updated.

Note: The Google Cloud console may show the same resources for both Unused
resources and Rightsizing recommendations. If the same resources are displayed, Cloud
Cost Management shows the information in Unused resources and excludes it from the
Rightsizing recommendations with the reason, Recommendation already present
in unused.

Roles required for Google Insights modules
To get the recommendations from the Google Cloud console and perform start, stop, resize, and
delete operations, you need the following roles.
• compute.autoscalers.get compute.autoscalers.list compute.disks.delete
• compute.disks.get compute.disks.getIamPolicy compute.disks.list compute.disks.resize
• compute.disks.update compute.instances.delete compute.instances.getIamPolicy
• compute.instances.setDiskAutoDelete compute.instances.start compute.instances.stop
• compute.instances.update recommender.computeAddressIdleResourceInsights.get
• recommender.computeAddressIdleResourceInsights.list
• recommender.computeAddressIdleResourceRecommendations.get
• recommender.computeAddressIdleResourceRecommendations.list
• recommender.computeDiskIdleResourceInsights.get
• recommender.computeDiskIdleResourceInsights.list
• recommender.computeDiskIdleResourceRecommendations.get
• recommender.computeDiskIdleResourceRecommendations.list
• recommender.computeImageIdleResourceInsights.get
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2055


<!-- page 2056 -->
• recommender.computeImageIdleResourceInsights.list
• recommender.computeImageIdleResourceRecommendations.get
• recommender.computeImageIdleResourceRecommendations.list
• recommender.computeInstanceGroupManagerMachineTypeRecommendations.get
• recommender.computeInstanceGroupManagerMachineTypeRecommendations.list
• recommender.computeInstanceIdleResourceRecommendations.get
• recommender.computeInstanceIdleResourceRecommendations.list
• recommender.computeInstanceMachineTypeRecommendations.get
• recommender.computeInstanceMachineTypeRecommendations.list
• recommender.locations.get recommender.locations.list
• resourcemanager.projects.get resourcemanager.projects.list

Business hours
A Business hours job applies policies to identify resources that are running when they should be
powered off, reports them, and can start and stop them on a schedule that you specify. Running
only during specified business hours can significantly reduce your cloud spend.
The insights_admin role can create policies for AWS and GCP databases.

Note: Azure only supports compute, not database.
How the Business hours feature works
Each successful execution of a Billing Download job triggers the Budget Forecast, Business
Hours, Reservation Plans, Rightsizing, and Unused resources jobs to analyze the spend and
usage data and to update the actionable recommendations in the reports. Business Hours jobs
follow this process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2056


<!-- page 2057 -->
How the Business Hours feature works

1. For each Business hours policy, examine the CMDB to identify resources that match the policy
criteria.
2. For each resource that matches a policy, update Business hours reports that show spend for
business hours and non-business hours usage for the last 30 days.
®

3. Business hours operations are directly integrated with the ServiceNow Change Management
feature. For Manual Approval or Auto-approval policy types, generate change requests to
enforce the on/off schedule that is defined in the policy. Either of the following, depending on
policy settings:
◦ Generate a change request for each resource that matches a policy.
◦ Generate a single change request that applies to all CIs that match the policy.
4. When a change request is approved, schedule the on/off actions for the associated resources
as specified in the policy.
5. Repeat the process whenever billing data is updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2057


<!-- page 2058 -->
Important:
AWS only:
• AWS Auto Scaling group (ASG) operations act to maintain minimum capacity for ASGmember resources. To avoid conflicts with ASG operations, the Cloud Cost Management
app excludes all instances that are part of an Auto Scaling group from Business Hours
operations.
• You can view ASG-member resources on the Excluded Resources tab for Business
Hours.
Google Cloud only: The instance can be defined as a Managed instance groups (MIGs).
MIGs let you operate applications on multiple identical VMs. You can make your workloads
scalable and highly available by taking advantage of automated MIG services, including:
auto-scaling, auto-healing, regional (multiple zone) deployment, and automatic updating.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2058


<!-- page 2059 -->
Example: Business hours policy

The Finance department policy example has the following settings:
• The policy is active, which is applied every time billing and usage data is updated.
• The approval type is Manual approval (Normal Change), which means that, after a qualified
user approves the change request, the schedule for resources that match the policy is
adjusted.
• The Business hours (on/off) schedule is ON from 8:00 AM to 5:00 PM.
• The power-on and power-off flows are specified.
• Only resources that meet the following resource criteria match the policy:
◦ The cloud provider is AWS and the service account is Billing 15970.
◦ The resource has a tag with the name Department with the value Finance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2059


<!-- page 2060 -->
After the policy is applied, for each resource that matches the policy and where the change
request was approved, the system starts the resource at 8:00AM and stops it at 5:00PM. The
actual start and stop times vary slightly due to changes in system demand and the time that it
takes for the resource to start and stop.

Business hours approval types
For each resource that matches the policy criteria, the actions that the policy takes depend on
the approval type:
Auto-approval (Standard Change) approval type
• Generate a recommendation to apply the specified business hours and add the
resource to the Business hours reports.
• Generate and then auto-approve a change request for the change group.
• Add the resource to the Business hours reports.
• Apply the Business hours schedule to the resource.
Manual approval (Normal Change) approval type
• Generate a recommendation to apply the specified business hours schedule and
add the resource to the Business hours reports.
• Generate a change request for members of the change group.
• Add the resource to the Business hours reports.
• Any member of the group with the sn_change_write role can approve the change
request.
• When approved, apply the Business hours schedule to the resource.
Report-only approval type
• Generate a recommendation to apply the specified business hours.
• Add the resource to the Business hours reports.
Related topics
Define or update a Business hours policy
Change Management
Exclude a resource from all Cloud Cost Management reports
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2060


<!-- page 2061 -->
Unassigned resources
Unassigned resources policies help you to identify the resources that aren’t associated with
a change group and to assign them appropriately. When a resource is assigned to the correct
group, the resource can be appropriately governed even as it goes through stages such as
patching, upgrading, and reconfiguring.
The Cloud Cost Management application can generate compute and database
recommendations for AWS, Azure, and GCP. The latest data is fetched every day at midnight.

How Unassigned resources processes work
For cloud billing information to be accurate, it must include all resources in your managed
cloud infrastructure. An Unassigned resources policy analyzes all resources to identify
resources that aren’t assigned to a change group. The policy can then auto-assign
the appropriate change group to the resources. Unassigned resources jobs follow this

process:

Requirements and limitations
• The Discovery process triggers Unassigned Resources analysis and updates
recommendations in reports.
• For AWS, the Unassigned Resources feature supports AWS EC2 instances only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2061


<!-- page 2062 -->
• Terminated, retired, or canceled resources aren’t considered.
• Data appears on reports only when at least one policy is active.

Cloud budgets
To manage your cloud spend, you can define and monitor custom budget plans. The system
compares the plans with billing data to calculate and report on how well budgets are being met.
Understanding budget compliance by groups and service accounts can significantly improve
oversight and reduce cloud spend.

How budget analysis works
Each successful Billing download triggers a budget refresh automatically. Budget refresh is also
triggered manually when a new Budget policy is created.
Budget Forecast jobs use the cost forecast data from the providers and follow this process:
1. Apply each budget plan to billing data. For more information about plans, see are described in
Create or update a budget policy.
2. Update all Budget Forecast reports.
3. Repeat the process whenever billing data is updated or a user requests budget reanalysis.

Note: If there’s a large number of users, the users may not load correctly or may fail to
load to the Budget view. See the Knowledge article for more information KB0866547

.

Related topics
Manage cloud budgets

Cloud service categories in Cloud Cost Management
Provider services are grouped into service categories in Cloud Cost Management. This grouping
enables you to use filters to focus your analysis on particular types of service.
To perform targeted analysis, you can filter for particular services within a service category. For
example, Amazon ElastiCache or Azure Database for PostgreSQL are services in the Database
category.
Here are the supported cloud service categories in Cloud Cost Management:
• Cloud service categories in Cloud Cost Management for Microsoft Azure services
• Cloud service categories in Cloud Cost Management for Amazon AWS Cloud services
• Cloud service categories in Cloud Cost Management for Google Cloud services

Tags and tag categories
Tag categories in the Cloud Cost Management application enable grouping multiple tag names
under a single category, making it simpler to track costs against specific business entities. In
the provider portal, you can define cost tags to associate resource usage with specific business
entities. For example, the Application, Test, and QA tags represent cost centers.

Overview of tag categories
The Cloud Cost Management application enables you to enhance your cost management
capabilities and ensure that the cost reports accurately reflect the business entities. For
example, different users might create various tag names like "App", "AppService", and "appl"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2062


<!-- page 2063 -->
to represent applications. By creating a tag category named "Application", you can ensure
that costs associated with these different tag names are correctly assigned to the application
category. You can add multiple tag names to a category during or after its creation. For more
information, see Create and update a tag category.

Key points and considerations
• Tag categories help in organizing and consolidating cost data from different sources.
• Tag categories also enable more accurate cost reporting by grouping related tags together.
• Cost categories are updated with new cost tag values each time billing data is downloaded
through a Billing Download job.
• Recent updates to tag category definitions might not be immediately reflected in cost reports.
• To apply the latest tag category definitions to cost data without waiting for the next Billing
Download job, you can manually reapply the categories. To reapply tag categories, navigate
to Cloud Cost Management Workspace > Operations > Cost usage tags > Tag
categories > Reapply tag categories.
Related topics
Create and update a tag category
List of default tag categories

Configuring Cloud Cost Management
Plan and configure Cloud Cost Management to gain visibility into your total cloud consumption,
reduce costs, and optimize the operations of your cloud platforms.

Configuration overview
Here's an overview of the process for configuring Cloud Cost Management.
Configure Cloud Cost Management
Step

Action

Resource

Get the Cloud Cost
Install Cloud Cost
Management application from Management
the ServiceNow Store .
Install Cloud Cost
Management
Get the Cloud Cost
Management Infra Stack
application from the
ServiceNow Store .

Install Cloud Cost
Management Infra Stack

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2063


<!-- page 2064 -->
Configure Cloud Cost Management (continued)
Step

Install Cloud Cost
Management Infra Stack

Assign roles

Install MID servers

Configure MID Servers

Action

Resource

Important: The Cloud
Cost Management Infra
stack application is
available with Cloud
Cost Management
version 8.1 and later.
Installing the Cloud
Cost Management Infra
Stack application is
optional. However, if
you've activated this
application, you can't
deactivate it later.
Assign Cloud Cost
Cloud Cost Management roles
Management roles to user
groups and to individual users
based on user activities and
responsibilities.
Install the MID servers to
enable the movement of
data between the Discovery
application and your cloud
platform.
Configure the MID Servers
for enabling the Discovery
application to communicate
with your cloud provider
accounts.

Installing the MID Server

• Configuring access to CI
data on your AWS account
• Configuring access to CI
data on your Microsoft
Azure account
• Configuring access to CI
data on your Google Cloud
account

Discover the service accounts,
the credentials for accessing
the accounts, and the
MID Servers that scan the
resources using one of the
Discover your cloud resources mentioned approaches.

• Using the Cloud Discovery
application
• Using the Service Graph
Connectors

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2064


<!-- page 2065 -->
Configure Cloud Cost Management (continued)
Step

Schedule and manage jobs
to download billing data for
Cloud Cost Management

Action

Provide the Cloud Cost
Management application
access to the billing and
usage data of the used cloud
platforms.

Resource

• Set up access to AWS billing
and usage data
• Set up access to Microsoft
Azure billing and usage data
• Set up access to Google
Cloud billing and usage
data

Enable Cloud Cost
Management to download and
store price sheet data of the
used cloud platforms.
Schedule and manage jobs
to download price sheets for
Cloud Cost Management

• Schedule and manage the
Cloud Cost Management
jobs that download AWS
price sheets
• Schedule and manage the
Cloud Cost Management
jobs that download
Microsoft Azure price
sheets
• Schedule and manage the
Cloud Cost Management
jobs that download Google
Cloud price sheets

Configure the Cloud Cost
Management features

Use Cloud Cost Management

Configure the Cloud Cost
Management features to
rightsize, identify, assign,
manage, and analyze usage
data of your cloud resources.

• Reservation or Saving plans
• Rightsizing resources
• Unused resources
• Business hours
• Unassigned resources

Gain visibility into your
total cloud consumption,
reduce costs, and optimize
operations of your cloud
platforms.

Using Cloud Cost
Management

Install Cloud Cost Management
You can install the Cloud Cost Management application (sn_clin) if you have the admin role.The
®
application includes demo data and installs related ServiceNow Store applications and plugins
if they aren’t already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2065


<!-- page 2066 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Cloud Cost Management
application listing in the ServiceNow Store for
information on dependencies, licensing or subscription requirements, and release
compatibility.
• Discovery (com.snc.discovery) and Discovery and Service Mapping Patterns (sn_itom_pattern)
must be installed.
Role required: admin

About this task

The following items are installed with Cloud Cost Management:
• Plugins
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with Cloud Cost Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Cost Management application (sn_clin) using the filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you’re displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data comprises the sample records that describe application features for the common
use cases. Load the demo data when you first install the application on a development or test
instance.

Important:
◦ If you don't load the demo data during installation, it's unavailable to load later.
◦ If you install demo data, Cloud Cost Management features might not work properly.
6. Select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2066


<!-- page 2067 -->
Install Cloud Cost Management Infra Stack
You can install the Cloud Cost Management Infra Stack application (sn_cld_infra_stack) if you
®
have the admin role. The application includes related ServiceNow Store applications and
plugins if they aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Cloud Cost Management Infra Stack application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Cloud Cost Management Infra Stack:
• Plugins
• Store applications
The tables, scheduled jobs, and system properties aren't installed with the Cloud Cost
Management Infra Stack application. Instead, the components specific to Cloud Cost
Management Infra Stack are installed with the Cloud Cost Management application. For more
information, see Components installed with Cloud Cost Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Cost Management Infra Stack application (sn_cld_infra_stack) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
The list next to the Install button displays the versions that are available to you.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data comprises the sample records that describe application features for the common
use cases. Load the demo data when you first install the application on a development or test
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2067


<!-- page 2068 -->
Important:
◦ If you don't load the demo data during installation, it's unavailable to load later.
◦ If you install demo data, Cloud Cost Management features might not work properly.
6. Select Install

Upgrade Cloud Cost Management
You upgrade Cloud Cost Management on the System Applications page.

Before you begin

Role required: sys_admin

Procedure
1. Navigate to System Applications > All Available Applications > Installed.
2. In the search box, enter sn_clin.
3. Find the Cloud Cost Management app.
4. In the selection list, select Update for version 9.0.
You can also update to the 9.0 version from 8.1 onwards.
5. When the update is complete, clear the browser cache.
6. Clear the server cache: <instanceIP>/cache.do

Configure Cloud Cost Management for AWS
The Cloud Cost Management application is available on the ServiceNow Store.
For more information, see Configuring Cloud Cost Management.

General requirements and limitations
• Cloud Cost Management isn't supported on mobile devices.
• Values in reports might vary slightly from provider billing values due to currency conversion or
rounding.

Requirements and limitations for AWS
• You must have AWS administrator permissions to work in the AWS Management console.
• The Business hours, Unassigned resources, Unused resources, and Rightsizing
recommendations features support Amazon Elastic Compute Cloud (EC2) virtual machine
(VM), storage (volume and storage snapshots), and database resources.
Configuring access to CI data on your AWS account
To ensure secure and reliable communications, the Discovery process communicates with your
cloud provider accounts and cloud resources through one or more MID Servers. You can set up
the MID Servers on your network or in one of your cloud networks.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2068


<!-- page 2069 -->
Requirements

Important: This configuration process applies only if you use the Discovery application
to discover cloud resources. Skip this process if you use a different method for discovering
resources.
AWS: There must be an internal network connection between the MID Servers and the AWS
Cloud API endpoints: *.amazonaws.com.

Detailed instructions
See Setting up AWS service accounts

.

MID Server settings for Cloud Cost Management

Note: MID Server minimum memory size should be 4 GB.
Setting

Value

Supported Applications

Cloud Actions

Capabilities

The ALL setting includes all required
applications and capabilities. Alternatively,
you can specify the following settings:

Note: You can specify the following
settings for any number of MID
Servers. If you specify multiple MID
Servers, then Discovery, billing data
download operations, and actions
that are recommended by Cloud Cost
Management are assigned to one of the
MID Servers at random.
Option 1: To use this MID Server only for AWS,
specify both of the following values:
• Cloud Actions
• AWS
Option 2: To use this MID Server for all
providers, specify the following values:
• Cloud Actions
• AWS
• Azure

Using a proxy server
You can use a proxy server for the Cloud Cost Management MID Server. See Proxy server
configuration for your Cloud Cost Management MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2069


<!-- page 2070 -->
Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Proxy server configuration for your Cloud Cost Management MID Server
You can configure any MID Server to use a proxy server for Cloud Cost Management operations.
Proxy servers support all cloud-based activities such as running Discovery, Billing Download
jobs, and Price Sheet Download jobs.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Detailed instructions
Proxy server configuration for MID Servers used for Cloud Discovery and Cloud Provisioning and
Governance

Proxy server limitations
• Only Windows or Linux platforms are supported.
• The Google Cloud integration is not supported.
• The VMware integration is not supported.
• Remote PowerShell scripts cannot be executed.
• Custom APIs might not work.

Supported proxy server authentication for Cloud Cost Management
Proxy Server type

Authentication type

HTTP/HTTPS

No authentication

SOCKS5

No authentication

HTTP/HTTPS

Basic authentication

SOCKS5

Basic authentication

HTTP/HTTPS

NTLM

Supported Proxy server configurations
Supported configuration settings
Configuration

Operating system

Proxy server

Authentication mode

Configuration 1

Linux

None

Not Applicable

Configuration 2

Windows

Squid (HTTPS)

None

Configuration 3

Linux

Squid (HTTPS)

Local

Configuration 4

Windows

Squid (HTTPS)

Active Directory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2070


<!-- page 2071 -->
Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Add an AWS service account
Add an AWS service account to store the credential and access information.

Before you begin

You must perform these tasks:
• Set up download jobs for billing and price sheet data for the service account.
• Configure the MID Server for AWS IAM role

.

• Role required: sn_clin_core.insights_admin

About this task

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account can include
multiple service accounts — even service accounts from different providers. For each service
account, you specify which datacenters to include in the cloud account.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Service accounts.
2. Select New.
3. On the form, fill in the fields.
Cloud Service Account
Field

Description

Name

Unique and meaningful name for this service
account.

Account Id

12-digit user account number. Expand the list
under the AWS account name on the AWS
Management Console to view the number.

Important: Remove the hyphen
characters (-) from the number.
Discovery credentials

The credentials needed for ServiceNow
applications to access this account. You
can configure this field at a later stage, while
configuring access to AWS accounts.
◦ If you configured AWS credentials at
ServiceNow AI Platform, select the name of
the relevant AWS credential.
◦ To use other AWS accounts to access
this account, leave the field empty. For
example, you don't need to specify the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2071


<!-- page 2072 -->
Field

Description

AWS credentials for accounts assuming
IAM roles or member accounts using their
management account for access.
Datacenter URL

URL of the datacenter.
This field is required only for AWS
GovCloud (US) accounts. For example,
https://$service.us-govwest-1.amazonaws.com/.

Datacenter Type

Type of the datacenter where the account is
hosted.
Select AWS datacenter.

Datacenter discovery status

Status and timestamp of the last execution of
Discovery on the datacenter.
This value is generated automatically.

Is Billing Account

Option for enabling the account to access
billing data.

4. Select Save.

Result

The service account that you created gets listed on the Service accounts page.
Related topics
Schedule and manage the jobs that download AWS billing data
Schedule and manage the Cloud Cost Management jobs that download AWS price sheets
Create an AWS IAM user policy for Cloud Cost Management
If you manage users with IAM, you must create an IAM user profile that enables access to AWS
data.

Before you begin

You must know how to create an IAM user and set up a user policy. See the AWS documentation
on IAM
for details.
Use an auto-generated access key. You need the key information when you configure AWS
credentials in the instance.
Roles required:
On the AWS Management Console: AWS Management Console administrator.
Cloud Cost Management: insights_admin [sn_clin_core.insights_admin] or admin.

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2072


<!-- page 2073 -->
Procedure
1. Log in to the AWS Management Console and create a user in IAM.
2. Save the Access Key ID and Secret Access Key.
3. Attach permissions to the IAM user using either of the following methods:
◦ Grant administrator access to the user by attaching the Administrator Access policy.
◦ Create an IAM policy with a descriptive name and use the following JSON for billing, cloud
watch, forecast, and actions.
Billing
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"s3:GetObjectVersion",
"s3:GetObjectTorrent",
"s3:GetObject",
"s3:ListBucket",
"s3:GetObjectTagging",
"s3:ListMultipartUploadParts",
"s3:ListBucketMultipartUploads",
"s3:GetObjectVersion"
],
"Resource": [
"arn:aws:s3:::<S3BucketName>/*",
"arn:aws:s3:*:<AWS Master Account
ID>:job/*",
"arn:aws:s3:::<S3BucketName>"
]
},
{
"Sid": "VisualEditor1",
"Effect": "Allow",
"Action": [
"s3:GetAccountPublicAccessBlock",
"s3:ListAllMyBuckets",
"s3:ListJobs"
],
"Resource": "*"
}
]
}
Cloud watch
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"cloudwatch:GetMetricData",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2073


<!-- page 2074 -->
"cloudwatch:ListMetrics"
],
"Resource": "*"
}
]
}
Describe Report Definitions
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action":
"cur:DescribeReportDefinitions",
"Resource": "<BillingReportName>"
}
]
}
Actions
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"ec2:DescribeInstances",
"ec2:StartInstances",
"ec2:ModifyInstanceAttribute",
"ec2:StopInstances",
"ec2:DescribeInstanceStatus"
],
"Resource": "*"
}
]
}
Use this policy to grant access to AWS Cost Explorer, Forecast, and Reservation
Purchase Recommendation APIs for the IAM user that you configure to access billing
data on the Service account
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"ce:GetCostAndUsage",
"ce:GetCostForecast",
"ce:GetReservationPurchaseRecommendation"
],
"Resource": "*"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2074


<!-- page 2075 -->
}
]
}
Use this policy to get AWS Auto-scale instances (Auto-scale instances aren’t included
in Business Hours recommendations)
{
"Version": "2012-10-17",
"Statement": [{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"autoscaling:DescribeAutoScalingInstances",
"autoscaling:DescribeAutoScalingGroups"
],
"Resource": "*"
}]
}
Add an AWS GovCloud service account
A cloud_admin can add an AWS GovCloud service account. Be sure to set up download jobs for
billing and price sheet data for the service account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Procedure
Follow the instructions at Create a service account for AWS GovCloud

.

Related topics
Schedule and manage the jobs that download AWS billing data
Schedule and manage the Cloud Cost Management jobs that download AWS price sheets
Create AWS Gov accounts mapping
Create an AWS GovCloud account mapping with an associated standard AWS account for billing
and support.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
AWS Gov account mappings.
2. Select New.
3. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2075


<!-- page 2076 -->
AWS Gov Accounts Mapping
Field

Description

Gov account

The AWS Gov account that you want to map
to the standard AWS account.

Linked account

Standard AWS account that you want to link
to the AWS Gov account.

4. Select Save.

Result

The mapping you created gets displayed on the AWS Gov account mapping page with details
such as Sys ID, tags.
Set up access to AWS billing and usage data
Set up access to AWS billing and usage data by following the steps.
1. Create AWS credentials
2. Create a record of AWS credentials in Cloud Cost Management
3. Enable cost allocation in AWS for Kubernetes cluster
4. Schedule and manage the jobs that download AWS billing data
5. Add an AWS CI class type to ensure accurate billing data
Related topics
Cancel an AWS Billing download job
Create AWS credentials
Create credentials in the AWS Management Console to specify the credentials of the user when
you configure the MID Servers that communicate with your AWS account.

Before you begin

Role required: AWS Management Console administrator
You should be familiar with AWS policies. If you use IAM, you must know how to create an IAM
user and set up a user policy. For more information about IAM, see AWS documentation .

Procedure
1. On the AWS Management Console, enter IAM in the AWS services search box to open the
Identity and Access Managements (IAM) service.
2. On the IAM Resources portal, select Users.
3. Select Add user.
4. On the Details page, configure the user settings as shown and then select Next.

Field

Value

User name

Name for the programmatic user, for example,
servicenowcloud.

Access type

Programmatic access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2076


<!-- page 2077 -->
5. On the Permissions page, configure the following settings and then select Next.

Field

Value

Set permissions for <username>

Attach existing policies directly.

Attach one or more policies

The appropriate policy.

Note: The AdministratorAccess policy
has the most powerful permission level,
including permission to provision cloud
resources.
You might instead prefer to create a
policy or combine multiple policies to
grant the appropriate permission level.
For more information, see Create an
AWS IAM user policy for Cloud Cost
Management.

6. On the Review page, verify your selections and then select Create user.
7. On the Complete page, select Download .csv to save a CSV backup file that contains the
username, Access key ID, and the Secret access key value.
You can create the file as a backup in case that you lose those values. Verify that the file was
created and then store the file securely.

What to do next

Create a record of the AWS credentials in Cloud Cost Management.
Create a record of AWS credentials in Cloud Cost Management
Create a record of the AWS credentials in Cloud Cost Management.

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin] or admin

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Credentials.
2. On the Cloud API credentials page, select AWS credentials.
3. Select New.
4. On the form, fill in the fields.
AWS Credentials
Field

Description

Name

Unique and descriptive name for the AWS
credentials.

Active

Option to use the credential.

Access Key ID

The Access key ID that you generated on the
AWS Management Console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2077


<!-- page 2078 -->
Field

Description

Secret Access Key

The Secret access key that you generated on
the AWS Management Console.

5. Select Save.
Enable cost allocation in AWS for Kubernetes cluster
Enable cost allocation for a Kubernetes cluster in AWS Management Console before you run a
AWS Billing download job to view the Kubernetes spend.

Before you begin

Role required: AWS Management Console administrator
• You should be familiar with AWS policies.
• Install Discovery and Service Mapping Patterns application (sn_itom_pattern) 1.10.2 or higher.
For more information, see Install Discovery and Service Mapping Patterns .
• Install CMDB CI Class Models (sn_cmdb_ci_class) version 1.53.1 or higher. For more
information, see CMDB CI Class Models .
• To set up Kubernetes discovery, see Kubernetes discovery using patterns

.

Procedure
1. Log in to the AWS Management Console

.

2. Search for and select Cost Allocation Tags.
3. Select the User-defined cost allocation tags tab.
4. Activate the following Kubernetes tags to appear in the billing data:
◦ Static Tag key
▪ aws:eks:cluster-name
▪ user:eks:cluster-name
▪ eks:cluster-name
◦ Dynamic Tag key
▪ kubernetes.io/cluster/<Cluster-Name>: shared/owned
▪ alpha.eksctl.io/cluster-name: <Cluster-Name>

Result

The cost allocation for the selected Kubernetes cluster is enabled and you can view the
Kubernetes spend.
Schedule and manage the jobs that download AWS billing data
Billing Download jobs download, organize, and store billing data for your payer account on
the schedule that you specify. The system analyzes the data to generate reports and to make
recommendations for changes in your cloud operations that can lead to cost savings.

Before you begin

Role required: Cloud Integrations Admin [sn_cld_intg_core.cloud_integrations_admin]
Ensure that your system has 8 GB Clotho memory and 4 GB mid memory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2078


<!-- page 2079 -->
Enable cost allocation for each Kubernetes cluster before you run an AWS Billing download
job to view the Kubernetes spend. For more information, see Enable cost allocation in AWS for
Kubernetes cluster.

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

During billing download, all the resources are pulled into the system. AWS Redshift resources are
placed in the [cmdb_ci_cloud_database] table. After the 4.0 upgrade, make sure that the billing
download is executed with reimport true.

Note: From Cloud Cost Management version 8.1 onwards, the default time for billing
download jobs has changed from 12:00 to 01:00 (UTC). Also, schedule or run Cloud
Cost Management jobs only during off-business hours and when there's no other heavy
operations or jobs running on the ServiceNow instance.
If you have installed the Cloud Cost Management Infra Stack application, then toward
the end of a job, significant database update, and insert operations are performed based
on your Cloud CIs and spend data volume. Thus, any other job that impacts database
performance shouldn't be run during this time alongside Cloud Cost Management jobs.
• Billing Download jobs can't be in the Global scope.
• If the Cloud Provisioning and Governance application is installed on your instance: Both Cloud
Provisioning and Governance and Cloud Cost Management download billing data. The two
download jobs are separate processes and they don't interfere with each other.
• You can create only one Billing Download job for each account (enrollment).
• Configure AWS Billing download for the main account otherwise the spend doesn't generate.
• To ensure accurate reporting and recommendations for some providers, make sure that the
Discovery application runs before the scheduled execution.
• Each successful execution of a Billing Download job triggers the Budget Forecast, Business
hours, Reservation/saving plans, Rightsizing, and Unused resources jobs to analyze spend
and usage data and to update the actionable recommendations in reports.
• Each successful execution of a Billing Download job updates tagged costs. Recent updates
that you make to tag category definitions (for example, adding a tag name to a category) might
not be reflected in cost reports. You should map tag values to tag categories after the first run
because populating tag values needs at least one successful run. You can apply the latest tag
category definitions to cost data without running a Billing Download job, by selecting Cloud
Cost Management Workspace > Operations > Cost usage tags > Tag categories and
then selecting Re-Apply Categories.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.
• Cost categories are updated with new cost tag values each time billing data is downloaded.
(You define cost tags in the provider portal to associate usage data with a particular business
entity. For example, the Cost Center category might include the tags development,
testing, and QA. The User category might include the names of your users.)
• Billing data is downloaded in reverse chronological order by month. For example, if the range is
from March to June, data for June is downloaded first.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2079


<!-- page 2080 -->
• To ensure meaningful results for the first billing data download, the app downloads data for at
least 30 days. For example, if today is June 10 and you specify June for download, the system
downloads data for both May and June to ensure at least 30 days of data for analysis.
• You can download data only for the most recent twelve months.
For AWS.
• You can create only one Billing Download job for each service account.
• Only costs of the unblended type are supported.
• The Billing Download job updates the billing node data table [sn_cld_intg_aws_cost_usage]
with the CIs in the CMDB that correspond to each resource ID.
• The CI placement process associates downloaded cost and usage data with the appropriate
CIs in the CMDB. See Add an AWS CI class type to ensure accurate billing data for the details.

Procedure
1. Review the settings to verify that the settings on the report meet the requirements for Cloud
Cost Management when you have an existing AWS Cost and Usage Report (CUR).
2. On the AWS Management Console, define an AWS CUR as follows:

Note: You must configure Legacy CUR because the Cloud Cost Management
application supports the legacy version only.
a. Follow the instructions in the Creating Cost and Usage Reports
settings:

topic and use the following

▪ Select the Include resource IDs check box.
▪ Select the Automatically refresh your Cost and Usage Report when check box.
▪ Report path prefix: optional
▪ Set Time granularity to either Daily or Hourly as needed. The Hourly setting generates a
larger, more granular data set.
▪ Set Report versioning to Create new report version.
▪ Set Compression type to GZIP or ZIP. Cloud Cost Management doesn’t support Parquet.
b. Track the following values because you enter them into a Cloud Cost Management form in a
moment.
▪ Report name
▪ Report prefix
▪ Name of the S3 bucket that is the data storage area for the daily detailed billing records on
the AWS account.
3. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
4. Select the AWS tab.
5. Select New.
6. On the form, fill in the fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2080


<!-- page 2081 -->
AWS Billing Download Job
Field

Description

Name

Meaningful name for the scheduled
execution of the Billing Download job.

Last successful execution

The timestamp of the most recent successful
execution.

Notify users/groups

The users or groups to be notified by email
about the status of the job execution (for
example, download failure). The system
doesn’t send a notification for success.
Users or groups with the
Cloud Integrations Admin
[sn_cld_intg_core.cloud_integrations_admin]
role are well suited to handle these issues.
To update the email template, navigate to
System Notification > Email > Notifications
and open the Notify on billing job execution
error template. For information on configuring
the email, see Create an email template .

Active

Option for activating the job. Only active jobs
are executed.

Run

Frequency with which to execute the Billing
Download job.

Note:
◦ For AWS, Billing Download jobs
collect data once per day, even if
AWS collects hourly usage data.
◦ Depending on the value that you
select, additional fields appear.
This field is automatically set to Daily.
Time

Time of day to execute the job.

Latest execution status

The status of the most recently executed job.

Latest execution details

Execution details of the most recently
executed job.

AWS Settings
Service account

The AWS service account.

Bucket

Amazon S3 bucket that is the data storage
area for the detailed hourly billing records on
the AWS account.

Report name

The report-name value that appears in your
AWS Cost and Usage Report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2081


<!-- page 2082 -->
Field

Description

Report prefix

The report-prefix value that appears in
your AWS Cost and Usage Report.

7. Select Save.
8. On the Billing download jobs page, select the created job.
9. Select Test connection.
The Test Connection workflow uses the settings that you configured to attempt to access the
provider account. The system displays a progress pop-up and a success/error message that
suggests actions to fix the configured settings.
10. Select Execute now to execute the job after the connection succeeds.
11. In the Download billing data dialog box, fill in the fields.

Field

Description

Start month

Starting month for downloading the billing
data.

Note: Data is downloaded for the
specified months. If fewer than 30
days of data for analysis is received,
data for the preceding month is also
downloaded.
End month

Ending month for downloading the billing
data.

Re-import data

Option for overwriting data from an earlier
download attempt.

12. Select Download.
An AWS billing download job goes through the following states during the job execution:
a. Ready: The job is in the queue. For example, when a job is created to download billing data
for a few months, the jobs for all months except the latest month are in Ready state.
b. Requested: The job is fetched and processed immediately. For example, the job that's
created to download billing data for a month is in the Requested state. Also, when a job is
created to download billing data for more than a month, the latest month job is also in the
Requested state.

Note: If you have installed the Cloud Cost Management Infra Stack application, it
takes some time for the job to change from Ready to Requested state for AWS billing
download job with Assume role authentication. This is because it takes time for the files
to be downloaded to Cloud Cost Management MID Server. For details, see Processing
AWS billing jobs with Assume role authentication.
c. Reserved: Job is picked by the Kubernetes cluster for processing. The Kubernetes cluster
also sends the Job Id to Cloud Cost Management Glide to show which Kubernetes job is
processing the billing job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2082


<!-- page 2083 -->
Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
d. In Progress: Billing data is being processed.
e. Sink Begin: Kubernetes cluster sends some part of the processed billing data to the tables
such as Spend Report Daily Aggregate Cost and Spend Report Monthly Aggregate Cost
on Cloud Cost Management Glide. The records in these tables are in the Generating state.
The job remains in the Sink Begin state until the entire billing data is sent to Cloud Cost
Management Glide.
In the Sink Begin state, the CI placement also starts and the Status of the CI Placement
Stage changes from Ready to In Progress.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
f. Sink Complete: All the processed billing data is sent to Cloud Cost Management Glide from
the Kubernetes cluster.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
g. Finished: Status after Sink Complete when all the billing files are sent to the Glide database.

Note: The following changes happen when the job is marked Finished:
▪ The state of the records in the Spend Report Daily Aggregate Cost and Spend Report
Monthly Aggregate Cost tables change from Generating to Active. Also, existing
records are marked inactive.
▪ The billing account for which the billing file was downloaded is automatically set as a
Master account in the Service Accounts table.
h. Success: Job is completed successfully.

Result

The following events happen when the job executes:
• While downloading the data, Cloud Cost Management updates the billing node data table
[sn_cld_intg_<provider>_cost_usage] with the CIs in the CMDB that correspond to each
resource ID. If a CI doesn’t exist, the system generates a placeholder CI. On subsequent
discovery, the system reconciles the placeholder CI.
• Cloud Cost Management generates a log entry for each stage of the execution on the Billing
Download Executions page.
Add an AWS CI class type to ensure accurate billing data
Specify the details of a new CI or CI type to enable the CI placement process to assign cost and
usage data correctly. The process is a part of Billing Download job execution. The CI placement
process associates downloaded cost and usage data with the appropriate CIs.

Before you begin

Role required: Cloud Insights Admin [sn_clin_core.insights_admin]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2083


<!-- page 2084 -->
About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Billing Download jobs store downloaded billing data in the billing node table. The Class Type
table holds CI type definitions for the cost usage table. Cloud Cost Management executes the
CI placement process to associate the billing and usage data with CIs in the CMDB. The CI
placement process queries the billing node table using the CI type definitions that reside in
the CI placement type table. For a new CI (or a CI type from a new provider), you specify the
parameters that uniquely define the CI, a CI type definition, and a class type table to store the CI
type definition.

Important: If the Cloud Cost Management Infra Stack application is installed, you can't
add a new AWS CI class type. However, you can use the existing CI class types.
The CI placement type table for AWS [sn_cld_intg_aws_ci_placement_type] inherits from the
Core CI placement type table (sn_cld_intg_core_ci_placement_type).

Important: If the Discovery patterns application is not installed, then CIs in the
following class types are not placed: cmdb_ci_cloud_gateway, cmdb_ci_dynamodb_table,
cmdb_ci_cloud_object_storage, and cmdb_ci_cloud_function.

Procedure
1. Go to the CI placement type table and select New.
AWS class types in the Core CI placement type table
[sn_cld_intg_core_ci_placement_type]

2. Fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2084


<!-- page 2085 -->
CI Placement Type Information form
Field

Description

Class type

CMDB class type table that this type of CI is
stored in. New CIs of this type are added to
the table.

Name

Name of the CI type.

Query table

Billing node table that the CI placement
process queries to find instances of the CI
type.
The Query table is sn_cld_aws_cost_usage
and cannot be changed.

Query params

Parameter values in the billing node table
that uniquely define the CI type.

3. After you add a class type, you must reimport billing and usage data to ensure that CIs are
correctly placed into the new type.
See Schedule and manage the jobs that download AWS billing data.

Note: The supported CIs are placed after the Cumulus Unsupported CI Placement
scheduled job runs daily. For more information, see Supported CI class types for Amazon
AWS Cloud services.
Cancel an AWS Billing download job
A Billing download job obtains billing and usage data from each payer account for AWS. The
Rightsizing, Unused resources, and Business hours processes use billing and usage data when
generating recommendations. You can cancel any Billing download job individually.

Before you begin

Role required: Cloud Integrations Admin [sn_cld_intg_core.cloud_integrations_admin]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2085


<!-- page 2086 -->
About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
2. Select the AWS tab.
3. Select either a currently running or scheduled job that you want to cancel.
4. On the AWS Billing Download page, select Cancel execution.
Processing AWS billing jobs with Assume role authentication
Use the Cloud Cost Management Infra Stack application to process and download the AWS
billing files with Assume role authentication at a better speed.
When you have installed the Cloud Cost Management Infra Stack application, the processing of
all billing download jobs happens completely on the Kubernetes cluster. However, for AWS billing
jobs with Assume role authentication the processing of billing data is partially done via Cloud
Cost Management MID Server.

AWS billing download job (with Assume role) workflow
1. The Cloud Cost Management MID Server connects to AWS and downloads the billing data
files.
2. The billing data files are sent to Cloud Cost Management Glide as an attachment.

Note: If the default configuration for maximum attachment size is changed and it’s
less than the billing data file, it might have an impact on billing. To keep the default
configuration or a value higher than the billing file size, see the knowledge base article
KB0718101 .
3. The attachments are stored temporarily in the Attachment table in the Glide database.
4. After all the attachments are stored in the Glide database, the Kubernetes job fetches details
of the billing download jobs that are in the Requested state.

Note: The temporary attachments are deleted from the Glide database after the billing
job is completed.
5. Kubernetes job fetches the attachment files from the Glide database via an API and processes
the files on the Kubernetes cluster.
6. The processed billing data is sent to Glide and finally stored in the Glide database.
For AWS Assume Role Billing Download, the Flow Launcher Job Configuration settings
determine the parallel processing of multiple download threads. These settings are stored
in the AWS Assume Role Billing Download record in the Flow Launcher Job Configuration
[sn_cld_intg_core_flow_launcher_job_config] table. The value in the Concurrency field of the
AWS Assume Role Billing Download record is the number of billing files downloaded in parallel.
Performance is optimal when the Concurrency field is set to the default value 2. However, if you
experience any slowness, you can set the Concurrency field to 1 with the admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2086


<!-- page 2087 -->
Schedule and manage the Cloud Cost Management jobs that download AWS price sheets
A Price Sheet Download job downloads and stores price sheet data. The Rightsizing and Unused
resources processes use price sheet data when generating recommendations.

Before you begin

For each provider, run Discovery on each service account.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task
• You create a scheduled Price Sheet Download job for each provider.
• Each execution of a Price Sheet Download job runs multiple execution items. Each execution
item imports and stores the price sheet for one region.
• To ensure accurate reporting and recommendations for some providers, make sure that the
Discovery application runs before the scheduled execution.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select New.
3. On the form, fill in the fields.
Price Sheet Download Job
Field

Name

Provider
Last successful execution

Download Price Sheet For

Value

Meaningful name for the Price Sheet Download
job.
Name of the cloud provider.
Timestamp of the most recent execution of the
job.
Price sheet downloads for different services.
◦ AWS
▪ Compute and Storage
▪ Database
▪ All
◦ Azure
▪ Compute
▪ Database
▪ Storage
◦ Google

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2087


<!-- page 2088 -->
Field

Value

▪ Compute and Storage
▪ Database
▪ All
Active

Run

Option for activating the Price Sheet Download
Job. Only active jobs are executed.
Frequency to execute the job.

Note: Depending on the value that you
select, additional fields appear. For example,
if you select a Run value of Monthly, a Day
field appears. A value of 3 would mean the
third day of the month.
This field is automatically set to Monthly.
Time

Time of day to execute the job.

Current execution status

Status of the execution that is currently running.

Current execution details

Details for the execution that is currently running.

4. Select Save.
5. Select Execute to execute the job.
During execution, Cloud Cost Management downloads and stores the data. You can find the
execution ID, status, and execution logs in the Price Sheet Executions tab. If there’s no new
data, the execution is marked Skipped. If the download process is stuck, the execution is
marked as Canceled.
Related topics
Rightsizing resources
Specify rate discounts to enable accurate pricing for Rightsizing recommendations
Cancel an AWS Price sheet download job in Cloud Cost Management
An AWS Price sheet download job downloads price sheet data from AWS. You can cancel any
Price sheet download job individually.

Before you begin

For each provider, run Discovery on each service account.
Make sure to have the proper credentials and service account setup.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task

Cloud Cost Management downloads price sheet data from each provider one region at a time.
If you cancel a running price sheet download job, the current region finishes downloading and
the system cancels download for the remaining regions. If you delete a scheduled job execution,
then all regions are marked as canceled.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2088


<!-- page 2089 -->
Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select either a currently running or scheduled job that you want to cancel.
3. On the Price Sheet Download job page, select Cancel execution.

Configure Cloud Cost Management for Microsoft Azure
The Cloud Cost Management application is available on the ServiceNow Store.

General requirements and limitations
• Cloud Cost Management isn't supported on mobile devices.
• Values in reports might vary slightly from provider billing values due to currency conversion or
rounding.

Requirements and limitations for Microsoft Azure
You must have Microsoft Azure console administrator permissions to work in the Microsoft Azure
console

Download and activate Cloud Cost Management
Role required: sys_admin.

Step

Description

Do this

Get the app.

Get the Cloud Cost Management app from the
ServiceNow Store.

Visit the ServiceNow Store
website to get the Cloud
Cost Management app and
supporting apps.

Activate all
supporting
plugins and
applications.

Activate the plugins listed on the ServiceNow
Store page for Cloud Cost Management. You
might need to request some of the plugins from
your ServiceNow representative.

For instructions, see:
• Request as plugin
• Activate a plugin

Overview: Setting up Cloud Cost Management
Here's an overview of your set up process. Detailed instructions appear in the table that follows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2089


<!-- page 2090 -->
When you first open the app, the home page enables you set up a provider and to assign the
insights_owner role.

After you set up a provider and assign the insights_owner role, the page displays additional
setup activities.

Note: The Configure and Run Discovery card appears only if you use the Discovery
application to discover cloud resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2090


<!-- page 2091 -->
• When you select the Set up and Run Discovery button in the Configure and Run Discovery
section, the Discover Schedules form opens.
• When you select the Set up Billing Download button in the Download Billing and Usage Data
section, the Billing Download Jobs form opens.
• When you select the Set up Price Sheet Download button in the Download Price Sheets
section, the Price Sheets Download Jobs form opens.
After you finish all configuration, the page will show overview data and give quick access to
reports.

Setting up Cloud Cost Management
Step

Description

You assign Cloud Cost Management roles to user groups
and to individual users based on user activities and
responsibilities.

Do this

Cloud Cost
Management
roles

Assign roles
to Cloud Cost
Management
users and
groups.

Configuring
MID Servers
to access
CI data on
provider
accounts for
Cloud Cost
Management
.

To enable Discovery to communicate with your Microsoft
Azure account, you specify your Service Principal credentials
while configuring the MID Servers that communicate with your
Microsoft Azure account.

Configuring
access to CI
data on your
Microsoft
Azure account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2091


<!-- page 2092 -->
Step

Description

Note: The Configure and Run Discovery card appears
only if you use the Discovery application to discover
cloud resources.
Discover
your cloud
resources.

Schedule
and manage
the jobs that
download
billing
data for
Cloud Cost
Management

Do this

Discovering
your cloud
resources for
use

When you select the Set up and Run Discovery button on the
Configure and Run Discovery card, the Discover Schedules
form opens. You schedule the Discovery process to ensure
that the CMDB data on resources remains current.
When you select the Set up Billing Download button in
the Download Billing and Usage Data section, the Billing
Download Jobs form opens. Billing Download jobs download,
organize, and store billing data for your payer account on the
schedule that you specify. The system analyzes the data to
generate reports and to make recommendations for changes
in your cloud operations that can lead to cost savings.

Set up access
to Microsoft
Azure billing
and usage
data

.
When you select the Set up Price Sheets Download button
in the Download Price Sheets section, the Price Sheets
Download Jobs form opens. A Price Sheet Download job
Schedule and downloads and stores price sheet data. The Rightsizing and
Unused resources processes use price sheet data when
manage the
generating recommendations.
Cloud Cost
Management
jobs that
download
price sheets

Schedule and
manage the
Cloud Cost
Management
jobs that
download
Microsoft
Azure price
sheets

.

Configure
the insights
features:
• Rightsizing
• Unused
Machines
• Business
Hours
• Unassigned
Resources

• The Rightsizing feature analyzes resource usage to
recommend better sizes for resources that are wasting
money by being over-provisioned or underused. A
confidence rating and predicted savings support each
recommendation. You schedule Rightsizing jobs to resize
the resources you specify.
• The Unused Machines feature analyzes usage data to
identify resources that are wasting money because they are
not used. You schedule Unused Machines jobs to power-off
or terminate the resources that you specify.

• Rightsizing
resources
• Unused
resources
• Business
hours
• Unassigned
resources

• A Business Hours job applies policies to identify resources
that are running when they should be powered off, reports
them, and can start and stop them on a schedule that you
specify. Running only during specified business hours can
significantly reduce your cloud spend.
• Unassigned Resources policies help you to identify the
resources that are not associated with a change group and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2092


<!-- page 2093 -->
Step

Description

Do this

to assign them appropriately. When a resource is assigned
to the correct group, the resource can be appropriately
governed even as it goes through stages such as patching,
upgrading, and reconfiguring.

Configuring access to CI data on your Microsoft Azure account
To enable Discovery to communicate with your Microsoft Azure account, you specify your Service
Principal credentials while configuring the MID Servers that communicate with your Microsoft
Azure account.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Detailed instructions
See Azure Cloud Discovery

.

Important: This configuration process applies only if you use the Discovery application
to discover cloud resources. Skip this process if you use a different method for discovering
resources.

MID Server settings for Cloud Cost Management

Note: MID Server minimum memory size should be 4 GB.
Setting

Value

Supported Applications

Cloud Actions

Capabilities

The ALL setting includes all required
applications and capabilities. Alternatively,
you can specify the following settings:

Note: You can specify the following
settings for any number of MID
Servers. If you specify multiple MID
Servers, then Discovery, billing data
download operations, and actions
that are recommended by Cloud Cost
Management are assigned to one of the
MID Servers at random.
Option 1: To use this MID Server only for Azure,
specify both of the following values:
• Cloud Actions
• Azure
Option 2: To use this MID Server for all
providers, specify the following values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2093


<!-- page 2094 -->
Setting

Value

• Cloud Actions
• AWS
• Azure
• Google Cloud

Using a proxy server
You can use a proxy server for the Cloud Cost Management MID Server. See Proxy server
configuration for your Cloud Cost Management MID Server.
Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Proxy server configuration for your Cloud Cost Management MID Server
You can configure any MID Server to use a proxy server for Cloud Cost Management operations.
Proxy servers support all cloud-based activities such as running Discovery, Billing Download
jobs, and Price Sheet Download jobs.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Detailed instructions
See Proxy server configuration for MID Servers used for Cloud Discovery and Cloud Provisioning
and Governance .

Proxy server limitations
• Only Windows or Linux platforms are supported.
• The Google Cloud integration is not supported.
• The VMware integration is not supported.
• Remote PowerShell scripts cannot be executed.
• Custom APIs might not work.

Supported proxy server authentication for Cloud Cost Management
Proxy Server type

Authentication type

HTTP/HTTPS

No authentication

SOCKS5

No authentication

HTTP/HTTPS

Basic authentication

SOCKS5

Basic authentication

HTTP/HTTPS

NTLM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2094


<!-- page 2095 -->
Supported Proxy server configurations
Supported configuration settings
Configuration

Operating system

Proxy server

Authentication mode

Configuration 1

Linux

None

Not Applicable

Configuration 2

Windows

Squid (HTTPS)

None

Configuration 3

Linux

Squid (HTTPS)

Local

Configuration 4

Windows

Squid (HTTPS)

Active Directory

Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Add a Microsoft Azure government service account
A cloud_admin can add an Azure GovCloud service account. Be sure to set up download jobs for
billing and price sheet data for the service account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Procedure
Follow the instructions in Add an Azure service account

.

Related topics
Create a Microsoft Azure service principal
Schedule and manage the Cloud Cost Management jobs that download Microsoft Azure price
sheets
Add a Microsoft Azure service account
Add a Azure service account to store the credential and access information.

Before you begin

Role required: sn_cmp.cloud_admin
Set up download jobs for billing and price sheet data for the service account.

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2095


<!-- page 2096 -->
account to get data on each resource in each specified datacenter. A cloud account can include
multiple service accounts — even service accounts from different providers. For each service
account, you specify which datacenters to include in the cloud account.

Note: The service account must have Discovery credentials to get the Azure forecast data.
Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Service accounts.
2. Select New.
3. On the form, fill in the fields.
Cloud Service Account
Field

Description

Name

Unique and meaningful name for this service
account.

Account Id

The Azure Account ID value that you copied
from the Azure portal into the text file.
The value in this field changes based on the
type of account that you set.
◦ For billing service accounts, the Account ID
is the Enrollment ID.
◦ For other service accounts, the Account ID
is the Subscription ID.

Discovery credentials

The credentials needed for ServiceNow
applications to access this account. You
might configure this field at a later stage,
while configuring access to Azure accounts.
◦ If you configured Azure credentials at
ServiceNow AI Platform, select the name of
the relevant Azure credential.
◦ To use other Azure accounts to access this
account, leave the field empty.

Datacenter URL

URL of the datacenter.
This field is required only for Azure GovCloud
(US) accounts.
.

Datacenter Type

Type of the datacenter where the account is
hosted.
Select Azure datacenter.

Datacenter discovery status

Status and timestamp of the last execution of
discovery on the datacenter.
This value is generated automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2096


<!-- page 2097 -->
Field

Description

Is Billing Account

Option for enabling the account to access
billing data.
This option is available only when Cloud
Integrations Azure scope is used.
For the existing billing accounts, this check
box is selected by default.

Is Management Group

Option for enabling the account for running
Discovery.
This option is available only when Cloud
Integrations Azure scope is used.
For the existing accounts where Discovery is
run, this check box is selected by default.

4. Select Save.

Result

The service account that you created gets listed on the Service accounts page.
Related topics
Schedule and manage the jobs that download Azure billing data
Schedule and manage the Cloud Cost Management jobs that download Microsoft Azure price
sheets
Discovery for Microsoft Azure Cloud
Set up access to Microsoft Azure billing and usage data
Set up access to Microsoft Azure billing and usage data depending on your agreement type.
You can access the billing and usage data, by assigning an appropriate role to the Microsoft
Azure service principal, depending on whether you have an Enterprise Agreement (EA) or
Microsoft Customer Agreement (MCA). Accordingly, some of the following steps might be
optional for you.
1. Create a Microsoft Azure service principal
2. For EA accounts - Add the Enrollment Reader role to the Microsoft Azure service principal
3. For MCA accounts - Add the Billing Profile Reader role to the Microsoft Azure service principal
4. Create a record of Microsoft Azure credentials in Cloud Cost Management
5. Schedule and manage the jobs that download Azure billing data
Related topics
Create exports on the Azure portal
Cancel an Azure Billing download job in Cloud Cost Management
Create a Microsoft Azure service principal
Give Cloud Cost Management access to Microsoft Azure billing and usage data by creating a
Microsoft Azure service principal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2097


<!-- page 2098 -->
Before you begin

Microsoft Azure Role required: Azure Cloud admin

About this task

Cloud Cost Management supports Microsoft Azure billing and cost usage data for two types
of billing agreements: Enterprise Agreement (EA) and Microsoft Customer Agreement (MCA).
There are specific roles that you must assign to the service principal depending on your billing
agreement type. For more information on EA and MCA agreement types, see Billing information
for Microsoft Azure .

Procedure
1. From a web browser, open the App Registrations page

of the Microsoft Entra ID portal.

2. Log in using your global administrator credentials.
3. In the Name field of the Register an application form, enter a name for the application.
4. In the Supported account types field, select Accounts in any organizational directory (Any
Microsoft Entra ID – Single tenant).
5. Select Register.
The application is registered and you’re redirected to the Overview page of the new
application.
6. On the Overview page, copy the values in the Application (client) ID and Directory (tenant) ID
fields.
Save them in a secure location for later use.
7. Generate a Client secret for your application.
a. From the side navigation menu, navigate to Manage > Certificates & secrets.
b. In the Client secrets section, generate a client secret for the application by selecting New
client secret.
c. In the dialog box, fill in the fields.
Add a client secret dialog box
Field

Description

Description

Description of the client secret.

Expires

Expiration of the client secret.

Note: Your organization might
apply policies to restrict client secret
durability. Select an appropriate
expiration period.

d. Select Add.
e. Copy the client secret that is generated and save at a secure location for later use.
8. Get Subscription ID to enable the service principal to work with various Azure subscriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2098


<!-- page 2099 -->
a. Navigate to Subscriptions.
b. Select the Subscription ID to which the service principal needs access.
c. Copy the Subscription ID from the Subscription Overview page.
9. Assign access roles and permissions to the service principal depending on your billing
agreement type.
Refer to the table for required roles and permissions for the service principal.
Roles and permissions for Azure service principal
Billing agreement type

Role required

Enterprise Agreement (EA)

◦ Enrollment Reader
◦ Storage Blob Data Reader

Microsoft Customer
Agreement (MCA)

◦ Billing Account Reader
◦ Both Billing Profile Reader
and Billing Reader
◦ Storage Blob Data Reader

Permissions

These permissions are
required for the service
principal for both EA and
MCA.
◦ Microsoft.Compute/
virtualMachines/
instanceView/read
◦ Microsoft.Compute/
virtualMachines/
deallocate/action
◦ Microsoft.Compute/
virtualMachines/start/
action
◦ Microsoft.Compute/
virtualMachines/delete
◦ Microsoft.Compute/
virtualMachines/write
◦ Microsoft.Compute/
virtualMachines/read
◦ Microsoft.Compute/
locations/usages/read
◦ Microsoft.Advisor/
recommendations/read
◦ Microsoft.Advisor/
generateRecommendations/
read
◦ Microsoft.Advisor/
generateRecommendations/
action
◦ Microsoft.Compute/disks/
delete
◦ Microsoft.Compute/disks/
read
◦ Microsoft.CostManagement/
forecast/read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2099


<!-- page 2100 -->
Billing agreement type

Role required

Permissions

◦ Microsoft.Compute/
locations/diskOperations/
read
◦ Microsoft.Insights/Metrics/
Read
◦ Microsoft.Compute/
locations/operations/read
◦ Microsoft.Sql
◦ Microsoft.DBforMariaDB
◦ Microsoft.DBforMySQL

What to do next

Create a record of Microsoft Azure credentials in Cloud Cost Management
Related topics
Add the Enrollment Reader role to the Microsoft Azure service principal
Add the Billing Profile Reader role to the Microsoft Azure service principal
Add the Enrollment Reader role to the Microsoft Azure service principal
Assign the Enrollment Reader role to the Azure service principal for your Enterprise Agreement
(EA) account to retrieve billing, purchase, and pricing data. You can assign this role using a
Microsoft API.

Before you begin

Role required: Enterprise administrator

About this task

Enrollment reader roles can view subscription charges related data at the enrollment,
department, and account scopes. They can also view the Azure prepayment balance linked with
the enrollment. Enrollment reader role is required only for EA accounts.

Procedure
1. Navigate to the Role Assignments - Put

page in the Microsoft Azure documentation.

2. Run the API by selecting the Try It button.
3. Select Sign in.
4. On the login page, enter your Microsoft Azure account credentials to sign in to the tenant.
5. On the API request parameters form, fill in the fields.
Role Assignments API request parameters
Field

Description

billingAccountName

The Azure EA billing account ID.
You can find the billing account ID on the
Azure portal on the Cost Management +
Billing overview page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2100


<!-- page 2101 -->
Field

Description

billingRoleAssignmentName

A unique ID to identify the name of the role
that you want to assign.
You can use a GUID generator website to
generate a unique ID.

Body

The request body with parameters in JSON
code. Enter the following JSON code in the
body.
{ "properties":
{ "principalId":
"{enterprise-application
(or SPN) object-id}",
"principalTenantId": "{tenantid}", "roleDefinitionId":
"/providers/Microsoft.Billing/
billingAccounts/{ea-accountid}/billingRoleDefinitions/
24f8edb6-1668-4659b5e2-40bb5f3a7d7e" } }
In this code:
◦ principalID: object ID of the EA account
◦ principalTenantID: tenant (directory) ID of
the EA account
◦ roleDefinitionId: ID of the role definition,
for example, 24f8edb6-1668-4659b5e2-40bb5f3a7d7e is the role definition ID
of the enrollment reader role
For details on the object ID and tenant ID, see
Microsoft documentation .

Important: Replace only the eaaccount-id string with the actual EA
billing account ID.

Note: You must not change the values in the api-version and Content-Type fields.
6. Complete the role assignment for the Azure EA account by selecting Run.

What to do next

Schedule and manage the jobs that download Azure billing data
Add the Billing Profile Reader role to the Microsoft Azure service principal
Assign the Billing Profile Reader role to the Azure service principal for your Microsoft Customer
Agreement (MCA) account to download Azure price sheet data.

Before you begin

Role required: Azure Cloud admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2101


<!-- page 2102 -->
About this task

The Billing Profile Reader role provides the required permissions to download price sheet data
at the profile scope only for MCA accounts. For more information on Azure roles, see Microsoft
documentation .

Procedure
1. Log in to the Azure portal

and search for Cost Management + Billing .

2. Select Billing scopes.
3. Select Access Control (IAM) at the billing profile scope to which you’re assigning the billing
profile reader role.
4. Select +Add.
5. In the Add role assignment window, select Billing profile reader in the Role field.
6. In the Users, groups, or apps field, select the service principal to which you’re assigning the
role.
7. Complete the role assignment for the Azure MCA account by selecting Add.

What to do next

Schedule and manage the jobs that download Azure billing data
Related topics
Schedule and manage the Cloud Cost Management jobs that download Microsoft Azure price
sheets
Create a record of Microsoft Azure credentials in Cloud Cost Management
Securely store your Microsoft Azure credentials in the ServiceNow AI Platform credentials store.
You must create a service account that accepts billing data for Cloud Cost Management.

Before you begin

Role required: sn_clin_core.insights_admin or admin

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Credentials.
2. On the Cloud API credentials page, select Azure service principal.
3. Select New.
4. On the form, fill in the fields.
Azure Service Principal form
Field

Description

Name

Name of the service principal to
register with the instance. For example,
CloudInsights-SP.

Tenant ID

An unique identifier or alias for the tenant.
Copy and paste the Tenant ID value from the
Azure-Credentials.txt file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2102


<!-- page 2103 -->
Field

Description

Client ID

Unique identifier of an application created in
Active Directory.
Copy and paste the Tenant ID value from the
Azure-Credentials.txt file.
Select Client Secret.

Authentication Method

The Secret key field appears when you select
Client Secret.

Note: Client Assertion isn’t supported.
Secret key

Azure client secret key.
Copy and paste the Tenant ID value from the
Azure-Credentials.txt file.

Active

Option to enable the credentials for use.

5. Select Save.

What to do next

Schedule and manage the jobs that download Azure billing data
Create exports on the Azure portal
Create exports for your Azure service account to download Azure billing data.

Before you begin
Roles required:

• For Enterprise Agreement (EA): Enterprise administrator, Storage Account Contributor
• For Microsoft Customer Agreement (MCA): Billing account owner or contributor, Storage
Account Contributor
• For Subscriptions (EA/MCA): contributor, Storage Account Contributor

About this task

When you're using the Azure Export method to download billing data, you must create an export
for your service account on the Azure portal to export billing data to your ServiceNow storage
account.

Procedure
1. Log in to the Azure portal

and search for Cost Management .

2. Select a billing account scope.
3. Select Exports.
4. Select + Create.
5. On the Basics tab, select a template.
You must create exports with both the Cost and usage (actual) and Cost and usage
(amortized) templates to ensure accuracy of billing data.
6. Select Next.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2103


<!-- page 2104 -->
7. On the Datasets tab, enter Export prefix to customize your export name.
8. Select the edit icon

next to the export name that you want to edit.

9. In the Edit export window, fill in the fields.
Edit export window fields
Field

Description

Type of data

The type of billing data for the export.

Export name

A unique name for the export.

Dataset version

The version of the dataset.

Note: Because other dataset versions
might have different requirements,
you should select 2024-08-01 as the
dataset version.
Frequency

The option to export data at an interval that
meets your requirement.
Select Daily export of month-to-date costs
for the daily export of your data.

Important: The Billing Download
job must run at least 30–60 minutes
after the export of billing data to ensure
that the latest data is included in the
download.
Compression

Mode of compressing the export data.
You can select None or Zip depending on
your preference.

Export description

A brief description of the export.

10. Select Next.
11. On the Destination tab, select the field values that meet your requirement.

Note: Select CSV in the Format field because Cloud Cost Management 9.0 currently

supports the CSV format only. The Overwrite data check box should be cleared so that
the previously downloaded data doesn't get overwritten with the latest downloads.
12. Select Next.
13. On the Review + create tab, review your export configuration and change if necessary.

Result

The export that you have created appears in the list of exports.
Related topics
Schedule and manage the jobs that download Azure billing data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2104


<!-- page 2105 -->
Schedule and manage the jobs that download Azure billing data
Billing Download jobs download, organize, and store billing data for your payer account on
the schedule that you specify. The system analyzes the data to generate reports and to make
recommendations for changes in your cloud operations that can lead to cost savings.

Before you begin

Ensure that your system has 8 GB Clotho memory and 4 GB mid memory.
Role required: Cloud Integrations Admin [sn_cld_intg_core.cloud_integrations_admin]

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

• To ensure accurate reporting and recommendations for some providers, make sure that
Discovery runs before the scheduled execution.
• You can create only one Billing Download job for each service account.
• Only costs of unblended type are supported.
• Each successful execution of a Billing Download job updates tagged costs. Recent updates
that you make to tag category definitions (for example, adding a tag name to a category) might
not be reflected in cost reports. You should map tag values to tag categories after the first run
because populating tag values needs at least one successful run. You can apply the latest tag
category definitions to cost data without running a Billing Download job, by selecting Cloud
Cost Management Workspace > Operations > Cost usage tags > Tag categories and
then selecting Re-Apply Categories.
• When a Billing Download job successfully completes, it triggers the Budget Forecast, Business
hours, Reservation/saving plans, Rightsizing, and Unused resources jobs to analyze spend
and usage data. This action also updates the actionable recommendations in reports.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.
• Cost categories are updated with new cost tag values each time billing data is downloaded.
(You define cost tags in the provider portal to associate usage data with a particular business
entity. For example, the Cost Center category might include the tags development, testing, and
QA. The User category might include the names of your users.)
• Billing data is downloaded in reverse chronological order by month. For example, if the range is
from March to June, data for June is downloaded first.
• To ensure meaningful results for the first billing data download, the app downloads data for
minimum 30 days. For example, if today is June 10 and you specify June for download, the
system downloads data for both May and June to ensure a minimum 30 days of data for
analysis.
• You can download data only for the most recent 12 months.
• Whenever you provision a Kubernetes cluster, one default resource group gets created as
MC_myResourceGroup_myAKSCluster_eastus. For example, if you provision a
Kubernetes cluster with a resource group name as TestResourceGroup, Azure uses
this resource group name and provisions another resource group as MC_<name of the

resource group>_<name of the cluster>_<location of the cluster>.
All resources of the Kubernetes cluster are included in the resource group provided by Azure.
When you run a Billing Download job, the list of resources included in the resource group with
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2105


<!-- page 2106 -->
this naming convention MC_<name of the resource group>_<name of the
cluster>_<location of the cluster> is checked.
◦ A tag sn_ccm_k8_cluster_name is added to the Kubernetes cluster when the billing
download job runs.
◦ A tag sn_ccm_k8_cluster_name is added to the resources of the Kubernetes cluster
present in the resource group when the Spend job runs.

Note:
◦ If you provide your own name to the asset or resources of a resource group, you can't
view the spend for Kubernetes clusters.
◦ Install Discovery and Service Mapping Patterns application (sn_itom_pattern) 1.10.2 or
higher. For more information, see Install Discovery and Service Mapping Patterns
◦ Install CMDB CI Class Models (sn_cmdb_ci_class) version 1.53.1 or higher. For more
information, see CMDB CI Class Models
◦ To set up Kubernetes discovery, see Kubernetes discovery using patterns

.

• If you have installed the Cloud Cost Management Infra Stack application along with Cloud
Cost Management version 8.1, bill processing only happens on the Kubernetes cluster outside
the Glide but within the ServiceNow datacenter. This framework supports parallel processing
of data in chunks, making the billing file download faster.
After you submit a request for Azure billing data, the blobs are
generated based on the chunk size. You can use the system property
sn_cld_intg_azure.billing_chunk_duration to set the chunk size. For details,
see Configure the chunk size of Microsoft Azure billing blob. Consider an example where you
want to download 30 days of billing data and you have set the chunk size to 3, then the billing
data is available in 10 blobs. After all the blobs are generated, the state of the job changes from
Ready to Requested. These blobs are stored in some blob storage on the Azure portal. The
Kubernetes framework then downloads and processes the generated blobs from Azure.

Note:
If you have installed the Cloud Cost Management Infra Stack application, then toward
the end of a job, significant database update, and insert operations are performed based
on your Cloud CIs and spend data volume. Thus, any other job that impacts database
performance shouldn't be run during this time alongside Cloud Cost Management jobs.
• From Cloud Cost Management version 8.1 onwards, the default time for billing download jobs
has changed from 12:00 to 01:00 (UTC). Also, schedule or run Cloud Cost Management jobs
only during off-business hours and when there's no other heavy operations or jobs running on
the ServiceNow instance.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
2. Select the Azure tab.
3. Select New.
4. On the form, fill in the fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2106


<!-- page 2107 -->
Azure Billing Download Job
Field

Description

Name

Meaningful name for the scheduled
execution of the Billing Download job.

Last successful execution

The timestamp of the most recent successful
execution.

Notify users/groups

The users or groups to be notified by email of
the status of the job execution (for example,
download failure). The system doesn’t send a
notification for success.
Users or groups with the
Cloud Integrations Admin
[sn_cld_intg_core.cloud_integrations_admin]
role are well suited to handle these issues.
To update the email template, navigate to
System Notification > Email > Notifications
and open the Notify on billing job execution
error template. For information on configuring
the email, see Create an email template .

Active

Option for activating the job. Only active jobs
are executed.

Run

Frequency with which to execute the Billing
Download job.
This field is automatically set to Daily.

Note: Depending on the value that you
select, additional fields appear.
Time

Time of day to execute the job.

Latest execution status

The status of the most recently executed job.

Latest execution details

Execution details of the most recently
executed job.

Azure Settings
Azure Service account

The Azure service account.

Use Exports

Option for selecting the Azure Export method.
The Use Exports check box is selected by
default. If you don't want to use the Exports
method, you must clear this check box.

The following fields appear when the Use Exports check box is selected.
Billing Account Id Type

Level of billing account ID.
Values include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2107


<!-- page 2108 -->
Field

Description

◦ Account: When the billing is done on
account level
◦ Subscription: When the billing is done on
subscription level

Note: Select Account when the

account ID is selected in the Azure
Service Account field.
Actual Cost Export Name

Name of the actual cost export configured on
the Azure portal.
For more information, see Create exports on
the Azure portal.

Amortized Cost Export Name

Name of the amortized cost export configured
on the Azure portal.
For more information, see Create exports on
the Azure portal.

5. Select Save.
6. On the Billing download jobs page, select the created job.
7. Select Test connection.
The Test Connection workflow uses the settings that you configured to attempt to access the
provider account. The system displays a progress pop-up and a success/error message that
suggests actions to fix the configured settings.
8. Select Execute now to execute the job after the connection succeeds.
9. In the Download billing data dialog box, fill in the fields.

Field

Description

Start month

Starting month for downloading the billing
data.

Note: Data is downloaded for the
specified months. If fewer than 30
days of data for analysis is received,
data for the preceding month is also
downloaded.
End month

Ending month for downloading the billing
data.

Re-import data

Option for overwriting data from an earlier
download attempt.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2108


<!-- page 2109 -->
Field

Description

Note:
The complete billing download occurs
on the fourth day or on the billing
finalization date for the previous month,
irrespective of the Re-import data
option setting.

10. Select Download.
An Azure billing download job goes through the following states during the job execution:
a. Ready: Job is in the queue. For example, when a job is created to download billing data for a
few months, the jobs for all months except the latest month are in Ready state.

Note: If you have installed the Cloud Cost Management Infra Stack application, the
Azure blob URLs are generated in the Ready state. For details, see Configure the chunk
size of Microsoft Azure billing blob. Only when all the blobs are generated, the state
changes to Requested.
b. Requested: Job is fetched immediately. For example, the job that's created to download
billing data for a month is in the Requested state. Also, when a job is created to download
billing data for more than a month, the latest month job is also in the Requested state.
c. Reserved: Job is picked by the Kubernetes cluster for processing. The Kubernetes cluster
also sends the Job Id to the Glide side to show which Kubernetes job is processing the
billing job.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
d. In Progress: Billing data is being processed.
e. Sink Begin: Kubernetes cluster sends some part of the processed billing data to the tables
such as Spend Report Daily Aggregate Cost and Spend Report Monthly Aggregate Cost on
the Glide. The records in these tables are in the Generating state. The job remains in the
Sink Begin state until the entire billing data is sent to Cloud Cost Management Glide.
In the Sink Begin state, the CI placement also starts and the Status of the CI Placement
Stage changes from Ready to In Progress.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
f. Sink Complete: All the processed billing data is sent to Cloud Cost Management Glide from
the Kubernetes cluster.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
g. Finished: Status after Sink Complete when all the billing files are sent to the Glide database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2109


<!-- page 2110 -->
Note: The following changes happen when the job is marked Finished:
▪ The state of the records in the Spend Report Daily Aggregate Cost and Spend Report
Monthly Aggregate Cost tables change from Generating to Active. Also, existing
records are marked inactive.
▪ The status of the Azure EA to SA mapping execution stage changes from Ready to In
Progress. In this execution stage, the Enterprise account is mapped to the Service
account.
h. Success: Job is completed successfully.

Result

The following events happen when the job executes:
• While downloading the data, Cloud Cost Management updates the
The following events happen when the job
billing node data table [sn_cld_intg_<provider>_cost_usage] with the CIs in the CMDB that
corresponds to each resource ID. If a CI doesn’t exist, the system generates a placeholder CI.
On subsequent discovery, the system reconciles the placeholder CI.
• Cloud Cost Management generates a log entry for each stage of the execution on the Billing
Download Executions page.

Note: The supported CIs are placed after the Cumulus Unsupported CI Placement
scheduled job runs daily. For more information, see Supported CI class types for Microsoft
Azure services.
Cancel an Azure Billing download job in Cloud Cost Management
A Billing download job obtains billing and usage data from each payer account for Azure. The
Rightsizing, Unused resources, and Business hours processes use billing and usage data when
generating recommendations. You can cancel any Billing download job individually.

Before you begin

Role required: Cloud Integrations Admin [sn_cld_intg_core.cloud_integrations_admin]

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
2. Select the Azure tab.
3. Select either a currently running or scheduled job that you want to cancel.
4. On the Azure Billing Download page, select Cancel execution.
Configure the chunk size of Microsoft Azure billing blob
Reduce the time required to download Azure billing files by defining the chunk size of a blob.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2110


<!-- page 2111 -->
About this task

Important: This task is applicable only if you have installed the Cloud Cost Management
Infra Stack application along with Cloud Cost Management version 8.1.
A single Azure billing blob can be large, resulting in performance issues during the download.
If you have installed the Cloud Cost Management Infra Stack application, bill processing only
happens on the Kubernetes cluster that's outside Glide but within ServiceNow datacenters.
This new framework with Kubernetes cluster supports parallel processing of multiple chunks
of blobs, making the billing file download faster. You can also set the system property
sn_cld_intg_azure.billing_chunk_duration to specify the duration in number of
days for which the billing data will be included in each chunk.

Procedure
1. Open the System properties table by entering sys_properties.list in the application
filter.
2. Filter the list to open the sn_cld_intg_azure.billing_chunk_duration property.
The default value is 3, which means that each blob contains three days billing data.
3. Modify the value as needed.

Note: Performance improves by setting the property to a value below 3.
4. Save the property.
Schedule and manage the Cloud Cost Management jobs that download Microsoft Azure price
sheets
A Price Sheet Download job downloads and stores price sheet data. The Rightsizing and Unused
resources processes use price sheet data when generating recommendations.

Before you begin

Run the Discovery application on each service account.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task
• You create a scheduled Price Sheet Download job for Microsoft Azure.
• Each execution of a Price Sheet Download job runs multiple execution items. Each execution
item imports and stores the price sheet for one subscription or billing profile.
• To ensure accurate reporting and recommendations for some providers, make sure that the
Discovery application runs before the scheduled execution.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.
• Cloud Cost Management version 9.0 supports price sheet download for both Azure Enterprise
Agreement (EA) and Microsoft Customer Agreement (MCA) accounts.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select New.
3. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2111


<!-- page 2112 -->
Price Sheet Download Job form fields
Field

Description

Name

A unique and meaningful name for the Price
Sheet Download job.

Provider

Name of the cloud provider.

Download retail price sheet

Option to download retail price sheet without
the need to provide account details and
credentials required for the download.

Azure Service Account

Name of the Azure service account.

Download Price Sheet For

Price sheet downloads for different services.
◦ Compute
◦ Database
◦ Storage

Last successful execution

Timestamp of the most recent execution of
the job.

Active

Option for activating the Price Sheet
Download Job. Only active jobs are executed.

Run

Frequency to execute the job.

Note: Depending on the value that
you select, additional fields appear. For
example, if you select a Run value of
Monthly, a Day field appears. A value
of 3 would mean the third day of the
month.
This field is automatically set to Monthly.
Time

Time of the day to execute the job.

Current execution status

Status of the execution that is currently
running.

Current execution details

Details for the execution that is currently
running.

4. Select Save.
5. Select Execute to execute the job.
During execution, Cloud Cost Management downloads and stores the data. You can find the
execution ID, status, and execution logs in the Price Sheet Executions tab. If there’s no new
data, the execution is marked Skipped. If the download process is stuck, the execution is
marked as Canceled.
Related topics
Rightsizing resources
Specify rate discounts to enable accurate pricing for Rightsizing recommendations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2112


<!-- page 2113 -->
Cancel an Azure Price sheet download job in Cloud Cost Management
An Azure Price sheet download job downloads price sheet data from Azure. You can cancel any
Price sheet download job individually.

Before you begin

For each provider, run Discovery on each service account.
Make sure to have the proper credentials and service account setup.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task

Cloud Cost Management downloads price sheet data from each provider one region at a time.
If you cancel a running price sheet download job, the current region finishes downloading and
the system cancels download for the remaining regions. If you delete a scheduled job execution,
then all regions are marked as canceled.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select either a currently running or scheduled job that you want to cancel.
3. On the Price Sheet Download job page, select Cancel execution.

Configure Cloud Cost Management for Google Cloud
The Cloud Cost Management application is available on the ServiceNow Store.

General requirements and limitations
• Cloud Cost Management isn't supported on mobile devices.
• Values in reports might vary slightly from provider billing values due to currency conversion or
rounding.

Requirements and limitations for Google Cloud
You must have Google Cloud administrator permissions to work in the Google Cloud Console

Download and activate Cloud Cost Management
Role required: sys_admin.

Step

Description

Do this

Get the app.

Get the Cloud Cost Management app from the
ServiceNow Store.

Visit the ServiceNow Store
website to get the Cloud
Cost Management app and
supporting apps.

Activate all
supporting

Activate the plugins listed on the ServiceNow
Store page for Cloud Cost Management. You
might need to request some of the plugins from
your ServiceNow representative.

For instructions, see:
• Request as plugin
• Activate a plugin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2113


<!-- page 2114 -->
Step

Description

Do this

plugins and
applications.

Overview: Setting up Cloud Cost Management
Here's an overview of your set up process. Detailed instructions appear in the table that follows.

When you first open the app, the home page enables you set up a provider and to assign the
insights_owner role.

After you set up a provider and assign the insights_owner role, the page displays additional
setup activities.

Note: The Configure and Run Discovery card appears only if you use the Discovery
application to discover cloud resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2114


<!-- page 2115 -->
• When you select the Set up and Run Discovery button in the Configure and Run Discovery
section, the Discover Schedules form opens.
• When you select the Set up Billing Download button in the Download Billing and Usage Data
section, the Billing Download Jobs form opens.
• When you select the Set up Price Sheet Download button in the Download Price Sheets
section, the Price Sheets Download Jobs form opens.
After you finish all configuration, the page will show overview data and give quick access to
reports.

Tasks: Setting up Cloud Cost Management
Step

Description

Do this

You assign Cloud Cost Management roles to user groups
and to individual users based on user activities and
responsibilities.

Cloud Cost
Management
roles

Assign roles
to Cloud Cost
Management
users and
groups.

Set up
access to
Google
Cloud.

Configuring
MID Servers
to access
CI data on

To securely access data on your provider account, the
Discovery process must present appropriate credentials. To
make the credentials available to Discovery, you first create
Google Cloud credentials in the Google Cloud portal. You then
securely store the credentials in a service account in your
instance.
To ensure secure and reliable communications, the Discovery
process communicates with your cloud provider accounts and
cloud resources through one or more MID Servers. You can
set up the MID Servers on your network or in one of your cloud
networks.

Set up access
to Google
Cloud billing
and usage
data

Configuring
access to CI
data on your
Google Cloud
account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2115


<!-- page 2116 -->
Step

Description

Do this

provider
accounts for
Cloud Cost
Management
.

Note: The Configure and Run Discovery card appears
only if you use the Discovery application to discover
cloud resources.
Discover
your cloud
resources.

Schedule
and manage
the jobs that
download
billing
data for
Cloud Cost
Management

Discovering
your cloud
resources for
use

When you select the Set up and Run Discovery button on the
Configure and Run Discovery card, the Discover Schedules
form opens. You schedule the Discovery process to ensure
that the CMDB data on resources remains current.
When you select the Set up Billing Download button in the
Download Billing and Usage Data section, the Billing Download
Jobs form opens. Billing Download jobs download, organize,
and store billing data for your payer account on the schedule
that you specify. The system analyzes the data to generate
reports and to make recommendations for changes in your
cloud operations that can lead to cost savings.

Schedule
and manage
the jobs that
download
Google Cloud
billing data

.
When you select the Set up Price Sheets Download button
in the Download Price Sheets section, the Price Sheets
Download Jobs form opens. A Price Sheet Download job
downloads and stores price sheet data. The Rightsizing and
Schedule and Unused resources processes use price sheet data when
manage the
generating recommendations.
Cloud Cost
Management
jobs that
download
price sheets

Schedule and
manage the
Cloud Cost
Management
jobs that
download
Google Cloud
price sheets

.

Configure
the insights
features:
• Rightsizing
• Unused
Machines

• The Rightsizing feature analyzes resource usage to
recommend better sizes for resources that are wasting
money by being over-provisioned or underused. A
confidence rating and predicted savings support each
recommendation. You schedule Rightsizing jobs to resize
the resources you specify.
• The Unused Machines feature analyzes usage data to
identify resources that are wasting money because they are
not used. You schedule Unused Machines jobs to power-off
or terminate the resources that you specify.

• Rightsizing
resources
• Unused
resources
• Business
hours
• Unassigned
resources

• A Business Hours job applies policies to identify resources
that are running when they should be powered off, reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2116


<!-- page 2117 -->
Step

Description

• Business
Hours
• Unassigned
Resources

Do this

them, and can start and stop them on a schedule that you
specify. Running only during specified business hours can
significantly reduce your cloud spend.
• Unassigned Resources policies help you to identify the
resources that are not associated with a change group and
to assign them appropriately. When a resource is assigned
to the correct group, the resource can be appropriately
governed even as it goes through stages such as patching,
upgrading, and reconfiguring.

Configuring access to CI data on your Google Cloud account
To ensure secure and reliable communications, the Discovery process communicates with your
cloud provider accounts and cloud resources through one or more MID Servers. You can set up
the MID Servers on your network or in one of your cloud networks.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Requirements

Important: This configuration process applies only if you use the Discovery application
to discover cloud resources. Skip this process if you use a different method for discovering
resources.

Detailed instructions
Google Cloud Platform Discovery

MID Server settings for Cloud Cost Management

Note: MID Server minimum memory size should be 4 GB.
Setting

Value

Supported Applications

Cloud Actions

Capabilities

The ALL setting includes all required
applications and capabilities. Alternatively,
you can specify the following settings:

Note: You can specify the following
settings for any number of MID
Servers. If you specify multiple MID
Servers, then Discovery, billing data
download operations, and actions
that are recommended by Cloud Cost
Management are assigned to one of the
MID Servers at random.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2117


<!-- page 2118 -->
Setting

Value

Option 1: To use this MID Server only for
Google Cloud, specify both of the following
values:
• Cloud Actions
• Google Cloud
Option 2: To use this MID Server for all
providers, specify the following values:
• Cloud Actions
• Google Cloud
• AWS
• Azure

Using a proxy server
You can use a proxy server for the Cloud Cost Management MID Server. See Proxy server
configuration for Cloud Cost Management MID Server.
Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Proxy server configuration for Cloud Cost Management MID Server
You can configure any MID Server to use a proxy server for Cloud Cost Management operations.
Proxy servers support all cloud-based activities such as running Discovery, Billing Download
jobs, and Price Sheet Download jobs.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Detailed instructions
See Proxy server configuration for MID Servers used for Cloud Discovery and Cloud Provisioning
and Governance .

Proxy server limitations
• Only Windows or Linux platforms are supported.
• The Google Cloud integration is not supported.
• The VMware integration is not supported.
• Remote PowerShell scripts cannot be executed.
• Custom APIs might not work.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2118


<!-- page 2119 -->
Supported proxy server authentication for Cloud Cost Management
Proxy Server type

Authentication type

HTTP/HTTPS

No authentication

SOCKS5

No authentication

HTTP/HTTPS

Basic authentication

SOCKS5

Basic authentication

HTTP/HTTPS

NTLM

Supported Proxy server configurations
Supported configuration settings
Configuration

Operating system

Proxy server

Authentication mode

Configuration 1

Linux

None

Not Applicable

Configuration 2

Windows

Squid (HTTPS)

None

Configuration 3

Linux

Squid (HTTPS)

Local

Configuration 4

Windows

Squid (HTTPS)

Active Directory

Related topics
MID Servers
Install a MID Server on Windows
Install a MID Server on Linux
Add a Google Cloud service account
Add a Google Cloud service account to store the credential and access information.

Before you begin

Role required: sn_cmp.cloud_admin
Set up download jobs for billing and price sheet data for the service account.

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account can include
multiple service accounts — even service accounts from different providers. For each service
account, you specify which datacenters to include in the cloud account.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Service accounts.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2119


<!-- page 2120 -->
3. On the form, fill in the fields.
Cloud Service Account
Field

Description

Name

Unique and meaningful name for this service
account.

Account Id

The project_ID value from the associated
JSON key file.

Discovery credentials

The credentials needed for ServiceNow
applications to access this account. You
may configure this field at a later stage,
while configuring access to Google Cloud
accounts.
◦ If you configured Google Cloud credentials
at ServiceNow AI Platform, select the name
of the relevant Google Cloud credential.
◦ To use other Google Cloud accounts to
access this account, leave the field empty.

Datacenter URL

URL of the datacenter.
This field is required only for Google Gov
Cloud accounts.

Datacenter Type

Type of the datacenter where the account is
hosted.
Select Google Cloud Platform
datacenter.

Datacenter discovery status

Status and timestamp of the last execution of
Discovery on the datacenter.
This value is generated automatically.

Is Billing Account

Option for enabling the account to access
billing data.

4. Select Save.

Result

The service account that you created gets listed on the Service accounts page.
Related topics
Schedule and manage the jobs that download Google Cloud billing data
Schedule and manage the Cloud Cost Management jobs that download Google Cloud price
sheets
Setup roles for Google Cloud billing download
To perform billing download for Google Cloud, you need specific required roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2120


<!-- page 2121 -->
Before you begin
Roles required:

• On the Google Cloud Console: Google Cloud administrator.
• Cloud Cost Management: insights_admin [sn_clin_core.insights_admin] or admin.

About this task
Procedure
1. Add the following required roles for the Billing module in the Google Cloud provider console.
◦ bigquery.jobs.create
◦ bigquery.jobs.list
◦ bigquery.tables.getData
◦ cloudsql.databases.delete
◦ cloudsql.databases.get
◦ cloudsql.databases.list
◦ cloudsql.databases.update
◦ cloudsql.instances.delete
◦ cloudsql.instances.get
◦ cloudsql.instances.list
◦ cloudsql.instances.restart
◦ cloudsql.instances.update
◦ compute.autoscalers.get
◦ compute.autoscalers.list
◦ compute.disks.delete
◦ compute.disks.get
◦ compute.disks.list
◦ compute.disks.update
◦ compute.instances.delete
◦ compute.instances.get
◦ compute.instances.getIamPolicy
◦ compute.instances.list
◦ compute.instances.setDiskAutoDelete
◦ compute.instances.start
◦ compute.instances.stop
◦ compute.instances.update
◦ compute.regions.list
◦ recommender.cloudsqlIdleInstanceRecommendations.get
◦ recommender.cloudsqlIdleInstanceRecommendations.list
◦ recommender.cloudsqlIdleInstanceRecommendations.update
◦ recommender.cloudsqlOverprovisionedInstanceRecommendations.get
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2121


<!-- page 2122 -->
◦ recommender.cloudsqlOverprovisionedInstanceRecommendations.list
◦ recommender.cloudsqlOverprovisionedInstanceRecommendations.update
◦ recommender.computeInstanceIdleResourceRecommendations.get
◦ recommender.computeInstanceIdleResourceRecommendations.list
◦ recommender.computeInstanceIdleResourceRecommendations.update
◦ recommender.computeInstanceMachineTypeRecommendations.get
◦ recommender.computeInstanceMachineTypeRecommendations.list
◦ recommender.computeInstanceMachineTypeRecommendations.update
◦ recommender.locations.get
◦ recommender.locations.list
◦ resourcemanager.projects.get
◦ resourcemanager.projects.list
2. Set the roles at the Google Cloud organization level so that it is applicable for all the projects
under that level.
The following APIs should be enabled on the Google Cloud Console for each project.
◦ Compute Engine API
◦ Recommender API
◦ BigQuery API
◦ BigQuery Data Transfer API
◦ Cloud Resource Manager API
◦ Cloud SQL Admin API
◦ Batch API
3. For details on policy creation see Google Cloud docs

.

Set up access to Google Cloud billing and usage data
Set up access to Google Cloud Platform (GCP) billing and usage data by following the steps.
1. Create a Google Cloud billing account
2. Create Google API credentials
3. Enable cost allocation in Google Cloud for Kubernetes cluster
4. Schedule and manage the jobs that download Google Cloud billing data
5. Add a Google Cloud CI class type to ensure accurate billing data
Related topics
Cancel a Google Cloud Billing download job
Create a Google Cloud billing account
Create a billing account, project, and BigQuery dataset in the Google Cloud Console.

Before you begin

You must be familiar with Google Cloud policies.
Role required: Google Cloud administrator
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2122


<!-- page 2123 -->
Procedure
1. Under the Google Cloud billing account, create a project that can store the billing data in a
BigQuery dataset.

Note: Charges associated with BigQuery usage are based on billing plans.
a. Create a service account under the project and create a key.
See the Create service accounts and Manage service accounts sections in Google Cloud
docs
for more information.
b. Configure the service account to have access to all projects.
You must have the Viewer role to all the projects.
c. Download the key file (JSON file) which contains the required credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2123


<!-- page 2124 -->
2. In the Google Cloud, enable Detailed usage costs to use Google Cloud Billing

Download.

Note: If you’re configuring the billing download BigQuery dataset for the first time, read
the Data availability section in the Understand the Cloud Billing data tables in Big Query
topic from Google cloud documentation .
Create Google API credentials
To access data securely on your provider account, the Discovery process must be present with
appropriate credentials.

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin] or admin

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2124


<!-- page 2125 -->
Procedure
1. In Cloud Cost Management, navigate to Cloud Cost Management Workspace > Operations >
Administration > Credentials.
2. Select Google API credentials.
3. Select New.
4. On the form, fill in the fields.
Google API Credentials
Field

Description

Name

Unique and descriptive name for the Google
Cloud credentials.

Active

Option to use the credential.

Type

Provider name, GCP.

Applies to

Indicates the MID Servers. If all, type All MID
Servers.

EMail

Billing service account email.

Secret Key

Secret key that you generated on the Google
Cloud Console.

5. Select Save.
Related topics
Cloud credentials
Enable cost allocation in Google Cloud for Kubernetes cluster
Enable cost allocation for each Kubernetes cluster before you run a Google Cloud Billing
download job to view the Kubernetes spend.

Before you begin

Role required: Google Cloud administrator
• You should be familiar with Google Cloud policies.
• Install Discovery and Service Mapping Patterns application (sn_itom_pattern) 1.10.2 or higher.
For more information, see Install Discovery and Service Mapping Patterns .
• Install CMDB CI Class Models (sn_cmdb_ci_class) version 1.53.1 or higher. For more
information, see CMDB CI Class Models .
• To set up Kubernetes discovery, see Kubernetes discovery using patterns

.

About this task
• For identifying resources for Kubernetes clusters during billing download, the tag
sn_ccm_k8_cluster_name is added to the resources, which already have goog-k8scluster-name tags.
• You must enable cost allocation for each individual Kubernetes cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2125


<!-- page 2126 -->
Procedure
1. Log in to the Google Cloud Console
2. Select the hamburger icon (

.

).

3. Select Kubernetes Engine.
4. Select Clusters.
5. In the Overview section, select a cluster name.
6. In the Features section, enable Cost Allocation.

Result

The cost allocation for the selected Kubernetes cluster is enabled and you can view the
Kubernetes spend.
Schedule and manage the jobs that download Google Cloud billing data
Billing Download jobs download, organize, and store billing data for your payer account on
the schedule that you specify. The system analyzes the data to generate reports and to make
recommendations for changes in your cloud operations that can lead to cost savings.

Before you begin
• Ensure that your system has 8 GB Clotho memory and 4 GB mid memory.
• You must set up required roles to perform billing download. For more information, see Setup
roles for Google Cloud billing download.
• Enable cost allocation for each Kubernetes cluster before you run a Google Cloud Billing
download job to view the Kubernetes spend. For more information, see Enable cost allocation
in Google Cloud for Kubernetes cluster.
Roles required:
• On the Google Cloud Console: Google Cloud administrator.
• Cloud Cost Management: insights_admin [sn_clin_core.insights_admin] or admin.

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

During the billing download, all the resources are pulled into the system. GCP SQL databases are
placed in the [cmdb_ci] table.

Note: From Cloud Cost Management version 8.1 onwards, the default time for billing
download jobs has changed from 12 a.m. to 1 a.m. (UTC). Also, schedule or run Cloud
Cost Management jobs only during off-business hours and when there's no other heavy
operations or jobs running on the ServiceNow instance.
If you have installed the Cloud Cost Management Infra Stack application, then toward
the end of a job, significant database update, and insert operations are performed based
on your Cloud CIs and spend data volume. Thus, any other job that impacts database
performance shouldn't be run during this time alongside Cloud Cost Management jobs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2126


<!-- page 2127 -->
• A Billing Download job creates and updates the billing node data table
[sn_cld_intg_gcp_cost_usage] with billing line items from the BigQuery dataset.

Note: Charges associated with BigQuery usage are based on billing plans.
• The CI placement process associates downloaded cost and usage data with the appropriate
CIs in the CMDB. See Add a Google Cloud CI class type to ensure accurate billing data for
details.
• Billing Download jobs can’t be in the Global scope.
• You can create only one Billing Download job for each account.
• To ensure accurate reporting and recommendations for some providers, make sure that the
Discovery application runs before the scheduled execution.
• Each successful execution of a Billing Download job triggers the Budget Forecast, Business
hours, Reservation/saving plans, Rightsizing, and Unused resources jobs to analyze spend
and usage data and to update the actionable recommendations in reports.
• Each successful execution of a Billing Download job updates tagged costs. Recent updates
that you make to tag category definitions (for example, adding a tag name to a category) might
not be reflected in cost reports. You should map tag values to tag categories after the first run
because populating tag values needs at least one successful run. You can apply the latest tag
category definitions to cost data without running a Billing Download job, by selecting Cloud
Cost Management Workspace > Operations > Cost usage tags > Tag categories and
then selecting Re-Apply Categories.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.
• Cost categories are updated with new cost tag values each time billing data is downloaded.
(You define cost tags in the provider portal to associate usage data with a particular business
entity. For example, the Cost Center category might include the tags development,
testing, and QA. The User category might include the names of your users.)
• Billing data is downloaded in reverse chronological order by month. For example, if the range is
from March to June, data for June is downloaded first.
• To ensure meaningful results for the first billing data download, the app downloads data for at
least 30 days. For example, if today is June 10 and you specify June for download, the system
downloads data for both May and June to ensure at least 30 days of data for analysis.
• You can download data only for the most recent twelve months.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
2. Select the Google tab.
3. Select New.
4. On the form, fill in the fields.
Google Billing Download Job
Field

Description

Name

Meaningful name for the scheduled
execution of the Billing Download job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2127


<!-- page 2128 -->
Field

Description

Last successful execution

The timestamp of the most recent successful
execution.

Notify users/groups

The users or groups to notify by email of
the status of the job execution (for example,
download failure). The system doesn’t send a
notification for success.
Users or groups with the
Cloud Integrations Admin
[sn_cld_intg_core.cloud_integrations_admin]
role are well suited to handle these issues.
To update the email template, navigate to
System Notification > Email > Notifications
and open the Notify on billing job execution
error template. For information on configuring
the email, see Create an email template .

Active

Option for activating the job. Only active jobs
are executed.

Run

Frequency with which to execute the Billing
Download job.
This field is automatically set to Daily.

Note: Depending on the value that you
select, additional fields appear.
Time

Time of day to execute the job.

Latest execution status

The status of the most recently executed job.

Latest execution details

Execution details of the most recently
executed job.

Google Settings
Billing account

Account to access for billing data. Every
account for which the Is Billing account
setting is true appears in the selection list.
For more information about the Is Billing
account field, see Add a Google Cloud
service account.
For example, the Billing account ID must be in
the 0XX0A-AXX9-6XXXA format.

BigQuery project Id

The project ID, which contains the BigQuery
dataset.

BigQuery dataset name

The name of the BigQuery dataset where
the billing data is getting stored on an hourly
basis.

5. Select Test Connection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2128


<!-- page 2129 -->
The Test Connection workflow uses the settings that you configured to attempt to access the
provider account. The system displays a progress pop-up and a success/error message that
suggests actions to fix the configured settings.
6. Select Execute now to execute the job after the connection succeeds.
7. In the Download billing data dialog box, fill in the fields.

Field

Description

Start month

Starting month for downloading the billing
data.

Note: Data is downloaded for the
specified months. If fewer than 30
days of data for analysis is received,
data for the preceding month is also
downloaded.
End month

Ending month for downloading the billing
data.

Re-import data

Option for overwriting data from an earlier
download attempt.

8. Select Download.
A Google Cloud billing download job goes through the following states during the job
execution:
a. Ready: Job is in queue. For example, when a job is created to download billing data for a few
months, the jobs for all months except the latest month are in Ready state.
b. Requested: Job will be fetched and processed immediately. For example, the job that's
created to download billing data for a month is in the Requested state. Also, when a job is
created to download billing data for more than a month, the latest month job is also in the
Requested state.
c. Reserved: Job is picked by the Kubernetes cluster for processing. The Kubernetes cluster
also sends the Job Id to Cloud Cost Management Glide to show which Kubernetes job is
processing the billing job.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
d. In Progress: Billing data is being processed.
e. Sink Begin: Kubernetes cluster sends some part of the processed billing data to the tables
such as Spend Report Daily Aggregate Cost and Spend Report Monthly Aggregate Cost on
the Glide. The records in these tables are in the Generating state. The job remains in the
Sink Begin state until the entire billing data is sent to Glide.
In the Sink Begin state, the CI placement also starts and the Status of the CI Placement
Stage changes from Ready to In progress.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2129


<!-- page 2130 -->
f. Sink Complete: All the processed billing data is sent to Cloud Cost Management Glide from
the Kubernetes cluster.

Important: This state is applicable only if you have installed the Cloud Cost
Management Infra Stack application.
g. Finished: Status after Sink Complete when all the billing files are sent to the Glide database.

Note: The following changes happen when the job is marked Finished:
▪ The state of the records in the Spend Report Daily Aggregate Cost and Spend Report
Monthly Aggregate Cost tables change from Generating to Active. Also, existing
records are marked inactive.
▪ All the sub accounts are mapped to the parent account.
h. Success: Job is completed successfully.

Result

The following events happen when the job executes:
• While downloading the data, Cloud Cost Management updates the billing node data table
[sn_cld_intg_<provider>_cost_usage] with the CIs in the CMDB that correspond to each
resource ID. If a CI doesn’t exist, the system generates a placeholder CI. On subsequent
discovery, the system reconciles the placeholder CI.
• Cloud Cost Management generates a log entry for each stage of the execution on the Billing
Download Executions page.
Add a Google Cloud CI class type to ensure accurate billing data
Specify the details of a new CI or CI type to enable the CI placement process to assign cost and
usage data correctly. The process is a part of Billing Download job execution. The CI placement
process associates downloaded cost and usage data with the appropriate CIs.

Before you begin

Role required: Cloud Cost Management Admin [sn_clin_core.insights_admin]

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Billing Download jobs store downloaded billing data in the billing node table. The Class Type
table holds CI type definitions for the cost usage table. Cloud Cost Management executes the
CI placement process to associate the billing and usage data with CIs in the CMDB. The CI
placement process queries the billing node table using the CI type definitions that reside in
the CI placement type table. For a new CI (or a CI type from a new provider), you specify the
parameters that uniquely define the CI, a CI type definition, and a class type table to store the CI
type definition.
The CI placement type table for Google Cloud [sn_cld_intg_gcp_ci_placement_type] inherits
from the Core CI placement type table (sn_cld_intg_core_ci_placement_type).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2130


<!-- page 2131 -->
Procedure
1. Go to the CI placement type table and select New.
Google Cloud class types in the Core CI placement type table
[sn_cld_intg_core_ci_placement_type]

2. Fill in the form.

CI Placement Type Information form
Field

Description

Class type

CMDB class type table that this type of CI is
stored in. New CIs of this type are added to
the table.

Name

Name of the CI type.

Query table

Billing node table that the CI placement
process queries to find instances of the CI
type.
Query table is sn_cld_gcp_cost_usage and
cannot be changed.

Query params

Parameter values in the billing node table
that uniquely define the CI type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2131


<!-- page 2132 -->
3. After you add a class type, you must reimport billing and usage data to ensure that CIs are
correctly placed into the new type.

Note: The supported CIs are placed after the Cumulus Unsupported CI Placement
scheduled job runs daily. For more information, see Supported CI class types for Google
Cloud services.
Cancel a Google Cloud Billing download job
A Billing download job obtains billing and usage data from each payer account for Google Cloud.
The Rightsizing, Unused resources, and Business hours processes use billing and usage data
when generating recommendations. You can cancel any Billing download job individually.

Before you begin
Roles required:

About this task

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Billing download jobs.
2. Select the Google tab.
3. Select either a currently running or scheduled job that you want to cancel.
4. On the Google Billing Download page, select Cancel execution or Cancel.
Schedule and manage the Cloud Cost Management jobs that download Google Cloud price
sheets
A Price Sheet Download job downloads and stores price sheet data.

Before you begin

Ensure that you have the proper credentials and service account setup.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task
• You create a scheduled Price Sheet Download job for each provider.
• A single API fetches the Price Sheet details for all regions at once.
• When the scheduled time arrives, job execution happens in multiple stages (for example,
connect to the provider, download the data, perform the post-import sort, and so on). The
system logs status and results on the Price Sheet Executions page for each stage.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2132


<!-- page 2133 -->
Price Sheet Download Job
Field

Name

Provider
Last successful execution

Download Price Sheet For

Value

Meaningful name for the Price Sheet Download
job.
Name of the cloud provider.
Timestamp of the most recent execution of the
job.
Price sheet downloads for different services.
◦ AWS
▪ Compute and Storage
▪ Database
▪ All
◦ Azure
▪ Compute
▪ Database
▪ Storage
◦ Google
▪ Compute and Storage
▪ Database
▪ All

Active

Run

Option for activating the Price Sheet Download
Job. Only active jobs are executed.
Frequency to execute the job.

Note: Depending on the value that you
select, additional fields appear. For example,
if you select a Run value of Monthly, a Day
field appears. A value of 3 would mean the
third day of the month.
This field is automatically set to Monthly.
Time

Time of day to execute the job.

Current execution status

Status of the execution that is currently running.

Current execution details

Details for the execution that is currently running.

4. Select Save.
5. Select Execute to execute the job.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2133


<!-- page 2134 -->
During execution, Cloud Cost Management downloads and stores the data. You can find the
execution ID, status, and execution logs in the Price Sheet Executions tab. If there’s no new
data, the execution is marked Skipped. If the download process is stuck, the execution is
marked as Canceled.
Related topics
Rightsizing resources
Cancel a GCP Price sheet download job in Cloud Cost Management
An GCP Price sheet download job downloads price sheet data from Google Cloud Platform
(GCP). You can cancel any Price sheet download job individually.

Before you begin

For each provider, run Discovery on each service account.
Make sure to have the proper credentials and service account setup.
Role required: insights_admin [sn_clin_core.insights_admin].

About this task

Cloud Cost Management downloads price sheet data from each provider one region at a time.
If you cancel a running price sheet download job, the current region finishes downloading and
the system cancels download for the remaining regions. If you delete a scheduled job execution,
then all regions are marked as canceled.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Price sheet download jobs.
2. Select either a currently running or scheduled job that you want to cancel.
3. On the Price Sheet Download job page, select Cancel execution.

Using Cloud Cost Management
Use Cloud Cost Management to rightsize, identify, assign, manage, and analyze usage data of
your cloud resources.

Reduce resource cost with Reservation Plans
View the Reserved Instances (RI) report, implement recommendations, and configure processes
to convert on-demand payment plans to reservation plans, and save the cost of your resources.
You can filter by payment option, term, and look back period to view specific results for the
Reserved Instances report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2134


<!-- page 2135 -->
Chart

Description

Upfront cost to reserve

Upfront cost if all Reservation/Saving plans
recommendations were applied.

Overall RI utilization percentage

Percentage of resources on reservation plans
that were used and that weren’t used in the
last 30-day period.

Potential savings by service category

Monthly savings to expect when all
Reservation/Saving plan recommendations
are applied.

Recommendation tab

Description

New

Resources that would
benefit most in reservation
plans. Review the list and
decide the conversion to
reservation plans. You can
perform conversion by moving
a resource to one of the
other tabs by selecting the
appropriate action.

Available selections on selected
recommendations

• Accept
• Decline

Accepted

Resources that are converted
to reservation plans. After
a resource is moved to the
Accepted Recommendations
tab, it won't reappear on the
New Recommendations tab.

Decline

Declined

Resources that aren’t
converted to reservation
plans. After a resource is
moved to the Declined

Accept

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2135


<!-- page 2136 -->
Recommendation tab

Available selections on selected
recommendations

Description

Recommendations tab, it
won't reappear on the New
Recommendations tab.

Important: When you move a resource to the Accepted Recommendations or Declined
Recommendations tab, the Cloud Cost Management application doesn't perform any
action. You can change payment plans on the provider management interface.

Google Cloud recommendations are updated periodically and might not show the latest
suggestions until the console is manually refreshed. In contrast, Cloud Cost Management
fetches recommendations via API, ensuring it has the most current data. This difference
can sometimes cause Google Cloud RI recommendations in Cloud Cost Management to
diverge from what's shown in the Google Cloud console. A manual refresh is required to
see the latest recommendations.
You can also configure Reservation/Saving plans operations by selecting Settings.
Configure Reservation/Saving plans operations
Configure Reservation/Saving plans processes and specify the amount of potential savings that
triggers notifications.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Role required: insights_admin and insights_owner

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Reservation/Saving plans.
2. On the Reserved Instances page, select Settings.
3. On the form, fill in the fields:
Reserved Instance Settings form
Field

Description

Enable Reserved Instance

Option for enabling Reserved Instance
activities. Clearing the check box disables
Reservation/Saving plans operations.
Default: Enabled

Notify when potential reserved instance
savings exceed (%) of total spends

Percentage of overall cloud spends for
potential savings on reserved savings that
should trigger an email notification to the
users or groups that you specify.
The value is calculated using the amount that
could be saved if all the Reservation/Saving
plans recommendations are followed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2136


<!-- page 2137 -->
Field

Description

The default value of 15 means that
notifications are sent only when the savings
for potential reserved instances are greater
than 15% of total costs.
Do not recommend if savings are below
threshold

Minimum cost, as calculated over the
Lookback period, to use when deciding
whether to recommend a Reservation/Saving
plan for a resource.
For example, a setting of ¥100 means that the
app should ignore any Reservation/Saving
plan recommendation that would result in
less than ¥100 in savings.

Notify groups/Notify users

Users or groups to notify by email when
the spend for potential reserved instance
savings exceed the specified percentage
of overall cloud spend. For information on
configuring the email, see Create an email
template .

Default Filter Settings
Payment option

Sets the selected payment option as the
default filter on the Reservation/Savings Plan
page.

Term

Sets the selected term as the default filter on
the Reservation/Savings Plan page.

Look back period

Sets the selected look back period as the
default filter on the Reservation/Savings Plan
page.

4. Select Save.

What to do next

To view the changes, rerun the Billing Download job.

Resize resources with Rightsizing
Gain better visibility of resource usage by identifying your over-provisioned or underused
resources, configuring rightsizing operations, implementing rightsizing recommendations, and
performing various rightsizing operations.
You can configure Rightsizing operations by selecting Settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2137


<!-- page 2138 -->
Chart

Description

Total potential savings by service category

Total savings to expect if all rightsizing
recommendations are applied by service
category such as Compute, Database, and
Storage.

Total potential savings by change group

Total savings to expect if all rightsizing
recommendations are applied by change
group such asChange Management and
Application Development.

Recommendations tab

New

Scheduled

Declined

Description

Available actions on selected
recommendations

Resources that are candidates
for Rightsizing. Each
successful execution of a
Billing Download job triggers
the Rightsizing jobs to analyze
spend and usage data and
to update the actionable
recommendations in reports.

• Exclude

Resources that are scheduled
in Rightsizing jobs.

• Reschedule

Resources that owners didn’t
want to resize (declined the
change request).

• Schedule

• Remove

• Exclude
• Reschedule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2138


<!-- page 2139 -->
Recommendations tab

Completed

Failed

Excluded

Available actions on selected
recommendations

Description

Resources that were
rightsized by the Rightsizing
job.
Resources for which the
Rightsizing operation
wasn’t successful. For failed
attempts, the Rightsizing
operation performs a rollback
as described in AWS only –
Rollback on failed Rightsizing
attempts.
Resources that are configured
not to be considered for
Rightsizing.

None

• Exclude
• Reschedule

Remove from exclusion

Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
Column

Description

Configuration item

Unique identifier of the resource.

Monthly savings

Potential savings if the resource is resized to
the Recommended size.

Provider

The provider that hosts the resource.

Service category

Lists all service categories from the instance
sorted by name.

Cloud service

Lists all cloud categories sorted by name.​

Current size

Size of the resource that was analyzed for
Rightsizing, the size that you’re currently
paying for.

Recommended size

• AWS: The size that is operationally and costwise most appropriate for the resource,
based on the analysis of provisioning and
usage levels over the last 14 days.
• Microsoft Azure: Recommendation from the
Azure Advisor service.

Override size

Size to use instead of the recommended
size. By default, the system uses the
Recommended size when Rightsizing. Specify
a different size by specifying an Override size.

Rationale

The reason that the system recommends
resizing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2139


<!-- page 2140 -->
Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
(continued)
Column

Description

• AWS: Based on Cloud Cost Management
analysis of provisioning and usage levels
over the last 14 days.
• Microsoft Azure: Recommendation from the
Azure Advisor service.
Confidence

The confidence level in a recommendation.
• High confidence requires the following
conditions:
◦ The system has at least 10 days of usage
data for the resource.
◦ The current and recommended family or
generation is identical.
• Medium confidence requires the following
conditions:
◦ The system has less than 10 days of
usage data for the resource.
◦ The current and recommended family or
generation is identical.
• Low confidence: The current and
recommended family/generation are
different.

Account

The service account that includes the
resource. A service account represents a
group of related regions in your provider
account.

Region

If appropriate for the provider, region in the
service account that hosts the resource.

Owned by

Owner of the resource.

Change group

Change group for the resource.

Source

Source of the recommendations.
• AWS / Azure / GCP: Provider-generated
recommendations
• ServiceNow: Custom-generated
recommendations

State

For resources that match an Auto-approval
(Standard Change) approval type, status of the
change request.

Job

Name of the Rightsizing job that the resource
is part of.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2140


<!-- page 2141 -->
Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
(continued)
Column

Description

Planned date

Date that the job is scheduled to run.

Change request

The change request that is associated with the
recommendation.

Configure Rightsizing operations
Configure Rightsizing processes and specify the amount of potential rightsizing savings that
triggers notifications.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin or insights_owner

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. Select Settings.
3. On the form, fill in the fields.
Rightsizing Settings
Field

Value

Enable Rightsizing

Option for enabling Rightsizing activities.
Clearing the check box disables Rightsizing.
Default: Enabled
This field is automatically enabled.

After resize, exclude resource for (days)

Number of days to place a resized resource
in the Excluded Resources list. During this
monitoring period, you can’t remove the
resource from the Excluded Resources list.
Cloud Cost Management monitors resized
resources for the specified period to verify
that the new size is appropriate. When the
period expires, the resource is removed from
the list and rightsizing analysis resumes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2141


<!-- page 2142 -->
Field

Value

Note: Microsoft Azure only: The Azure
Advisor service begins to analyze
usage and may again recommend
resizing after seven days regardless
of this setting. If you specify a value
greater than seven days, the Cloud Cost
Management doesn’t report the Azure
Advisor recommendation for the time
period that you specify.
Minimum value: 7
Do not recommend if savings are below
threshold

Minimum cost over a 30-day period to use
when deciding whether to rightsize.
For example, a setting of ¥100 means
that Cloud Cost Management ignores any
rightsizing recommendation that would result
in less than ¥100 in savings over 30 days.

Notify when potential rightsizing savings
exceed (%) of total spend

Percentage of overall cloud spend for
resources that are sized incorrectly that
should trigger an email notification to the
users or groups that you specify.
The value is calculated using the amount
that could be saved if all rightsizing
recommendations are followed.
Default: 15%
The default value of 15 means that
notifications are sent only when the cost of
non-rightsized resources is greater than 15%
of total costs.

Notify users / Notify groups

Users or groups to notify by email when
the spend for incorrectly sized resources
exceeds the specified percentage of overall
cloud spend. For information on configuring
the email, see Create an email template .

Advanced

Option for specifying non-default change
templates for generating change requests.

Auto-approval (Standard Change)
Script include

This field appears only when the Advanced
check box is selected.
CLINRSStandardChangeRequestUtil:
The Change group is derived from the
Standard Change template and can’t be
overridden.

Manual Approval (Normal Change)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2142


<!-- page 2143 -->
Field

Script include

Value

This field appears only when the Advanced
check box is selected.
CLINRSNormalChangeRequestUtil:
Manual approval or Normal Change policies.

4. Select Save.
Specify rate discounts to enable accurate pricing for Rightsizing recommendations
To generate an accurate Rightsizing recommendation, the system analyzes usage data for the
last 14 days, obtains prices from the price sheet data tables, and then applies appropriate
discounts. To enable the calculations, specify the provider's discount rate for each service
account.

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin]

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
AWS price discounts.
2. Select New.
3. On the form, fill in the fields.
AWS Price Discount
Field

Description

Service account

The service account that the specified
discount applies to.

Discount (%)

The percentage discount for the selected
service account.

4. Select Save.

What to do next

View the provider's discount rate for each service account by navigating to Cloud Cost
Management Workspace > Operations > Administration > AWS price discounts.
Related topics
Schedule and manage the Cloud Cost Management jobs that download AWS price sheets
Define a metric threshold
To enable accurate memory usage data for use in generating Rightsizing recommendations, you
first define memory metrics in your account. You then define a custom memory metric in Cloud
Cost Management.

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2143


<!-- page 2144 -->
• Run Discovery on each service account.
• Verify that the Billing Download and Price Sheet Download job has been completed
successfully.

About this task

Note: You can configure the memory threshold for AWS and Azure only.

AWS doesn’t automatically collect memory metric statistics. On the AWS Management Console,
you specify the statistics to collect and push the data to Amazon CloudWatch. Cloud Cost
Management accesses the data through CloudWatch, and verifies that the combination of
namespace and metric name is defined correctly. To recommend resources for Rightsizing,
Cloud Cost Management analyzes the memory usage data for the custom metric. If no data is
returned, the analysis uses the maximum memory of the resource.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. Select Settings.
3. Select the Service category metric tab.
4. Select New.
5. On the form, fill in the fields.
Create New Metrics Configuration
Field

Description

Provider

Name of the service provider.
◦ AWS
◦ Azure

Service Category

Service category for the provider.
◦ Compute
◦ Database

Note:
◦ For AWS, recommendations are
generated only on CPU usage
(Compute).
◦ For Azure, recommendations are
generated based on CPU, Memory,
and Network usage (Compute and
Database).
Service Accounts

Service accounts for the selected provider.

Aggregation Type

Metric statistics received in time intervals.
◦ Avg
◦ Min
◦ Max

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2144


<!-- page 2145 -->
Field

Description

Metric Type

Type of the metric statistic.
◦ CPU
◦ Memory
◦ Network

Threshold (%)

Threshold value used while generating
Rightsizing recommendations.

Note: If Provider is selected as

AWS, Service Categoryis selected as
Database, and Metric Type is selected
as Network, the value shows up as an
integer.

6. Select Save.
Schedule resources to be rightsized
To rightsize a resource, add it to a Rightsizing job and specify when the job should run. You can
also move resources out of one scheduled job into a different job or remove a resource from a
job.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin or insights_owner

About this task

When you change the resources that are included in a job, Cloud Cost Management checks for
the following conditions:
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Note: If a recommendation to rightsize a Google Cloud resource is dismissed from
the Google Cloud management portal, the resource doesn't appear in Rightsizing
recommendations.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. In the list on the appropriate tab, select the check boxes for the resources to rightsize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2145


<!-- page 2146 -->
◦ To create a Rightsizing job for resources that are new candidates for rightsizing: On the New
Recommendations tab, select resources and then select Schedule.
◦ To create a new job for resources that had previously been scheduled but were not resized:
On the Declined Recommendations tab or the Failed Recommendations tab, select
resources and then select Reschedule.
3. In the dialog box, fill in the fields.
Schedule job
Field

Value

Job type

Type of job action.
Select Schedule job.

Job name

Schedule
Approval type

Unique and descriptive name for the
Rightsizing job.
Date and time to run the Rightsizing job.
Type of change request to use.
◦ Auto approval: Generates and autoapproves a change request to resize the
resource. The system also sends the
approved change request to the change
group. The resource is added to the list of
resources that the job will resize.
◦ Manual approval: Generates a change
request (Normal Change type) for a
member of the change group to resize the
resource and continues to list the resource
in the appropriate Rightsizing reports.

Note:
The Short description, Description,
Assignment group, and Affected CIs
fields are auto populated. For more
information, see Create a change
request .
Change template

This field appears only when the Approval
type is selected as Auto approval.
Change request template (Standard Change
type) to be used. If no template appears in
the list, you must create one. See Create a
change request template .

4. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2146


<!-- page 2147 -->
Result

The Rightsizing job is created and will run at the scheduled time.
• Until a member of the change group approves or rejects the change, the resource state is set
to Pending, the resource remains listed on reports, and no other action is taken.
• If a member of the change group approves the request, the state is set to Approved and the
resource is added to the list of resources that the job will resize.
• If a member of the change group rejects the request, the resource state is set to Declined, the
resource remains listed on reports, and no action is taken.
Related topics
Change Management
Standard change catalog
Create a change request template
Exclude a resource from all Cloud Cost Management reports
Move a resource to a different Rightsizing job
You can add resources to a currently scheduled job, move resources from one job to another, or
remove resources from a job.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin or insights_owner

About this task

When you change the resources that are included in a job, the app checks for the following
conditions:
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. In the list on the appropriate tab, select the check boxes for the resources to rightsize.
◦ On the New Recommendations tab, select Schedule.
◦ On the Declined Recommendations tab or the Failed Recommendations tab, select
Reschedule.
3. In the dialog box, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2147


<!-- page 2148 -->
Schedule job
Field

Value

Job type

Type of job action.
Select Add to job.

Job name

Schedule
Approval type

Unique and descriptive name for the
Rightsizing job.
Date and time to run the Rightsizing job.
Type of change request to use.
◦ Auto approval: Generates and autoapproves a change request to resize the
resource. The system also sends the
approved change request to the change
group. The resource is added to the list of
resources that the job will resize.
◦ Manual approval: Generates a change
request (Normal Change type) for a
member of the change group to resize the
resource and continues to list the resource
in the appropriate Rightsizing reports.

Change template

This field appears only when the Approval
type is selected as Auto approval.
Change request template (Standard Change
type) to be used. If no template appears in
the list, you must create one. See Create a
change request template .

4. Select Submit.
Exclude a resource from Rightsizing analysis
To ensure that a particular resource is not considered or recommended for Rightsizing, add the
resource to the Excluded Resources list. The system continues to collect cost and usage data but
does not consider the resource for Rightsizing.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin or insights_owner

About this task

When you change the resources that are included in a job, the app checks for the following
conditions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2148


<!-- page 2149 -->
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. On the New, Declined, or Failed tabs, select the resources that you want to exclude from
rightsizing analysis.
3. Select Exclude.
The resources are added to the Excluded Resources list. To remove a resource from the list,
select the resources from the Excluded tab and then select Remove From Exclusion.
Related topics
Exclude a resource from all Cloud Cost Management reports
View or edit scheduled and completed Rightsizing jobs
View and manage the upcoming and completed Rightsizing jobs.

Before you begin

Role required: insights_admin or insights_owner

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Rightsizing.
2. Select the Scheduled or Completed tab.
3. In the Job column, select a job to view the details.
Cloud Insights Job
Field

Description

Approval type

The type of approval that is specified for
the job, such as Auto-approval (Standard
Change) or Manual approval (Normal
Change).

Job status

Status of the job execution.

Name

Name of the scheduled job.

Job Action

The action that is specified for Rightsizing
jobs.

Standard change template

The used change request template (Standard
Change type).

Job owner

Owner of the Rightsizing job.

Action

Action taken for the resource such as Resize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2149


<!-- page 2150 -->
Field

Description

Planned date

Time that the job ran or will run.
You can edit the date.

4. Select Save.

Manage unused resources
Reduce cost by identifying the unused resources and scheduling jobs to power-off or terminate
the unused resources.
You can configure Unused resources operations by selecting Settings.

Chart

Description

Total potential savings by service category

Total savings to expect if all Unused resources
recommendations are applied by service
category such as Compute, Database, and
Storage.

Total potential savings by change group

Total savings to expect if all Unused resources
recommendations are applied by change
group such as Change Management and
Application Development.

Recommendation tab

Description

New

Resources that are candidates
for Unused resources. Each
successful execution of a
Billing Download job triggers
the Budget Forecast, Business
Hours, Reservation Plans,
Rightsizing, and Unused
resources jobs to analyze

Available actions on selected
recommendations

• Schedule
• Exclude

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2150


<!-- page 2151 -->
Recommendation tab

Available actions on selected
recommendations

Description

the spend and usage data of
resources and to update the
actionable recommendations
in reports.

Note: Microsoft Azure
only: The Azure Advisor
service generates the
recommendations that
appear in Rightsizing
and Unused resources
reports. Cloud
Cost Management
doesn’t generate the
recommendations.
Scheduled

Resources that are scheduled
in Unused resources jobs.

Completed

Resources that the Unused
resources job terminated or
stopped.

Declined

Resources for which owners
didn’t want to perform any
action or declined the change
request.

Failed

Resources for which the
Unused resources operation
wasn’t successful.

• Reschedule
• Remove from Job
None

• Reschedule
• Exclude

• Reschedule
• Exclude

Note: If you perform
any action on the
terminated or stopped
virtual machines, the
recommendations get
completed but don't
show up in the Failed
recommendations tab.
Excluded

Resources that are configured Remove from exclusion
not to be considered for
Unused resources.

Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
Column

Description

Configuration item

Unique identifier of the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2151


<!-- page 2152 -->
Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
(continued)
Column

Description

Monthly savings

Potential savings if the resource is resized to
the recommended size.

Provider

The provider that hosts the resource.

Service category

Lists all service categories from the instance
sorted by name.

Cloud service

Lists all cloud categories sorted by name.​

Current size

Size of the resource that was analyzed for.

Rationale

The reason that the system recommends
terminating or stopping.
• AWS: Cloud Cost Management analysis of
provisioning and usage levels over the last
14 days.
• Microsoft Azure: Recommendation from the
Azure Advisor service.

Confidence

The confidence level in a recommendation.
• High confidence requires the following
conditions:
◦ The system has at least 10 days of usage
data for the resource.
◦ The current and recommended family or
generation is identical.
• Medium confidence requires the following
conditions:
◦ The system has less than 10 days of
usage data for the resource.
◦ The current and recommended family or
generation is identical.
• Low confidence: The current and
recommended family/generation are
different.

Change Group

Change group for the resource.

Account

The service account that includes the
resource. A service account represents a
group of related regions in your provider
account.

Region

If appropriate for the provider, region in the
service account that hosts the resource.

Owned by

Owner of the resource.

Source

Source of the recommendations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2152


<!-- page 2153 -->
Columns on the New, Scheduled, Declined, Completed, and Failed Recommendations tabs
(continued)
Column

Description

• AWS / Azure / GCP: Provider-generated
recommendations
• ServiceNow: Custom-generated
recommendations

Configure Unused resources operations
The Unused resources feature recommends termination or power-off for resources that are
wasting money because they aren’t being used. Configure Unused resources processes and
specify the potential savings that trigger notifications.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner].

About this task

Note: Microsoft Azure only: The Azure Advisor service generates the recommendations
that appear in Rightsizing and Unused resources reports. Cloud Cost Management doesn't
generate the recommendations.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Unused resources.
2. Select Settings.
3. On the form, fill in the fields.
Unused Machine Settings
Field

Value

Enable Unused Machines

Option for enabling Unused resources
activities.
This field is automatically enabled.

Advanced
Auto pause interval

Option to specify non-default change
templates.
Indicates the minimum idle time for the Azure
SQL database in minutes.
Default: 60 minutes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2153


<!-- page 2154 -->
Field

Value

Maximum age for snapshots in AWS/Azure/
Google (days)

Age of the snapshot. The snapshot data is
displayed in the Rationale column in the
Recommendations tab.
Default: 90 days

Notify when potential unused savings exceed Percentage of overall cloud spend on unused
(%) of total spend
resources that triggers an email notification to
the users or groups that you specify.
The value is calculated using the amount
that could be saved if all Unused resources
recommendations are applied.
Default: 15%
The default value of 15 means that
notifications are sent only when the cost of
operation for unused resources is greater
than 15% of total costs.
Notify users / Notify groups

Users or groups to notify by email when the
spend for unused resources exceeds the
specified percentage of overall cloud spend.
For information on configuring the email, see
Create an email template .

Auto-approval (Standard Change)
Script include

This field appears only when the Advanced
check box is selected.
CLINRSStandardChangeRequestUtil
Script include to use for change requests
when a resource matches a policy of the
specified type. The Change group is derived
from the Standard Change template and
can’t be overridden.

Manual approval (Normal Change)
Script include

This field appears only when the Advanced
check box is selected.
CLINRSNormalChangeRequestUtil

4. Select Save.
Related topics
Change Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2154


<!-- page 2155 -->
Schedule unused resources to be powered off or terminated
To terminate or power off an unused resource, add it to an Unused resources job, specify
whether to terminate or power off, and specify when the job should run. You can also move
resources from one scheduled job to a different job.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner]

About this task

Important: After an Unused resources job powers off or terminates a machine, the
machine is added to the Excluded Resources list for Business Hours. This process ensures
that the resource isn't started again in the future because it matches a Business Hours
policy. The exclusion reason on the Business Hours Excluded Resources tab indicates that
the resource is an unused resource.

When you change the resources that are included in a job, the app checks for the following
conditions:
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Unused resources.
2. In the list on the appropriate tab, select the check boxes for the resources to terminate.
◦ To create an Unused resources job for resources that are new candidates for termination: On
the New Recommendations tab, select the resources and then select Schedule Job.
◦ To create a job for resources that had previously been scheduled but the action
wasn't completed successfully: On the Declined Recommendations tab or the Failed
Recommendations tab, select the resources and then select Reschedule.

Note: Microsoft Azure only: The Azure Advisor service generates the recommendations
that appear in Rightsizing and Unused resources reports. Cloud Cost Management
doesn't generate the recommendations.
3. In the dialog box, fill in the fields.

Field

Value

Job Type

Type of job action.
Select Schedule job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2155


<!-- page 2156 -->
Field

Job name

Action

Value

Unique and descriptive name for the Unused
resources job.
The action to take on the selected resources:
◦ Power off machine: Power off triggers
a Microsoft Azure process called
deallocation to set the resource as
Stopped (Deallocated).
◦ Terminate machine: Terminated machines
can't be recovered.
◦ Terminate machine and delete storage: If
the root volume isn’t automatically deleted
when the VM is terminated, the job deletes
the root volume. No other volumes are
deleted.

Note: Terminated resources or
deleted volumes can't be recovered.
Schedule

Approval type

Date and time to run the Unused resources
job.
Type of change request to use. Unused
Machines operations are directly integrated
®
with the ServiceNow Change Management
feature.
◦ Auto approval (Standard Change):
Generates and auto-approves a change
request to terminate or stop the resource.
The system also sends the approved
change request to the change group. The
resource is added to the list of resources
that the job terminates or stops.
◦ Manual approval (Normal Change):
Generates a change request (Normal
Change type) for a member of the change
group to terminate or stop the resource
and continues to list the resource in the
appropriate Unused resources reports.
▪ Until a member of the change group
approves/rejects the change, the
resource state is set to Pending, the
resource remains listed on reports, and
no other action is taken.
▪ If a member of the change group
approves the request, the state is set to
Approved and the resource is added

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2156


<!-- page 2157 -->
Field

Value

to the list of resources that the job
terminates or stops.
▪ If a member of the change group rejects
the request, the resource state is set to
Declined, the resource remains listed on
reports, and no action is taken.

Note:
The Short description, Description,
Assignment group, and Affected CIs
fields are auto populated. For more
information, see Create a change
request .
Change template

This field appears only when the Approval
type is selected as Auto approval.
Change request template (Standard Change
type) to be used. If no template appears in
the list, you must create one. See Create a
change request template .

4. Select Submit.

Result

The Unused resources job is created and runs at the scheduled time.
Related topics
Change Management
Standard change catalog
Create a change request template
Exclude a resource from all Cloud Cost Management reports
Move a resource to a different Unused resources job
You can add resources to a currently scheduled job, move resources from one job to another, or
remove resources from a job.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner].

About this task

When you change the resources that are included in a job, the app checks for the following
conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2157


<!-- page 2158 -->
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Unused resources.
2. In the list on the appropriate tab, select the check boxes for the resources to terminate.
◦ To create an Unused resources job for resources that are new candidates for termination: On
the New Recommendations tab, select the resources and then select Schedule Job.
◦ To create a job for resources that had previously been scheduled but weren’t resized: On the
Declined Recommendations tab or the Failed Recommendations tab, select the resources
and then select Reschedule.

Note: Microsoft Azure only: The Azure Advisor service generates the recommendations
that appear in Rightsizing and Unused resources reports. Cloud Cost Management
doesn't generate the recommendations.
3. In the dialog box, fill in the fields.

Field

Value

Job Type

Type of job action.
Select Add to job.

Job name

Action

Unique and descriptive name for the Unused
resources job.
The action to take on the selected resources:
◦ Power off machine: Power off triggers
a Microsoft Azure process called
deallocation to set the resource as
Stopped (Deallocated).
◦ Terminate machine: Terminated machines
can't be recovered.
◦ Terminate machine and delete storage: If
the root volume isn’t automatically deleted
when the VM is terminated, the job deletes
the root volume. No other volumes are
deleted.

Note: Terminated resources or
deleted volumes can't be recovered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2158


<!-- page 2159 -->
Field

Schedule

Approval type

Value

Date and time to run the Unused resources
job.
Type of change request to use. Unused
Machines operations are directly integrated
®
with the ServiceNow Change Management
feature.
◦ Auto approval (Standard Change):
Generates and auto-approves a change
request to terminate or stop the resource.
The system also sends the approved
change request to the change group. The
resource is added to the list of resources
that the job terminates or stops.
◦ Manual approval (Normal Change):
Generates a change request (Normal
Change type) for a member of the change
group to terminate or stop the resource
and continues to list the resource in the
appropriate Unused Machines reports.
▪ Until a member of the change group
approves/rejects the change, the
resource state is set to Pending, the
resource remains listed on reports, and
no other action is taken.
▪ If a member of the change group
approves the request, the state is set to
Approved and the resource is added
to the list of resources that the job
terminates or stops.
▪ If a member of the change group rejects
the request, the resource state is set to
Declined, the resource remains listed on
reports, and no action is taken.

Change template

This field appears only when the Approval
type is selected as Auto approval.
Change request template (Standard Change
type) to be used. If no template appears in
the list, you must create one. See Create a
change request template .

4. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2159


<!-- page 2160 -->
Exclude a resource from Unused resources analysis
To ensure that a particular resource is not considered or recommended for Unused resources,
add the resource to the Excluded Resources list. The system continues to collect cost and usage
data but does not consider the resource for the processes of Unused resources.

Before you begin

Run Discovery on each service account.
Ensure that the Billing Download job has completed for each provider.
Ensure that the Price Sheet Download job has completed for each provider.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner].

About this task

When you change the resources that are included in a job, the app checks for the following
conditions:
• A resource in the job is owned by another user (as when a insights_admin updates a job that
was created by an insights_owner or an insights_owner updates a job that was created by a
different insights_owner).
• The job was created by another user.
If either condition is met, the app sends an email notification to the owner of the resource or the
creator of the job.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Unused resources.
2. On the New, Declined, or Failed tabs, select the resources that you want to exclude from
unused resources analysis.
3. Select Exclude.
The resources are added to the Excluded Resources list. To remove a resource from the list,
select the resources from the Excluded tab and then select Remove From Exclusion.
Related topics
Exclude a resource from all Cloud Cost Management reports
View or edit scheduled and completed Unused resources jobs
View and manage the upcoming and completed Unused resources jobs.

Before you begin

Role required: insights_admin or insights_owner

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Unused resources.
2. Select the Scheduled or Completed tab.
3. In the Job column, select a job to view the details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2160


<!-- page 2161 -->
Cloud Insights Job
Field

Description

Approval type

The type of approval that is specified for
the job, such as Auto-approval (Standard
Change) or Manual approval (Normal
Change).

Job status

Status of the job execution.

Name

Name of the scheduled job.

Job Action

The action that is specified for Unused
resources jobs.

Standard change template

The used change request template (Standard
Change type).

Job owner

Owner of the Unused resources job.

Action

Action taken for the unused resource such as
Terminate.

Planned date

Time that the job ran or will run.
You can edit the date.

4. Select Save.

Improve resource usage with Business hours
Improve resource usage and reduce your cloud spend by running resources during the specified
business hours.
Use the Business hours recommendation page to:
• Manage Business hours processes.
• Configure Business hours operations by selecting Settings.
• Define or update Business hours processes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2161


<!-- page 2162 -->
Chart

Description

Total potential savings by service category

Total savings to expect if all Business hours
recommendations are applied by service
category such as Compute and Database.

Total potential savings by change group

Total savings to expect if all Business hours
recommendations are applied by change
group such as Change Management and
Application Development.

Business hr vs. Non-business hr spend

Spend for resources during business hours
against non-business hours.

Available action on selected
recommendations

Tab

Description

New

Resources that are candidates Exclude
for applying Business hours
processes.

Scheduled

Resources that are tagged
to have business hours
enforced.

Declined

Resources for which owners
Exclude
(or other approver) didn’t want
to enforce business hours
(rejected the change request).

Failed

Resources for which the
attempt to enforce business
hours failed.

None

Exclude

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2162


<!-- page 2163 -->
Available action on selected
recommendations

Tab

Description

Report-only

Resources that match Reportonly policies.

Excluded

Resources that are configured Remove from exclusion
not to be considered for
business hours.

Exclude

Important: After an
Unused resources job
powers off a machine,
the machine is added to
the Excluded Resources
list for Business Hours.
This process ensures
that the resource
isn't started again in
the future because it
matches a Business
hours policy. The
exclusion reason on
the Business hours
Excluded tab indicates
that the resource is an
unused resource.
Columns on the New, Scheduled, Declined, Failed, and Report-only Recommendations tabs
Column

Description

Configuration item

Unique identifier of the resource.

Predicted monthly savings

Predicted savings if the Business hours
recommendations are applied.

Provider

The provider that hosts the resource.

Service category

Lists all service categories from the instance
sorted by name.

Cloud service

Lists all cloud categories sorted by name.​

Policy

The Business hours policy that the resource
matches to.

Policy type

Type of the Business hours policy that the
resource matches to.

Change request

Change request that is associated with the
recommendation.

Change Group

Change group for the resource.

Account

The service account that includes the
resource. A service account represents a
group of related regions in your provider
account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2163


<!-- page 2164 -->
Columns on the New, Scheduled, Declined, Failed, and Report-only Recommendations tabs
(continued)
Column

Description

Region

If appropriate for the provider, region in the
service account that hosts the resource.

Owned by

Owner of the resource.

Failure type

This column appears only for the Failed tab.
Reason for which the change request wasn’t
generated or the specified business hours
weren’t applied to the resource.

Details

This column appears only for the Failed tab.
Details of the failure type and the action that
you must take to resolve the failure.

Configure Business hours operations
You can choose to use or to disable Business Hours features and specify the amount of nonbusiness hour spend that triggers notifications to users or groups. Controlling unnecessary
resource use can help reduce costs.

Before you begin

A cloud account (parent account) that has at least one service account and associated
datacenters is required.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Business hours.
2. Select Settings.
3. On the form, fill in the fields.
Business Hours Settings
Field

Enable business hours

Description

Option for enabling the Business hours
feature. All active policies are applied when
data becomes available.
Deselect the check box to disable the
Business hours feature. No policies are
applied regardless of the Active setting for a
policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2164


<!-- page 2165 -->
Field

Description

Note: When you disable the Business
hours feature, all schedules that were
applied by policies are deactivated
and resources return to their original
schedules.
Precedence

The role that should have precedence
when policies are applied. Select one of the
following:
◦ Admin Policies
◦ Owner Policies
Precedence determines the order in which
batches of policies are applied. Each batch is
based on the role of the user who created the
policy — insights_admin or insights_owner.
After a match, no other policy is applied to
the resource.
Default: Admin Policies (The set of policies
that were created by users with the
insights_admin role.)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2165


<!-- page 2166 -->
Field

Description

Advanced

Option to generate a single change request
that applies to all CIs that match a policy
(default setting) or a separate change request
for each CI.
Some attributes of the change request
template have static/constant values that
cannot be changed. Some attributes (for
example, risk and work_notes) have dynamic
values that you can set using a script include.

Auto-approval (Standard Change)
Single change request

Script include

Option for enabling the system to generate
a single change request, which applies to all
CIs that match the policy.
This field appears only when the Advanced
check box is selected.
CLINBHStandardChangeRequestUtil
The Change group is derived from the
Standard Change template and cannot be
overridden.

Manual approval (Normal Change)
Single change request

Script include

Option for enabling the system to generate
a single change request, which applies to all
CIs that match the policy.
This field appears only when the Advanced
check box is selected.
CLINBHNormalChangeRequestUtil

Notify when non-business hour spend
exceeds (%) of total spend

Percentage of overall cloud spend on
resources during business hours that triggers
email notification to the users or groups that
you specify.
Default: 15
The value is calculated using the amount
that could be saved if all Business hours
recommendations are applied. The default
value of 15 means that notifications are sent
only when the cost of operation during nonbusiness hours is greater than 15% of total
costs.

Notify when unassigned resources exceed
(%) of total CIs

The percentage of overall cloud spend for
non-business hour usage that triggers email
notification of the users or groups that you
specify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2166


<!-- page 2167 -->
Field

Description

The default value of 15 means that
notifications are sent only when the cost
of operation during non-business hours is
greater than 15% of total costs.
Notify users / Notify groups

The users or groups to notify by email when
the non-business hour spend exceeds the
specified percentage of overall cloud spend.
If you do not specify users or groups, then no
notification is sent.

Maximum CIs per change

This field appears only when the Single
change request check box is selected in the
Manual approval (Normal Change) section.
Maximum number of resources to associate
with a single change request. If the maximum
is reached, the system generates a new
change request.
Default value: 1000

4. Select Save.
Related topics
Change Management
Create Business hours schedule
Create and apply a Business hours schedule to the cloud resources for enforcing the on/off
schedule.

Before you begin

Role required: insights_admin or insights_owner

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Business hours schedules.
2. Select New.
3. On the form, fill in the fields.
Schedule
Field

Description

Name

Unique name for the schedule.

Time zone

Time zone for the schedule.
Default value: Floating, which means that the
time zone is relative to whatever process is
accessing the item at the time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2167


<!-- page 2168 -->
Field

Description

When a schedule is defined in a time
zone, users in different time zones see the
schedule with their own time zone applied.
Parent

Parent schedule that constraints the new
schedule.

Application

Application scope of the schedule.
Default value: Cloud Insights Core

Type

Text label that describes the purpose of the
schedule.

Description

Description of the schedule.

4. Select Save.
Define or update a Business hours policy
A Business hours job applies policies to identify resources that are running when they should be
powered off, reports them, and can start and stop them on a schedule that you specify. Running
only during specified business hours can significantly reduce your cloud spend.

Before you begin

Required: A cloud account (parent account) that has at least one service account or project that
has associated datacenters.
A Billing Download job must be defined.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

About this task

Important: A resource matches the policy if all criteria in the Service Account and
Resource Criteria section are met.

• You must select one of the Cloud Cost Management application scopes to create or update a
Business hours policy.
• You can create as many policies as needed.
• You can’t change the provider while editing an existing policy.
• When you deactivate a Business Hours policy, the resources that met the policy criteria might
match a different policy (the matching policy with lowest run order) and therefore move to
another schedule. In this case, the system generates a new change request. If a resource no
longer meets any policy, the system attempts to power on the resource using the specified
Power-on flow setting.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Recommendations >
Business hours.
2. Select Policies.
When a policy is created or updated with changes other than to its name or description,
a notification appears on the tab. Select Apply policies to apply the updated policy and
recalculate the reported data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2168


