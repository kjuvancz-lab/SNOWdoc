# Zurich IT Operations Management — Cloud Discovery Workspace / Cloud License Estimator

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2522–2535 of 4823

Sections: Cloud Discovery Workspace (p2522); Cloud License Estimator (p2531)

---

<!-- page 2522 -->
Cloud Discovery Workspace
Cloud Discovery Workspace offers a comprehensive solution to manage the cloud operations of
your organization.

Important: Starting with the Zurich release, Cloud Discovery Workspace is being
prepared for future deprecation. It will be hidden and no longer activated on new instances,
but will continue to be supported. Discovery Admin Workspace provides the latest
experience for this functionality. For details, see the Application/Plugin Deprecation
Process [KB0867184]
article in the Now Support knowledge base.

Get Started
Choose one of these tiles to get started.

Install

Use

Install

Use

Cloud Discovery Workspace

Cloud Discovery Workspace

Troubleshoot and get help
• Ask or answer questions in the Cloud Discovery Workspace forum on the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Install Cloud Discovery Workspace
You can install the Cloud Discovery Workspace application (com.cloud_operations_workspace) if
you have the admin role.

Before you begin

Important: Starting with the Zurich release, Cloud Discovery Workspace is being
prepared for future deprecation. It will be hidden and no longer activated on new instances,
but will continue to be supported. Discovery Admin Workspace provides the latest
experience for this functionality. For details, see the Application/Plugin Deprecation
Process [KB0867184]
article in the Now Support knowledge base.

When Cloud Discovery Workspace is installed, several plugins and applications are also
installed. For more information, see Plugins or applications installed with ITOM Visibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2522


<!-- page 2523 -->
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Cloud Discovery Workspace requires the following plugin. Ensure that the following plugin is
activated before you install Cloud Discovery Workspace.
Required ServiceNow plugins
Discovery (com.snc.discovery)
ServiceNow Cloud Discovery finds applications and devices on your
network, and then updates the CMDB 360 with the information it
finds. For more information on activating Discovery, see Request
Discovery.
Role required: admin

About this task

When you install the Cloud Discovery Workspace application, it automatically installs the
following role:
Cloud Discovery Workspace role
Role name

Description and tasks

sn_cloud_ops_ws.cloud_ops_admin
The Cloud Discovery
Workspace admin can
perform the following actions:
• View the Cloud Discovery
Workspace dashboard

Nested roles

• sn_itom_ui_comp.itom_component_user
• discovery_admin
• cloud_admin

• Create Cloud Discovery
schedules
• Monitor Cloud Discovery
operations
• View Cloud Discovery
reports

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Discovery Workspace application (com.cloud_operations_workspace) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install Cloud Discovery Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2523


<!-- page 2524 -->
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.

Cloud Discovery Workspace dashboard
®

The ServiceNow Cloud Discovery Workspace dashboard provides a summary of the cloud
operations of your organization and shows the ServiceNow applications that you can use to
manage them.

Important: Starting with the Zurich release, Cloud Discovery Workspace is being
prepared for future deprecation. It will be hidden and no longer activated on new instances,
but will continue to be supported. Discovery Admin Workspace provides the latest
experience for this functionality. For details, see the Application/Plugin Deprecation
Process [KB0867184]
article in the Now Support knowledge base.

Required ServiceNow AI Platform roles
sn_cloud_ops_ws.cloud_ops_admin.

Access the Cloud Discovery Workspace dashboard
To open the dashboard, navigate to All > Cloud Discovery Workspace.

Use cases
User

Dashboard use

sn_cloud_ops_ws.cloud_ops_admin

• Gain insight into the trend of CI discovery, trend of
Cloud Discovery events, and Cloud Discovery errors
• Select the cloud provider of your organization.
• Access the applications that you can use to manage
the cloud operations of your organization.

Indicators
Discovery errors today: Count of all Cloud Discovery errors that occurred during the scheduled
discoveries over the last 24 hours.

Reports
The following reports are available in the Cloud Discovery Workspace dashboard:

Title

Type

Source table

Total
Line and area cmdb_ci
configuration chart
items

Description

This report displays the number of CIs
discovered over time.
Select the report to view the list of all
the configuration items discovered

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2524


<!-- page 2525 -->
Title

Type

Source table

Description

so far. You can select any CI record to
view more information about the CI
and its multi-source data if available.

Events by
Line chart
provider last 24 hours

sn_cmp_cloud_event_list This report displays the trend of the
cloud events received over the last 24
hours. The report contains a separate
trend line for each cloud provider.

In addition, the dashboard cards display the applications that you can use to manage the
cloud operations of your organization. Use the Cloud provider selection page to select the
cloud providers of your organization. The selection helps to customize the menus of the Cloud
Discovery Workspace applications and display only the cloud providers that are relevant for your
organization.
Related topics
List of workspaces

Open your configurable workspace experience in UI Builder for Cloud
Discovery Workspace
Access your Configurable Workspace experience in UI Builder for editing.

Before you begin

Role required: ui_builder_admin or admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select Experiences.
3. Select your experience.

Result

Your Configurable Workspace experience opens in UI Builder.

Kubernetes Explorer
®

Use the ServiceNow Kubernetes Explorer to drill-down and view the Kubernetes environments
and resources of your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2525


<!-- page 2526 -->
Kubernetes Explorer

The Kubernetes Explorer supports the following cloud providers:
• Amazon Web Services (AWS): Amazon Elastic Kubernetes Service (EKS)
• Microsoft Azure Cloud: Azure Kubernetes Service
• Google Cloud Platform (GCP): Google Kubernetes Engine (GKE)
• OpenShift

Important: In the Kubernetes Explorer, any Kubernetes resource hosted on OpenShift is
considered on-prem. Whereas, any Kubernetes resource hosted on Amazon Web Services
(AWS), Microsoft Azure, and Google Cloud Platform (GCP) is considered cloud hosted.

Required ServiceNow AI Platform roles
The sn_cloud_ops_ws.cloud_ops_admin role is required to view the Kubernetes Explorer.

Access the Kubernetes Explorer
To open the dashboard, navigate to All > Cloud Discovery Workspace > Kubernetes Explorer.

Important: Starting with the Zurich release, Cloud Discovery Workspace is being
prepared for future deprecation. It will be hidden and no longer activated on new instances,
but will continue to be supported. Discovery Admin Workspace provides the latest
experience for this functionality. For details, see the Application/Plugin Deprecation
Process [KB0867184]
article in the Now Support knowledge base.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

Application owner

Review the statistics of the applications and
workloads running on the Kubernetes clusters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2526


<!-- page 2527 -->
User

Dashboard use

IT Admin, cloud Admin

• Review the statistics of the Kubernetes
infrastructure: Clusters, Nodes,
Namespaces, Services, Pods, and
Workloads.
• Review the distribution of the pods across
dimensions such as region/datacenter, geo
location, or country.
• Review the distribution of the pods across
namespaces.
• Review the list of Kubernetes docker images
used in your organization.

Indicators
Clusters
A Kubernetes cluster is a set of nodes that run containerized applications.
The Clusters indicator displays the daily total count and discovery trend of the
Kubernetes clusters discovered across the Kubernetes deployments of your
organization.
The Kubernetes Explorer reads the Kubernetes Cluster Analytics
[sn_cow_k8s_cluster_analytics] table to compute the Clusters indicator.
Nodes
A node is a worker machine in Kubernetes and may be either a virtual or a physical
machine, depending on the cluster. The Nodes indicator displays the daily total
count and discovery trend of the Kubernetes nodes discovered across the
Kubernetes deployments of your organization.
The Kubernetes Explorer reads the Kubernetes Node Analytics
[sn_cow_k8s_node_analytics] table to compute the Nodes indicator.
Namespaces
Kubernetes namespaces provides a mechanism for isolating groups of resources
within the cluster. The Namespaces indicator displays the daily total count and
discovery trend of the Kubernetes namespaces discovered across the Kubernetes
deployments of your organization.
The Kubernetes Explorer reads the Kubernetes Namespace Analytics
[sn_cow_k8s_namespace_analytics] table to compute the Namespaces indicator.
Services
Kubernetes service is an abstraction which defines a logical set of pods and a
policy by which to access them (sometimes this pattern is called a micro-service).
The Services indicator displays the daily total count and discovery trend of the
Kubernetes services discovered across the Kubernetes deployments of your
organization.
The Kubernetes Explorer reads the Kubernetes Service Analytics
[sn_cow_k8s_service_analytics] table to compute the Services indicator.
The Services indicator is also available on the Services tab of the Kubernetes
Explorer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2527


<!-- page 2528 -->
Breakdowns
• Pod distribution: This breakdown displays the distribution of Kubernetes pods hosted on the
on-prem infrastructure and the cloud infrastructure.
You can filter the breakdown across the following dimensions:
◦ Region/Datacenter
◦ Geo Location
◦ Country
The Pod distribution breakdown is available on the Overview tab of the Kubernetes Explorer.
• Kubernetes services by platform or Kubernetes services by type: This breakdown displays the
distribution of Kubernetes services across dimensions such as platform and type.
• Nodes by region: This breakdown displays the distribution of the Kubernetes nodes across
hosting regions.

Filter
You can filter the list by interacting with the data visualizations such as donut and single score
card.

Data visualizations
Title

Type

Source table

Kubernetes Donut Kubernetes Pod Analytics
pods by
[sn_cow_k8s_pod_analytics]
namespace

Description

This report displays the distribution
of Kubernetes pods across the
discovered namespaces.
This report is available on the
Overview tab.

Total
clusters

List

Kubernetes Cluster Analytics
[sn_cow_k8s_cluster_analytics]

This report lists the Kubernetes
clusters discovered across the
Kubernetes deployments of your
organization.
This report is available on the Clusters
tab. When you click the cluster name,
the Dependency Views map appears
for Cluster Configuration Item.

Total
services

Single Kubernetes Workload Analytics
score [sn_cow_k8s_service_analytics]

This report displays the total count of
the Kubernetes services.
This report is available on the Services
tab.

Kubernetes Donut Kubernetes Node Analytics
services by
[sn_cow_k8s_service_analytics]
platform /
type

This report displays the distribution
of the Kubernetes services across the
providers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2528


<!-- page 2529 -->
Title

Type

Source table

Description

This report is available on the Services
tab.
Kubernetes List
services

Nodes by
cluster

Kubernetes
Namespace Analytics
[sn_cow_k8s_service_analytics]

Donut Kubernetes Node Analytics
[sn_cow_k8s_node_analytics]

This report lists the Kubernetes
services discovered.
This report is available on the Services
tab. When you click the service name,
the Dependency Views map appears
for Cluster Configuration Item.
This report displays the distribution
of the Kubernetes nodes across the
discovered clusters.
This report is available on the Nodes
tab.

Nodes by
region

Donut Kubernetes Node Analytics
[sn_cow_k8s_node_analytics]

This report displays the distribution
of the Kubernetes nodes across the
discovered clusters.
This report is available on the Nodes
tab.

Total nodes List

Kubernetes Node Analytics
[sn_cow_k8s_node_analytics]

This report lists the Kubernetes nodes
discovered across the Kubernetes
deployments of your organization.
This report is available on the Nodes
tab. When you click the node name,
the Dependency Views map appears
for Cluster Configuration Item.

Total
workloads

Single Kubernetes Workload Analytics
This report displays the total count of
score [sn_cow_k8s_workload_analytics] the Kubernetes workloads discovered
across the Kubernetes deployments of
your organization.
This report is available on the
Workloads tab.

Desired/
available
replicas
mismatch

Single Kubernetes Workload Analytics
This report displays the count of
score [sn_cow_k8s_workload_analytics] mismatch between the desired and
available replicas.

Workloads
by class

Donut Kubernetes Workload Analytics
This report displays the workloads by
[sn_cow_k8s_workload_analytics] the workload class.

If there's a mismatch, take suitable
action to remediate the issue.

This report is available on the
Workloads tab.
Total
workloads

List

Kubernetes Workload Analytics
This report lists the Kubernetes
[sn_cow_k8s_workload_analytics] workloads discovered across the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2529


<!-- page 2530 -->
Title

Type

Source table

Description

Kubernetes deployments of your
organization.
This report is available on the
Workloads tab. When you click the
workload name, the Dependency
Views map appears for Cluster
Configuration Item.
Total pods

Single Kubernetes Pod Analytics
score [sn_cow_k8s_pod_analytics]

This report displays the total count of
Kubernetes pods discovered across
the Kubernetes deployments of your
organization.
This report is available on the Pods
tab.

Running
pods

Single Kubernetes Pod Analytics
score [sn_cow_k8s_pod_analytics]

This report displays the total count
of the Kubernetes pods that are in
running state.
This report is available on the Pods
tab.

Pending
pods

Single Kubernetes Pod Analytics
score [sn_cow_k8s_pod_analytics]

This report displays the total count
of the Kubernetes pods that are in
pending state.
This report is available on the Pods
tab.

Creating
pods

Single Kubernetes Pod Analytics
score [sn_cow_k8s_pod_analytics]

This report displays the total count of
the Kubernetes pods that are in the
creating state.
This report is available on the Pods
tab.

Crashloop
backoff
pods

Single Kubernetes Pod Analytics
score [sn_cow_k8s_pod_analytics]

This report displays the total count of
the Kubernetes pods that are in the
crashloop backoff state.
This report is available on the Pods
tab.

Total pods

List

Kubernetes Pod Analytics
[sn_cow_k8s_pod_analytics]

This report lists the Kubernetes pods
discovered across the Kubernetes
deployments of your organization.
This report is available on the Pods
tab. When you click the pod name, the
Dependency Views map appears for
Cluster Configuration Item.

Docker
images

List

Kubernetes Image Analytics
[sn_cow_k8s_img_analytics]

This report lists the Docker images
discovered across the Kubernetes
deployments of your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2530


<!-- page 2531 -->
Title

Type

Source table

Description

This report is available on the Docker
images tab. When you click the doker
image name, the Dependency Views
map appears for Cluster Configuration
Item. You can download the SBOM. To
generate the SBOM, see Download a
software bill of materials (SBOM).

Dependency Views map
®

ServiceNow The Dependency Views map shows an overall top-down Kubernetes perspective,
starting from a top-level cluster to the container and within the container.
A Dependency Views map has one starting point, called the root CI or root node of the map.
The root CI is surrounded by a darker frame that repaints itself with a pulsing effect drawing the
attention to the root CI. The maps can show both upstream and downstream dependencies for
the root CI. By default the Dependency Views map displays three levels, both upstream and
downstream relationships. Administrators can configure the number of levels displayed. The map
collapses and expands clusters to make them easier to view. By default, clusters are collapsed.
The Dependency Views module is active in all instances, and includes demo data.
Dependency Views sample map

In a Dependency Views map, map indicators indicate if a CI has any active, pending issues. You
can investigate the tasks that are connected to a CI to get more details. When you return to the
map from another form, the system restores the last map viewed, using the default filter and
layout settings.
Many of the relationships in the map are created through the discovery process. You can also
create, define, and delete CI relationships in the map. You can display the map from different
perspectives and open specific records that relate to configuration items. The system refreshes
the map automatically to reflect changes to the CMDB.

Note: CIs not extended from the Configuration Item [cmdb_ci] table, aren’t displayed in
Dependency Views maps and in CI relation formatters.

Roles
Users with the itil and ecmdb_admin roles can view maps and perform all actions in the map.
Actions include access to the map views and saved filters, both from the lists in the map and
from the Saved Filters module.

Cloud License Estimator
Cloud License Estimator enables you to get the estimated resource count for all the cloud
resources that are eligible for licensing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2531


<!-- page 2532 -->
Explore

Configure

Generate Reports

Learn about Cloud
License Estimator.

Set up credentials and
configure accounts.

Generate reports with
Cloud License Estimator.

Exploring Cloud License Estimator
Learn about Cloud License Estimator features.
The Cloud License Estimator allows you to get the estimated resource count for all the cloud
resources that are eligible for licensing as per ITOM and CCM licensing rules. It validates the
cloud account details provided by the user and estimates the resource count based on the
prevailing licensing rules.
The Cloud License Estimator makes it easy for users to get the count of cloud resources along
with the required license estimates. CLE supports AWS and Azure cloud environments, but not
government cloud services. A user can create a configuration by providing the necessary details
and then run the license estimator to get the report. CLE also gives you the option to download
the report in PDF format.

Configure Cloud License Estimator
Set up the accounts and credentials needed for Cloud License Estimator.
Configure Azure Credentials for Cloud License Estimator
To use this tool, configure the Azure Service Principal Account credentials. If you already have
credentials configured in the ServiceNow instance, those credentials can be used.

Before you begin

Role required: admin

Procedure
1. Navigate to Filter Navigation > All > ITOM Cloud License Estimator > Home.
2. On the Home Page, select Go to Credentials to open the Credentials (discovery_credentials)
page.
3. Select New > Azure Service Principal and enter the Azure Service Principal Account details.

Result

A Credential ID is generated, which is required when creating configurations.
Create Azure Account Configuration and generate CLE reports
The tool supports management accounts and single subscriptions. Management accounts
include all subscriptions under that account.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2532


<!-- page 2533 -->
Procedure
1. Navigate to Filter Navigation > All > ITOM Cloud License Estimator > Home.
2. On the Home page, select Create Configuration to open the Create Configuration pop-up.
3. Enter the following details:
◦ Name: Enter a name for the configuration.
◦ Cloud Provider: Choose Azure from the list. Fill in the additional fields appear.
◦ Account ID: Enter the management account ID or subscription ID.
◦ Management group: Select this checkbox if the Account ID is a management account.
◦ Credentials: Select the Azure Service principle credentials configured in Configure Azure
Credentials for Cloud License Estimator.
◦ Activate: Enable this option.
4. Select Save and run license estimator.
The configuration is saved and the tool generates the report. You are redirected to the Report
page where the status of the report generation can be tracked.
5. From the Report page, select Download resource report to download a PDF of the report.
Related topics
Generate Cloud License Estimator Reports
Configure Amazon Web Service Credentials for Cloud License Estimator
This task guides you in configuring IAM user permanent credentials for the designated account.

Before you begin

Role required: admin

About this task

You can configure IAM roles to generate temporary credentials using STS API for a specified
account. When using IAM roles for temporary credentials, the Credential ID is optional in the
configuration form. However, AWS service accounts require an IAM role to be configured in
service accounts. Ensure at least one service account has credentials to generate temporary
credentials.

Procedure
1. Navigate to Filter Navigator > All > ITOM Cloud LIcense Estimator > Home.
2. On the Home Page, select Go to Credentials to open the Credentials (discovery_credentials)
page.
3. Select New > AWS Credentials and enter the requisite information.
A Credential ID is generated, which is used when creating configurations.
Configure AWS Service Accounts for CLE
There are several ways to configure AWS Service Accounts depending on the credentials and
master accounts.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2533


<!-- page 2534 -->
About this task

Service accounts can be configured with the following options:
• Configure a service account with permanent credentials. When an account is configured with
permanent credentials, it is referred to as an accessor account. This account can be either a
management account or member account.
• Configure a management account with the IAM role.
• Configure a member account with a custom IAM role. If the member account uses the default
IAM Role (OrganizationAccountAccessRole) to generate temporary credentials, configuring a
service account for the member account is not required.

Procedure
1. Navigate to Filter Navigation > All > ITOM Cloud License Estimator > Home.
2. Select the Service Account List icon.
3. On the Service account page, select Create New.
4. Optional: To configure a service account with permanent credentials, enter the following
information:
◦ (Optional) Name: Enter the AWS account name.
◦ (Optional) Cloud provider: Select AWS.
◦ (Optional) Account ID: Enter the AWS account ID.
◦ (Optional) Master account: Select if this is a management account.
◦ (Optional) Credentials: Select the AWS Credential ID created for permanent credentials.
◦ (Optional) Master account: Leave blank if not applicable.
◦ (Optional) Accessor Account and Accessor role ARN: Not applicable for permanent
credentials.
5. Optional: To configure a management account with the IAM role, enter the following
information:
◦ (Optional) Name: Enter the AWS account name.
◦ (Optional) Cloud provider: Select AWS.
◦ (Optional) Account ID: Enter the AWS account ID.
◦ (Optional) Master account: Select if this is a management account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2534


<!-- page 2535 -->
◦ (Optional) Credentials: Leave blank. No credentials are required for this account.
◦ (Optional) Master account: Leave blank.
◦ (Optional) Accessor Account: Select the account that has a trust relationship with this
management account's IAM role.
◦ Accessor role ARN: Enter the full ARN of the IAM role.
6. Optional: To configure a member account with a custom IAM role, enter the following
information:
◦ (Optional) Name: Enter the AWS account name.
◦ (Optional) Cloud provider: Select AWS.
◦ (Optional) Account ID: Enter the AWS account ID.
◦ (Optional) Master account: Do not select this, as this is a member account.
◦ (Optional) Credentials: Leave blank. No credentials are required for this account.
◦ (Optional) Master account: Select the management account from the list.
◦ (Optional) Accessor Account: Choose the account that has a trust relationship with this
member account's IAM role. This can be either the management account or another member
account.
◦ Accessor role ARN: Enter the full ARN of the IAM role.
7. After providing the relevant information for your account type, select Save.
Create AWS Account Configuration and generate CLE reports
The tool supports management accounts and single subscriptions. Management accounts
include all subscriptions under that account.

Before you begin

Role required: admin

Procedure
1. Navigate to Filter Navigation > All > ITOM Cloud License Estimator > Home.
2. On the Home page, select Create Configuration to open the Create Configuration pop-up.
3. Enter the following details:
◦ Name: Enter a name for the configuration.
◦ Cloud Provider: Choose AWS from the list. If you choose the credential based option,
additional fields appear.
◦ Account ID: Enter the AWS Account ID.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2535


