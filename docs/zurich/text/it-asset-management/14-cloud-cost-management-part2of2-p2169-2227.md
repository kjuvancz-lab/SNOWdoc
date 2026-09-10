# Zurich IT Asset Management — Cloud Cost Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2169–2227 of 2359 | Part 2 of 2

Sections: Cloud Cost Management (p2019); Explore (p2021); Configure (p2063); Use (p2134); Reference (p2182)

---

<!-- page 2169 -->
3. Select New/Edit to create a policy.
You can edit an existing policy by selecting a policy name from the Business Hours Policies
list.
4. On the form, fill in the fields.
Business Hours Policy Creation form
Field

Value

Select business hours policy to edit

The business hour policy that you want to
edit.

Active

The option to apply the policy. Selecting the
Active check box enables Business hours
analysis whenever billing data is updated.

Policy name

A unique name that describes the policy for
other users.

Description

A brief description of the policy.

Run order

The order in which to apply policies. Each
policy must have a unique value. The system
applies policies in low-to-high run order and
performs the actions for the first policy that
matches. After a match, no other policy is
applied to the resource.

Important: The system applies two
batches of policies in the precedence
order that you specify: Policies created
by Admins and policies created by
Insights Owners. See the Precedence
setting in Configure Business hours
operations.
Run order values for Unassigned Resources
policies and Business hours policies don’t
interfere with each other.
Provider

The cloud provider to apply the policy to.

Note: You can’t change the provider
while editing an existing policy.
Service category

List of all service categories that the policy
applies to.

Service accounts

The service accounts to. apply the policy to.
For Google Cloud only, this field is called
Projects.

Tag Values Condition
Tag Name

List of tag names that you can add by
selecting Add.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2169


<!-- page 2170 -->
Field

Value

Tag Value

List of tag values in a new line.

Approval type

The action to take on each resource
that matches the policy. Business Hours
operations are directly integrated with the
ServiceNow Change Management feature.
Auto-approval (Standard Change):
◦ Generate a recommendation to apply the
specified business hours and add the
resource to the Business hours reports.
◦ Generate and then auto-approve a change
request for the change group.
◦ Add the resource to the Business hours
reports.
◦ Apply the Business hours schedule to the
resource.
Manual approval (Normal Change):
◦ Generate a recommendation to apply the
specified business hours schedule and
add the resource to the Business hours
reports.
◦ Generate a change request for members of
the change group.
◦ Add the resource to the Business hours
reports.
◦ Any member of the group with the
sn_change_write role can approve the
change request.
◦ When approved, apply the Business hours
schedule to the resource.
Report-only:
◦ Generate a recommendation to apply the
specified business hours.
◦ Add the resource to the Business hours
reports.

Business hour schedule

The schedule that specifies the days of the
week and times of day that the resource
should be powered on.
Select a schedule from the list or define a
schedule by navigating to Cloud Cost
Management Workspace > Operations >
Administration > Business hours schedules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2170


<!-- page 2171 -->
Field

Value

For more information, see Create Business
hours schedule.
5. Select Submit.

Result
• The created policy appears on the Business Hours Policies tab.
• When the Discovery and Billing Download job executions finish, the system applies active
policies to identify matching resources and then performs the policy actions on the resources.

What to do next

After you create or update a policy, select Apply policies to apply the created policy to a
resource. This action also notifies you if enough recent billing data for AWS, Azure, or Google
doesn't exist to apply the policy.
Related topics
Business hours
Change Management
Standard change catalog
Create a change request template
Exclude a resource from all Cloud Cost Management reports

Manage cloud budgets
Define and monitor custom budget plans for managing your cloud spend by using the Budget
view in the Cloud Cost Management Workspace.
Create or update a budget policy
Create budget policy to specify a budgeted amount, cost type, reset period, and other aspects of
the budget. In addition, specify who can view budget data and who is notified of variances from
the budgeted amount.

Before you begin
• A cloud account (parent account) that has at least one service account and associated
datacenters is required.
• A Billing Download job must be defined.

Note: For Microsoft Azure, you must first execute a Billing Download job before defining
a budget plan.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

About this task

You must select one of the Cloud Cost Management application scopes to create or update a
budget policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2171


<!-- page 2172 -->
Procedure
1. Navigate to Cloud Cost Management Workspace > Budget.
2. Select Create budget.
3. On the Budget policy creation form, fill in the fields.
For a description of the field values, see List of Budget policy creation fields.
4. Select Submit.

Result

After you create or modify a budget policy, the policies get displayed on the All Budgets page
in the Budgets view. Find the details of the budget such as overrun, surplus, or invalid budgets.
You can view only the overrun budgets by toggling the Show overrun budget only toggle button.
Search a budget by its name, owner, or provider.

Assign service accounts to an insights_owner
Assign ownership of one or more service accounts and, optionally, the related CIs to users that
have the insights_owner role. An insights_owner can define jobs and policies and can view data
for owned service accounts.

Before you begin

Before you assign service accounts, you might want to view the list of current insights_owner
and their owned accounts. For more information, see View the service accounts owned by an
insights_owner.
Role required: insights_admin [sn_clin_core.insights_admin]

About this task

The insights_owner role spreads responsibility for Cloud Cost Management activities to persons
who have good knowledge of operations in the service accounts. For more information about the
insights_owner role, see Cloud Cost Management roles.
A service account is a secure record on your instance that holds the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter.

Tip: When you assign service accounts to a user, the user is auto-granted the
insights_owner role.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Account to owner mappings.
2. Select Assign accounts that currently have no owner.
3. On the form, fill in the fields.
Set up or update ownership of service accounts
Field

Description

Insights Owner

User to whom the service account has to be
assigned.

Service accounts

Service accounts to be assigned to the
insight_owner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2172


<!-- page 2173 -->
Field

Description

Change template

Change template to use to create the change
request for this task.
The system uses a Standard Change to
alert the insights_owner of the change for
the task to be auto-approved. If no change
request template appears in the list, navigate
to Service Catalog > Standard Changes to
create a template.

4. Specify how to populate the Owner field for CIs in service accounts.
Option

Assign insights_owners only to CIs with no
owner

Description

For newly created CIs and for CIs in the ser­
vice accounts that have no value for the
Owner property, assign the new insights_­
owner.

Note: A daily scheduled job sets the

Owner field of each newly discovered
CI to the Owner setting for the associat­
ed service account.
For the Owner property of every CI in the
specified service accounts, assign the new in­
sights_owner.
Assign insights_owners to all CIs

Note: A daily scheduled job sets the

Owner field of each newly discovered
CI to the Owner setting for the associat­
ed service account.
Do not update any CIs

Make no changes to CIs in the specified ser­
vice accounts.

◦ The affected service accounts are removed from policies that were created with the
insights_owner role. The affected service accounts aren’t removed from policies that were
created with the insights_admin role.
◦ The new insights_owner must create and manage new policies for the affected service
accounts.
◦ The new account owner takes ownership of Rightsizing and Unused Machines jobs that
include resources from all transferred service accounts.
5. Optional: Add any additional details to your request such as delivery address and special
instructions.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2173


<!-- page 2174 -->
Update or reassign insights_owner privileges
Assign ownership of one or more service accounts and, optionally, the related CIs to users that
have the insights_owner role. An insights_owner can define jobs and policies and can view data
for owned service accounts.

Before you begin

Before you assign service accounts, you might want to view the list of current insights_owner and
their owned accounts. See View the service accounts owned by an insights_owner for details.
Role required: insights_admin [sn_clin_core.insights_admin]

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Account to owner mappings.
2. Select Change the owner for one or more accounts.
3. On the form, fill in the fields.
Set up or update ownership of service accounts
Field

Description

Original Insights Owner

Owner to transfer the ownership of service
accounts from.

New Insights Owner

User to transfer the ownership of service
accounts to.

Service accounts

Service accounts to be assigned to the
insights_owner.

Change template

Change template to use to create the change
request for this task.
The system uses a Standard Change to
alert the insights_owner of the change for
the task to be auto-approved. If no change
request template appears in the list, navigate
to Service Catalog > Standard Changes to
create a template.

4. Specify how to populate the Owner field for CIs in service accounts.
Option

Assign insights_owners only to CIs with no
owner

Description

For newly created CIs and for CIs in the ser­
vice accounts that have no value for the
Owner property, assign the new insights_­
owner.

Note: A daily scheduled job sets the

Owner field of each newly discovered
CI to the Owner setting for the associat­
ed service account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2174


<!-- page 2175 -->
Option

Description

For the Owner property of every CI in the
specified service accounts, assign the new in­
sights_owner.
Assign insights_owners to all CIs

Note: A daily scheduled job sets the

Owner field of each newly discovered
CI to the Owner setting for the associat­
ed service account.
Do not update any CIs

Make no changes to CIs in the specified ser­
vice accounts.

◦ The affected service accounts are removed from policies that were created with the
insights_owner role. The affected service accounts aren’t removed from policies that were
created with the insights_admin role.
◦ The new insights_owner must create and manage new policies for the affected service
accounts.
◦ The new account owner takes ownership of Rightsizing and Unused Machines jobs that
include resources from all transferred service accounts.
5. Optional: Specify whether to transfer policies to the new owner.
This setting applies when the selected service accounts are currently owned by a different
insights_owner. Transferring the policies enables the new insights_owner to own (view, update,
or delete) policies that are associated with the specified service accounts.

Important: Policies owned by users with the insights_admin role aren’t changed in any
way.
Option

Description

The following process runs:
a. The instance clones all affected policies
that are owned by Insights Owners.

Yes

b. The instance removes appropriate service
accounts from each affected policy and
moves the accounts to the new clone poli­
cy. Each clone policy contains only the af­
fected service accounts.
▪ If service accounts remain in the original
policy, then the original owner retains
ownership of the original policy.
▪ If an original policy has no service ac­
counts after all affected accounts are
removed, then the clone isn’t used. In­
stead, the new insights_owner becomes
the owner of the original policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2175


<!-- page 2176 -->
Option

Description

c. The instance assigns ownership of the new
policies to the new insights_owner.
d. The instance sends email notifications to
both the original and new owners.

No

◦ The instance removes the affected ser­
vice accounts from all policies owned by
Insights Owners. If no service accounts re­
main in a policy, then the policy is set to the
Invalid state.
◦ The new insights_owner must create and
manage the new policies for the affected
service accounts.

6. Select Submit.
View the service accounts owned by an insights_owner
View the list of users that have the insights_owner role and the service accounts that each owner
owns.

Before you begin

Role required: sn_clin_core.insights_admin or sn_clin_core.insights_owner

About this task

A service account is a secure record on your instance that holds the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
View insights owners.
2. Select the name of any user to view the details of the owned service accounts.

Exclude a resource from all Cloud Cost Management reports
To ensure that cost data for a particular resource doesn’t appear in a report, you exclude the
resource by adding it to the Excluded Resources list.

Before you begin

A cloud account (parent account) that has at least one service account and related datacenters
is required.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

About this task
• Excluding a resource from a report means that the resource doesn't get displayed in the report.
This setting doesn’t affect analysis of data for the resource.
• At any time, you can remove a resource from the Excluded Resources list.
• An insights_owner can exclude resources and remove a resource from the Excluded
Resources list only in owned service accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2176


<!-- page 2177 -->
• Production resources are examples of resources that you might exclude. Because production
resources must always be active, you might, for example, want to exclude production
resources from Business Hours reports.
• You can exclude a resource either from a single report type or from all reports. You can select a
resource and select Exclude for excluding the resource from the current report. The resource
you exclude gets added to the Excluded Resources list for the report.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Administration >
Global exclusions.
2. Select New.
3. On the form, fill in the fields.
Excluded Resources
Field

Value

Resource

The resource to exclude. Only virtual machine
resources appear in the list.

Description

The reason for excluding the resource.

4. Select Save.

Result

The resource is excluded from all reports. After you submit the record, you can open it to update
the reports from which to exclude the resource.
Remove a resource from the Excluded Resources list
You can remove a resource from the Excluded Resources list.

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

About this task

When you remove a resource from the Excluded Resources list, the resource appears in the
appropriate reports.

Procedure
1. Navigate to Cloud Cost Management > Operations > Administration > Global exclusions.
2. Select the resources to remove.
3. In the Actions on selected rows list, select Delete.

Create and update a tag category
Create a tag category to enable multiple tag names for representing costs against a single
business entity. For example, multiple users might independently have created the tag names
"App", "AppService", and "appl" to indicate applications. With a tag category of "Application",
any costs for items tagged App, AppService, or appl are correctly assigned as costs against an
application.
Watch this short video to learn how to create and update a tag category.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2177


<!-- page 2178 -->
https://player.vimeo.com/video/1136169557?
h=447f9cfac5&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin]

About this task

This procedure describes the process as performed from the user interface. Alternatively, to
speed the process, you can edit the affected tables directly.
• Tag Category [sn_cld_intg_core_tag_category]
• Tag Name-Category [sn_cld_intg_core_tag_name_category]

Note: Each successful execution of a Billing Download job updates tagged costs. Recent
updates that you make to tag category definitions might not reflect ton the cost reports. To
apply the latest tag category definitions to cost data without running a Billing Download
job, select Reapply categories by navigating to Cloud Cost Management Workspace >
Operations > Cost usage tags > Tag categories.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Cost usage tags > Tag
categories.
2. On the Tag Categories list, select New.
For the list of default tag categories, see List of default tag categories.

Note: In this step, you add a single tag name to the category to create the initial
category record. You can add any number of tag names to the category later.
3. On the form, fill in the fields.
Tag Category form
Field

Description

Name

A unique and meaningful name for the
category.

Active

The option to add the category to the Tag
Category filter list on spend reports.

Enable grouping

Option to add a category:value option
for this category to the list of Group by
choices on spend reports.

Note: A category must be active to
appear in the Group by list.
Tag names

The list of tag names that you can add to the
category.
a. Select the Lookup icon
to open the
list of tag names that came with the latest
Billing Download Job. All tag names appear
on the Tag Names list.
b. Select tag names from the drop-down list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2178


<!-- page 2179 -->
4. Select Save to create the category.
The new category appears in the Tag Categories list.
5. In the Tag Categories list, select the category that you just added.
The Tag Category form reopens and the tag name that you added appears in the Tag names
list.
6. Optional: On the Tag names list, select the Lookup icon

to add multiple tag names.

Related topics
Tags and tag categories

Add or update a tag value for an AI Service tag category
Associate a tag name with its corresponding tag value whenever a new AI service or a category
within an existing AI service is introduced for Amazon Web Services (AWS), Microsoft Azure, or
Google Cloud Platform (GCP).

Before you begin

Role required: insights_admin [sn_clin_core.insights_admin]

About this task

Important: This feature is available with the Cloud Cost Management 8.0.0 version or
later.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Cost usage tags.
2. Select Tag categories.
3. On the Tag categories page, select the AI Service tag category.
4. On the AI Service page, select the Tag name value tab.
5. Select Add/Update tag values.
6. In the Add/Update AI Service tag values dialog box, select the Create tab.
7. Select the service provider tag name and provide a tag value.
◦ For AWS, add the lineItem/ProductCode as the tag value against the AWS AI service tag
name sn_ccm_aws_ai_service.
◦ For Azure, add the Meter Category name as the tag value against the Azure AI service tag
name sn_ccm_azure_ai_service.
◦ For GCP, add the Service description name as the tag value against the GCP AI service tag
name sn_ccm_gcp_ai_service.
8. Select Submit.
9. Optional: If you want to update the tag value of an AI service that you have created, select
Add/update tag values.

Note: You can't update the tag values for the default cloud categories for managing
AI services. To view the default cloud categories for managing AI services within the
Machine Learning service category, see List of default Cloud categories for AI services.
a. Select the Update tab.
b. Select the provider tag name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2179


<!-- page 2180 -->
For example, select sn_ccm_aws_ai_service.
c. Select the tag value that you want to update.
For example, select Amazon Test.
d. Provide a new tag value for it.
For example, change the existing tag value to Amazon Test 2.
e. Select Submit.

Result

After a tag name is associated with its corresponding tag value, you can view the spend data
of the AI service you added on the Spend analytics page. For more information, see Spend
analytics.

What to do next

After you add a tag value for an AI Service tag category, you must reimport the billing data to
generate the spend for the added tag.
Related topics
Tags and tag categories
Create and update a tag category
Schedule and manage the jobs that download AWS billing data
Schedule and manage the jobs that download Azure billing data
Schedule and manage the jobs that download Google Cloud billing data

Create or update a shared cost allocation policy
Create a shared cost allocation policy with different allocation types to split the cost of shared
cloud resources among various business lines.

Before you begin
• A cloud account (parent account) that has at least one service account and associated
datacenters is required.
• A Billing Download job must be created and the billing data must be pulled.
• For Kubernetes, you must enable the cost allocation tag on your provider console for each
Kubernetes cluster before you execute the Billing Download job.
Role required: insights_admin [sn_clin_core.insights_admin] or insights_owner
[sn_clin_core.insights_owner] for owned service accounts.

About this task
• You must select one of the Cloud Cost Management application scopes to create or update a
shared cost allocation policy.
• You can create as many policies as needed.
• If Kubernetes Service is selected as Service Category, you can't edit the Service Category,
Resource Type, Kubernetes Cluster fields while editing a policy.
• When you deactivate a shared cost allocation policy, allocations get updated with the latest
policy match.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2180


<!-- page 2181 -->
Procedure
1. Navigate to Workspaces > Cloud Cost Management Workspace > Operations >
Administration.
2. Select Shared cost allocation policies.
3. Select New/Edit.
4. On the Shared Cost Allocation Policy Creation form, fill in the fields.
For a description of the field values, see List of Shared cost allocation policy fields.
5. Select Submit.

Result

After you create or modify a shared cost allocation policy, the policy gets displayed on the
Shared Cost Allocation Policies page. Find the details of the policy such as the name, allocation
type, business unit, and cloud service.
When the Discovery and Billing Download job executions finish, the system applies active
policies to identify matching resources and then performs the policy actions on the resources.

What to do next

After you create or update a shared cost allocation policy, select Reapply policies to apply the
created policy to a resource.

Compare MetricBase data with spend data
Compare MetricBase (Clotho) data with your Spend data for Amazon Web Services (AWS),
Microsoft Azure, and Google Cloud Platform (GCP) to diagnose and troubleshoot Cloud Cost
Management billing issues.

Before you begin

Role required: Cloud Insights Admin [sn_clin_core.insights_admin]
Request the MetricBase [com.snc.clotho] plugin. For more information, see Requesting the
MetricBase product .
Verify that the Billing Download job has been completed successfully for the cloud provider.

About this task

Important: This feature is available with the Cloud Cost Management 8.0.0 version or
later.

Procedure
1. Navigate to Cloud Cost Management Workspace > Operations > Tools.
2. Select Compare MetricBase with spend data.
3. On the form, fill in the fields.
Compare MetricBase with spend data form
Field

Description

Provider

Cloud provider for which you want to
compare MetricBase (Clotho) data with your
Spend data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2181


<!-- page 2182 -->
Field

Description

◦ AWS
◦ Azure
◦ GCP
Cost type

Contractual payment agreement with the
provider.
◦ Actual: Each billing period, your
organization pays for direct cloud services.
◦ Amortized: Your organization pays the
effective cost of the upfront and monthly
reservation fees spread across the
billing period. The amortized cost type is
described in detail on the provider's site.

Billing month

Months for which billing data is available
based on the provider you select.
This field is populated only with those
months for which billing data is available.

4. Select Submit.

Result

A request with a unique number gets created and a CSV file is attached to the request item,
which lists the comparison data. The process to generate the CSV file runs in the background
and the file is attached to the request item when the processing is complete.
If there are any errors, the Work notes field of this request item is updated and Cloud Cost
Management doesn't generate the CSV file.

What to do next

Select the Requested Items tab and then select the Requested Items number to navigate to the
CSV file. In the Attachments section, you can find the CSV file. Download this file to analyze any
mismatch in the cost values from both of the sources. You can also filter the data according to
your requirements.

Cloud Cost Management reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Cloud Cost Management.

Domain separation and Cloud Cost Management
Domain separation is unsupported for Cloud Cost Management. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2182


<!-- page 2183 -->
Related topics
Domain separation for service providers

Cloud Cost Management roles
You assign Cloud Cost Management roles to user groups and to individual users based on user
activities and responsibilities.

Important: This information applies to both the Cloud Cost Management and Cloud
Insights Billing apps. All references to Cloud Cost Management also apply to Cloud Insights
Billing.

Role relationships in Cloud Cost Management

Primary Roles
Role title [name]

Permissions

The role is in the Cloud Cost
Cloud Insights Admin
Management Core plugin.
[sn_clin_core.insights_admin] You typically assign the role to
the person who is financially
responsible.
• Assign ownership of one
or more service accounts
and, optionally, the related

Contains roles

• insights_owner
• spend_admin
• cloud_integrations_admin
• budget_viewer
• [pa_admin]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2183


<!-- page 2184 -->
Role title [name]

Permissions

Contains roles

CIs to users that have the
insights_owner role.
• Define Business hours and
Unassigned resources policies.

• [schedule_admin]
• [itil]

• Define and view Budget plans.
• View spend optimization
reports.
• Add report extensions.
• Perform the actions that
Cloud Cost Management
recommends.

Cloud Insights Owner
The role is in the Cloud Cost
[sn_clin_core.insights_owner] Management Core plugin. The
role spans only the Cloud Cost
Management application.

insights_user

• Define jobs and policies.
• View data for owned service
accounts.
For more information, see
Assign service accounts to an
insights_owner.
Cloud Insights User
[sn_clin_core.insights_user]

The role is in the Cloud Cost
Management Core plugin. The
role spans only the Cloud Cost
Management application.

— none —

View the Cloud Cost Management
Workspace home page.

Secondary roles
The roles in this section are contained in the insights_admin role. These roles enable integration
with platform (Performance Analytics, MetricBase/Clotho) to execute Cloud Cost Management
flows.

Role title [name]

Permissions

Cloud Spend Admin

The role is in the
Cloud Spend
Reports Core
plugin.

[sn_cld_spend_core.spend_admin]

Contains roles

• cloud_integrations_admin
• [sn_capi.cloud_developer]

Edit the
Cloud Billing
dashboards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2184


<!-- page 2185 -->
Role title [name]

Permissions

Cloud Integrations Admin

The role is in the
Cloud Integrations
[sn_cld_intg_core.cloud_integrations_admin] Core plugin.
Configure Billing
Download jobs
and Price Sheet
Download jobs.
API Integrator
[sn_cld_intg_core.api_integrator]

Contains roles

• [api_integrator]
• [discovery_admin]
• [flow_operator]

The role is in the
[clotho_rest_put]
Cloud Integrations
Core plugin.
Used by the MID
Server to access
REST endpoints
that are related
to the Cloud
Integrations,
Cloud Integrations
AWS applications,
and Cloud
Integrations Azure
applications.

Cloud Budget Viewer
[sn_clin_core.budget_viewer]

The role is in
the Cloud Cost
Management
Core plugin. The
role spans only
the Cloud Cost
Management
application.

— none —

View Budget
Forecast reports
and policies.
PA Admin
[pa_admin]
Clotho Put
[clotho_rest_put]

See Performance — none —
Analytics roles .

Role that is used
by the MID Server
to send the
billing data to
the instance and
store the data
in MetricBase /
Clotho.

— none —

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2185


<!-- page 2186 -->
Related topics
Assign a role to a group
Assign a role to a user

Components installed with Cloud Cost Management
Several types of components are installed with activation of Cloud Cost Management, including
tables, user roles, and scheduled jobs.

Scheduled jobs installed
Scheduled job

Description

Price Sheet Table Cleaner

Cleans up AWS price sheet records.

Resource Group Table
Cleaner

Cleans up Azure resource group records that are no longer
required.

CCM CleanUp Inactive
Aggregated Spend Records

Cleans up inactive aggregated spend records.

Cloud Insights Historical
Data Collection

Collects GCP spend data.

Cloud Insights Saving Daily
Data Collection

Collects potential savings and realized savings for spend.

Cloud Insights Spend
Saving Data Collection

Collects cloud spend potential saving percentage.

Execute Tasks

Executes tasks associated with AWS billing download.

Flow Launcher and
Hierarchical Flow Launcher
Keep Alive

Cancels stale flow jobs.

GCP Price Sheet Table
Cleaner

Cleans up GCP Price sheet table

Tag Categories Based
Recommendation

Generates Tag Category based recommendations.

Important: The following scheduled jobs are used only when the Cloud Cost
Management Infra Stack application is installed in addition to Cloud Cost Management
version 8.1.

Cumulus- Cancel stuck job

Monitors scheduled billing jobs and cancels the jobs that are
stuck. This enables billing jobs in the queue to be processed.

Unsupported CI Type
Placement

Places the CI types that aren’t used for daily recommendations.

CCM - Daily job

Performs daily maintenance activities such as cleanup of left-out
attachments of AWS billing job (with assume role authentication).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2186


<!-- page 2187 -->
Tables installed
Table

CI Placement Extension Progress Calculation
[sn_cld_intg_aws_ci_placement_extension_progress_calculation]

Description

Configuration Items
placement progress
for AWS. Contains
number of records to be
processed by the AWS
extension.

CI Placement Stats [sn_cld_intg_aws_ci_placement_stats]

Status of bookmarks
created during the
Configuration Items
placement for AWS.

AWS CI Placement Type Information
[sn_cld_intg_aws_ci_placement_type]

All types of
Configuration Items
deployed byCloud Cost
Management for AWS.

AWS Cost And Usage Bill Data [sn_cld_intg_aws_cost_usage]

Cost and billing data for
AWS.

Cost Usage Bookmarks [sn_cld_intg_aws_cost_usage_bookmarks]

Time stamp bookmarks
created for the ingested
Cloud Cost Management
placement records.

CloudWatch Metric Association
[sn_cld_intg_aws_cw_metric_association]

Custom metrics created
by user.

AWS CloudWatch Metric Definition
[sn_cld_intg_aws_cw_metric_definition]

Definitions for various
AWS cloud watch
metrics.

CloudWatch Metric Definition to Account
[sn_cld_intg_aws_cw_metric_definition_account_m2m]

Metric to service
account mapping
information.

AWS Baseline Performance for EC2 Burstable Instances
[sn_cld_intg_aws_ec2_burstable_baseline_perf]

Baseline performance
percentage for AWS EC2
burstable instances.

AWS Gov Accounts Mapping
[sn_cld_intg_aws_gov_account_mapping]

AWS Gov accounts and
linked accounts details.

AWS Instance details [sn_cld_intg_aws_instance_detail]

Details for various AWS
instances present.

AWS Instance Price details [sn_cld_intg_aws_instance_price_detail] Pricing and rate details
for AWS instances.
AWS Offer Term [sn_cld_intg_aws_offer_term]

Offer term details based
on configurations of
AWS products.

AWS Price Discount [sn_cld_intg_aws_price_discount]

Price discounts for AWS
service accounts.

AWS Price Sheet Information [sn_cld_intg_aws_price_sheet_info]

Price sheet details for
AWS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2187


<!-- page 2188 -->
Table

Description

AWS Product Details Base [sn_cld_intg_aws_product_details]

All product details or
specifications for AWS.

AWS Product Details EC2 [sn_cld_intg_aws_product_details_ec2]

EC2 product details or
specifications for AWS.

AWS Product Details RDS [sn_cld_intg_aws_product_details_rds]

RDS product details or
specifications for AWS.

AWS Resource Hourly Usage Last Downloaded
[sn_cld_intg_aws_resource_hourly_usage_last_downloaded]

Hourly usage download
status for AWS
resources.

AWS Resource Rate [sn_cld_intg_aws_resource_rate]

Resource rates for AWS
product SKUs.

AWS Billing Download Job [sn_cld_intg_aws_schedule]

Billing download jobs
and their status for AWS.

AWS Storage Price Details [sn_cld_intg_aws_storage_price_detail]

Storage price sheet
information for AWS.

Azure CI Placement Type Information
[sn_cld_intg_azure_ci_placement_type]

Defines all types of
Configuration Items
deployed by Cloud Cost
Management for Azure.

Azure Cost And Usage Bill Data [sn_cld_intg_azure_cost_usage]

Cost and billing data for
Azure.

Azure Database Price Sheet [sn_cld_intg_azure_db_price_sheet]

Price sheet details for
Azure database.

Azure Database retail price detail
[sn_cld_intg_azure_db_retail_price]

Retail price information
for Azure database.

Azure Enrollment To Service Account Mapping
[sn_cld_intg_azure_ea_sa_mapping]

Mapping information
for enrollment account
to the service accounts
used by Cloud Cost
Management.

Azure Instance Details [sn_cld_intg_azure_instance_detail]

Details of various Azure
instances present.

Azure Instance Price Details
[sn_cld_intg_azure_instance_price_detail]

Pricing and rate details
for Azure instances.

Azure Instance Series To Family Mapping
[sn_cld_intg_azure_instance_series_family_mapping]

Instance family to
instance series mapping
information for Azure.

Azure Instance Size Details
[sn_cld_intg_azure_instance_size_detail]

Details about various
Azure instances sizes &
their functionalities.

Azure Normalized Region [sn_cld_intg_azure_normalized_region]

Resource location to
a generic normalized
location mapping
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2188


<!-- page 2189 -->
Table

Description

Azure Price Sheet Version [sn_cld_intg_azure_price_sheet_version]

Price sheet status and
version for Azure.

Azure Product Details [sn_cld_intg_azure_product_details]

All product details or
specifications for Azure.

Azure Product Details VM [sn_cld_intg_azure_product_details_vm]

Virtual Machine product
details or specifications
for Azure.

Azure Product Offering VM
[sn_cld_intg_azure_product_offering_vm]

Offer term details for
Azure Virtual Machine
service.

Azure Product Details Instance Type Map
[sn_cld_intg_azure_prod_dtls_inst_type_map]

Product details for
various instance types
for Azure.

Azure Advisor Subscription Queue
[sn_cld_intg_azure_recommendation_subscription_queue]

Stores the states
of generate, get
generate status and
list recommendations
flow launcher jobs,
for provider based
recommendations of
Azure.

Azure resource hourly usage last downloaded
[sn_cld_intg_azure_resource_hourly_usage_last_downloaded]

Hourly usage download
status for Azure
resources.

Azure Resource Rate [sn_cld_intg_azure_resource_rate]

Resource rates for Azure
meter IDs.

Azure Billing Download Job [sn_cld_intg_azure_schedule]

Billing download jobs
and their status for
Azure.

Azure Software Cost Details [n_cld_intg_azure_software_cost_detail] Hourly cost details for
Azure software.
Azure Storage Price Details
[sn_cld_intg_azure_storage_price_detail]

Storage price sheet
information for Azure.

Azure Storage Size Details [sn_cld_intg_azure_storage_size_detail]

Various Azure
storage sizes & their
functionalities.

Cloud Action Execution [sn_cld_intg_core_action_exec]

Execution details for
various cloud actions.

Cloud Alias [sn_cld_intg_core_alias]

List of defined aliases.

Cloud Alias Mapping [sn_cld_intg_core_alias_mapping]

Alias mapping to the
script or action flow.

Cloud API Request [sn_cld_intg_core_api_request]

API request &
parameters sent to the
provider.

Cloud API Request Error [sn_cld_intg_core_api_request_error]

Error responses for failed
request items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2189


<!-- page 2190 -->
Table

Description

Cloud API Request Item [sn_cld_intg_core_api_request_item]

API request item details
sent to the provider.

Cloud API Response [sn_cld_intg_core_api_response]

API responses for
the API calls made to
providers.

Cloud Availability Zones [sn_cld_intg_core_availability_zone]

Availability zones for
various providers.

Billing Report Information [sn_cld_intg_core_billing_report_info]

Billing summary reports
for billing download jobs.

Billing Import Progress [sn_cld_intg_core_bill_imp_progress]

Import information for
various extensions
under billing download
job.

CI Placement Stats [sn_cld_intg_core_ci_placement_stats]

Status of bookmarks
created during
Configuration Items
placement.

CI Placement Status [sn_cld_intg_core_ci_placement_status]

Configuration Items
placement status for
extensions executed.

CI Placement Type Information
[sn_cld_intg_core_ci_placement_type]

All types of
Configuration Items
deployed by our product
for all providers.

Cost Tags [sn_cld_intg_core_cost_tags]

Mapping information
of tag category to cost
hash.

Execution [sn_cld_intg_core_execution]

Execution details for all
types of running IH flows.

Execution Batch [sn_cld_intg_core_execution_batch]

Execution batches for
running the flows.

Execution To Batch Map [sn_cld_intg_core_execution_batch_map]

Mapping information
of execution jobs to the
respective batches.

Execution Log [sn_cld_intg_core_execution_log]

Log messages for all the
executions.

Execution Metric [sn_cld_intg_core_execution_metric]

Metrics for executions.

Execution Monitor [sn_cld_intg_core_execution_monitor]

Live status of the
ongoing execution.

Extension [sn_cld_intg_core_ext]

All the available
extensions and their
details.

Extension Type [sn_cld_intg_core_ext_type]

Types of extensions
defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2190


<!-- page 2191 -->
Table

Description

Flow Launcher Execution
[sn_cld_intg_core_flow_launcher_execution]

Flow launcher job
execution details.

Flow Launcher Job [sn_cld_intg_core_flow_launcher_job]

List of flow launcher jobs
and their status.

Flow Launcher Job Configuration
[sn_cld_intg_core_flow_launcher_job_config]

Configurations for flow
launcher jobs.

Flow Launcher Workload
[sn_cld_intg_core_flow_launcher_workload]

Workload information
for flow launcher
executions.

Flow Map [sn_cld_intg_core_flow_map]

Mapping information of
input parameters to the
flow workloads.

Flow Reflection [sn_cld_intg_core_flow_reflection]

Flow reflection link in
flow designer for given
context.

Hierarchical Flow Launcher Execution
[sn_cld_intg_core_hierarchical_flow_launcher_execution]

Hierarchical flow
launcher job execution
details.

Imported Date Range [sn_cld_intg_core_imported_date_range]

Imported date range
of data during billing
download execution.

Instance Family [sn_cld_intg_core_instance_family]

Instance families
available for various
providers.

Cloud Instance Types [sn_cld_intg_core_instance_type]

Instance types & details
for various providers.

Cloud Instance Type Family
[sn_cld_intg_core_instance_type_family]

Instance family types
available for various
providers.

Billing Line Item Types [ sn_cld_intg_core_line_item_type]

Types of billing charges
for various providers.

Associated Flow Execution
[sn_cld_intg_core_m2m_ext_exec_flow_exec]

Mapping information of
extension execution to
flow execution.

M2m Profile Exec Metrics Profile Table Metrics
Mapping information
[sn_cld_intg_core_m2m_profile_exec_metrics_profile_table_metrics] of profile execution to
profile table metrics.
Pipeline Stage Extension Type Map
[sn_cld_intg_core_map_pp_stage_ext_type]

Mapping information of
extension types to their
respective stages.

Cloud Operating Systems [sn_cld_intg_core_os_type]

Operating system details
for various providers.

Pipeline Execution [sn_cld_intg_core_pp_exec]

Contains all the pipeline
executions for billing
download.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2191


<!-- page 2192 -->
Table

Description

Execution Stage [sn_cld_intg_core_pp_exec_stage]

Contains all the pipeline
executions for each
billing download stage.

Extension Execution [sn_cld_intg_core_pp_exec_stage_ext_log]

Pipeline execution logs.

Execution Stage Log [sn_cld_intg_core_pp_exec_stage_log]

Pipeline execution logs
for each stage.

Import Stage [sn_cld_intg_core_pp_import_stage]

Executions details for
the import state of billing
download.

Cloud Price Sheet Version [sn_cld_intg_core_price_sheet_version]

Price sheet status and
version for providers.

sn_cld_intg_azure_storage_ps

Store azure storage price
sheet details.

Cloud Product Regions [sn_cld_intg_core_product_region]

List of product regions
for various providers.

Profile Execution Metrics
[sn_cld_intg_core_profile_execution_metrics]

Execution metrics for
performance profiling.

Profile Flow Launcher Job Metrics
[sn_cld_intg_core_profile_flow_launcher_job_metrics]

Flow launcher execution
metrics for performance
profiling.

Profile Flow Metrics [sn_cld_intg_core_profile_flow_metrics]

Flow metrics for
performance profiling.

Profile Table Metrics [sn_cld_intg_core_profile_table_metrics]

Table metrics for
performance profiling.

Cloud Provider Service [sn_cld_intg_core_provider_service]

List of services provided
by various cloud
providers & their end
points.

Cloud Provider Service Action
[sn_cld_intg_core_provider_service_action]

Script include actions
for the cloud services
provided.

Price Sheet Execution [sn_cld_intg_core_ps_download_request]

Price sheet job status
and summary.

Execution Item [n_cld_intg_core_ps_download_request_items]

List of items fetched
for every price sheet
execution.

Price Sheet Download Execution [sn_cld_intg_core_ps_execution]

Price sheet execution
and download
information for all
scheduled job.

Price Sheet Download Job [sn_cld_intg_core_ps_schedule]

List of the price sheet
download jobs created.

Cloud Purchase Options [n_cld_intg_core_purchase_option]

Various purchase
options available for
providers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2192


<!-- page 2193 -->
Table

Description

Cloud Regions [sn_cld_intg_core_region]

List of cloud regions
available for various
providers

Resource Group [sn_cld_intg_core_resource_group]

List of resource groups.

RS Metrics Configuration
[sn_cld_intg_core_rs_metrics_configuration]

Metric configurations for
rightsizing.

Cloud Billing Schedule [sn_cld_intg_core_schedule]

List of billing download
jobs created.

Billing Download Execution [sn_cld_intg_core_scheduled_exec]

Billing download
execution and download
information for all
scheduled jobs.

Cloud Integration Action Schedule Job
[sn_cld_intg_core_schedule_job]

Scheduled jobs for
invoking cloud actions.

Cloud Integration Action Schedule Trigger
[sn_cld_intg_core_schedule_trigger]

Triggers for invoking clod
actions scheduled jobs

Storage Details Base [sn_cld_intg_core_storage_detail]

Available storage details
for providers.

Storage Option [sn_cld_intg_core_storage_option]

Available storage
options for providers

Tag Category [sn_cld_intg_core_tag_category]

List of tag categories
having various tags
under them.

Tag Name [sn_cld_intg_core_tag_name]

Tag names from the
billing data or user
generated names.

Tag Name-Category [sn_cld_intg_core_tag_name_category]

Mapping of tag name to
category.

Tag Name-Value [sn_cld_intg_core_tag_name_value]

Mapping of tag name to
value.

Tag Resource [sn_cld_intg_core_tag_resource]

Tag value pairs
associated with a
resource.

Tag Value [sn_cld_intg_core_tag_value]

Tag values from the
billing data or user
generated values.

Test Connection Execution
[sn_cld_intg_core_test_connection_execution]

Test connection
execution details

Variable [sn_cld_intg_core_variable]

Local variables for
integrations core.

GCP CI Placement Type Information
[sn_cld_intg_gcp_ci_placement_type]

All types of
Configuration Items
deployed by Cloud Cost
Management for Google
Cloud Platform (GCP).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2193


<!-- page 2194 -->
Table

Description

GCP Cost And Usage Bill Data [sn_cld_intg_gcp_cost_usage]

Cost and billing data for
GCP.

GCP Product Details [sn_cld_intg_gcp_product_details]

All product details or
specifications for GCP.

Google Billing Download Job [sn_cld_intg_gcp_schedule]

Billing download jobs
and their status for GCP.

GCP Services [sn_cld_intg_gcp_services]

List of services provided
by GCP.

AWS Spend Report Finalization Information
[sn_cld_spend_aws_report_finalization_info]

Spend reports
finalization status for
AWS.

Spend Report Daily Aggregated Cost
[sn_cld_spend_core_daily_aggregated_cost]

Spend report on daily
basis aggregated on
resources.

Spend Report Daily Cost [sn_cld_spend_core_daily_cost]

Spend report for
resource usage on daily
basis.

Spend Report Forecast Cost [n_cld_spend_core_forecast_cost]

Forecasted spend
information.

Spend Report Monthly Cost [sn_cld_spend_core_monthly_cost]

Monthly spend report for
resource usage.

Important:
From Cloud Cost
Management
version 8.1 onward,
if you have installed
the Cloud Cost
Management Infra
Stack application,
this table won't be
populated.
Spend Report Execution Info [sn_cld_spend_core_report_info]

Spend report execution
details.

AWS Rightsizing Analytics Report [sn_clin_aws_rs_analytics_report]

Rightsizing report for
AWS.

AWS Rightsizing Skipped Instance Families
[sn_clin_aws_rs_skipped_instance_family]

AWS instance
families that are not
considered in rightsizing
recommendations.

Azure Rightsizing Analytics Report
[sn_clin_azure_rs_analytics_report]

Rightsizing report for
Azure.

Cloud Insights Aggregated Cost Saving Snapshot
[sn_clin_core_aggregated_cost_saving_snapshot]

Snapshot of aggregated
cost for different service
accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2194


<!-- page 2195 -->
Table

Description

Cloud Insights Aggregated Potential Saving Snapshot
[sn_clin_core_aggregated_potential_saving_snapshot]

Snapshot of aggregated
potential savings
from various
recommendations.

Cloud Insights Aggregated Realized Saving Snapshot
[sn_clin_core_aggregated_realized_saving_snapshot]

Snapshot of the actual
realised aggregated
savings.

Business Hours Cost [sn_clin_core_bh_cost]

Business hours vs non
business hours cost for a
resource.

Business Hours Policy [sn_clin_core_bh_policy]

List of policies
configured for business
hours.

Business Hours Policy Execution
[sn_clin_core_bh_policy_execution]

Business hours policy
execution information.

Business Hours Policy Match [sn_clin_core_bh_policy_match ]

Policy matches for
various resources in the
Business hours cost
table.

Business Hours Policy Summary [sn_clin_core_bh_policy_summary] Information summary
for the business hour
policies.
Cloud Insights Business Hour Recommendations
[n_clin_core_bh_recommendation]

Recommendations for
business hours.

Business Hours Settings [sn_clin_core_bh_settings]

Settings record for
Business hours module.

Budget [sn_clin_core_budget_policy]

List of budget policies &
details.

Budget Report Forecast Cost
[sn_clin_core_budget_report_forecast_cost]

Spend calculation for the
budget.

Budgets Policy Summary [sn_clin_core_budget_summary]

Summaries of budget
policies with stats.

Cloud Insights realized saving snapshot
[sn_clin_core_daily_realized_saving_snapshot]

Snapshot of the actual
realised daily savings.

Excluded Resources Report Mapping
[sn_clin_core_exclusion_mapping]

Excluded resource
mapping to the
type report or
recommendation it
belongs to.

Excluded Resources [sn_clin_core_excl_res]

List of excluded
resources from the
Cloud Cost Management
modules for different
service accounts and
providers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2195


<!-- page 2196 -->
Table

Description

Insights Alias [sn_clin_core_insights_alias]

List of defined aliases for
Cloud Cost Management
scope.

Insights Alias Mapping [sn_clin_core_insights_alias_mapping]

Alias mapping to the
script or action flow for
Cloud Cost Management
scope.

Insights Execution [sn_clin_core_insights_execution]

Execution details for all
Cloud Cost Management
executions.

Insights Type [sn_clin_core_insights_type]

List of insights types
available for Cloud Cost
Management.

M2m Insights Exec Profile Flow Metrics
[sn_clin_core_m2m_insights_exec_profile_flow_metrics]

Insights execution to
profile flow metrics.

Cloud Insights Policy Action [sn_clin_core_policy_action]

Actions and flows to be
executed for a policy.

Policy Change Request Templates
[sn_clin_core_policy_change_request_template]

Change request
templates for business
hours and unassigned
recommendations.

Cloud Insights Policy Match [sn_clin_core_policy_match]

Policy matches for
various resources and
modules.

Policy Summary [sn_clin_core_policy_summary]

Summary of all the
policies available

Policy [sn_clin_core_pol_policy]

Policies to be applied on
various modules.

Cloud Insights potential saving snapshot
[sn_clin_core_potential_saving_snapshot]

Snapshot of the actual
realised savings.

Cloud Insights Recommendations [sn_clin_core_recommendation]

Recommendations for
Cloud Cost Management
modules.

Recommendation Action Job Execution
[sn_clin_core_recommendation_action_job_execution]

Job execution status for
recommendations.

Reserved Instance Settings
[sn_clin_core_reserved_instance_settings]

Settings record for
Reserved Instance
module.

Reserved Instance Recommendation
[sn_clin_core_ri_recommendation]

Recommendations for
reserved instances
modules.

Rightsizing Analytics Report
[sn_clin_core_rs_analytics_report_base]

Potential resources
for rightsizing
recommendations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2196


<!-- page 2197 -->
Table

Description

Cloud Insights Job [sn_clin_core_rs_job]

List of jobs for rightsizing
or unused machines
module.

Cloud Insights Rightsizing Recommendation Automatic
[sn_clin_core_rs_recommendation_automatic]

Rightsizing
recommendations.

Cloud Insights Rightsizing Recommendation
[sn_clin_core_rs_recommendation_base]

Parent table for
rightsizing or unused
recommendations.

Rightsizing Settings [sn_clin_core_rs_settings]

Settings record for
Rightsizing module.

Cloud Insights Unused Recommendation
[sn_clin_core_rs_unused_recommendation]

Unused resources
recommendations.

Service Account Owner Update Policy
[sn_clin_core_sa_owner_policy]

Policies to update the
service account owners.

Insights Settings[sn_clin_core_settings]

Settings for various
Cloud Cost Management
modules.

Tag key [sn_clin_core_tag_key]

Tag keys derived from
billing data as well as
user generated keys.

Unassigned Resources Count [sn_clin_core_unassigned_count]

Count of unassigned
resources for various
service accounts.

Cloud Insights Unassigned Policies
[sn_clin_core_unassigned_policy]

Policies available for
unassigned resources.

Policy CI View [sn_clin_core_unassigned_policy_ci_view_list]

Used for generating
unassigned resources
count. Contains
information about the
table to be queried and
the encoded query
and the columns to be
queried in the specified
table. The records in
this table are manually
hardcoded.

Unassigned Policy Summary
[sn_clin_core_unassigned_policy_summary]

Policy summaries
available for unassigned
resources.

Unassigned Recommendations
[sn_clin_core_unassigned_recommendation]

Unassigned
recommendations with
assignment group,
generated based on
matched policies.

Unassigned Report [sn_clin_core_unassigned_report]

Reports or policy match
for various unassigned
resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2197


<!-- page 2198 -->
Table

Description

Unassigned Resources [sn_clin_core_unassigned_resource]

List of unassigned
resources on which
policies can be applied.

Unassigned Resource Settings [sn_clin_core_unassigned_settings]

Settings record for
Unassigned resources
module.

Unused Machine Settings [sn_clin_core_unused_settings]

Settings record for
Unused machines
module.

Spend Report Monthly Aggregated Costs
[sn_cld_spend_core_monthly_aggregated_cost]

Stores spend for all
resources over a time
range or a cost type.

Important: The following tables are used only when the Cloud Cost Management Infra
Stack application is installed in addition to Cloud Cost Management version 8.1.

Resource Average Costs
[sn_cld_intg_core_resource_avg_cost_list]

Google Policy Usage Last Downloaded
[sn_cld_intg_gcp_resource_usage_last_downloaded]

AWS billing job files
[sn_cld_intg_aws_billing_files]

Azure billing Job chunk blob detail
[sn_cld_intg_azure_job_chunk_blob_detail]

Average daily cost
of the resource. This
average daily cost
is used to calculate
savings for unused
recommendations.
Usage last downloaded
timestamp of the
resources. This helps in
downloading only the
delta usage for Business
hours.
Reference and status
of the attachments
of billing CSV files
downloaded for a
corresponding billing
job of AWS assume role
setup.
Tracking and download
URLs of Azure billing
CSV data for a
given date range
corresponding to a
billing job. Blobs are
generated on Glide and
download URLs are
passed to the backend.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2198


<!-- page 2199 -->
Table

Description

Resource Latest Usage

Latest usage date and
corresponding pivot
key of the supported
resources like VM, DB,
storage, and snapshots
for a specific provider.
Resources used on the
previous day are used
for license calculation.

sn_cld_intg_core_resource_latest_usage

Spend Report Monthly Provider Agg Cost
sn_cld_spend_core_monthly_provider_agg_cost
Spend Report Monthly Master Account Agg Cost
sn_cld_spend_core_monthly_master_account_agg_cost
Spend Report Monthly Service Account Agg Cost

Cloud Cost Management
Workspace loads data
from these tables when
a user logs in with the
insights_admin role.
These tables contain
monthly aggregated
spend data based on
various categories such
as Provider and Region.

sn_cld_spend_core_monthly_service_account_agg_cost
Spend Report Monthly Purchase Option Agg Cost
sn_cld_spend_core_monthly_purchase_option_agg_cost
Spend Report Monthly Region Agg Cost
sn_cld_spend_core_monthly_region_agg_cost
Spend Report Monthly Cloud Category Agg Cost
sn_cld_spend_core_monthly_cloud_category_agg_cost
Spend Report Monthly Service Category Agg Cost
sn_cld_spend_core_monthly_service_category_agg_cost
Spend Report Monthly Resource Group Agg Cost
sn_cld_spend_core_monthly_resource_group_agg_cost
Spend Report Monthly Tag Agg Cost
sn_cld_spend_core_monthly_tag_agg_cost

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2199


<!-- page 2200 -->
System properties for Cloud Cost Management
Set some property values on the System Properties form, but other lesser-used properties are
available only on the System Property [sys_properties] table.
System properties for Billing Download jobs
System property

Description

sn_cld_intg_core.ci_placement_threads_numberNumber of threads that are used by CI
placement flow to create CIs in the billing
process.
• Type: integer
• Default value: 4
• Location: System properties
sn_cld_intg_aws.max_unprocessed_records_for_ci_placement
Maximum number of records to read in one
batch from the AWS Cost And Usage Bill Data
table for CI Placement.
• Type: integer
• Default value: 300000
• Location: System properties
sn_cld_intg_aws.min_unprocessed_records_for_ci_placement
Minimum number of records to read in one
batch from the AWS Cost And Usage Bill Data
table for CI Placement.
• Type: integer
• Default value: 100000
• Location: System properties

System properties for Spend analysis
System property

Description

sn_cld_spend_core.metricbase_transform_limit Maximum number of Billing records to use in
one Metric Base transform.
• Type: integer
• Default value: 20000
• Location: System properties
sn_cld_spend_core.spend_report_flow_launcher_chunk_size
Number of non-empty CI chunks to send to
the spend flow launcher.
• Type: integer
• Default value: 40
• Location: System properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2200


<!-- page 2201 -->
System properties for Spend analysis (continued)
System property

Description

sn_cld_spend_core.spend_report_per_chunk_workload_size
Number of workloads (CI ranges and
metadata) for each chunk in the spend flow
launcher.
• Type: integer
• Default value: 500
• Location: System properties
sn_cld_spend_aws.num_months_forecast

Number of future months after the current
month for which the AWS Forecast spend is
retrieved during every execution of the Spend
job.
• Type: integer
• Default value: 2
• Location: System properties

System properties for Business Hours

Note: The collection of data for a single download of billing or price
sheet data is called a workload. Data in a workload is held in sets of data
called chunks. You can specify the size of each chunk and the number of
chunks in a workload.

System property

Description

sn_clin_core.bh_report.batch_size

The number of resources to include in a
Business Hours report batch.
• Type: integer
• Default value: 5000
• Location: System properties

sn_clin_core.bh_recom_max_chunk_size

Number of records used to create
workload chunks of rightsizing
recommendations. If you set a value greater
than glide.db.max_view_records , then the
glide.db.max_view_records value is used
instead. A smaller number means more
chunks and a larger number means fewer
chunks.
Records considered in one execution of
generating recommendations = (number of
chunks) * (data records/chunk)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2201


<!-- page 2202 -->
System properties for Business Hours

Note: The collection of data for a single download of billing or price
sheet data is called a workload. Data in a workload is held in sets of data
called chunks. You can specify the size of each chunk and the number of
chunks in a workload.
(continued)
System property

Description

• Type: integer
• Default value: 10000
• Location: System properties
sn_clin_core.bh_recom_num_chunks_per_workload
Number of chunks per workload.
This value times the value of
sn_clin_core.bh_recom_max_chunk_size is
the total number of records per workload when
generating rightsizing recommendations.
Records considered in one execution of
generating recommendations = (number of
chunks) * (data records/chunk)
• Type: integer
• Default value: 10
• Location: System properties

System properties for Microsoft Azure
System property

mid.azure_action.batch_size

Description

Use batch_size to set the batch size to
fewer than 20 for action calls like Stop, Start,
Modify (resize), Terminate, and Describe.
Cloud Cost Management uses the Azure
Batch API to make a bulk request for the
actions. By default, Azure Batch supports a
maximum of 20 for the synchronous call.
• Type: integer
• Default value: 20
• Location: System properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2202


<!-- page 2203 -->
System properties for Rightsizing and Unused resources operations for Microsoft Azure

Note: The collection of data for a single set of recommendations is
called a workload. Data in a workload is held in sets of data called
chunks. You can specify the size of each chunk and the number of
chunks in a workload.

System property

Description

sn_cld_intg_azure.az_rs_recommendation_queue_orchestrator_polling_time
Polling time for the Microsoft Azure
recommendation orchestrator to check the
status of the generate, get generate
status, list recommendation, or
process recommendation call and move
it to the next stage for processing.

Note: A short polling time is better in
the case of fewer subscriptions.
• Type: integer
• Default value: 5000 (ms)
• Location: System properties
sn_cld_intg_azure.chunk_size_generate_recommendation_subscriptions
Number of subscriptions to be processed
by each workload. Each workload creates
a maximum of 5 threads to process 10
subscriptions in parallel based on the
available MID Server worker threads.
Changing the setting to lower number
increases the number of created workloads.
Generate Recommendation is a
asynchronous API call that quickly returns the
generate recommendation operation ID.

Note: For fewer than 50 subscriptions,

you can decrease the value to
enable parallel processing. For
example, for 40 subscriptions,
changing the chunk size to 10 allows
4 workloads to process subscriptions.
By default, a maximum of 3 parallel
workload executions are allowed. The
maximum is configured in the flow
launcher job that is defined in the
sn_cld_intg_core_flow_launcher_job_config
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2203


<!-- page 2204 -->
System properties for Rightsizing and Unused resources operations for Microsoft Azure

Note: The collection of data for a single set of recommendations is
called a workload. Data in a workload is held in sets of data called
chunks. You can specify the size of each chunk and the number of
chunks in a workload.
(continued)
System property

Description

• Type: integer
• Default value: 5
• Location: System properties
sn_cld_intg_azure.advisor_get_status_min_chunk_size
Minimum number of subscriptions to process
in a workload for Get generate status
API call.
The call creates a new workload when the
specified minimum chunk size is met and,
after all subscriptions are processed, does not
create another workload.

Note: By default, a maximum of 4

parallel workload executions are allowed.
The maximum is configured in the
flow launcher job that is defined in the
sn_cld_intg_core_flow_launcher_job_config
table.
• Type: integer
• Default value: 5
• Location: System properties
sn_cld_intg_azure.advisor_list_recommendation_min_chunk_size
Minimum number of subscriptions to
process in a workload for the list
recommendation API call.
The call creates a new workload when the
specified minimum chunk size is met and,
after all subscriptions are processed, does not
create another workload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2204


<!-- page 2205 -->
System properties for Rightsizing and Unused resources operations for Microsoft Azure

Note: The collection of data for a single set of recommendations is
called a workload. Data in a workload is held in sets of data called
chunks. You can specify the size of each chunk and the number of
chunks in a workload.
(continued)
System property

Description

Note: Increasing the chunk size might

increase the overall processing time
because subscriptions are processed
sequentially. By default, a maximum of 4
parallel workload executions are allowed.
The maximum is configured in the
flow launcher job that is defined in the
sn_cld_intg_core_flow_launcher_job_config
table.
• Type: integer
• Default value: 1
• Location: System properties
sn_clin_azure.advisor_process_recommendation_min_chunk_size
The number of recommendation responses
that should be processed in a workload for
the API call and persisted in the Rightsizing or
Unused Machines recommendation table.
The call creates a workload when the
specified minimum chunk size is met and,
after all subscriptions are processed, doesn’t
create another workload.

Note: Increasing the chunk size might

increase the overall processing time
because subscriptions are processed
sequentially. By default, a maximum of 4
parallel workload executions are allowed.
The maximum is configured in the
flow launcher job that is defined in the
sn_cld_intg_core_flow_launcher_job_config
table.
• Type: integer
• Default value: 20
• Location: System properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2205


<!-- page 2206 -->
System properties for AWS Pricesheet
System property

Description

sn_cld_intg_aws.pricesheet_timeout_aws

Controls AWS price sheet download flow time
out duration.
• Value format: DD HH:MM:SS
• Default value: 2 days

System properties for Cloud Cost Management Infra Stack

Important: These system properties are used only if the Cloud Cost
Management Infra Stack application is installed in addition to the Cloud
Cost Management version 8.1.

System property

Description

ready.job.files.timeout

Maximum time in minutes to generate billing
files for AWS assume role setup or blobs for
Azure on Glide.
You can monitor AWS billing job files
[sn_cld_intg_aws_billing_files] table for
AWS and Azure billing Job chunk blob detail
[sn_cld_intg_azure_job_chunk_blob_detail]
table for Azure only when the download is in
progress and the time-out condition is met.
• Type: String
• Default value: 180
• Location: System properties

ready.job.nofiles.timeout

Maximum time in minutes to wait for the
backend to pick up the job when there’s
no other job being processed for the same
provider.

Important: To configure this system
property, contact your support team.
Don't configure it on your own.
• Type: String
• Default value: 10
• Location: System properties
reserved.job.timeout

Maximum time in minutes to wait for the job to
change from Reserved to In progress state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2206


<!-- page 2207 -->
System properties for Cloud Cost Management Infra Stack

Important: These system properties are used only if the Cloud Cost
Management Infra Stack application is installed in addition to the Cloud
Cost Management version 8.1.
(continued)
System property

Description

Important: To configure this system
property, contact your support team.
Don't configure it on your own.
• Type: String
• Default value: 5
• Location: System properties
inprogress.job.timeout

Maximum time in minutes to wait for the job
to change from In progress to Sink complete
state.

Important: To configure this system
property, contact your support team.
Don't configure it on your own.
• Type: String
• Default value: 10
• Location: System properties
sinkcomplete.job.timeout

Maximum time in minutes to wait for the job
to change from Sink begin to Sink complete
state.

Important: To configure this system
property, contact your support team.
Don't configure it on your own.
• Type: String
• Default value: 20
• Location: System properties
billing.data.post.processing.timeout

Maximum waiting time in minutes for billing
from Post processing to Complete phase.
The final stage of billing job includes inserting
spend data into Glide. During the Post
processing phase, the newly inserted data is
activated and the existing data is inactivated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2207


<!-- page 2208 -->
System properties for Cloud Cost Management Infra Stack

Important: These system properties are used only if the Cloud Cost
Management Infra Stack application is installed in addition to the Cloud
Cost Management version 8.1.
(continued)
System property

Description

Increasing the time out value gives more time
for the activation flow to complete.
• Type: String
• Default value: 30
• Location: System properties
retry.cred.failed.billing.job.timeout

Maximum time in minutes to wait before
canceling a job that's in the Requested state
due to credential failure.
When you add a credential, it’s sent to the
backend only in the next billing run, resulting
in a temporary failure. However, retries are
made to establish a connection. This property
specifies how long to wait before canceling
the reattempted job.
• Type: String
• Default value: 30
• Location: System properties

sn_cld_intg_azure.billing_chunk_duration

Defines the chunk size for Azure billing blob in
days.
By default, each blob contains billing data for
three days.
• Type: Number
• Default value: 3
• Location: System properties

Cloud service categories in Cloud Cost Management for Amazon AWS Cloud
services
In Cloud Cost Management, provider services are grouped into service categories. This grouping
enables you to use filters to focus your analysis on particular types of service (for example,
Compute or Database). To perform more targeted analysis, you can filter for particular services
within a service category (for example, Amazon ElastiCache or Azure Database for PostgreSQL
are services in the Database category).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2208


<!-- page 2209 -->
Service categories in Cloud Cost Management for Amazon AWS Cloud services

Cloud service in AWS

Cloud Cost Management Service Category

Alexa for business

Business Productivity

Amazon API Gateway

Application Services

Amazon Athena

Analytics

Amazon Aurora

Database

Amazon Chime

Business Productivity

Amazon Cloud Directory

Security

Amazon CloudFront

Network

Amazon CloudSearch

Analytics

AmazonCloudWatch

Management Tools

Amazon Cognito

Security

Amazon Comprehend

Machine Learning

Amazon Connect

Application Services

Amazon DocumentDB

Database

Amazon DynamoDB

Database

Amazon EC2 Auto Scaling

Compute

Amazon EC2 Container Service

Compute

Amazon ElastiCache

Database

Amazon Elastic Block Store

Storage

Amazon Elastic Compute Cloud

Compute

Amazon Elastic Container Registry

Compute

Amazon Elastic File System

Storage

Amazon Elasticsearch Service

Analytics

Amazon Elastic Transcoder

Application Services

Amazon EMR

Analytics

Amazon FreeRTOS

IOT

Amazon GameLift

Application Services

Amazon Glacier

Storage

Amazon GuardDuty

Security

Amazon Inspector

Security

Amazon Kinesis

Analytics

Amazon Kinesis Video Streams

Application Services

Amazon Lex

Machine Learning

Amazon Lightsail

Compute

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2209


<!-- page 2210 -->
Cloud service in AWS

Cloud Cost Management Service Category

Amazon Machine Learning

Machine Learning

Amazon Macie

Security

Amazon MQ

Application Services

Amazon Neptune

Database

Amazon Pinpoint

Mobile

Amazon Polly

Machine Learning

Amazon QuickSight

Analytics

Amazon Redshift

Database

Amazon Rekognition

Machine Learning

Amazon Relational Database Service

Database

Amazon Route 53

Network

Amazon SageMaker

Application Services

Amazon SimpleDB

Database

Amazon Simple Email Service

Application Services

Amazon Simple Notification Service

Tools

Amazon Simple Queue Service

Application Services

Amazon Simple Storage Service

Storage

Amazon Simple Workflow Service

Productivity

Amazon Sumerian

Application Services

Amazon Transcribe

Machine Learning

Amazon Translate

Machine Learning

Amazon Virtual Private Cloud

Network

Amazon WorkDocs

Business Productivity

Amazon WorkMail

Productivity

Amazon Workspaces

Productivity

AWS (Unknown Product)

Application Services

AWS Application Discovery Service

Application Services

AWS AppSync

Mobile

AWS Auto Scaling

Management Tools

AWS Batch

Compute

AWS Certificate Manager

Security

AWS Cloud9

Developer Tools

AWS CloudFormation

Compute

AWS CloudHSM

Security

AWS Cloud Map

Network

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2210


<!-- page 2211 -->
Cloud service in AWS

Cloud Cost Management Service Category

AWS CloudShell

Developer Tools

AWS CloudTrail

Tools

AWS CloudWatch

Tools

AWS CodeBuild

Developer Tools

AWS CodeCommit

Developer Tools

AWS CodeDeploy

Developer Tools

AWS CodePipeline

Developer Tools

AWS CodeStar

Developer Tools

AWS Config

Tools

AWS Cost Explorer

Management Tools

AWS Database Migration Service

Database

AWS Data Pipeline

Analytics

AWS DataSync

Application Services

AWS Device Farm

Mobile

AWS Direct Connect

Network

AWS Directory Service

Security

AWS Elastic Beanstalk

Compute

AWS Elastic Block Store

Storage

AWS Elastic Compute Cloud

Compute

AWS Elastic Load Balancing

Load Balancer

AWS Elemental MediaConvert

Application Services

AWS Elemental MediaLive

Application Services

AWS Elemental Mediapackage

Application Services

AWS Elemental MEdiaStore

Application Services

AWS Elemental MediaTailor

Application Services

AWS Fargate

Compute

AWS Glue

Analytics

AWS Greengrass

IOT

AWS Identity and Access Management

Security

AWS IoT

IOT

AWS IoT 1-Click

IOT

AWS IoT Analytics

IOT

AWS IoT Core

IOT

AWS IoT Device Management

IOT

AWS IoT Events

IOT

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2211


<!-- page 2212 -->
Cloud service in AWS

Cloud Cost Management Service Category

AWS Key Management Service

Security

AWS Lambda

Compute

AWS Lamda

Compute

AWS Mobile Hub

Mobile

AWS OpsWorks

Management Tools

AWS Relational Database Service

Database

AWS Route 53

Network

AWS Secrets Manager

Security

AWS Service Catalog

Management Tools

AWS Shield

Security

AWS Simple Notification Service

Tools

AWS Simple Storage Service

Storage

AWS Snowball

Storage

AWS Snowball Edge

Storage

AWS Snowmobile

Storage

AWS Step Functions

Application Services

AWS Storage Gateway

Storage

AWS Systems Manager

Management Tools

AWS Trusted Advisor

Management Tools

AWS Virtual Private Cloud

Network

AWS WAF

Security

AWS X-Ray

Developer Tools

Elastic Load Balancing

Load Balancer

Cloud service categories in Cloud Cost Management for Microsoft Azure
services
In Cloud Cost Management, provider services are grouped into service categories. This grouping
enables you to use filters to focus your analysis on particular types of service (for example,
Compute or Database). To perform more targeted analysis, you can filter for particular services
within a service category (for example, Amazon ElastiCache or Azure Database for PostgreSQL
are services in the Database category).

Service categories in Cloud Cost Management for Microsoft Azure services

Services in Microsoft Azure

Cloud Cost Management Service Category

Advanced Threat Protection

Security

API Management

Tools

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2212


<!-- page 2213 -->
Services in Microsoft Azure

Cloud Cost Management Service Category

App Center

Application Services

Application Gateway

Network

Application Insights

Management Tools

Automation

Management Tools

Azure Active Directory B2C

Security

Azure Active Directory Domain Services

Security

Azure Alert

Event

Azure Analysis Services

Analytics

Azure API for FHIR

Application Services

Azure App Service

Compute

Azure ARM

Compute

Azure Bastion

Network

Azure Blockchain

Blockchain

Azure Bot Service

Machine Learning

Azure Cosmos DB

Database

Azure Database for MariaDB

Database

Azure Database for MySQL

Database

Azure Database for PostgreSQL

Database

Azure Database Migration Service

Database

Azure Databricks

Analytics

Azure Data Explorer

Analytics

Azure Data Factory

Database

Azure Data Factory v2

Database

Azure Data Share

Analytics

Azure DDOS Protection

Network

Azure DevOps

Developer Tools

Azure DNS

Network

Azure Firewall

Network

Azure Firewall Manager

Network

Azure Front Door Service

Network

Azure Lab Services

Developer Tools

Azure Machine Learning

Machine Learning

Azure Maps

IOT

Azure Monitor

Management Tools

Azure NetApp Files

Storage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2213


<!-- page 2214 -->
Services in Microsoft Azure

Cloud Cost Management Service Category

Azure Remote Rendering

Application Services

Azure Search

Machine Learning

Azure Site Recovery

Management Tools

Azure Spring Cloud

Application Services

Azure Stack

Hybrid Cloud

Azure Stack Edge

Machine Learning

Azure Synthetics

Application Services

Backup

Management Tools

Bandwidth

Compute

BizTalk Services

Application Services

Cloud Services

Compute

Cognitive Services

Machine Learning

Container Instances

Containers

Container Registry

Containers

Content Delivery Network

Network

Cost Management

Management Tools

Data Box

Storage

Data Catalog

Analytics

Datacenter Capacity

Application Services

Data Lake Analytics

Analytics

Data Lake Store

Analytics

Data Management

Application Services

Digital Twins

IOT

Dynamics 365 for Customer Insights

Management Tools

Event Grid

Management Tools

Event Hubs

Analytics

ExpressRoute

Network

Functions

Compute

GitHub

Management Tools

HDInsight

Analytics

HPCCache

Storage

Insight and Analytics

Analytics

IoT Central

IOT

IoT Hub

IOT

Key Vault

Security

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2214


<!-- page 2215 -->
Services in Microsoft Azure

Cloud Cost Management Service Category

Kusto

Application Services

Load Balancer

Load Balancer

Log Analytics

Analytics

Logic Apps

Tools

Machine Learning Service

Machine Learning

Machine Learning Studio

Machine Learning

Marketplace

Marketplace

Media Services

Application Services

Microsoft.ApiManagement

Application Services

Microsoft.BlockStorage

Storage

Microsoft.Cache

Application Services

Microsoft.Compute

Compute

Microsoft.DocumentDB

Database

Microsoft.Insights

Tools

Microsoft.LoadBalancer

Load Balancer

Microsoft.Network

Network

Microsoft.Security

Security

Microsoft.ServiceBus

Tools

Microsoft.Sql

Database

Microsoft.Storage

Storage

Microsoft.Web

Application Services

Microsoft (Unknown Product)

Application Services

Microsoft Azure Internet Analyzer

Network

Microsoft Azure Peering Service

Network

Microsoft Genomics

Application Services

Mixed Reality

Virtual Reality

Multi-Factor Authentication

Security

NAT Gateway

Network

Network Watcher

Management Tools

Notification Hubs

IOT

PlayFab

Application Services

Power BI Embedded

Analytics

Redis Cache

Database

Scheduler

Management Tools

Security Center

Security

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2215


<!-- page 2216 -->
Services in Microsoft Azure

Cloud Cost Management Service Category

Sentinel

Security

Service Bus

Management Tools

Service Fabric

Compute

Service Fabric mesh

Compute

SignalR

Application Services

Spatial Anchors

Virtual Reality

Specialized Compute

Compute

SQL Advanced Threat Protection

Security

SQL Database

Database

SQL Data Warehouse

Database

SQL DB Edge

Database

SQL Server Stretch Database

Database

Storage

Storage

StorSimple

Storage

Stream Analytics

Analytics

Time Series Insights

IOT

Traffic Manager

Management Tools

Virtual Machines

Compute

Virtual Machines Licenses

Compute

Virtual Network

Network

Virtual WAN

Security

Visual Studio Online

Management Tools

Visual Studio Subscription

Developer Tools

VPN Gateway

Network

Windows 10 IoT Core Services

IOT

Xamarin University

Application Services

Cloud service categories in Cloud Cost Management for Google Cloud
services
In Cloud Cost Management, provider services are grouped into service categories. This grouping
enables you to use filters to focus your analysis on particular types of service (for example,
Compute or Database). To perform more targeted analysis, you can filter for particular services
within a service category (for example, Amazon ElastiCache or Azure Database for PostgreSQL
are services in the Database category).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2216


<!-- page 2217 -->
Service categories in Cloud Cost Management for Google Cloud services

Cloud service in Google Cloud

Cloud Cost Management Service Category

Bigtable

Database

Cloud Storage

Storage

Cloud SQL

Database

Database Migration

Database

Datastore

Database

Data Transfer

Storage

Development Manager

Tools

Endpoints

Tools

File Store

Storage

Firestore

Database

Hybrid Connectivity

Network

Memorystore

Database

Network Intelligence

Network

Network Security

Network

Network services

Network

Service Catalog

Tools

VPC network

Network

List of Budget policy creation fields
Fields on the Budget policy creation form help you create a budget policy to specify a budgeted
amount, cost type, reset period, and other aspects of the budget.
Budget policy creation
Field

Description

Budget policy

List of created budget policies.
If you want to update a budget policy, search
and select a created budget policy from the
drop-down list. After you select a budget, all
the relevant fields get automatically populated.

Active

Option to apply the policy, which executes
Budget Forecast analysis whenever billing
data is updated.

Name

A unique name that describes the policy for
other users.

Description

A unique description that describes the policy
for other users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2217


<!-- page 2218 -->
Budget policy creation (continued)
Field

Description

Cost type

Contractual payment agreement with the
provider.
• Amortized: Your organization pays the
effective cost of the upfront and monthly
reservation fees spread across the billing
period. The amortized cost type is described
in detail on the provider site.
• Actual: Each billing period, your organization
pays for direct cloud services.

Start month

Month from which the plan applies.

End month

Month until when the plan applies.

Start day

Date from which the plan applies.

End day

Date until when the plan applies.

Start year

Year from which the plan applies.

End year

Year until when the plan applies.

Currency

Currency type of the policy.

Amount

Total spend that is budgeted for the time
period that is specified by the Granularity
value.
Calculated
Behaves in the same way as the default
currency field type. Whenever conversions
are performed, the system uses the latest
currency conversion rates. The amount
appears in the session currency for the user.
Fixed
The amount displays in the currency code
that you used when you entered the Amount
value. Conversions use the latest currency
conversion rates.
Multiple
Enables you to enter multiple amounts using
a different currency for each amount. The field
value is the value entered in the user’s session
currency. Otherwise, the first value entered
converts to the user’s session currency.
Conversions use the latest currency rates.

Note: The first amount entered is used
during display. The other values aren’t
used to perform calculations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2218


<!-- page 2219 -->
Budget policy creation (continued)
Field

Description

The session currency for the instance
determines the numbers that a user sees on
budget reports. If the currency you specify
in the Budget plan differs from the session
currency, then the amount displays in the
reports in two fields:
• Budgeted amount: The money amount
expressed in the currency used in the plan.
• Converted budget amount: The same
money amount, expressed in the session
currency.
Granularity

Reset period for the budget.
• Annual: The Amount value applies to a oneyear period.
• Monthly: The Amount value applies to a
one-month period.

Account and Resource criteria
Parent account

The primary account with which the service
accounts are associated.

Note: While editing a policy, changing
the parent account can change the
provider.
Service accounts

The service accounts to apply the plan to.
Move all appropriate service accounts to the
Selected list.
For Google Cloud only, this field is called
Projects.

Tag category condition

Add tag category by selecting a tag category
from the drop-down list and by adding tag
values separated by comma.

Budget Viewer and Notifications
Viewer (user)

User that can view this Budget policy.

Note: Regardless of this selection, only
users that also have the Cloud Budget
Viewer [sn_clin_core.budget_viewer] role
have viewing access.
Viewer (group)

User group that can view this Budget policy.

Notification frequency

The recurrence of email to users as described
in Users to notify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2219


<!-- page 2220 -->
Budget policy creation (continued)
Field

Description

User to be notified

Users to notify by email when the following
conditions occur:
• Budget is forecast to be exceeded.
• Budget is exceeded.
• Budget is invalid.

List of Shared cost allocation policy fields
Fields on the Shared cost allocation policy creation form help you create a shared cost allocation
policy.
Shared cost allocation policy creation form
Field

Description

Select shared cost policy to edit

The shared cost policy that you want to edit.

Active

The option to apply the policy. Selecting
the Active check box enables shared cost
allocation whenever billing data is updated.

Name

A unique name that describes the policy for
other users.

Description

A brief description of the policy.

Run order

The order in which to apply policies. Each
policy must have a unique value. The system
applies policies in low-to-high run order and
performs the actions for the first policy that
matches. After a match, no other policy is
applied to the resource.

Start month

The start month from when the monthly
spend records are processed. This field is
automatically set to the current month.

Note: The Start month must be before
the End month.
End month

The month till when the monthly spend
records are processed.

Note: The End month must be after the
Start month.
Start year

The start year from when the monthly
spend records are processed. This field is
automatically set to the current year.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2220


<!-- page 2221 -->
Shared cost allocation policy creation form (continued)
Field

Description

Note: The Start year must be before the
End year.
End year

The year till when the monthly spend records
are processed.

Note: The End year must be after the
Start year.
Provider

The cloud provider to apply the policy to.

Note: You can’t change the provider
while editing an existing policy.
Service category

List of all service categories that the policy
applies to.

Service accounts

The service accounts to apply the policy to.
For Google Cloud only, this field is called
Projects.

Cloud service

Cloud service that the policy applies to.
• All
• Specific

Select cloud service

The cloud service that the policy you want to
apply to.
This field appears only when Specific is
selected from Cloud Service.

Resource type

Resource type of the Kubernetes service
category.
• Cloud resource
• Kubernetes cluster
This field appears only when Kubernetes
Service is selected from Service category.

Region

Region of the resource that the policy applies
to.
• All
• Specific

Select region

The region of the resource that the policy you
want to apply to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2221


<!-- page 2222 -->
Shared cost allocation policy creation form (continued)
Field

Description

This field appears only when Specific is
selected from Region.
Purchase option

Purchasing options for your cloud resources.
• On demand
• Reserved
• Savings plans
• Tax
• Unknown

Select the tag
Business unit

Business unit of the resource to which the
policy applies to.
• All
• Specific

Select business unit

The business unit of the resource that the
policy you want to apply to.
This field appears only when Specific is
selected from Business unit.

Department

The department of the resource that the policy
you want to apply to.
• All
• Specific

Select department

The department of the resource that the policy
you want to apply to.
This field appears only when Specific is
selected from Department.

Division

The department division of the resource that
the policy you want to apply to.
• All
• Specific

Select division

The department division of the resource that
the policy you want to apply to.
This field appears only when Specific is
selected from Division.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2222


<!-- page 2223 -->
Shared cost allocation policy creation form (continued)
Field

Description

Cost center

Cost center of the resource that the policy is
applied to.
• All
• Specific

Select cost center

The cost center of the resource that the policy
you want to apply to.
This field appears only when Specific is
selected from Cost center.

Allocation type

Allocation type to be used while defining the
shared cost allocation policy.
• Fixed: The allocation percentage is
specified in the Cost distribution section
for each group. For example, if the cost of
a cloud service is shared with two other
groups, specify the allocation percentage
for each group.
• Even: The allocation is split across the
allocation groups evenly. For example,if
the cost of a cloud service is shared with
two other groups, the allocation percentage
is automatically populated evenly among
these groups.
• Proportional: Policy for cloud services
and service categories, or both, is defined.
The combination of these attributes is
considered for shared cost allocation.
For example, if a policy is defined for
the following combination, then all costs
associated with this combination would be
considered for shared cost.
◦ Service category: Database and Cloud
service: Amazon DocumentDB
◦ Service category: Database and Cloud
service: Empty
Here, all Database category cloud
services are considered as shared cost.​
The allocation percentage is automatically
populated based on the direct cost of the
resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2223


<!-- page 2224 -->
Shared cost allocation policy creation form (continued)
Field

Description

Note:
• The sum of allocation percentages
across the groups must be 100%.
• The allocation percentage can’t be
negative.
• The combination of groups must be
unique.​
Cost distribution

Add Business unit, Division, Department, Cost
center, and Allocation percentage to distribute
the resource costs among various business
lines by selecting Add.

Namespace Distribution

For Kubernetes, add Namespace and
Allocation percentage to distribute the
resource costs among various business lines
by selecting Add.
This field appears only when Kubernetes
Service is selected from Service category and
Kubernetes cluster is selected from Resource
type.

Note: The allocation type that you can
define can be only Fixed and Even.
Allocation percentage

Percentage of the shared cost allocation for
each cloud resource.

List of default tag categories
View the list of default tag categories on the Tag categories page. A tag category helps you to
enable multiple tag names for representing costs against a single business entity.
You can view the list of tag default categories by navigating to Cloud Cost Management
Workspace > Operations > Cost usage tags > Tag categories.

Default tag categories

Application feature
Application owner
Application team
AI Service

Important: This tag category is available with the Cloud Cost Management 8.0.0
version or later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2224


<!-- page 2225 -->
Default tag categories

Note: If you want to associate a tag name with its corresponding tag value whenever a
new AI service or a category within an existing AI service is introduced for Amazon Web
Services (AWS), Microsoft Azure, or Google Cloud Platform (GCP), see Add or update a
tag value for an AI Service tag category.
Business application
Business service
Business unit
Cost center
Department
Division
Environment
Kubernetes cluster name
Related topics
Tags and tag categories
Create and update a tag category

List of default Cloud categories for AI services
List of default Cloud categories applicable to the Machine Learning service category for
managing AI services.
Default provider-specific AI services
Service provider

Amazon Web Services (AWS)

AI services

• Amazon CodeGuru
• Amazon Comprehend
• Amazon Comprehend Medical
• Amazon DevOps Guru
• Amazon Forecast
• Amazon Fraud Detector
• AWS HealthLake
• Amazon Kendra
• Amazon Lex
• Amazon Lookout for Equipment
• Amazon Lookout for Metrics
• Amazon Lookout for Vision
• Amazon Monitron
• Amazon Omics
• Amazon Personalize
• Amazon Polly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2225


<!-- page 2226 -->
Default provider-specific AI services (continued)
Service provider

AI services

• Amazon Rekognition
• Amazon Textract
• Amazon Transcribe
• Amazon Translate
• Amazon Augmented AI
Microsoft Azure

• Azure Cognitive Services
• Azure AI Search
• Azure AI Bot Service

Google Cloud Platform (GCP)

• Cloud Dialogflow API
• Cloud Document AI API
• Cloud Document API
• Cloud Natural Language
• Cloud Speech API
• Cloud Text-to-Speech API
• Cloud Video Intelligence API
• Cloud Vision API
• Translate
• Vertex AI Vision
• Vertex AI
• Vertex AI Search

Related topics
Add or update a tag value for an AI Service tag category

Supported CI class types for Amazon AWS Cloud services
Supported CI class types for AWS enable assigning cost and usage data correctly using the CI
placement process. The CI placement process places a subset of CIs into corresponding CI
tables that are used in the recommendation generation process for Cloud Cost Management.

Note: All the supported CI class types are placed after the Cumulus Unsupported CI
Placement scheduled job runs daily. Some of the CI class types are placed immediately
after Billing Download job execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2226


<!-- page 2227 -->
Supported CI class types
All supported CI class types

CI class types that are placed immediately after
job execution

cmdb_ci_storage_vol_snapshot

cmdb_ci_vm_instance

cmdb_ci_cloud_database

cmdb_ci_cloud_database

cmdb_ci_storage_volume

cmdb_ci_storage_volume

cmdb_ci_cloud_gateway

cmdb_ci_storage_vol_snapshot

cmdb_ci_dynamodb_table
cmdb_ci_cloud_object_storage
cmdb_ci_network
cmdb_ci_cloud_function
cmdb_ci_vm_instance
cmdb_ci_kubernetes_cluster

Supported CI class types for Microsoft Azure services
Supported CI class types for Microsoft Azure enable assigning cost and usage data correctly
using the CI placement process. The CI placement process places a subset of CIs into
corresponding CI tables that are used in the recommendation generation process for Cloud Cost
Management.

Note: All the supported CI class types are placed after the Cumulus Unsupported CI
Placement scheduled job runs daily. Some of the CI class types are placed immediately
after Billing Download job execution.
Supported CI class types
All supported CI class types

CI class types that are placed immediately after
job execution

cmdb_ci_instance_scale_set

cmdb_ci_vm_instance

cmdb_ci_vm_instance

cmdb_ci_cloud_database

cmdb_ci_cloud_database

cmdb_ci_database

cmdb_ci_kubernetes_cluster

cmdb_ci_storage_volume

cmdb_ci_cloud_load_balancer

cmdb_ci_storage_vol_snapshot

cmdb_ci_database
cmdb_ci_network
cmdb_ci_storage_vol_snapshot
cmdb_ci_cloud_storage_account
cmdb_ci_storage_volume

Supported CI class types for Google Cloud services
Supported CI class types for Google Cloud enable assigning cost and usage data correctly
using the CI placement process. Some CI class types are placed immediately. The CI
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2227


