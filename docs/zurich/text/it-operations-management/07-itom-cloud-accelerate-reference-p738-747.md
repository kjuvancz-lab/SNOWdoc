# Zurich IT Operations Management — ITOM Cloud Accelerate reference / ITOM Optimization / ITOM Optimization reference +1 more

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 738–747 of 4823

Sections: ITOM Cloud Accelerate reference (p738); ITOM Optimization (p742); ITOM Optimization reference (p743); ITOM Visibility (p744)

---

<!-- page 738 -->
Amazon Web Services (AWS) profile with minimal permissions
{
"Version": "2012-10-17",
"Statement": [{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"iam:GenerateCredentialReport",
"s3:GetEncryptionConfiguration",
"ec2:DescribeInstances",
"s3:ListBucketVersions",
"ec2:DescribeRegions",
"s3:ListBucket",
"iam:GetCredentialReport",
"iam:DeleteLoginProfile",
"ec2:MonitorInstances",
"iam:GetLoginProfile",
"ec2:DescribeImages",
"s3:PutEncryptionConfiguration",
"ec2:StopInstances",
"s3:GetBucketAcl"
],
"Resource": "*"
}]
}

Microsoft Azure profile with minimal permissions
{
"properties": {
"roleName": "CCGAzureMinimalPermission",
"description": "Grants access to scan compute resources from the Azure subscription",
"assignableScopes": [
"/subscriptions/${subscription_id}"
],
"permissions": [{
"actions": [
"Microsoft.ResourceGraph/resources/read",
"Microsoft.Compute/virtualMachines/instanceView/read",
"Microsoft.Compute/virtualMachines/*/powerOff"
],
"notActions": [],
"dataActions": [],
"notDataActions": []
}]
}
}

ITOM Cloud Accelerate reference
Reference topics provide additional information for configuring and using ITOM Cloud
Accelerate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
Plugins or applications installed with ITOM Cloud Accelerate
Tables that list the plugins or applications that are installed with ITOM Cloud Accelerate
applications. When you update your application, any newly required application dependencies
are installed.

Cloud Services Catalog
The CSC Content Pack plugin (sn_itom_csc_cp) provides the required predefined content for the
Cloud Services Catalog application. This content includes governance policies and actions to
deliver an end-to-end governed deployment workflow.
Plugins or applications installed with Cloud Services Catalog (sn_itom_csc)
Plugin or application
name

Description

Cloud Services
Catalog Terraform
Connector
(sn_cmp_terraform)

Integrates Terraform Open Source, Terraform Enterprise, and Terraform
Cloud with ITOM Cloud Provisioning and Governance (CPG), enabling
you to provision and manage services in multiple clouds like AWS,
Azure, GCP, and VMware. The Terraform templates are codified as
cloud template catalogs that you can use to provision cloud resources.

Cloud Discovery
Workspace
(sn_cloud_ops_ws)

Offers a comprehensive solution to manage the cloud operations of
your organization.

Cloud Provisioning
Provides a single interface to access cloud resources, publish cloud
and Governance
offerings to a catalog, and manage the use of those resources.
(com.snc.cloud.mgmt)
Guided Setup
(sn_ads_setup)

Enables you to step through the initial configuration of any product
or application that provides a Guided Setup module. Guided Setup
assists you with planning the roll-out of a product and performing the
basic configuration necessary to go live.

ITOM/OT SU
Licensing
(sn_itom_licensing)

Calculates and displays how many subscriptions for ITOM applications
your organization purchases and consumes.

Plugins or applications installed with CSC Content Pack (sn_itom_csc_cp)
Plugin or application name

Description

Cloud Services Catalog
(sn_itom_csc)

Provides a simplified interface to automate cloud
management and access cloud resources. The application
enables you to publish cloud offerings to a catalog and
manage the usage and life cycle of those resources.

ServiceNow IntegrationHub
Action Step - SSH
(com.glide.hub.action_step.ssh)

The SSH step executes SSH commands on an external *nix
®
system through a ServiceNow MID Server. The step also
stores scripts and commands for the *nix systems.

Agent Client Collector
Framework (sn_agent)

Manages Agent Client Collector on the ServiceNow
instance and the MID Server.

CCG Content Pack
(sn_itom_ccg_cp)

Provides optional predefined content for the Cloud
Configuration Governance application such as policies,
resource collectors, configuration collectors, and
remediation actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
Plugins or applications installed with CSC Content Pack (sn_itom_csc_cp) (continued)
Plugin or application name

Description

Flow Designer
Provides the Send Email step to send an email to specified
Action Step - Email
users or groups as an action in a flow.
(com.glide.hub.action_step.email)

Cloud Migration Assessment
Plugins or applications installed with Cloud Migration Assessment (sn_cloud_migration)
Plugin or application name

Description

ITOM/OT SU Licensing
(sn_itom_licensing)

Calculates and displays how many subscriptions for
ITOM applications your organization purchases and
consumes.

Discovery (com.snc.discovery)

Finds applications and devices on your network, and
then updates the CMDB with the information it finds.

Cloud Migration Base
(com.sn_cloud_mig_base)

A base plugin to support the Cloud Migration
Assessment application.

Cloud Configuration Governance
The CCG Content Pack plugin (sn_itom_ccg_cp) provides optional predefined content for the
Cloud Configuration Governance application such as policies, resource collectors, configuration
collectors, and remediation actions.
Plugins or applications installed with Cloud Configuration Governance (sn_itom_ccg)
Plugin or
application
name

Description

Cloud Action Provides predefined actions and sublows to enable interaction with the cloud
®
Library
resources of your organization. ServiceNow ITOM Cloud Accelerate features
(sn_itom_cal) such as Cloud Configuration Governance use these actions to operate.
Plugins or applications installed with CCG Content Pack (sn_itom_ccg_cp)
Plugin or
application name

Cloud
Configuration
Governance
(sn_itom_ccg)

Description

Checks the configuration settings of cloud resources in your organization
against a set of policies to identify violations. After the violation is identified,
you can use remediation workflows to mitigate them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
Cloud Action Library
Plugins or applications installed with Cloud Action Library (sn_itom_cal)
Plugin or application name

Description

ITOM/OT SU Licensing (sn_itom_licensing)

Calculates and displays how many
subscriptions for ITOM applications your
organization purchases and consumes.

Flow Designer Action Step - Payload Builder
(com.glide.hub.action_step.payload)

Enable action designers to easily create
name-value pairs in JSON and XML
payloads using dynamic data.

ServiceNow IntegrationHub
Provides the connection and credential
Action Step - Get Connection Info
details from another step, such as a
(com.glide.hub.action_step.get_connection_info) representational state transfer (REST) step,
to other steps in your action.
ServiceNow IntegrationHub Action Step - XML
Parser (com.glide.hub.action_step.xmlparser)

Enables the XML parser action step in
Workflow Studio.

ServiceNow IntegrationHub Runtime
(com.glide.hub.integration.runtime)

Enables execution of IntegrationHub actions
and flows.

Cloud Provisioning and Governance Core
(com.snc.cloud.core)

Contains resource blocks and cloud
Application Programming Interface (cloud
API) mappings related to Cloud API-based
discovery and events processed by either
response mapping or calling patterns.

Flow Designer Action Step - Script on MID
(com.glide.hub.action_step.script_mid)

Provides an action step to execute custom
JavaScript within a reusable action on a MID
Server.

ServiceNow IntegrationHub Action Step - REST
(com.glide.hub.action_step.rest)

Enables the REST action step in Workflow
Studio.

ServiceNow IntegrationHub
Action Template - Data Stream
(com.glide.hub.action_type.datastream)

Send REST, SOAP, or JDBC requests from
Workflow Studio to APIs that return a stream
of response data larger than 10 MB, or that
return paginated results. Parse stream data
into a series of complex object outputs and
use the data pills in other actions in a flow.

Cloud Account Management
Plugins or applications installed with Cloud Account Management (sn_cloud_acct_mgt)
Plugin or application name

Description

Discovery and Service Mapping Patterns
(sn_itom_pattern)

Provides the latest versions of the Discovery
and Service Mapping Patterns released on
the ServiceNow Store. ServiceNow releases
®
new patterns on the ServiceNow Store on
a monthly basis, enabling your organization
to discover the latest industry-standard
devices and applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
Plugins or applications installed with Cloud Account Management (sn_cloud_acct_mgt)
(continued)
Plugin or application name

Description

ServiceNow IntegrationHub Runtime
(com.glide.hub.integration.runtime)

Enables execution of IntegrationHub actions
and flows.

ServiceNow IntegrationHub
Provides the connection and credential
Action Step - Get Connection Info
details from another step, such as a
(com.glide.hub.action_step.get_connection_info) representational state transfer (REST) step,
to other steps in your action.
ServiceNow IntegrationHub
Action Template - Data Stream
(com.glide.hub.action_type.datastream)

Send REST, SOAP, or JDBC requests from
Workflow Studio to APIs that return a stream
of response data larger than 10 MB, or that
return paginated results. Parse stream data
into a series of complex object outputs and
use the data pills in other actions in a flow.

CMDB CI Class Models (sn_cmdb_ci_class)

Adds class models that extend the CMDB
class hierarchy, including class descriptions,
identification rules, identifier entries, and
dependent relationships if applicable.
Applications such as Discovery and Service
Mapping can use these class extensions
to populate configuration items (CIs) and
discover various technologies and software.

Flow Designer Action Step - Payload Builder
(com.glide.hub.action_step.payload)

Enable action designers to easily create
name-value pairs in JSON and XML
payloads using dynamic data.

ServiceNow IntegrationHub Action Step - REST
(com.glide.hub.action_step.rest)

Enables the REST action step in Workflow
Studio.

ServiceNow IntegrationHub Action Step - JSON
Parser (com.glide.hub.action_step.jsonparser)

Identify structured data from a JSON
payload without having to write a script.
Map incoming JSON content to a complex
object output that you can use in other steps
or actions. At runtime, values from a JSON
payload populate the complex object output.

Related topics
Plugins or applications installed with ITOM Visibility
Plugins or applications installed with ITOM AIOps
Plugins activated with ITOM Optimization
Applications installed with Now Assist for ITOM

ITOM Optimization
The IT Operations Management (ITOM) Optimization application provides automation
for the cloud workflows used to manage the cloud resources throughout their life cycle. It
enables certified and enterprise-compliant cloud deployment, cost visibility, and other cloud
management processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
Features of ITOM Optimization
ITOM Optimization features provide an integrated, service-centric approach that maximizes
business service quality, drives efficient processes, and promotes strong governance.
Cloud Provisioning and Governance
®

The ServiceNow Cloud Provisioning and Governance (CPG) application serves
as a unified interface for accessing cloud resources, delivering cloud offerings to a
catalog, and overseeing resource usage. This application is transformed as Cloud
Services Catalog application, offering refined and streamlined management of
usage and life cycle of cloud resources.

ITOM Optimization licensing
®

The ServiceNow AI Platform uses a licensing method where your organization is billed for
using ITOM Optimization applications. The ServiceNow Product Documentation doesn't provide
information on prices, packaging, or other details determined by your organization customer
contract. For general information about licensing and subscriptions, see ITOM/OT SU Licensing
and subscriptions.

Using guided setup to implement IT Operations Management applications
The IT Operations Management guided setup application provides a sequence of tasks that help
you configure IT Operations Management applications on your ServiceNow instance. To open
IT Operations Management guided setup, navigate to Guided Setup > ITOM Guided Setup. For
more information about using the guided setup interface, see Using guided setup .

What to do next
• To find the list of plugins you activate with IT Operations Management, see Plugins activated
with ITOM Optimization .
• For more details on Cloud Provisioning and Governance, see Cloud Provisioning and
Governance.

ITOM Optimization reference
Reference topics provide additional information for configuring and using ITOM Optimization .

Plugins activated with ITOM Optimization
Table that lists the plugins that are activated with the ITOM Optimization application Cloud
Provisioning and Governance. When you update your application, any newly required
application dependencies are installed.
Plugins activated with Cloud Provisioning and Governance (com.snc.cloud.mgmt)
Plugin name

Description

Cloud Provisioning
and Governance Core
(com.snc.cloud.core)

Contains resource blocks and cloud Application Programming
Interface (cloud API) mappings related to Cloud API-based
discovery and events processed by either response mapping
or calling patterns.

Cloud Config Management
(com.snc.config.mgmt)

A Configuration Management Framework that provides API
implementations to integrate with configuration management
vendors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
Plugins activated with Cloud Provisioning and Governance (com.snc.cloud.mgmt)
(continued)
Plugin name

Description

Orchestration
Automates often-repeated manual operations such as
(com.snc.runbook_automation) deployments, configurations, and information gathering.
Orchestration uses workflow and MID Server technologies
to enable activities to execute commands on systems inside
your enterprise network.
Service Portal - Core
(com.glide.service-portal)

A portal framework that enables administrators to build a
mobile-friendly self-service experience for users.

ITOM Optimization Licensing
(com.sn_itom_opt_licensing)

A proxy application that enables you to install all applications
related to Optimization. Once you purchase the Optimization
license, you can install this proxy application, which enables
you to install any application that is part of Optimization
license.

Related topics
Plugins or applications installed with ITOM Cloud Accelerate
Plugins or applications installed with ITOM Visibility
Plugins or applications installed with ITOM AIOps
Applications installed with Now Assist for ITOM

MID Server configuration and exception handling
You can configure a MID Server with additional configuration parameters or create a new Mid
Server property to alter any default behavior.
A system property 'mid.property.probe.api.timeout.minutes' enables you to decide the amount of
time mid-server should wait before throwing a timeout error while provisioning.
This Cloud Provisioning and Governance MID Server property with name and value parameters
handles the timeout exception.
See MID Server properties

for more information on creating a MID Server property.

ITOM Visibility
®

®

®

The ServiceNow ITOM Visibility product consists of ServiceNow Discovery, ServiceNow
Service Mapping, Certificate Inventory and Management, Service Graph Connectors, CMDB
360, and Firewall Audits and Reporting. Discovery and Service Mapping give you a unified,
connected view of your entire IT network and the services that it supports.

Who uses ITOM Visibility
ITOM Visibility enables the IT departments of enterprises and cloud companies providing
platform as a service to discover their IT resources.
®

ServiceNow Configuration Management Database (CMDB) is not just an operational tool, it
is a strategic necessity in today’s IT landscape. Maintaining an accurate and complete CMDB
provides the foundation for maintaining critical services and drives multiple outcomes important
to IT departments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
Data collected by ITOM Visibility provides a foundation for operation of the following business
units and products of ServiceNow AI Platform:
ITOM AIOps
Use ITOM AIOps to track and maintain the health of services in your organization.
ITOM AIOps gathers alerts from infrastructure events captured by third-party
monitoring tools. It then uses IT-related information gathered by Discovery to map
alerts to configuration items. Based on the collected information, ITOM AIOps
provides dashboards showing a consolidated view of all service-impact events.
You can also use ITOM AIOps to proactively analyze your IT infrastructure to spot
issues and prevent service outages. Using advanced machine learning to analyze
information about your IT infrastructure, the application automatically determines
dynamic thresholds and identifies anomalies that may indicate potential service
outages.
ITOM Optimization
ITOM Optimization gives you tools to provision private and public cloud
infrastructure and services and to achieve consistent management and cost
visibility. The Cloud Insights
application, available in the ServiceNow Store , helps
you to analyze the full range of costs associated with cloud assets so you can
identify and take action on opportunities to save money and optimize operations.
Software Asset Management
Understand the software running in your IT environment. Software Asset
Management works together with the CMDB powered up by ITOM Visibility. Use
Software Asset Management to track configurations that impact software license
consumption across your IT environments and datacenter.
Customer Service Management
Efficiently diagnose and resolve issues related to the IT infrastructure by using near
real-time data supplied by ITOM Visibility.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
IT Service Management
Rely on the IT infrastructure discovered by ITOM Visibility to manage and deliver
services to your users. See changes and incidents created and managed by IT
Service Management applications in ITOM Visibility service maps.
Strategic Portfolio Management
Use data collected by ITOM Visibility to gain a comprehensive understanding of the
applications used in your organization.
Security Operations
View security incidents in the context of ITOM Visibility to find out which application
services are at risk. Use this information to prioritize and resolve threats based on
the impact they pose to your organization.

How you use ITOM Visibility
The Discovery feature offers a replicable and reliable method of identifying the enterprise IT
infrastructure. Discovery can find computers, servers, software, printers, routers, and switches.
It can also find IP-enabled devices and applications that run on them, resources from various
cloud providers, and TLS certificates. This method is referred to as horizontal discovery.
Connections between the devices and applications are not included in horizontal discovery.
The Service Mapping feature maps dependencies, based on a connection between devices
and applications. This method is referred to as top-down mapping. The top-down mapping helps
you immediately see the impact of a problematic object on the rest of the application service
operation. Application service maps show infrastructure objects and connections between
them. Service Mapping regenerates application service maps regularly, to keep them updated
and relevant. Any faulty objects are shown along with the devices and applications they affect,
providing a visual clue of the state of the application service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
Comparison of horizontal discovery and top-down mapping results

How ITOM Visibility works
Discovery can use scripts to collect and process data on a host and then update the CMDB.
Scripts that explore or investigate CIs on your network are called probes. Sensors are the scripts
that parse the data returned from the probes. In addition, Discovery uses discovery patterns.
A pattern is a sequence of operations whose purpose is to detect attributes of devices and
applications and, when used by Service Mapping, their outbound connections.
Service Mapping can deploy different methods for creating application services. Discovery
patterns are the main method used by Service Mapping. However, you can also map application
services using tags, and traffic connections between devices and applications. For more
information, see Choose the right method for mapping application services.

ITOM Visibility licensing
®

The ServiceNow AI Platform uses a licensing method where your organization is billed for using
ITOM Visibility applications. Licensing options can vary based on your organization’s agreement.
The ServiceNow Product Documentation doesn't provide information on prices, packaging, or
other details determined by your organization customer contract. For general information about
licensing and subscriptions, see ITOM/OT SU Licensing and subscriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


