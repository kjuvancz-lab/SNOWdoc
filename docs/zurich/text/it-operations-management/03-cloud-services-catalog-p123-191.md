# Zurich IT Operations Management — Cloud Services Catalog

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 123–191 of 4823

Sections: Cloud Services Catalog (p123)

---

<!-- page 123 -->
Cloud Services Catalog
®

With the ServiceNow Cloud Services Catalog application, you can use a simplified interface to
access cloud resources. You can publish cloud offerings to a catalog and manage the usage and
life cycle of those resources.
Integrated with cloud providers, including Amazon Web Services, Microsoft Azure, and Google
Cloud Platform, Cloud Services Catalog (CSC) enables you to use the Azure DevOps and CI-CD
Pipeline Integration. You can integrate Ansible with Cloud Services Catalog as a Day 1 activity to
deploy an Ansible job template via a ServiceNow catalog item. Use the multi-repo support with
Terraform Connector IaC Discover capabilities, for improved hierarchical structure of multiple
repositories.

Note: Cloud Services Catalog supports self-hosted environment. Make sure that the MID
Server has the internet access. For more information, see the Deployment Guide for the
self-hosted environment [KB0563731]
article in the Now Support Knowledge Base.
AWS, Azure and Google Cloud Platform Out Of Box Catalogs are available with this release of
Cloud Services Catalog. You can either order one of the catalog items as demonstrated in this
video, or create one.
Order a catalog item.

Get started

Explore

Configure

Explore and learn how the
Cloud Services Catalog
application provides
the single place where
you can automate cloud
management tooling.

Configure your Cloud
Services Catalog
and integrate it with
other applications.

Explore My Stacks

Order a Catalog

Explore My Resources

Use the Cloud Services
Catalog application to
order from a variety of

Use Cloud
Services Catalog

<

Use the Cloud Services
Catalog application for
searching and requesting
cloud services, working
with your stacks and
resources, and so on.

Reference

Get more details
about the permissions
and workarounds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

123


<!-- page 124 -->
Out Of Box Catalog items,
actions, and policies.

Exploring Cloud Services Catalog
The Cloud Services Catalog application is the single place that you have to go to for automating
cloud management tooling. It replaces and improves on the capabilities that were offered by
Cloud Provisioning and Governance user and admin portals.

Cloud Services Catalog overview
The Cloud Services Catalog Request page on Employee Center enables you to request
cloud management actions. For example, you can request provisioning (Day 1), patching and
maintenance actions (Day 2), or life-cycle operations like starting, stopping, or deprovisioning.

Cloud Services Catalog benefits
The following table lists the benefits of Cloud Services Catalog.
Benefits of using Cloud Services Catalog
Benefit

Feature

Assistance for users

Guided Setup

Out Of Box content for Amazon AWS
Cloud request and automation

AWS Out Of Box Catalogs

Out Of Box content for Microsoft
AzureMicrosoft Azure Cloud Services
request and automation

Azure Out Of Box Catalogs

Out Of Box content for Google Cloud
Platform request

Out Of Box Catalogs using Cloud Services Catalog

Requests for process and pages for
ordering Cloud Services

Cloud Services Request process

My Stacks management page for
viewing and operating on stacks

Stacks Management

My Resources management page for
viewing and operating on resources

Resources Management

Azure DevOps Continuous Integration
Azure DevOps and CI-CD Pipeline Integration
Continuous Deployment (CICD) Pipeline
Integration
Integration of Ansible with Cloud
services

Integrate Ansible

Microsoft Azure and Amazon AWS
Cloud setup

Cloud Setup

Multi-repo support with Terraform
Connector app

Exploring Cloud Services Catalog Terraform
Connector

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

124


<!-- page 125 -->
What to do next
See Plugins or applications installed with ITOM Cloud Accelerate to find the list of plugins you
activate with Cloud Services Catalog.

Configuring Cloud Services Catalog
You can configure the Cloud Services Catalog application so that so that you can begin to
automate cloud management tooling.

Configuration overview
The configuration is in a sequential order where you create and set up the prerequisites first, and
then integrate the credentials with your Cloud account profile. These setup steps are identified
as Day 1 and Day 2 tasks.
The Cloud Services Catalog Day 1 configuration includes tasks like creating MID Servers,
setting up your cloud providers, Amazon Web Services, or Microsoft Azure Cloud. You can also
associate it with your cloud account, and schedule the datacenter Discovery.
An overview of the Day 1 setup process is outlined here:
1. Request the Cloud Services Catalog application, if needed.
2. Assign the appropriate roles to your cloud users.
3. Set up the MID Servers that handle the secure communications with the provider API
endpoints.
4. On the provider portal, collect your account settings and the credentials that the Discovery
process uses (through a MID Server) to access your provider accounts.
5. Securely associate the account settings and credentials with a service account in Cloud
Services Catalog.
6. Set up a cloud account to represent your entire managed cloud infrastructure, and set up a
service account that works with one of your provider accounts.
7. Specify the datacenters in the service account that should be included in the cloud account.
On Day 2, you can set up the additional cloud accounts and service accounts from the same or
other providers.
1. Use the Configuration Management Database (CMDB) data to help you request and manage
the cloud resources and manage your cloud infrastructure.
2. Manually run the Discovery process on each datacenter in the service account to populate the
CMDB with the resource data for all datacenters.
3. Configure Discovery to run on a regular schedule to ensure that the data remains updated.

Using Guided Setup to implement Cloud Services Catalog
Guided Setup provides a sequence of tasks that help you configure CSC on your ServiceNow
instance. To open Guided Setup for Cloud Services Catalog, navigate to All > Cloud Services
catalog- Guided Setup on your instance.
For more information, see Guided Setup

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

125


<!-- page 126 -->
Install Cloud Services Catalog
®

You can install the Cloud Services Catalog application purchased from the ServiceNow Store,
to make it available on your instance.The application also includes demo data and installs related
to ServiceNow applications and plugins, if you don’t have them installed already.

Before you begin
®

• Cloud Services Catalog application from the ServiceNow Store.
®

• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. See Get entitlement for a ServiceNow product or application .
Role required: admin, sn_appclient.app_client_company_installer (can only install applications
that match the instance company), or sn_appclient.app_client_user

About this task

The following items are installed with Cloud Services Catalog:
• Plugins
• Out Of Box Catalog
• Roles

Tip:
If you’re an existing user of Cloud Services Catalog or CSC Innovation Labs:
• An upgrade from the previous version isn’t currently supported. To upgrade an existing
instance with Cloud Services Catalog or CSC apps, do the following actions:
•◦ Uninstall the previously installed CSC apps with table clean-ups (CSC content pack
and CSC in order).
◦ Install new CSC apps (CSC and CSC content pack in the same order).
◦ As you can run Guided Setup only once in an instance, manually place new Terraform
templates in the Terraform box and update the Out Of Box Terraform config provider
accordingly and run Discovery.
For more information, see the components links.

Procedure
1. Navigate to All > System Application > All Available Applications > All.
2. Search for the application by its name or ID.
®
If you can't find the application, you might have to request it from the ServiceNow Store. CSC
is available as a separate subscription and requires the Cloud Provisioning and Governance
plugin (com.snc.cloud.mgmt).
3. Select a version from the list and select Install.
In the Install dialog box that is displayed, any dependencies that are installed with your
application are listed.
®

4. If you’re prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

126


<!-- page 127 -->
Cloud Services Catalog setup for the Day 1 configuration task
You're ready to do the Day 1 configuration task of setting up the Cloud Services Catalog
application for the first time. You can do the optional Day 2 setup and configure procedures as
needed, in any order.
You must do the Cloud Services Catalog setup steps in order. On Day 1, you set up the cloud
service for access, security, and billing purposes for Amazon Web Services and Microsoft Azure
Cloud.
Before you can achieve these tasks, you must integrate Cloud Services Catalog with your
Amazon Web Services or Microsoft Azure Cloud and progress to Day 2 configuration tasks.
When you finish all the Day 1 and Day 2 tasks, see the Cloud Services Catalog administration
guide for more information on using the Cloud Services Catalog application in your organization.
Set up Amazon Web Services on Cloud Services Catalog
Integrate Cloud Services Catalog with your Amazon Web Services account as a part of the Day 1
configuration task of setting up the application for the first time.

Before you begin

Collect your account settings and credentials from the provider portal. These settings and
credentials help you to distinguish the resources in one account from another account and sign
in or authenticate to AWS. Permission policies specify your approvals within the resources in the
account.
Role required:
• Administrator for operation in AWS or AWS Management Console
• sn_cmp.cloud_admin role for operations in Cloud Services Catalog

Procedure
1. Assign roles to AWS users of Cloud Services Catalog and to individual users by their activities
and responsibilities.
For more information, see Assign roles to AWS users of Cloud Services Catalog.
2. Install and configure MID Servers for Cloud Discovery and Cloud Provisioning and
Governance.
To ensure secure and reliable communications, the Discovery process communicates with
your cloud provider accounts and cloud resources through one or more MID Servers. For more
information, see Install and configure MID Servers for Cloud Discovery and Cloud provisioning
and governance.
3. Set up the MID Server on your network or in one of your cloud networks and configure it for
Cloud Services Catalog to use a proxy server.
Using a proxy server supports all cloud-based activities, such as running Discovery, billing
downloads, provisioning virtual machines, and running life-cycle operations on virtual
machines.
4. Configure one or more MID Servers for each datacenter for high performance and security.
Data is encrypted to the MID Server and between the MID Server and the API endpoint.
5. Configure the MID Server even if you have already configured other MID Servers while you
were setting up Cloud Services Catalog for another cloud provider.
6. Configure access to the AWS accounts by using permanent AWS credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

127


<!-- page 128 -->
◦ To securely access data on your provider account, the Discovery process must present the
appropriate credentials.
◦ To make the credentials available to Discovery and Cloud Services Catalog, you first create a
user with programmatic access to the AWS Management Console.
®

◦ You can securely store the credentials in a service account on the ServiceNow AI Platform .
◦ For more information, see Configure access to the AWS accounts using permanent AWS
credentials.
7. Set up a cloud account and a service account for AWS.
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get the data on each resource in each specified datacenter. A cloud account is
the logical representation in Cloud Services Catalog of all or part of your managed cloud
infrastructure. A cloud account can include multiple service accounts, including the service
accounts from different providers. For each service account, you specify which datacenters
to include in the cloud account. For more information, see Set up a cloud account and service
account for AWS.
Setting up Google Cloud Platform on Cloud Services Catalog
Integrate Cloud Services Catalog with your Google Cloud Platform account as a part of the Day 1
configuration task toward setting up CSC for the first time.

Before you begin

Collect your account settings and credentials from the provider portal. These settings and
credentials help you to distinguish the resources in one account from another account and
sign in or authenticate to Google Cloud. Permission policies specify your approvals within the
resources in the account.
Role required:
• Administrator for operation in Google Cloud or Google Cloud Management Console
• sn_cmp.cloud_admin role for operations in CSC
To learn more about setting up Google Cloud with CSC Terraform Connector app for the first
time, see Day 1 setup guide for Google Cloud through Cloud Services Catalog Terraform
Connector.

Procedure
1. Assign roles to Google Cloud users of CSC and to individual users by their activities and
responsibilities.
For more information, see Assign roles to Google Cloud Platform users.
2. Install and configure MID Servers for Cloud Discovery and Cloud Provisioning and
Governance.
To ensure secure and reliable communications, the Discovery process communicates with
your cloud provider accounts and cloud resources through one or more MID Servers. For more
information, see Install and configure MID Servers to access cloud environments.
3. Set up the MID Server on your network or in one of your cloud networks and configure it for
CSC to use a proxy server.
Using a proxy server supports all cloud-based activities, such as running Discovery, billing
downloads, provisioning virtual machines, and running life-cycle operations on virtual
machines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

128


<!-- page 129 -->
4. Configure one or more MID Servers for each datacenter for high performance and security.
Data is encrypted to the MID Server and between the MID Server and the API endpoint.
5. Configure the MID Server even if you have already configured other MID Servers while you
were setting up Cloud Services Catalog for another cloud provider
6. Create Service Account and the keys (credentials) in Google Cloud if you don not have it.
You can securely store the credentials in a service account. You would need Service
Account Key Admin (roles/iam.serviceAccountKeyAdmin) IAM role on the project, or the
service account whose keys you want to manage. These permissions can be provided by
administrator. To securely access data on your provider account, the Discovery process must
present the appropriate credentials.
For more information, see Set up Google Cloud Platform service accounts.
7. Set up a cloud account and a service account for Google Cloud Platform.
◦ A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your
provider account to get the data on each resource in each specified datacenter.
◦ A cloud account is the logical representation in Cloud Services Catalog of all or part of
your managed cloud infrastructure. A cloud account can include multiple service accounts,
including the service accounts from different providers. For each service account, you
specify which datacenters to include in the cloud account.
For more information, see Set up a cloud account and service account for Google Cloud
Platform.
Set up Microsoft Azure Cloud on Cloud Services Catalog
Integrate Cloud Services Catalog with your Microsoft Azure account as a part of the Day 1
configuration task toward setting up CSC for the first time.

Before you begin

Collect your account settings and credentials from the provider portal. These settings and
credentials help you to distinguish the resources in one account from another account and
sign in or authenticate to Microsoft Azure. Permission policies specify your approvals within the
resources in the account.
Roles required:
• Microsoft Azure or Microsoft Azure AD (Active Directory) Administrator
• Application Administrator
• Application Developer
• Cloud Application Administrator and the Resource Policy Contributor role to create or modify
the resource policies.
• sn_cmp.cloud_admin role for operations in Cloud Services Catalog

Procedure
1. Assign roles to Azure users of Cloud Provisioning and Governance.
You assign Cloud Provisioning and Governance roles to the user groups and individual users
based on the user activities and responsibilities. For more information, see Assign roles to
Azure users of Cloud Provisioning and Governance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

129


<!-- page 130 -->
2. Install and configure MID Servers for Cloud Discovery and Cloud Provisioning and
Governance.
To ensure secure and reliable communications, the Discovery process communicates with
your cloud provider accounts and cloud resources through one or more MID Servers. For more
information, see Install and configure MID Servers to access cloud environments.
3. Set up the MID Servers on your network or in one of your cloud networks.
Data is encrypted to the MID Server and between the MID Server and the API endpoint.
4. Configure one or more MID Servers for each datacenter under management for high
performance and security.
Configure the MID Server even if you have already configured other MID Servers while setting
up Cloud Services Catalog for another cloud provider.
5. Create a Microsoft Azure service principal.
To access the resources and billing data securely on your Microsoft Azure account, the
Discovery process must present appropriate Microsoft Azure account credentials. You create
a special programmatic account—a Microsoft Azure service principal—to generate the required
credentials. For more information, see Create a Microsoft Azure service principal.
6. Store the Azure service principal credentials in the instance.
To access the data on your provider account securely, the Discovery process must present
the appropriate credentials. To make the credentials available to Discovery, you first create
Microsoft Azure service principal credentials in the Azure Portal. You can then securely store
the credentials in a service account in your instance. For more information, see Store the Azure
service principal credentials in the instance.
7. Add an Azure service account. Add an Azure service account
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. For more information, see
Add an Azure service account.
8. Discover all datacenters in a service account.
Discovery uses the information in the service account to identify all logical datacenters that are
associated with the provider account.
9. Set up a cloud account for Azure.
A cloud account is the logical representation in Cloud Services Catalog of all or part of
your managed cloud infrastructure. A cloud account can include multiple service accounts,
including the service accounts from different providers. For each service account, you specify
which datacenters to include in the cloud account. For more information, see Set up a cloud
account for Azure.
10. Set the capacity limits on user requests for resources.
Capacity limits place restrictions on the attributes of the cloud resources such as the number
of virtual machines, virtual CPUs, or aggregate storage. You can set the limits on the resources
separately for each logical datacenter in a cloud account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

130


<!-- page 131 -->
Integrating GitHub Actions with Cloud-Services-Catalog
Integrating Cloud-Services-Catalog with GitHub Actions helps your organization streamline
continuous integration and deployment (CI/CD) processes directly from GitHub into the
ServiceNow AI Platform self-service environment through a governed service catalog.
CI/CD tools support the building, testing, and deployment of applications across various
platforms and cloud providers throughout the development life cycle.
When used within Cloud Services Catalog, GitHub Actions offers expanded capabilities for
version control management, work item tracking, project oversight, and reporting. Additionally,
resource requests made through GitHub Actions workflows are subject to approval based on
governance and confirmation procedures.

Integration benefits
The GitHub Actions pipelines withCloud-Services-Catalog provides the following benefits:
• Supports native execution and management of GitHub Actions workflows within the
ServiceNow AI Platform.
• Enables centralized governance with built-in approvals and role-based access controls.
• Exposes GitHub workflows as catalog items for easy self-service ordering by users.
• Provides unified management and monitoring of workflows alongside other IT services.
• Secures GitHub Personal Access Tokens centrally for safe API communications.
• Offers real-time visibility into workflow execution status and results.
• Integrates seamlessly with other ServiceNow processes for extended automation capabilities.
GitHub Actions Workflows by Cloud Services Catalog
GitHub Actions workflows by Cloud Services Catalog uses automated Continuous IntegrationContinuous Deployment (CI/CD) workflows to enable the rapid deployment of build requests to
production environments.
Cloud Services Catalog offers GitHub Actions release workflows as CI/CD tools that support the
building, testing, and deployment of applications across various platforms and cloud providers
throughout the development life cycle.
When used within Cloud Services Catalog, GitHub Actions offers expanded capabilities for
version control management, work item tracking, project oversight, and reporting. Additionally,
resource requests made through GitHub Actions workflows are subject to approval based on
governance and confirmation procedures.

Limitations
• If a workflow includes a step that invokes another workflow, the process does not discover the
inputs of the invoked workflow.
• Step with approval: A workflow includes a step that waits for approval. Control over this step is
not available.
• The process does not discover repository secrets accessed by workflow steps.
Set up the GitHub Actions workflow
Set up the GitHub Actions workflow as the first step before you run Discovery and order a catalog
item in the Cloud Services Catalog application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

131


<!-- page 132 -->
Before you begin

Add a deploymentID variable to GitHub Actions workflows in the organization.
Setup the workflow with deploymentID run name, and tag all provisioned resources using the
deploymentID key to enable resource discovery after provisioning.
Define all workflows using YAML configuration scripts with .yml or .yaml extensions stored in
the .github/workflows directory of the repository. These scripts specify the automated workflow
process including triggers, jobs, and steps.
Role required: sn_cmp.cloud_admin

Procedure
1. Set up the workflow in GitHub with deploymentID, run name, and tag all provisioned resources
using the deploymentID to enable resource discovery after provisioning.
2. Generate a GitHub Personal Access Token (Classic) and store it securely.
For more, see Creating a Personal Access Token (Classic
Run Discovery on GitHub Actions config provider
Discover all repositories and workflows in your organization by adding a GitHub Actions config
provider and running Discovery on it using the Cloud Services Catalog application.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Credentials.
2. Select New.
3. Select API Key Credentials.
4. On the form, fill in the fields.
API key credentials form fields
Fields

Description

Name

A unique and descriptive name for this
credential.

Active

Option to enable these credentials for use.

API Key

The API key you copied while creating
personal access token in GitHub.

Credential alias

Option to allow flow and workflow creators to
assign individual credentials to any activity
in a flow or workflow or assign different
credentials to each occurrence of the same
activity type in a flow or workflow.

Applies to

Determines whether to apply these
credentials to all MID Servers in your
network, or to one or more specified MID
Servers.

MID servers

This field appears only when Some MID
servers is selected from the Applies to field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

132


<!-- page 133 -->
Fields

Description

It provides fields through which you can
select the target MID Servers.
Order

Order in which Discovery tries this
credential when it attempts to log on to
devices. The smaller the number, the higher
in the list this credential appears. Providing a
credential order is helpful when using large
numbers of credentials or when security
locks out users after three failed login
attempts.
If all the credentials have the same order
number (or none), the instance tries the
credentials in a random order.

Important: Infrastructure as Code (IaC) Discovery is supported. You can discover
GitHub Actions workflows, inventory, and related resource groups.
5. Select Submit.
6. Add a config provider.
7. Navigate to Manage > Config Management.
8. Initiate discovery of config installables and create an order in the sn_cmp_order table to start
the discovery process by selecting Discover Now.
The name of the config installable displays when creating a new template version.

Result

Discovered config installables are saved in the sn_cmp_cfg_installable table using the format
ProviderName.WorkflowName.
Create a catalog item from a GitHub Actions template
Enable users to order items from an Employee Center service catalog through a GitHub Actions
template.

Before you begin

Ensure an appropriate GitHub Actions configuration provider exists. For more information, see
Run Discovery on GitHub Actions config provider.
Ensure that the workflow of the GitHub Actions adheres to the following syntax:
• Required input variable: deploymentID
• Mandatory attribute: run-name
Role required: sn_cmp_cloud_service_designer

Procedure
1. Create a catalog item
a. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
b. Navigate to Design > Cloud Catalog Items.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

133


<!-- page 134 -->
c. Select New.
d. On the form, fill in the fields.
Cloud Catalog Item
Field Name

Description

Name

Unique and descriptive name of the catalog
item.

Source

Should be set to Configuration
Management Template list.

Provider Type

Should be set toGitHub Actions.

Provider

Name of the GitHub Actions configuration
provider.

e. Save the Cloud Catalog item form.
2. Associate a GitHub Actions template with the catalog item.
a. From the Cloud Templates related list, select New.
b. From the Configuration Installable drop-down list, select the GitHub Actions template.
c. Save the ServiceNow Cloud Templates Versions form.
d. Select Activate to activate the cloud template.
3. Optional: Add or remove catalog item form fields by editing the variable sets associated with
the catalog item.
4. Activate the catalog item by selecting the Active check box.
5. Select Update.

Result

GitHub Actions catalog items can be ordered from the Employee Center catalog order form.
Provision a GitHub Actions workflow using Cloud Services Catalog
Provision the GitHub Actions catalog by using the GitHub Actions catalog order form in the Cloud
Services Catalog application.

Before you begin

Role required: cloud_service_user

About this task

You can use the GitHub Actions workflow deployment form to call a GitHub Actions workflow and
run it via a ServiceNow catalog item for deployment.

Procedure
1. Navigate to All > Employee Center > Cloud Services > GitHub Actions.
2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

134


<!-- page 135 -->
GitHub Actions Template form fields
Fields

Description

User Group

User group that is assigned to the user.

Schedule Time Zone

Time zone used for resource scheduling.

Aws Region

AWS region where cloud resources are
provisioned.

Bucket Name

Name of the S3 bucket to create (must be
lowercase, no spaces).

Choose Service Account

Service account specified in the workflow
template for authentication and discovery.

Choose Cloud Location

Region specified in the template used for
resource discovery.

Result

Verify that a blueprint approval policy (CSC Content Approval Policy GitHub Actions Integration)
is applied on the GitHub Actions catalog. This policy mandates that an approval must be
obtained from the Change management group before any provisioning can take place.
Integrating Azure DevOps and the Continuous Integration-Continuous Deployment pipeline
You can process the release request from the Cloud Services Catalog workflow with Azure
DevOps for end-to-end automation of the development process, including provisioning the
resources, and deploying and monitoring the applications.
The Azure DevOps and Continuous Integration-Continuous Deployment (CI-CD tool) pipeline
integration is a release deployment process. You can use Cloud Services Catalog and the CI-CD
tool to manage the deployed resources in Configuration Management Database (CMDB), directly
through flows and actions.

Benefits of Azure DevOps pipelines with Cloud Services Catalog
By using the Azure DevOps pipelines with Cloud Services Catalog, your organization gets the
following benefits:
• Ability to work with CI-CD pipelines regardless of the underlying languages that are used in the
pipelines (JavaScript, Java, Node.js, or Python).
• Support for all major version control systems such as GitHub, GitLab, Azure DevOps, Atlassian
Bitbucket, or Team Foundation Version Control (TFVC).
• Support for Amazon Web Services and Microsoft Azure Cloud services.
• Ability to deploy the application anywhere (on-cloud or on-premises, containers, or virtual
machines) or in any environment. For more information, see ADO and Release and Life-cycle
Management.
• Ability to deploy Kubernetes, Platform as a Service (PaaS), and so on, without any development
change needs.
• Automatic updates to CMDB through the required tags.
• Approvals and governance steps that are built into the workflow.
Key steps in integrating Azure DevOps and CI-CD pipeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

135


<!-- page 136 -->
1. Use the release pipelines and Azure DevOps by Cloud Services Catalog.
2. Set up the Microsoft Azure DevOps console.
3. Run Discovery on Azure DevOps config provider.
4. Order a Microsoft Azure DevOps catalog item.
Release pipelines and Azure DevOps by Cloud Services Catalog
Azure DevOps has release pipelines, such as the Continuous Integration-Continuous
Deployment (CI-CD) pipelines, that offer a build, test, and deploy approach. You can use these
fully automated processes to rapidly deploy build requests to the production environment.
Cloud Services Catalog offers the Azure DevOps release pipeline as a CI-CD tool that enables
you to build, test, and deploy applications for the entire development life cycle across different
platforms and cloud providers.
Azure DevOps within Cloud Services Catalog offers additional features for managing work items,
version control, project management, and reporting. Resource requests via Azure DevOps
pipelines are processed by approval through the governance and conformation workflow.
Set up the Microsoft Azure DevOps console
Set up the Microsoft Azure DevOps console as the first step before you run Discovery and order
a catalog item in the Cloud Services Catalog application.

Before you begin
1. Add a deploymentID variable to the Microsoft Azure DevOps pipelines in your organization.
The Microsoft Azure DevOps integration discovers pipelines with a deploymentID variable
only.
2. Tag all the provisioned resources with a deploymentID key in the pipeline so that you can
discover the resources after provisioning.
The subscriptionID isn’t required for Azure DevOps and Ansible templates.
Role required: none

Procedure
1. Name a pipeline variable deploymentID that you can use for pointed Discovery to update the
resources in CMDB.
2. Create a Personal Access Token (PAT) credential that you can use in Azure DevOps Discovery.
3. In the Update variable dialog box, override the pipeline variables by selecting the Let users
override this value when running this pipeline check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

136


<!-- page 137 -->
Update variable dialog box

The pipeline works with the CSC DevOps Integration catalog item. The Microsoft Azure
DevOps integration discovers pipelines with the deploymentID variable.
Run Discovery on Azure DevOps config provider
Add the Azure DevOps config provider and run Discovery to discover all projects, pipelines, and
pipeline variables in an organization by using the Cloud Services Catalog application.

Before you begin

Role required: none

Procedure
1. Navigate to the Admin portal and select ManageCredentials.
2. Add the API key credential that you created with the Personal Access Token (PAT) credential.
3. Prefix the Personal Access Token (PAT) credential with straight quotes (':') and encode to a
base64 format.
4. Prefix the encoded format string with a Basic string.
For example, Basic encoded base 64(:PAT).
5. Add a required alias.
6. Navigate to Manage > Config Management and add a config provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

137


<!-- page 138 -->
Important:
Infrastructure as Code (IaC) Discovery is supported. You can discover the Azure DevOps
pipeline Ansible job templates by setting up a scheduled discovery.
7. Discover all projects, pipelines, and pipeline variables in an organization by running Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

138


<!-- page 139 -->
8. Find the Config installables under the selected Azure DevOps project.

Result

You can now order an Azure DevOps catalog item from the Azure DevOps catalog order form on
Employee Center.
Order a Microsoft Azure DevOps catalog item
Provision the Microsoft Azure DevOps catalog by using the Microsoft Azure DevOps catalog
order form in the Cloud Services Catalog application.

Before you begin

To use Microsoft Azure DevOps for Cloud Services Catalog, assign Azure DevOps and Cloud
Management capabilities to the MID Server. For more information, see Configure MID Server
capabilities .
Set the deploymentID as variables in the AWS pipelines that you want to discover. The
subscriptionID isn’t required for Microsoft Azure pipelines.
Tag all the resources with the deploymentID key.
Role required: none

About this task
https://players.brightcove.net/6274575390001/nUx4EKfUz_default/index.html?
videoId=6351050870112
Follow this short video to learn how to order an Azure DevOps catalog item.

Procedure
1. In the Update variable dialog box, override the pipeline variables by selecting the Let users
override this value when running this pipeline check box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

139


<!-- page 140 -->
2. Navigate to Employee Center > Cloud Services > Integrations > CSC DevOps Integration.
Use this Azure DevOps Catalog item order form to call an ADO pipeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

140


<!-- page 141 -->
3. On the form, fill in the UserGroup and Change Request fields.
4. In the Choose Configuration Provider list, select the config provider that is associated with the
Azure DevOps organization.
5. Select the project and associated pipeline in the organization.
The pipeline variables are automatically filled in. You can modify the variables. For example,
although the pipeline secret variables are masked, you can modify these values.
6. Select the Service Account, which is the same option that you selected as a service
connection in the Azure DevOps pipeline.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

141


<!-- page 142 -->
◦ For Amazon Web Services, a location list is displayed when you select Service Account.
◦ You can expose a pipeline variable location or region and use it in a pipeline for provisioning.
This pipeline variable is overridden by the value that you chose in the location list to ensure
that provisioning and Discovery are at the same location.
◦ A location is required for Discovery in Microsoft Azure, so no list is displayed when you
select Service Account. These settings ensure the correct resources that are related to the
stack are populated in CMDB. You can run Discovery based on those settings.
7. If the location is pre-filled for the AWS pipeline, select the same location in the catalog for
Discovery.
8. Set up the identifying tags for the provisioned resources.
The DeploymentID field is read-only and auto-generated for the order. The DeploymentID is
assigned as a tag to all the provisioned resources if you added it as a tag in the Azure DevOps
pipeline template of the stacks in the cloud. The DeploymentID is also assigned as a tag to
the stack. If the pipeline has any of these three variables (Application, BusinessService or
CostCenter), they’re displayed in the General info in the Azure DevOps UI.
9. From the list, select the field values to be updated in the pipeline variables.
These entries are considered for the current order only.

Note: You can't modify these read-only variables from the pipeline variable section.
These variables are added as tags to the stack in the cloud and are inserted in the CMDB
key value table as well. You can do only the resource level actions on a provisioned stack
because the stack level action is turned off. The previous stack is marked as obsolete if
you run the pipeline again, although the resources remain in the cloud.

What to do next

Verify that a blueprint approval policy (CSC Content Approval Policy ADO Integration) is applied
on the Microsoft Azure DevOps catalog. This policy mandates that an approval must be obtained
from the Change management group before any provisioning can take place.
Integrating Ansible with Cloud Services Catalog
Integrate Ansible with Cloud Services Catalog as a Day 1 activity. With this activity, you can
deploy an Ansible job template via a ServiceNow catalog item.
As a cloud_service_user, you can access the config provider and job templates and deploy a job
template through a catalog item.

Day 0 support

Day 1 support

Day 2 support

1. Retrieve the resources from
the cloud and update the
CMDB

1. Order an Ansible job
template from Service
Catalog

1. Fix the mapping of Out Of
Box via Cloud Services
Catalog content

2. Verify that there are
no errors. If errors are
displayed, then the
Discovery or job template
deployment has failed

2. Reference the discovered
Microsoft Azure pipelines
that are specific to Ansible

2. Update documentation on
limiting the job template to
run on a specific host

3. Select inputs that are
needed for the release
deployment pipeline

3. Test and document how to
support the job template
deployment on unmanaged
nodes

4. Submit a catalog

4. Start your Day 2 support for
Ansible AWX
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

142


<!-- page 143 -->
Day 0 support

Day 1 support

Day 2 support

5. Publish an Out Of Box
catalog item as Cloud
Services Catalog content
6. Select the job templates
that you have access to and
deploy them
Store in CMDB as referrable
objects.

1. Wait for the order approval
2. Track the progress of your
template order
3. Update CMDB with the
deployed resources

1. Ensure all the Day 2
support actions execute
successfully
2. Switch between the blue
(current application) and
green (new application)
environment

Set up Ansible as a Day 1 task
Set up the Ansible console as a Day 1 task before you run Discovery and deploy a job template
via a ServiceNow catalog item by using the Cloud Services Catalog application.

Before you begin

Set the deploymentID on the extra variables for Ansible job templates.
Select the Prompt on launch option next to the variables section in the template. If you don't do
this action, you can't update or override the default extra_vars that is defined with the values from
the catalog order form, while you are launching the template.
Tag all resources with the deploymentID key to enable Discovery after provisioning.
Role required: admin

Procedure
1. Save the extra variables in a JSON format locally, to discover and update Configuration
Management Database (CMDB).
2. Create Ansible tower credentials to be used in Ansible Discovery.
For more information, see Configure Ansible Tower user name and password.
3. Allow the extra variables and job templates to be overridden.
The default Ansible job template must be overridden for the pipeline to work with a Cloud
Services Catalog Ansible automation catalog item.
Run Discovery on the Ansible config provider
Add the Ansible config provider and run Discovery to discover what's in the inventory, the host
group, and the available job templates.

Before you begin

Do this procedure only if you have Ansible Tower credentials.
Role required: none

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

143


<!-- page 144 -->
Procedure
1. Navigate to Cloud Admin Portal > Manage > Credentials > New > Ansible Tower Credentials.
2. On the form, fill in the fields as per the information received from the Ansible Tower.
Ansible Tower credentials

3. Select Submit.
4. Create a config provider by selecting New.
Create Config Provider form

Important:
Infrastructure as Code (IaC) Discovery is supported. You can discover job templates,
inventory, and groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

144


<!-- page 145 -->
5. Run the Discovery to discover all projects and extra variables in an organization.
Ansible Discovery

Result

You’re all set to take the next steps to order an Ansible item.
Order an Ansible job template
Use Cloud Services Catalog to order an Ansible job template called from the catalog item.

Before you begin

Role required: cloud_service_user

About this task

You can use the Ansible Job template deployment form to call an Ansible job template and run it
via a ServiceNow catalog item for deployment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

145


<!-- page 146 -->
Procedure
1. Navigate to Employee Center > Cloud Services > Integrations > CSC Ansible Automation.
Ansible Job template deployment form

Ansible Template form fields
Fields

Description

UserGroup

User group that is assigned to the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

146


<!-- page 147 -->
Fields

Description

Provision

Provisioning details. Select the Workload
Config Provider and ApplicationProfile from
the Ansible Tower.

Choose Service Account

Pipeline. For Amazon Web Services, the
Location list is displayed when you select
Service Account. The location is not required
for Discovery in Microsoft Azure.

Tip:
You can expose an extra variable that
was saved in a JSON format at the
Ansible tower location or region and use
it in the template for provisioning. This
extra variable is overridden by the value
that you selected in the Location list. By
using this extra variable, you ensure that
provisioning and Discovery are at the
same location.
These settings ensure that the correct
resources that are related to the stack
are populated in CMDB. You can run
Discovery based on those settings.
Choose Cloud Location

Service account that is associated logical
datacenter (LDC) for Discovery.

Extra Variables

Extra variables that you can modify even
if the values are automatically filled in and
masked.

2. Set up the identifying tags.
The DeploymentID field is read-only and auto-generated for the order. The DeploymentID is
assigned as a tag to all the provisioned resources if you added it as a tag in the Azure DevOps
pipeline template of the stacks in the cloud. The DeploymentID is also assigned as a tag to
the stack. If the pipeline has any of these three variables (Application, BusinessService or
CostCenter), they are displayed in the General info in the Ansible Job Template form UI.
3. Select the field values from the list to be updated in the pipeline variables.
These entries are considered for the current order only.

Note: You can do only the resource level actions on a provisioned stack because the
stack level action is turned off. The previous stack is marked as obsolete if you run the
pipeline again, although the resources remain in the cloud.

What to do next

Verify that a blueprint approval policy (CSC Content Approval Policy Ansible) is applied. This
policy mandates that approval must be obtained from the Change management group before
any provisioning can take place.
Cloud Services Catalog administration guide
After you set up the Cloud Services Catalog application, you must set up some additional items
so that your users can request and manage any cloud resource.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

147


<!-- page 148 -->
Configuring governance
You can use governance tools to restrict the provisioning of cloud resources, such as quotas
and policies. For example, you can configure the approval workflow that is used after a user
requests a cloud resource, whether an email is sent after a cloud resource is stopped, and which
datacenter is automatically selected when a user selects a resource from a cloud provider. For
more information about quotas, policies, and other governance types, see Cloud Governance.

Populating the Cloud Services Catalog
After you apply the governance quotas and policies, you must create Cloud Services Catalog
items. You can create a catalog item in the following ways:
1. Import a template from Amazon Web Services, Microsoft Azure or Google Cloud Platform.
2. Use or modify an out-of-the-box catalog item.
3. Use a Terraform template.
For information about domain separation, multi-repo support with Terraform app, cloud accounts,
the Cloud admin portal, or the Cloud API, see the following topics:
• Use multiple repositories structure with Terraform Connector app
• Domain separation and Cloud Services Catalog: Get additional information about domain
separation.
• Cloud accounts: Learn about the logical representation in Cloud Provisioning and Governance
of all or part of your managed cloud infrastructure.
• Cloud Admin Portal: Manage, design, govern, operate, and analyze all your cloud resources
from this portal.
• Cloud API (CAPI): Integrate Cloud Provisioning and Governance with cloud providers by using
REST APIs.
Cloud Services Catalog and Terraform Connector
Use the Cloud Services Catalog app with Terraform Connector support with all its features that
help in provisioning and managing cloud resources across various public and private clouds.
Key features of Terraform Connector:
• Use Terraform as a configuration provider to provision resources in the following clouds:
◦ Amazon Web Services (AWS)
◦ Microsoft Azure
◦ Google Cloud Provider
• Discover the Infrastructure as Code (IaC) templates to discover the IaC (Terraform) templates
from the Terraform environment.
• Generate catalog items using the Terraform templates, utilizing them to provision resources
across different cloud environments.
• Utilize the multiple repositories structure support with the Terraform app. See Use multiple
repositories structure with Terraform Connector app to learn more.
For more information on Terraform Connector, configuring the advanced features, and how to
use it, visit Exploring Cloud Services Catalog Terraform Connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

148


<!-- page 149 -->
Permissions management for Cloud Services Catalog
Permissions are your group-level access rights to features and actions in Cloud Services
Catalog.
The permission policies in Cloud Provisioning and Governance User Portal control the actions
that are allowed or limited for users based on the user group. See Permissions Management for
permission types and ideas.
Currently, this does not apply for catalog provisioning in Cloud Services Catalog. For CSC, all
users with roles permission can access, view and provision the catalogs, by default.
Policies and permission levels on services
Configure policies with the necessary level of permissions to provide access to the AWS, Azure,
ADO, Ansible and Google Cloud services, respectively.
• Cloud Services Catalog AWS Out Of Box catalog permissions
◦ Amazon Web Services EC2 Linux Out Of Box permissions
◦ AWS EC2 Windows OOB permissions
◦ AWS Dynamo DB permissions
◦ AWS S3 Bucket
• Azure OOB catalog permissions
• Ansible permissions
• ADO permissions
• Cloud Services Catalog Google Cloud Platform Out Of Box catalog permissions
◦ Google Cloud Platform (GCP) Big Query Out Of Box permissions
◦ Google Cloud Platform Cloud SQL Out Of Box permissions
◦ Google Cloud Platform Linux Out Of Box permissions
◦ Google Cloud Platform Load Balancer Out Of Box permissions
◦ CSC GCP Windows OOB permissions

Using Cloud Services Catalog
The Cloud Services Catalog application is a dynamic portal for all your day-to-day cloud
activities. It enables you to manage stacks, work with requests, and access the Out Of Box
catalog items and other popular topics.
®

You can explore Cloud Services by performing a search on the ServiceNow AI Platform
platform. You can also find related links, like Browse Cloud Catalog and CSC-Guided Setup.
Cloud Services is also designed to appear on the Employee Center toolbar as a new tab. Look
for the options provided or navigate to Browse Cloud Services to experience Cloud Services
Catalog.
The Cloud Services Catalog application displays the features in the following table.
Cloud Services features
Feature

Description

My Stacks

Lists all the stacks that are assigned to you. Select a
catalog item to view the stacks that the item launches.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

149


<!-- page 150 -->
Cloud Services features (continued)
Feature

Description

Select a stack to view the details such as all the
resources, resource properties, activities, and lifecycle operations.
Cloud Services Topics
Browse Cloud Services

Provides the quick links to popular and relevant
topics.
Provides the lookup feature that is powered by AI
Search. It returns relevant Cloud Services, provides
filters, and sorts results that help you to zoom in on the
Cloud Service that you want. This feature is separate
from the global search featuring on the Employee
Center landing page.
1. Use Filter by and Sort by to narrow your search.
2. You can also use the Card or List view as needed.
3. Select one of the sources to filter the search results.
4. Use a topic filter to narrow the results.

Recent Stacks

Lists all the stacks with the recent activities that were
performed on them.

My Resources

Observes and interacts with the discovered
resources.

Requesting Cloud Services
Submit a request for one of the available service catalog item in cloud services. You can find the
catalogs under Browse Cloud Services.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. Navigate to Browse Cloud Services under Cloud Services on the Employee Central portal
page in Cloud Services Catalog.
2. Find a suitable catalog item from options displayed.
3. Select Request.
This opens the request form with information and attachments to be provided.
4. Enter the details in the form fields to order.
When you submit a request for an item in the service catalog, the system typically provisions
the stack immediately. Sometimes, your request must be approved first.

Exploring the My Stacks tab
Sort, view, or manage your stack of cloud resources and services as a part of the Day 2 activities
by using the My Stacks tab on the Employee Center toolbar in Cloud Services Catalog.
The My Stacks tab has multiple options that let you categorize, sort, or view your stacks with a
different managed status. The following example shows what the My Stacks tab looks like on
Employee Center.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

150


<!-- page 151 -->
My Stacks tab

On the My Stacks tab, you can see the following statuses:
• Managed Stacks: All the stacks in all service categories.
• Stack by Catalog Items: Stacks that are listed by the catalog item.
• Stacks with Issues: Stacks that have errors due to incomplete or unapproved items.
• Stacks with follow-up actions: Stacks that have a pending action to be followed up.
• Discovered Stacks (unmanaged): Stacks that don’t have any catalog that is associated with
them.
Find the My Stacks view tab at the end of the My Stacks ribbon to access one of the following
views:
• Stacks I own: Stacks that you created.
• Stacks owned by groups I am part of: Stacks that are created by you and by all the groups
you’re associated with.
• Stacks owned by anyone: All the stacks in the instance.
Manage My Stacks
Use the My Stacks tab to access all the stack properties such as the creation, update, and
deletion details.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. Access the Stacks page by going to the toolbar or homepage.
• On the toolbar, select the My Stacks tab.
• On the My Stacks homepage, select the Recent Stacks tab.
By default, all stacks in all service categories, except the obsolete status, are listed.
2. In the navigation pane, use a filter category to display the matching stacks.
The filters are displayed as editable conditions.

Result

The stacks are displayed with the properties that are in the following table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

151


<!-- page 152 -->
Stack properties
Property name

Description

Name

Name that you specified when requesting the
stack.

Service Catalog Item

Service that was created when you ordered
the catalog that resulted in this stack.

Stack Status

Status of the stack:
• Initializing
• Active (provisioned stacks)
• Error
• Processing (stacks being processed)
• Terminating
• Terminated (de-provisioned stacks)
• Unmanaged (discovered stacks)
• Resolving Error (stacks with errors)
• Follow-up required
• Obsolete

Owned by

User name of the requester.

Owner Group

Group name that the stack is assigned to.

Service Request Item

Record that was created in the Request Item
table when you ordered the catalog that
resulted in this stack.

Request

Request number that is mapped to the
Request Item.

Created

Date and time that the stack was requested.

Updated

Date and time that the stack details were last
updated.

Work with stacks
Start your Day 2 operations by starting, stopping, deprovisioning, or modifying your stacks.

Before you begin

Role required: sn_cmp.cloud_service_user.root_admin, admin, or sn_cmp.cloud_admin, feature
admin (sn_cmp.cmp_root_admin)

About this task

When you request a life-cycle operation on a stack or resource, the system generates a change
request. An approval policy specifies either that the change is auto-approved or that a user on
the approver list must approve the change. For more information, see .

Procedure
1. In the navigation pane, in the Name field, select a stack and then select Track Operations.
2. View the request status and the status of the stacks by selecting Status.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

152


<!-- page 153 -->
3. View the properties and request parameters by selecting Request Details.
You can also display the stack details in a pop-up window by selecting View Full Details.
4. Search and sort all the operations that you performed by selecting Stack Operations.
View stack dependency
Explore the details of the configuration items, services, and other tasks that are associated with
the stacks and resources by using View Dependency.

Before you begin

Role required: admin, feature admin (sn_cmp.cmp_root_admin)

About this task

A stack can be dependent on multiple stacks, and multiple stacks can depend on a single
stack. Stacks that comprise multiple configuration items (CIs) and services make up the stack
dependencies in the Cloud Services Catalog application. The dependency map provides a
simple and detailed graphical representation of these complex settings. You can navigate
through the references to understand the event impact that one branch has on another.

Procedure
1. On the Managed Stacks page, select a stack to open the stack operations page.
2. On the View Full Details ribbon, select View dependency.
3. In Search for CI, enter a CI to view the dependency map.
4. On the form, fill in the fields.
The following example shows the settings for viewing the stack dependencies. The settings
include Save Custom Settings, Load Custom Settings, Predefined Filters, Dependency Type,
and Max Levels.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

153


<!-- page 154 -->
Viewing stacks dependencies

5. Undo all the CI filter selections and reset the map setting by selecting Reset.
Stack activities view
Display the cloud actions on your stacks and resources by using the View Activities tab.
You can do multiple actions in the stacks life cycle such as track operations, view activities, view
dependency, and do actions. The following example shows the stack activities that you can
perform and the following table describes the activities.
Stack activities

Stacks activities
Activity

Description

Change Requests

Change requests that have been submitted
for stacks or resources that are assigned to
you. The system generates change requests
when you perform any life-cycle operations on
a stack or resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

154


<!-- page 155 -->
Stacks activities (continued)
Activity

Description

Incidents

Incidents for stacks and their associated
resources that are assigned to you.

Tasks

Catalog tasks that are created when a request
for a stack fails to provision.

Scheduled Operations

List of scheduled operations that are
associated with stacks and are displayed as
these features:
• Operation Time
• Target
• Operation
• Status

Actions on stacks
Access a particular stack to perform a Day 2 or life-cycle operations such as stop, start,
deprovision, ModifyLease, or ModifySchedule.
When you request a life-cycle operation on a stack or resource, the system generates a change
request. An approval policy specifies that the change is auto-approved or that a user on the
approver list must approve the change.
The stacks and resources undergo life-cycle operations from the time that they're started,
provisioned, de-provisioned, and then stopped. At times, you must update or stop a particular
resource's schedule for configuration issues. You can select a stack or resource to perform these
operations. The actions include only the appropriate operations for the selected resource or
stack. Not all operations are supported for all providers or for all service categories (resource
types) by default.
The following example shows the actions that the Cloud Services Catalog application supports
on stacks. The actions are stop, start, deprovision, ModifyLease, or ModifySchedule.
Actions on stacks

The following table lists the operations that the Cloud Services Catalog application supports as
actions on stacks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
Action

Function

Stop

Stops the selected virtual machine (VM). The resource
status changes to off. No setting is required.

Start

Starts the VM that you select. The resource status
changes to on. No setting is required.

Deprovision

Terminates the selected stack and sends a notification to
the stack owner. No setting required.

ModifyLease

Changes the lease end date.

ModifySchedule

Modifies the schedule profile and schedule time zone.

Redirection to My Stacks
You can use redirection to your My Stacks tab as an alternate but simplified way to locate a stack
from the My Requests tab. For example, you can use redirection while you're looking up a stack
that was recently provisioned.
You can view all your stacks with any relevant status, but the displayed list may be lengthy.
Redirection to stack details via the My Requests tab in Employee Center enables you to find the
requested stack by the Requested Item (RITM). Use the Cloud Request Status tab on the Cloud
Services Catalog application to display the request details and status of the stacks.
The following example shows how you can redirect to the My Stacks tab from the My Requests
tab, instead of looking at a comprehensive list of stacks on the Stacks homepage.
Redirection to My Stacks

Exploring My Resources
Observe and interact with discovered resources by using the My Resources option under More
tab on the Employee Center toolbar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
You can designate the operators or owners for the identified resources so that they can handle
these resources with standard Day 2 operations. By performing these actions through the
ServiceNow AI Platform of the Cloud Services Catalog application, you can leverage the
workflows for proper change management, audit trails, and overall governance.
The following example shows the My Resources tab.
My Resources tab

The following example shows a list of the resource categories and filters that enable you to
access the relevant resource and perform other functions, such as save and export.
Options on the All Resources tab

The cloud resources are categorised as above. You can access one of the categories to manage
them.
Manage My Resources and resource filters
Access the resources that you own, resources that are owned by a group, or anyone's resources
by using the resource filter. You can then find the information that you need by using sorting
functions, conditions, categories, and keywords.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
Before you begin

Role required: admin, feature admin (sn_cmp.cmp_root_admin)

Procedure
1. In the navigation pane, select the resource category, apply a filter (pre-added or new), and
select Run to display and export a set of resources.
2. Sort, view the details, and export as required.
Resource filter options

3. Apply an existing or a saved filter by selecting Load Filter.
4. In the Load Filter window, select Manage Filter to find the list of previously added filters.

5. Select the menu option along Filters to view the various options to export the filtered
resources.

6. You can also select a filter to display its details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
7. View more options and details about the filter that you chose by selecting the menu option
next to General Comments.

You can use the keyword search to find a filter directly by using keywords. You can choose
export options such as PDF, Excel, or CSV.
8. Create and add one or more sets of conditions by navigating to New Criteria > Create another
set of conditions.
9. Save the created filter by selecting Save Filter.
10. In the Name, Query, and Visibility fields, assign the name, query, and visibility.
You can also add sorting options by selecting Add Sort.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
11. Assign a sorting order from the list and then select Save.
12. From the View options, select one of the following options:
◦ Resources I own: This option is selected by default
◦ Resources owned by groups I am part of: This option displays all the groups that you are part
of.
◦ Resources owned by anyone: This option displays all the resources in the selected category,
in Configuration Management Database (CMDB), and assigned.

Out Of Box Catalogs using Cloud Services Catalog
Cloud Services Catalog has Out Of Box Catalog items, actions and policies that you can render,
as required.
Use Out Of Box catalog items for Azure, GCP and Amazon Web Services Cloud Service requests
and automations. You can either order one of the catalog items, use Flow Designer based actions
or provision policies.

Note: Use the catalog items as-is, and do not modify or update them. Making any
modifications or customizations will change the Out Of Box behavior of the catalog and not
yield the expected results. This will also impact their upgrades. You can create a copy of the
templates and recreate your catalog items considering the Out Of Box content.
Order from these Cloud Services Catalog Out Of Box Catalog Items:
Amazon Web Services EC2 Linux Out Of Box Catalog items
Cloud Services Catalog Linux VM with agent client collector (ACC), up to 10 additional disks on
EC2 or with security groups.
This is a fully functional sample catalog item that can be used to request a Linux instance of any
instance type from Amazon EC2.
Order an AWS EC2 Linux VM The video demonstrates how to order an Amazon Web Services
EC2 Linux virtual machine.
Linux VM orders and features:

Order

Features

Order a Linux virtual machine on
EC2, that allows installation of agent
client collector. ACC is compulsory
for production instances. VM sizes
other than t2.nano, t2.micro require
approval. Cloud configuration scan is
run for compliance checking.

For instance types other than t2.nano and t2.micro,
approval is needed from administrator, by policy.
The catalog item has built in client rules to drive an
ACC (Agent Client Collector) installation when the
deployment environment is marked for production.
To select the credential alias key for ACC deployment
from mid, the appropriate ACC admin role permissions
are required to be bestowed to the user. For
prerequisites check “Deploy ACC-* in post provisioning”
below. The work-flow automation runs a CCG scan on
the deployed Linux instance and checks the policy rule
with the configuration of the VM. If there is any violation,
the stack will be set with 'Follow up required' state to
notify that the stack deployment is not as per norms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
Order

Features

Order a Linux virtual machine on
EC2 and specify up to 10 additional
disk. For up to two disks, no approval
is necessary. Seek approval for
anything beyond that.

This catalog item form allows ordering up to 10
additional disks (volumes) attached to the VM of varying
sizes and types. If more than two additional disks are
added to the request, seek approval from administrator,
by policy.

Order a secure Linux virtual machine
with enhanced security by assigning
a Network Security Group for highest
level of security.

This catalog item form allows capability to assign one
Network Security Group to the compute instance so
that the network access to the VM is restricted. Security
groups are listed for the selected VPC and subnets.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack.
The key-value is updated only in the cmdb_key_value table, not in public cloud at this time.
This will be fixed in future releases to update the tags in cloud.
Amazon Web Services EC2 Linux Out Of Box permissions
Amazon Web Services EC2 Linux OOB catalog items permissions

Catalog item

Services

CSC AWS EC2 Linux
VM

AWS EC2 provision

Permissions

1. DescribeVolumes
2. DescribeImages
3. DescribeInstances
4. DescribeVolumes
5. DescribeInstanceCreditSpecifications
6. DescribeInstanceAttribute
7. DescribeInstances
8. DescribeTags
9. DescribeInstanceTypes
10. DescribeInstances
11. DescribeVpcs
12. RunInstances
13. DescribeImages
14. GetCallerIdentity

AWS EC2 instance- stop

1. DescribeInstances
2. StopInstances

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
Catalog item

Services

AWS EC2 instance- start

Permissions

1. DescribeImages
2. DescribeInstances
3. StartInstances

AWS EC2 instancedeprovision vm

Note: This de-

1. DescribeAddresses
2. TerminateInstances

provisions storage
volume as well.
AWS EC2 instancedeprovision stack

Note: Terminates
everything including
nic.
CSC AWS EC2 Linux
multiple disks

AWS EC2 Linux multiple
disks provision

1. GetCallerIdentity
2. DescribeInstances
3. DescribeImages

1. DescribeVolumes
2. DescribeImages
3. DescribeInstances
4. AttachVolume
5. DescribeInstances
6. CreateVolume
7. DescribeInstanceCreditSpecifications
8. DescribeInstanceAttribute
DescribeVpcs
9. DescribeInstanceTypes
10. DescribeTags RunInstances
11. GetCallerIdentity

AWS EC2 Linux multiple
disks stop

AWS EC2 Linux multiple
disks start

1. DescribeInstances
2. StopInstances

1. DescribeImages
2. DescribeInstances
3. StartInstances

AWS EC2 Linux multiple
disks stack deprovisionterminates all resources

1. DescribeInstances
2. TerminateInstances
3. ModifyInstanceAttribute

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Catalog item

Services

Permissions

4. DescribeVolumes
5. DeleteVolume
6. GetCallerIdentity
7. DetachVolume
8. DescribeInstanceCreditSpecifications
9. DescribeVpcs
10. DescribeInstanceTypes
11. DescribeTags
12. DescribeImages
CSC AWS EC2 Linux
with security groups

AWS EC2 Linux with
security groups- provision

1. DescribeVolumes
2. DescribeImages
3. DescribeInstances
4. DescribeInstanceCreditSpecifications
5. DescribeInstanceAttribute
6. DescribeVolumes
7. DescribeTags
8. DescribeVpcs
9. DescribeInstanceTypes
10. RunInstances
11. GetCallerIdentity

AWS EC2 Linux with
security groups stop

AWS EC2 Linux with
security groups start

1. DescribeInstances
2. StopInstances

1. DescribeInstances
2. DescribeImages
3. StartInstances

AWS EC2 Linux with
security groups stack
deprovision- terminate all
resources

1. DescribeInstances
2. TerminateInstances
3. ModifyInstanceAttribute
4. GetCallerIdentity
5. DescribeInstanceCreditSpecifications
6. DescribeInstanceAttribute
7. DescribeVolumes
8. DescribeTags

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
Catalog item

Services

Permissions

9. DescribeInstanceTypes
10. DescribeVpcs
11. DescribeImages

Amazon Web Services EC2 Microsoft Windows Out Of Box Catalog items
Cloud Services Catalog Windows VM, up to 10 additional disks on EC2 or with security groups.
This is a fully functional sample catalog item that can be used to request a Windows instance of
any instance type from Amazon EC2. These mandatory steps are required for provisioning:
1. In the Terraform box, add the private key pem file used for provisioning.
2. Copy the path of the PEM file from Terraform box and update that path in the default value of
the Management keypath variable.

Order

Features

Order a Microsoft Windows virtual machine
on EC2. Cloud configuration scan is run for
compliance checking.

For instance types other than t2.nano
and t2.micro, approval is needed from
administrator, by policy. The work-flow
automation runs a CCG scan on the deployed
Linux instance and checks the policy rule with
the configuration of the VM.

Order a Windows virtual machine on EC2
and specify up to 10 additional disks. For up
to two disks, no approval is necessary, but
for anything beyond that, approval will be
required.

This catalog item form allows ordering up to
10 additional disks (volumes) attached to the
VM of varying sizes and types. If more than
two additional disks are added to the request,
seek approval from administrator, by policy.

Order a secure Windows virtual machine on
EC2, assign security groups. Select as many
required for the highest level of security.

This catalog item form allows capability to
assign one or more security groups (firewallport rules) to the compute instance so that
the network access to the VM is restricted.
Security groups are listed for the selected VPC
and subnets.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack. The key-value is updated only in the cmdb_key_value table, not in
public cloud at this time. This will be fixed in future releases to update the tags in cloud.
The provisioning work-flow will notify the windows admin password to the requester via
email. It can take a minimum of four minutes to obtain the windows admin password from
Amazon Web Services.
Amazon Web Services EC2 Windows Out Of Box permissions
Amazon Web Services EC2 Windows OOB catalog items permissions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
Catalog item

Services

CSC AWS EC2
AWS EC2 provision
Microsoft Windows VM

Permissions

1. GetPasswordData
2. DescribeInstanceCreditSpecifications
3. DescribeInstanceAttribute
4. DescribeInstances
5. DescribeTags
6. DescribeInstanceTypes
7. DescribeVolumes
8. DescribeVpcs
9. RunInstances
10. GetCallerIdentity
11. DescribeImages

AWS EC2 instance- stop

1. DescribeInstances
2. StopInstances

AWS EC2 instance- start

1. DescribeImages
2. DescribeInstances
3. StartInstances

AWS EC2 instancedeprovision

1. DescribeInstances
2. GetCallerIdentity
3. ModifyInstanceAttribute
4. TerminateInstances
5. GetPasswordData
6. DescribeInstanceAttribute
7. DescribeInstanceCreditSpecifications
8. DescribeImages
9. DescribeTags
10. DescribeVolumes
11. DescribeInstanceTypes
12. DescribeVpcs

CSC CSC AWS EC2
AWS EC2 Windows
Windows multiple disks multiple disks provision

1. DescribeVolumes
2. DescribeVolumes
3. AttachVolume
4. DescribeInstances

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
Catalog item

Services

Permissions

5. GetPasswordData
6. CreateVolume
7. DescribeInstanceAttribute
8. DescribeInstanceCreditSpecifications
9. DescribeTags
10. DescribeVpcs
11. DescribeInstanceTypes
12. RunInstances
13. DescribeImages
14. GetCallerIdentity
Amazon Web Services EC2
1. DescribeInstances
Windows multiple disks
2. StopInstances
stop
AWS EC2 Windows
multiple disks start

1. DescribeImages
2. DescribeInstances
3. StartInstances

AWS EC2 Windows
multiple disks deprovision

1. DescribeInstances
2. TerminateInstances
3. ModifyInstanceAttribute
4. DescribeVolumes
5. DeleteVolume
6. DetachVolume
7. GetCallerIdentity
8. DescribeVpcs
9. DescribeInstanceAttribute
10. DescribeInstanceTypes
11. DescribeTags
12. DescribeInstanceCreditSpecifications
13. GetPasswordData
14. DescribeImages

CSC AWS EC2
Windows with security
groups

AWS EC2 Windows with
security groups- provision

1. GetPasswordData
2. DescribeVolumes
3. DescribeInstanceAttribute
4. DescribeInstance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
Catalog item

Services

Permissions

5. DescribeInstanceTypes
6. DescribeVpcs
7. DescribeTags
8. DescribeInstanceCreditSpecifications
9. RunInstances
10. GetCallerIdentity
11. DescribeImages
AWS EC2 Windows with
security groups stop

AWS EC2 Windows with
security groups start

1. DescribeInstances
2. StopInstances

1. DescribeInstances
2. DescribeImages
3. StartInstances

AWS EC2 Windows
with security groups
deprovision

1. DescribeInstances
2. TerminateInstances
ModifyInstanceAttribute
3. GetCallerIdentity
4. DescribeInstanceAttribute
5. DescribeInstanceCreditSpecifications
6. DescribeVpcs
7. DescribeVolumes
8. DescribeTags
9. GetPasswordData
10. DescribeImages
11. DescribeInstanceTypes

Amazon Web Services DynamoDB Out Of Box Catalog Items
Cloud Services Catalog AWS DynamoDB table for highly scalable NoSQL database.
This is a fully functional sample catalog item that can be used to order a Dynamo DB table- a
name-value database table on Amazon Web Services or AWS cloud. The standard inputs to be
provided are the table name, and the partition key as well as sort key names. The details of the
dynamo DB will appear in the stack details returned.
Order an AWS DynamoDB table, which is a key-value store, with primary keys and secondary
indices. This is useful for developers who require a highly scalable and fully managed NoSQL
database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Amazon Web Services DynamoDB Out Of Box permissions
Amazon Web Services DynamoDB OOB catalog items permissions. DynamoDB supports
provision and deprovision only.

Catalog item

Services

Cloud Services Catalog AWS DynamoDB provision
AWS DynamoDB

Permissions

1. DescribeTimeToLive
2. DescribeTable
3. DescribeContinuousBackups
4. ListTagsOfResource
5. UpdateTimeToLive
6. UpdateContinuousBackups
7. GetCallerIdentity
8. CreateTable
9. GetCallerIdentity

AWS DynamoDB
deprovision

1. DescribeTable
2. DeleteTable
3. GetCallerIdentit
4. ListTagsOfResource
5. DescribeContinuousBackups
6. DescribeTimeToLive
7. DescribeTable

Amazon Web Services S3 Bucket Out Of Box Catalog items
Cloud Services Catalog AWS S3 Bucket with secure access and encryption.
This is a fully functional sample catalog item that can be used to order an object storage bucket
from Amazon cloud's S3 service. Validation is done for the bucket name, to ensure that the s3
naming policy is adhered to. The underlying Terraform template is used to prevent public access
to the bucket and setting up standard encryption on data.
Order an AWS S3 storage bucket that includes security measures such as the prevention of
public access and server-side encryption that uses Amazon S3 managed keys (SSE-S3). These
security features will ensure that data stored in the bucket is protected and secure.
Amazon Web Services S3 Bucket Out Of Box permissions
AWS S3 Bucket OOB catalog items permissions. S3 Bucket supports provision and deprovision
only.

Catalog item

Services

CSC AWS S3 Bucket

AWS S3 Bucket provision

Permissions

1. GetBucketPolicy
2. PutBucketPublicAccessBlock

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Catalog item

Services

Permissions

3. GetBucketLifecycle
4. GetBucketReplication
5. GetBucketTagging
6. CreateBucket
7. GetBucketLogging
8. GetBucketPublicAccessBlock
9. GetBucketRequestPayment
10. GetBucketAcl
11. GetBucketWebsite
12. GetAccelerateConfiguration
13. GetBucketVersioning
14. GetBucketEncryption
15. GetBucketCors
16. GetBucketObjectLockConfiguration
17. PutBucketEncryption
18. GetCallerIdentity
AWS S3 Bucket
deprovision

1. DeleteBucketEncryption
2. DeleteBucketPublicAccessBlock
3. DeleteBucket
4. GetBucketObjectLockConfiguration
5. GetBucketLifecycle
6. GetBucketEncryption
7. GetBucketReplication DescribeTable

Google Cloud Platform (GCP) Big Query
Cloud Services Catalog with Google Cloud Platform BigQuery Serverless data warehouse.
BigQuery Serverless Data Warehouse is a fully functional sample catalog item that streamlines
the process of ordering a data warehouse solution powered by BigQuery from Google Cloud
Provider.

Order

Features

Order a serverless, cost-effective, multi-cloud
data warehouse with BiqQuery for streaming
data in real time with built-in machine learning,
and share analytics with just a few clicks.

This is a fully functional sample catalog item
that streamlines the process of ordering a
serverless, cost-effective, multi-cloud data
warehouse solution powered by BigQuery rom
the Google Cloud Provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
Order

Features

You can set up real-time data streaming and
analytics sharing effortlessly with a few clicks.
BigQuery's serverless architecture allows SQLbased data analysis and offers customization
options for scalability.
Google Cloud Platform (GCP) Big Query Out Of Box permissions
GCP Big Query Out Of Box catalog items permissions
GCP permissions
Catalog item

Services

CSC GCP BigQuery

Provision

Pointed discovery

Deprovision

Permission

•

bigquery.datasets.create

•

bigquery.tables.create

•

storage.objects.get

•

bigquery.tables.list

•

bigquery.datasets.get

•

bigquery.tables.delete

•

bigquery.datasets.delete

•

bigquery.routines.delete

•

bigquery.models.delete

Google Cloud Platform Cloud SQL
Cloud Services Catalog with GCP Cloud SQL Database.
Cloud SQL database is a sample catalog item you can use to order a Cloud SQL database
solution.

Order

Features

Order a Cloud SQL database solution that
integrates with Google Cloud services.

This is a fully functional sample catalog
item that can be used to order a Cloud SQL
database solution that integrates with Google
Cloud services to create and connect to your
first scalable database in minutes.
Upon completion, comprehensive details of
the Cloud SQL configuration will be provided
in the stack details. It automates essential
functions such as backups, replication,
patching, encryption, and storage capacity
adjustments, ensuring that applications

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
Order

Features

benefit from enhanced reliability, scalability,
and security measures.
Google Cloud Platform Cloud SQL Out Of Box permissions
Google Cloud Platform Cloud SQL Out Of Box catalog items permissions
GCP Permissions
Catalog item

Services

CSC GCP Cloud SQL

Provision

Pointed discovery

Permission

•

cloudsql.instances.create

•

cloudsql.instances.get

•

cloudsql.users.delete

•

cloudsql.databases.list

•

cloudsql.instances.list

•

cloudsql.users.list

•

compute.regions.list

•

compute.zones.list

Deprovision

cloudsql.instances.delete

Google Cloud Platform Linux Out Of Box Catalog items
Cloud Services Catalog Linux VM with Agent Client Collector (ACC), up to 10 additional disks or
secure Linux deployment.
This is a fully functional sample catalog item that can be used to request a Linux instance of any
instance type from Google Cloud Platform.
Linux VM orders and features:

Order

Features

CSC GCP Linux VM: Order a
Linux Virtual machine that allows
installation of Agent Client Collector.
ACC is compulsory for production
instances. VM sizes other than e2micro and e2-small require approval.

This is a fully functional sample catalog item that can be
used to request a Linux instance of any instance type
from Google Cloud Provider. For instance types other
than e2-micro and e2-small, approval is needed from
administrator, by policy.
The catalog item has built-in client rules to drive an
ACC (Agent Client Collector) installation, when the
deployment environment is marked for production. To
select the credential alias key for ACC deployment from
mid, the appropriate ACC admin role permissions must
be provided to the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
Order

Features

CSC GCP Linux multiple disks: Order
a Linux virtual machine and specify
up to 10 additional disk. No approval
is necessary for up to two disks, but
for anything beyond that, approval
will be required.

This catalog item form allows ordering up to 10
additional disks (volumes) attached to the VM of varying
sizes and types. If more than two additional disks are
added to the request, seek approval from administrator,
by policy.

CSC GCP Linux Cloud Firewall:
Order a secure Linux virtual machine
with enhanced security to allow or
deny traffic to and from your VM
instances based on your specified
configuration for highest level of
security.

This is a fully functional sample catalog item that can
be used to request a Linux instance of any instance
type from Google Cloud Provider. This catalog item form
allows capability to assign one or more security groups
(firewall-port rules) to the compute instance so that the
network access to the VM is restricted. Security groups
are listed for the selected VPC and subnets.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack.
The key-value is updated only in the cmdb_key_value table, not in public cloud at this time.
This will be fixed in future releases to update the tags in cloud.
Google Cloud Platform Linux Out Of Box permissions
Google Cloud Platform Linux Out Of Box catalog items permissions
GCP permissions
Catalog item

Services

CSC GCP Linux VM

Provision

Pointed discovery

Permission

•

compute.disks.create

•

compute.disks.get

•

compute.instances.create

•

compute.instances.get

•

compute.instances.setMetadata

•

compute.networks.get

•

compute.subnetworks.get

•

compute.subnetworks.use

•

compute.subnetworks.useExternalIp

•

compute.zones.get

•

compute.disks.list

•

compute.images.list

•

compute.instanceTemplates.list

•

compute.instances.list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
GCP permissions (continued)
Catalog item

Services

Day 2 VM: Virtual
Server - StopNode

Permission

•

compute.machineTypes.list

•

compute.snapshots.list

•

compute.zones.list

•

compute.regions.list

•

compute.instances.stop

•

compute.regions.get

•

compute.machineTypes.get

Virtual Server
- StartNode
Virtual Server - Resize

Virtual Server
- Deprovison

Stack Deprovision

compute.instances.start

•

compute.instances.stop

•

compute.machineTypes.get

•

compute.regions.get

•

compute.instances.setMachineType

•

compute.instances.start

•

compute.instances.delete

•

compute.regions.get

•

compute.instances.delete

•

compute.disks.delete

Note: Day 2 disk permissions
are also required. These are
same as Linux mutiple disks.
CSC GCP Linux
Multiple Disks

Provision

•

compute.disks.create

•

compute.disks.get

•

compute.disks.use

•

compute.instances.create

•

compute.instances.get

•

compute.instances.setMetadata

•

compute.networks.get

•

compute.subnetworks.get

•

compute.subnetworks.use

•

compute.subnetworks.useExternalIp

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
GCP permissions (continued)
Catalog item

Services

Pointed discovery

Permission

•

compute.zones.get

•

compute.zoneOperations.get

•

compute.disks.list

•

compute.images.list

•

compute.instanceTemplates.list

•

compute.instances.list

•

compute.machineTypes.list

•

compute.snapshots.list

•

compute.zones.list

•

compute.regions.list

Day 2 Disk storage
Storage -Detach

compute.instances.detachDisk

Storage Deprovision

compute.disks.delete

Storage Attach disk

compute.instances.attachDisk

Stack Deprovision

•

compute.instances.delete

•

compute.disks.delete

Note: Day 2 VM permissions
are also required. These are
same as basic Linux VM.
CSC GCP Linux
Secure Deployment

Provision

•

compute.disks.create

•

compute.disks.get

•

compute.instances.create

•

compute.instances.get

•

compute.instances.setMetadata

•

compute.instances.setTags

•

compute.firewalls.create

•

compute.firewalls.get

•

compute.networks.get

•

compute.networks.updatePolicy

•

compute.subnetworks.get

•

compute.subnetworks.use

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
GCP permissions (continued)
Catalog item

Services

Pointed discovery

Stack Deprovision

Permission

•

compute.subnetworks.useExternalIp

•

compute.zones.get

•

compute.disks.list

•

compute.images.list

•

compute.instanceTemplates.list

•

compute.instances.list

•

compute.machineTypes.list

•

compute.snapshots.list

•

compute.zones.list

•

compute.regions.list

•

compute.networks.list

•

compute.firewalls.list

•

compute.firewalls.delete

•

compute.networks.updatePolicy

•

compute.instances.delete

•

compute.disks.delete

Note: Day 2 VM disk
permissions are also required.
Google Cloud Platform Load Balancer
Cloud Services Catalog with Google Cloud Platform HTTP Load Balancer for high availability.
This is a sample catalog item designed to streamline the process of provisioning an HTTP load
balancer from the Google Cloud Provider. Its primary objective is to mitigate performance issues
and enhance user experience by efficiently managing incoming traffic.

Order

Features

Order a HTTP load balancer to distribute
user traffic across multiple instances of your
applications to reduce the risk of performance
issues.

This fully functional catalog item creates a
Classic Application Load Balancer - Global.
Only external load balancers are available as
global load balancers. Choose a global load
balancer when you want the load balancer
to be distributed globally. Each global load
balancer is distributed across all regions. It is
unaffected by zonal and regional outages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
Google Cloud Platform Load Balancer Out Of Box permissions
Google Cloud Platform HTTP Load Balancer Out Of Box permissions
GCP permissions
Catalog item

Services

CSC GCP HTTP
Load Balancer

Provision

Pointed discovery

Permission

•

compute.backendServices.create

•

compute.backendServices.get

•

compute.backendServices.use

•

compute.globalAddresses.create

•

compute.globalAddresses.get

•

compute.globalAddresses.use

•

compute.globalForwardingRules.create

•

compute.globalForwardingRules.get

•

compute.healthChecks.create

•

compute.healthChecks.get

•

compute.healthChecks.useReadOnly

•

compute.instanceGroups.create

•

compute.instanceGroups.get

•

compute.instanceGroups.update

•

compute.instanceGroups.use

•

compute.instances.use

•

compute.targetHttpProxies.create

•

compute.targetHttpProxies.get

•

compute.targetHttpProxies.use

•

compute.urlMaps.create

•

compute.urlMaps.get

•

compute.urlMaps.use

•

compute.networks.get

•

compute.backendServices.list

•

compute.forwardingRules.list

•

compute.healthChecks.list

•

compute.httpHealthChecks.list

•

compute.httpsHealthChecks.list

•

compute.instanceGroupManagers.list

•

compute.instanceGroups.list

•

compute.instances.list

•

compute.targetHttpProxies.list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
GCP permissions (continued)
Catalog item

Services

LB- Deprovision

Stack - Deprovision

Permission

•

compute.targetHttpsProxies.list

•

compute.targetSslProxies.list

•

compute.targetTcpProxies.list

•

compute.urlMaps.list

•

compute.regions.list

•

compute.zones.list

•

compute.globalForwardingRules.delete

•

compute.targetHttpProxies.delete

•

compute.urlMaps.delete

•

compute.globalAddresses.delete

•

compute.backendServices.delete

•

compute.healthChecks.delete

•

compute.instanceGroups.delete

•

compute.globalForwardingRules.delete

•

compute.targetHttpProxies.delete

•

compute.urlMaps.delete

Google Cloud Platform Windows Out Of Box Catalog items
Cloud Services Catalog Windows VM, up to 10 additional disks on Google Cloud Platform or with
cloud firewall.
This is a fully functional sample catalog item that can be used to request a Windows instance of
any type from Google Cloud Platform.
Linux VM orders and features:

Order

Features

CSC GCP Windows VM: Order a
Windows Virtual machine that allows
installation of Agent Client Collector.
VM sizes other than e2-micro and
e2-small require approval.

This is a fully functional sample catalog item that can
be used to request a Windows instance of any instance
type from Google Cloud Provider. For instance types
other than e2-micro and e2-small, approval is needed
from administrator, by policy.
The Windows credentials are provided by the user in
catalog order form. The credentials to meet complexity
requirement based on windows version.
The workflow automation runs a CCG scan on the
deployed Windows instance, and checks the policy rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
Order

Features

with the configuration of the VM. If there is any violation,
the stack will be set with 'Follow up needed' state to
notify that the stack deployment is not as per norms.
CSC GCP Windows multiple disks:
Order a Windows virtual machine
and specify up to 10 additional disk.
No approval is necessary for up to
two disks, but for anything beyond
that, approval will be required.

This is a fully functional sample catalog item that can
be used to request a Windows instance of any instance
type from Google Cloud Provider. This catalog item
form allows ordering up to 10 additional disks (volumes)
attached to the VM of varying sizes and types. If more
than two additional disks are added to the request,
approval is needed from administrator, by policy.
The Windows credentials are provided by the user in
catalog order form. The credentials to meet complexity
requirement based on windows version.

CSC GCP Windows Cloud Firewall:
Order a secure Windows virtual
machine with enhanced security
to allow or deny traffic to and from
your VM instances based on your
specified configuration for highest
level of security.

This is a fully functional sample catalog item that can
be used to request a Windows instance of any instance
type from Google Cloud Provider. This catalog item form
allows capability to assign one or more security groups
(firewall-port rules) to the compute instance so that the
network access to the VM is restricted. Security groups
are listed for the selected VPC and subnets.
The Windows credentials are provided by the user in
catalog order form. The credentials to meet complexity
requirement based on windows version.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack.
The key-value is updated only in the cmdb_key_value table, not in public cloud at this time.
This will be fixed in future releases to update the tags in cloud.
CSC GCP Windows OOB permissions
Google Cloud Platform Windows Out Of Box permissions
GCP permissions
Catalog item

Services

CSC GCP
Windows VM

Provision

Permission

•

compute.disks.create

•

compute.disks.get

•

compute.instances.create

•

compute.instances.get

•

compute.instances.setMetadata

•

compute.networks.get

•

compute.subnetworks.get

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
GCP permissions (continued)
Catalog item

Services

Pointed discovery

Day 2 VM: Virtual
Server - StopNode

Permission

•

compute.subnetworks.use

•

compute.subnetworks.useExternalIp

•

compute.zones.get

•

compute.disks.list

•

compute.images.list

•

compute.instanceTemplates.list

•

compute.instances.list

•

compute.machineTypes.list

•

compute.snapshots.list

•

compute.zones.list

•

compute.regions.list

•

compute.instances.stop

•

compute.regions.get

•

compute.machineTypes.get

Virtual Server
- StartNode
Virtual Server - Resize

Virtual Server
- Deprovison

Stack Deprovision

compute.instances.start

•

compute.instances.stop

•

compute.machineTypes.get

•

compute.regions.get

•

compute.instances.setMachineType

•

compute.instances.start

•

compute.instances.delete

•

compute.regions.get

•

compute.instances.delete

•

compute.disks.delete

Note: Day 2 disk permissions
are also required. These are
same as Windows mutiple disks.
CSC GCP Windows
Multiple Disks

Provision

•

compute.disks.create

•

compute.disks.get

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
GCP permissions (continued)
Catalog item

Services

Pointed discovery

Permission

•

compute.disks.use

•

compute.instances.create

•

compute.instances.get

•

compute.instances.setMetadata

•

compute.networks.get

•

compute.subnetworks.get

•

compute.subnetworks.use

•

compute.subnetworks.useExternalIp

•

compute.zones.get

•

compute.zoneOperations.get

•

compute.disks.list

•

compute.images.list

•

compute.instanceTemplates.list

•

compute.instances.list

•

compute.machineTypes.list

•

compute.snapshots.list

•

compute.zones.list

•

compute.regions.list

Day 2 Disk storage
Storage -Detach

compute.instances.detachDisk

Storage Deprovision

compute.disks.delete

Storage Attach disk

compute.instances.attachDisk

Stack Deprovision

•

compute.instances.delete

•

compute.disks.delete

Note: Day 2 VM permissions
are also required. These are
same as basic Windows VM.
CSC GCP Windows
Secure Deployment

Stack Deprovision

•

compute.firewalls.delete

•

compute.networks.updatePolicy

•

compute.instances.delete

•

compute.disks.delete

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
GCP permissions (continued)
Catalog item

Services

Permission

Note: Day 2 VM disk
permissions are also required.
Microsoft Azure Linux Out Of Box Catalog items
Cloud Services Catalog Linux VM with agent client collector (ACC), up to 10 additional disks,
security groups or with scalable web servers or with security groups.
This is a fully functional sample catalog item that can be used to request a Linux instance of any
instance type from Microsoft Azure.

Order

Features

Order a Linux virtual machine on Microsoft
Azure, that allows installation of agent
client collector. ACC is compulsory for
production instances. VM sizes other than
Standard_A1_v2 and Standard_A2_v2 require
approval. Cloud configuration scan is run for
compliance checking.

For instance types other than Standard_A1_v2
and Standard_A2_v2, approval is needed from
administrator by policy. The catalog item has
built in client rules to drive a ACC (Agent Client
Collector) installation, when the deployment
environment is marked for production.
To select the credential alias key for ACC
deployment from mid, the appropriate ACC
admin role permissions are required to be
bestowed to the user.
The work-flow automation runs a CCG scan on
the deployed Linux instance, and checks the
policy rule with the configuration of the VM.
If there is any violation, the stack will be set
with 'Follow up required' state to notify that the
stack deployment is not as per norms.

Order a Linux virtual machine and specify
up to 10 additional disks. For up to two disks,
no approval is necessary. Seek approval for
anything beyond that.

This catalog item form allows ordering up to
10 additional disks (volumes) attached to the
VM of varying sizes and types. If more than
two additional disks are added to the request,
seek approval from administrator, by policy.

Order a secure Linux virtual machine, assign
security groups. Select as many you require,
for the highest level of security.

This catalog item form allows capability to
assign one or more security groups (firewallport rules) to the compute instance so that
the network access to the VM is restricted.
Security groups are listed for the selected VPC
and subnets.

Order a Linux virtual machine scale set to
deploy identical virtual machines, enabling
automated scaling and ensuring high
availability.

This catalog item provides the capability
to deploy identical virtual machines using
a Linux virtual machine scale set, which
supports automated scaling for enhanced

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
Order

Features

availability. Email URL is added as a post
provision operation which emails the deployed
application's end point URL to the requester.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack.
The key-value is updated only in the cmdb_key_value table, not in public cloud at this time.
This will be fixed in future releases to update the tags in cloud.
Microsoft Azure Windows Out Of Box Catalog items
Cloud Services Catalog Windows VM, up to 10 additional disks on Microsoft Azure or with
security groups.
This is a fully functional sample catalog item that can be used to request a Windows instance of
any instance type from Microsoft Azure.

Order

Features

Order a Microsoft Windows VM that allows
installation of agent client collector. VM
sizes other than Standard_A1_v2 and
Standard_A2_v2 require approval. Cloud
configuration scan is run for compliance
checking.

For instance types other than Standard_A1_v2
and Standard_A2_v2, approval is needed
from administrator, by policy. The work-flow
automation runs a CCG scan on the deployed
Linux instance, and checks the policy rule with
the configuration of the VM.

Order a Windows virtual machine on Microsoft
Azure and specify up to 10 additional disks.
For up to two disks, no approval is necessary,
but for anything beyond that, approval will be
required.

This catalog item form allows ordering up to
10 additional disks (volumes) attached to the
VM of varying sizes and types. If more than
two additional disks are added to the request,
seek approval from administrator, by policy.
The Windows admin password is obtained
from Microsoft Azure at the time of creation.

Order a secure Windows virtual machine
on Microsoft Azure, assign security groups.
Select as many required for the highest level
of security.

This catalog item form allows capability to
assign one or more security groups (firewallport rules) to the compute instance so that
the network access to the VM is restricted.
Security groups are listed for the selected VPC
and subnets.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack. The key-value is updated only in the cmdb_key_value table, not in
public cloud, at this time. This will be fixed in future releases to update the tags in cloud.
Microsoft Azure Out Of Box permissions
Cloud Services Catalog Microsoft Azure Out Of Box catalog items permissions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
Services

Microsoft.Compute

Resources

1. virtualMachines/*
2. disks/*
3. availabilitySets/*
4. images/*
5. virtualMachineScaleSets/*
6. locations/*
7. vmSize/*
8. register/action/*
9. unregister/action/*
10. capacityReservationGroups/*
11. cloudServices/*
12. diskAccesses/privateEndpointConnectionsApproval/*
13. diskEncryptionSets/*
14. galleries/*
15. hostGroups/*
16. proximityPlacementGroups/*
17. restorePointCollections/*
18. sshPublicKeys/*
19. sharedVMExtensions/*
20. sharedVMImages/*
21. skus/read snapshots/*

Microsoft.Network

1. register/action/*
2. unregister/action/*
3. checkTrafficManagerNameAvailability/action/*
4. internalNotify/action/*
5. getDnsResourceReference/action/*
6. checkFrontDoorNameAvailability/action/*
7. privateDnsZonesInternal/action/*
8. applicationGateways/*
9. expressRouteCircuits/*
10. loadBalancers/*
11. networkInterfaces/*
12. networkSecurityGroups/*
13. privateDnsZones/*
14. publicIPAddresses/*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
Services

Resources

15. locations/*
16. virtualNetworks/*
17. virtualNetworks/subnets
18. virtualNetworks/virtualNetworkPeerings/*
19. natGateways/*
20. localnetworkgateways/*
21. connections/*
22. routeTables/*
23. subnets/*

Microsoft.Storage

1. register/action/*
2. unregister/action/*
3. storageAccounts/*
4. blobs/*

Microsoft.Resources

1. tags/*
2. resourceGroups/*
3. subscriptions/*
4. resources/*
5. providers deployments/*

Microsoft.Sql

1. servers/*
2. servers/databases/*
3. locations/*/read

Microsoft.ResourceHealth
Microsoft.ContainerService

AvailabilityStatuses/*
1. managedClusters/*
2. fleets/*

Microsoft.Web

1. serverFarms/*
2. sites/*

Microsoft.ResourceGraph

resources/*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Microsoft Azure Functions App Catalog items
Cloud Services Catalog Microsoft Azure Function App with pay-as-you-go pricing benefit.
This is a fully functional sample catalog item that enables users to request a Windows instance of
any instance type from Microsoft Azure.

Order

Features

Order a function app to build and deploy
small, event-driven functions without
managing infrastructure. It will offer a serverless computing experience with pay-as-you-go
pricing.

This catalog item deploys a NodeJS basic
"hello world" application onto the provisioned
Microsoft Azure function app. The versions of
NodeJS supported are the same as the ones
supported in Azure portal.
The Windows admin password is obtained
from Microsoft Azure at the time of creation.

Note:
Tag (key-value) is assigned to all deployed resources. Example: VM, network, storage as
present in the stack. The key-value is updated only in the cmdb_key_value table, not in
public cloud at this time. This will be fixed in future releases to update the tags in cloud.
Out Of Box Actions
The Out of the Box Actions comprise OOB deployment, tagging, retrieving and post-provisioning
operations. All these actions are based on Flow Designer and implemented as Integration Hub
Sub-flows.

Actions

Flow Designer Sub-flow Name

Deploy ACC-* in post
provisioning

CSC Content- Post
Provisioning- Deploy ACC in
Stack VMs

Description

ACC (agent client collector)
is deployed through a Flow
Designer action. This is called
as post-provision step for the
Linux basic VM deployment
catalog item. Pre-requisites:
1. ACC Listener must be
configured in any MID
Server. This will generate
a mid web server endpoint
and a MID Server API Key.
2. In the post provisioning
operation parameters of
the Basic Linux VM catalog,
these two parameters
– web server end point
(typically in format wss://
<IP_Address>:3389/
ws/events) and MID Server
API Keys, need to be set.
Out of the box, these

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
Actions

Flow Designer Sub-flow Name

Description

parameters have empty
values.

Note: If the
generated WS
endpoint URL returns
the private IP of the
MID Server, then that
private IP needs to be
replaced with public IP
of the MID Server VM
for the internet-based
connectivity.
3. There should be
connectivity over SSH port
from the MID Server to the
provisioned VM.
In case of any failure in
installing agent on the
provisioned VM, a task is
created, and stack is set to a
'follow-up required' state and
automatically turns active,
once all the follow-on tasks
are closed.
CCG Scan in post provisioning CSC Content- Create CCG
Policy Scan on Stack Items

Tagging Action

CSC Content- Post
Provisioning- Update Key
Values in CMDB

CCG Scan with the default
OOB Policy Set in CCG
is called with the simple
windows and Linux
deployment. When a CCG
scan fails owing to violation,
the stack is set to a follow-up
needed state. The operator
must ensure that the violation
is remediated and close the
violation task. Once all the
follow-on tasks are closed, the
stack automatically turns to
active state and can be used
by requester.
All catalog items have a
tagging action run as postprovision step. This action
only updates the key-value
entries in CMDB, not in
cloud. The standard tags
updated are StackName,
Application, CostCenter and
BusinessService. Fields with

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Actions

Flow Designer Sub-flow Name

Description

empty values will not be saved
as key-value records.
Retrieve Windows Password

CSC Content- Post
Provisioning- Retrieve
Windows Password

All windows catalogs
have a retrieve password
action, which emails the
Administrator, the password
of the provisioned windows
VM to the requester. The
password is obtained from
AWS after the deployment
is complete using a ssh key
('pem') file to decrypt the
password. Follow these prerequisite steps to set up this
pem file on the Terraform
Linux server:
1. Ensure that the SSH Private
Key credential to the VM
with Terraform CLI installed,
is associated with the
credential alias named
'TFO Server Credential
Alias'. This alias is already
created with installation of
CSC Content pack. This
alias is used to SSH into the
terraform server to get the
windows password from
output variable.
2. Ensure that in the Catalog’s
Provision variable set, the
variable called 'keypath' has
the default value set to the
path of the management
key (the key which can
decrypt the password) on
the terraform VM.
3. Ensure that the requester
has set up the email

Note: For custom
catalogs, this operation
is available for use
only, with Terraform
Opensource- Linux
based catalog items.
Email URL For Microsoft
Azure Scalable Web Server
Application

CSC Content- Email URL For
Microsoft Azure Scalable Web This action is added as a
post provision operation in
Server Application
'CSC Microsoft Azure Linux

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
Actions

Flow Designer Sub-flow Name

Description

with Scalable Web Server'
catalog item, which emails the
deployed application's end
point URL to the requester.
The URL is obtained from
Microsoft Azure after the
deployment is complete.
Ensure the requester has set
up the email.
Retrieve Microsoft Azure
Function App Host name

CSC Content- Post
Provisioning- Retrieve
Microsoft Azure Function App
Host name

This action is added as a post
provision operation in 'CSC
Microsoft Azure Function App
catalog item which retrieves
the deployed function app's
host name to the requester.

Out Of Box Policies
The Cloud Services Catalog Out of the Box Policies comprise Approval, Naming, Lease and
Quota Provisioning Policies.

Provisioning
Policies

Approval

Naming Policy

Lease Policy

Quota Policy

Description

ServiceNow Approval action called via Policy Trigger, on specific occasions.
Example: When a requester orders VM of type other than t2.micro and
t2.nano, or when more than two extra disks are requested for certain
catalog items.
A good approach for resources deployed as part of a single request is to
tag the resources with a common name, such as the stack's name. If the
stack name follows standard convention, for easy ownership identification,
and for age, that is useful. The naming policy that is shipped out of the box
is enabled for all cloud catalog items. When the policy is active, a stack
name is suggested in a particular naming format for Stack Name field in
the form. The naming format uses a combination of initial letters of the
requesters name, followed by the current date and time in mm dd hh mm
format. Example: if the requester name is John Smith, and the date/time is
10:30 am on 15-May, the stack name is generated as 'js05151030'.
Lease Policy is used to trigger de-provisioning of unused/unwanted stacks
to save costs on cloud. The lease policy will de-provision active stacks after
the lease period expires. A week prior to this, reminders are sent to stack
owners mentioning the stack is expiring.
Quota Policy is used to decide if a request which is run once quota is
exceeded, should go to approval or to be aborted. See Resource order
controls for template-based cloud catalog items

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
CSC references
Reference topics provide additional information about the lists and forms that you use to
configure, administer and use Cloud Services Catalog.
Domain separation and Cloud Services Catalog
Domain separation is supported in Cloud Services Catalog. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

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

Recommendations for domain separation in Cloud Services Catalog
Domain separation recommendations in Cloud Services Catalog:
CSC Guided setup
CSC Guided Setup can be executed by a system administrator within the global
domain or a feature admin (sn_cmp.cmp_root_admin). It is important to note that the
local domain is not the suited environment for this task.
Terraform Opensource in global domain
All the catalogs and config providers are installed in the global domain with the
installation of Cloud Services Catalog plugin. Hence, the Out Of Box catalogs will
also work only if, you create the Terraform Opensource(TFO) configuration and
credentials in the global domain and not in a specific domain. This also enables
the Managed Service Provider (MSP) users to use single TFO server for multiple
domains.
Service providers credentials
Service providers' (AWS, Microsoft Azure and Google Cloud Platform credentials
should be domain specific. However, Azure DevOps) and Ansible config installables
should be in global domain for provisioning.
MID Server in global domain
Set the MID server in the global domain as TFO and related config management is
also set in the global context. This enables accurate global discovery.
MSP users can set global MID servers and also use domain specific MID for
different service providers for Day 1.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
Next steps
For more information on how domain separation works in Cloud Provisioning and Governance,
visit Domain separation and Cloud Provisioning and Governance.
Related topics
Domain separation for service providers
GitHub Actions Permissions
GitHub Actions workflow discovery and permissions
Azure DevOps permissions
Azure DevOps discovery and provision permissions.

Permission type

Description

Cloud Services
Catalog Azure
DevOps
Discovery

Discovers Projects and Pipelines in Azure
DevOps Organisation & adds to CMDB.

Build (Read)

Cloud Services
Catalog Azure
DevOps
Provision

Provision via Azure DevOps pipeline triggered
from Cloud Services Catalog DevOps
Integration Catalog.

Build (Read & Execute)

Cloud Services
Discover AWS resources provisioned through
Catalog Azure
Azure DevOps pipeline.
DevOps
tag:GetResources
permission

PAT Access

Not applicable

Ansible permissions
Ansible Config Provider, Ansible Catalog and operations permissions.
Ansible Day 0, Day 1 and Day 2 permissions
Permission type

Ansible Config
Provider Discovery
on Day 0

Description

1. Configure Ansible credentials reference link: https://
docs.ansible.com/ansible-tower/latest/html/userguide/
credentials.html
2. Creating Ansible tower users: https://docs.ansible.com/ansibletower/3.2.5/html/userguide/users.html
3. Roles/permissions can be granted to Ansible tower users per project/
inventory/ job template/credentials as required. For more details:
https://docs.ansible.com/ansible-tower/latest/html/userguide/
users.html users-permissions
4. CAPI uses basic authentication token based mechanism which uses
the Ansible tower user's credentials. OAuth tokens based on basic
authentication credentials are generated.
5. Projects that contain the GitHub credentials of the playbook (this is
where .yml files exist) is configured manually on Ansible. For more

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
Ansible Day 0, Day 1 and Day 2 permissions (continued)
Permission type

Description

information: https://docs.ansible.com/ansible-tower/latest/html/
userguide/credentials.html source-control
6. Uses Ansible credentials for Discovery of Inventory, projects, cfg
installable– job templates (fetching playbooks and its extra variables)
using CAPI.
Ansible Catalog
provision/ deprovision on Day 1

Uses Ansible tower user credentials and service account credentials of
Amazon Web Services/ Azure given in the Ansible job template.

Ansible
tag:GetResources for Uses
discovery
tag:GetResources
permission to discover AWS resources provisioned through Ansible
pipeline.
Ansible Day 2
operations

Uses Ansible tower user credentials, service account credentials of
Amazon Web Services/ Azure and private ssh key pair or windows
user name/password, to connect to the particular cloud resource
provisioned.

Stages of Azure DevOps in Release life cycle management
The components and stages of an Azure DevOps pipeline are comprehensive and highly
customizable. You can define multiple stages, tasks, and integrations based on your specific
requirements and technology stack using Cloud Services Catalog.

Day 0 support

Day 1 support

Day 2 support

1. Scan the projects and
pipelines

1. Order from Service Catalog

1. SRE operations – patching,
backup, etc, on production
resources

2. Gather pipeline variables
from Azure DevOps

2. Reference from discovered
Azure DevOps projects and
pipelines
2. Daily maintenance – restart,
reboot, suspend, etc.
3. Select inputs needed for
the release deployment
3. Tagging resources, Running
pipeline
hardening, etc.
4. Submit catalog

Store in CMDB as referable
objects

1. Wait for approval
2. Track the progress
3. Update CMDB with
deployed resources

1. Ensure resilience in
production.
2. Switch between blue and
green environment

Workaround to known issues
The workaround steps to some of the known issues are compiled and described in the
Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


