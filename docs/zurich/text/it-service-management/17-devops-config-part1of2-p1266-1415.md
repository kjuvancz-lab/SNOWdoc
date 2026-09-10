# Zurich IT Service Management — DevOps Config

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1266–1415 of 3857 | Part 1 of 2

Sections: DevOps Config (p1266); Explore (p1267); Configure (p1276); Integrate (p1315); Use (p1356); Analytics and reporting (p1434); Reference (p1437)

---

<!-- page 1266 -->
System Health (continued)
Report

Source list

Description

Note: Filter is not
applicable to this widget.

DevOps Change Velocity APIs
The DevOps Change Velocity APIs provides endpoints that enable the interaction with external
DevOps tools.
For more information, see DevOps API

.

DevOps Config
®

The ServiceNow DevOps Config application validates and manages the configuration data of
your enterprise applications across every stage of the DevOps pipeline.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Watch this short video for an introduction to the DevOps Config application.
DevOps Config overview

Get started

Explore

Configure

Integrate

Learn about how DevOps
engineers and developers
use DevOps Config.

Plan and configure
your implementation.

Extend DevOps
Config capabilities by
integrating your pipeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
Use

Analytics and
Reporting Solutions

Use DevOps Config to
validate and manage
your configuration data.

Coordinate work and
improve processes with
dashboards and reports.

Reference

Get details about
supported configuration
data, CDM APIs,
and PaCE policies.

Troubleshoot and get help
• Ask or answer questions in the ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Related ServiceNow applications and features
DevOps Change Velocity application.

Exploring DevOps Config
Use DevOps Config to store and manage all of your config data as a single source of truth.
You can also use DevOps Config to validate your config data before deployment, and resolve
conflicts in deployed config data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Watch this short video to see how config data snapshots in DevOps Config can help you identify
issues caused by unintended config data changes.
DevOps Config investigation with config data
Use root cause analysis of configuration-related outages or alerts to quickly identify and resolve
unintended config data changes, also known as configuration "drift." Compare current and past
versions of intended config data changes attached to change requests, and roll back to the
desired state when needed.
For more information, see Investigate an alert that involves a change to config data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
Manage your configuration data
DevOps Config becomes the single source of truth for your configuration data, rather than the
source tool. A consolidated model manages and secures config data across multiple sources
with role-based access control.
Although DevOps Config prevents non-compliant changes by validating your configuration data
before deployment, security of the configuration data can't be enforced if the data is kept at the
source and not stored in DevOps Config.
• Workflow
DevOps Config manages all your data in one location, validates it as it's written, and exports,
when needed.
• DevOps Engineer persona
Use DevOps Config and DevOps Config API to manage and validate configuration data. Thus,
enabling DevOps teams to release at a faster speed, ensuring that no risky or non-compliant
changes are introduced in production.
Use automated gates in a CI/CD pipeline or deployment script so that a deployment is
stopped if any change to the application or infrastructure configuration is deemed risky or noncompliant.
Manage DevOps Config as more policies are added and more exporters are defined.

Validate your configuration data
DevOps Config acts as a test tool by automatically validating your configuration data before
deployment to prevent non-compliant changes, while ensuring adherence to policy frameworks.
Validation before deployment occurs by executing policies on the configuration data. The
DevOps Config Policy content pack includes generic policies that check for standard issues, but
can be customized based on use case.
• Workflow
When configuration data is changed or added, DevOps Config runs policies on the
configuration data that's stored across multiple sources, validates it, and returns the outcome.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
In the pipeline, the decision on whether to deploy is made, and the configuration data is
retrieved from the source (Git, for example) to deploy.
• App Engineer (or IT infrastructure owner) persona
Use DevOps Config to validate configuration data. Thus, making sure no risks are introduced
and that all changes are compliant with company policies before any changes are applied in a
production environment.
Since the tool integrates with the existing toolset, there's no change to the way work is done
and there are no new tools to learn. Changes made to configuration data are validated in the
background, and when the outcome is reported, action can be taken.

DevOps Config and DevOps Change Velocity
DevOps Change Velocity collects data from all of your DevOps tools, providing visibility across
the entire lifecycle of deployment, while DevOps Config manages and validates your DevOps
configuration data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
DevOps Change Velocity is a horizontal solution orchestrating on top of all of your separate
DevOps tools. DevOps Change Velocity features change acceleration and can pause your
pipeline. DevOps Config serves a different purpose.
DevOps Config is a point solution that functions as one of your DevOps tools, managing and
testing your configuration data prior to production.

DevOps Config works better together with DevOps Change Velocity
Use DevOps Config with DevOps Change Velocity to manage and validate configuration data
collected by DevOps Change Velocity.
DevOps Change Velocity is an umbrella product that sits on top of your entire release pipeline
(planning, coding, testing, orchestration tools) as your application supply chain (value stream
map).
DevOps Config manages, validates, and provides results on how your application and
infrastructure are configured, which are the elements instrumented in DevOps Change Velocity.
DevOps Change Velocity and DevOps Config are synced by app object.
With the DevOps Change Velocity change control feature, a change request is created for
DevOps Config configuration changes.
In DevOps Change Velocity, navigate to DevOps > Orchestrate > Pipeline Change Requests
to view and approve DevOps change requests created by DevOps Config changes. CDM
snapshots are listed in the Config data related list of the DevOps change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
Using an app in DevOps Config
When you create an app in DevOps Config, not only is it the container for the config data of the
application, but the application model you choose links DevOps Config with other ServiceNow
products, including DevOps Change Velocity.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Each application model has an SDLC Component of the CMDB that is the link between
ServiceNow DevOps pipeline products.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
When you create an app in DevOps Config, it's synced with DevOps Change Velocity. Updates
and deletions to the app made in either application are also synced.

Note: An SDLC-C cannot be deleted if there is a DevOps Config or DevOps Change
Velocity app associated with it.
Related entities and attributes

Mapping:
• 1:1 mapping between SDLC-C and App Model​
• 1:1 mapping between DevOps Config app and SDLC-C​
• 1:1 mapping between DevOps Change Velocity and SDLC-C​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
DevOps Config powered by CDM and PaCE
DevOps Config uses Configuration Data Management and Policy as Code Engine platform
capabilities to manage configuration data and policies.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

DevOps Config platform capabilities

Configuration Data Management (CDM)
CDM is one of two main capabilities in the DevOps Config product. The CDM plugin
manages application and/or infrastructure configuration data within the ServiceNow
AI Platform.
CDM consists of the backend tables and logic that handles all aspects of an
application configuration data model. The workspace pages that users interact with
to manage their data model are also managed by this plugin.
The CDM Context Menu Component plugin is a sub-component of the CDM plugin.
It provides the context (for example, three dot) menu for the node list pane in the
Config Data tab for an application.
Policy as Code Engine (PaCE)
PaCE is the second main capability in the DevOps Config product. It provides a
robust policy engine that uses a policy script (written in javascript) to evaluate a
snapshot of configuration data and verifies compliance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
PaCE provides of a comprehensive versioning system so users can audit their
policy changes over time. It also contains a test playground to evaluate potential
policy script changes before going live with user configuration data.

DevOps Config core application
DevOps Config
DevOps Config is the main application for the DevOps Config product.
The DevOps Config application consists of the workspace that connects users into
their data model to manage their config data per application, manage policies to
validate their config data, and review the health of their application configuration
data.
The Insights dashboard widgets lets users gain insights on their configuration data
acumen, and build better habits in managing their configuration data.

DevOps Config content packs
DevOps Config Exporter Content Pack (Optional)
The DevOps Exporter Content Pack is an optional plugin that contains curated
exporters that the DevOps Config team created and that users can leverage out-ofthe-box to export the config data from their snapshots as they see fit.
DevOps Config Policy Content Pack (Optional)
The DevOps Config Policy Content Pack is an optional plugin that contains curated
policies that the DevOps Config team created and that users can leverage out-ofthe-box so they can get to validating their config data right away.

Note: if users install either of these optional plugins first, they will get DevOps Config and
all Dependencies plugins automatically installed as well.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
DevOps Config dependencies

These plugins are installed with core DevOps Config applications. They are critical to DevOps
Config and do not function properly without them.
CMDB CI Class Models
CDM leverages the CMDB CI Class Models plugin to connect aspects of user
application configuration data model to the ServiceNow AI Platform CMDB.
Applications are linked to an Application Model, which is part of the Build phase of
the Common Service Data Model (CSDM). Similarly, deployables are linked to an
Application Service, which is part of the Operations phase of the CSDM.
The link between DevOps Config and the CSDM is critical for solving problems that
may arise across a user software factory.
For example, an operator is able to trace the cause for an alert for a particular CI, to
a configuration change, to an application service (of which that CI is a part). This can
reduce mean time to resolution, or MTTR, from hours to minutes.
PA Premium
Performance Analytics (PA) Premium plugin is leveraged by the DevOps Config
Insights plugin to allow for more than 180 days of reporting data for all DevOps
Config Insights widgets.
Expanded Model and Asset Classes
The Expanded Model and Asset Classes Store application adds enterprise model
and asset classes that extend out-of-the-box product model and asset classes
within the Configuration Management Database (CMDB) class hierarchy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
These extensions include class descriptions, identification rules, identifier entries,
and dependent relationships.

DevOps Config terms
These are some of the common DevOps Config terms.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Application
The logical composition of an application or application stack, containing the
relevant configuration data needed to provision or deploy into a fleet. This can
range from a traditional, monolithic structure to a modern structure that can contain
multiple micro-services.
Collection
A set of components that make up a release composition. Collections are included
into deployables, and can be used to test different versions of components.
This example shows release-1.0 of an application that is currently deployed to the
Production environment.

The microservice team that owns the payment service makes a hotfix and decides
to add that into a release-1.1 collection that they are now testing in their Test
environment.
Component
The smallest aggregation unit of configuration data. A microservice that is part of a
larger application stack is an example of a component.
Configuration Data Item (CDI)
A single unit of configuration data (for example, connection string, heap size, etc.)
that is stored as a key-value pair.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
Data Model
A hierarchy of related configuration data used to deploy an application or
infrastructure.
Deployable
A subset of the data model, which encapsulates the set of configuration data that
is used to deploy/provision an application or infrastructure for a specific target
environment. It generally shares the same nomenclature (for example, Production,
Staging, Test, Development, etc.).
Snapshot
The complete data model of a deployable at the time a configuration change is
committed. This includes any included components, collections, and vars, as well
as deployable-specific vars and overrides.
Vars
Variable configuration data that can be used to roll up configuration values that are
used multiple times throughout different sections in the data model.
Vars created at the component level can be reused anywhere further down, like in a
collection and/or deployable. However, vars defined in a particular deployable are
intended to be used only in that context (for example, environment-specific creds,
memory settings, etc.).

Configuring DevOps Config
The DevOps engineer role installs and sets up DevOps Config, which is used to validate config
data (committed by developers, or app engineers) before deployment.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Data validation configuration tasks

1. Install DevOps Config.

(Optional) Advanced configuration tasks to extend
the use of the data model

N/A

Install DevOps Config application, content
packs, and pipeline plugins.
• DevOps Config application.
• (Optional) DevOps Config Policy content
pack.
• (Optional) DevOps Config Exporter content
pack.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
Data validation configuration tasks

(Optional) Advanced configuration tasks to extend
the use of the data model

• (Optional) Pipeline integration with DevOps
Config.
◦ Argo CD plugin for ServiceNow DevOps
◦ ServiceNow DevOps extension for Azure
DevOps.
◦ Jenkins plugin for ServiceNow DevOps.

2. Create an application in DevOps Config.

N/A

Create an application to set up the entity, and
link between ServiceNow products.
3. Create a deployable in DevOps Config.
Create a deployable to define the
environments to deploy the configuration data
for your application (typically Dev, Test, and
Production).
4. Upload your configuration data.
Upload your configuration data from each
tool source to DevOps Config by creating and
running an import script.
5. Define policies in DevOps Config.
Define policies to run for validation of config
data using default DevOps Config policies.
6. Map policies to a deployable.
Map policies to a deployable to run for
validation of config data.
7. Define exporters in DevOps Config.
Define exporters to export config data to
your pipeline using default DevOps Config
exporters.

8. Configure your pipeline in DevOps Config.

Extend the use of the data model by using
components and collections for a deployable
in DevOps Config.

Upload configuration data depending on use
case.

Administrate the full life cycle of PaCE
policies
and create your own.

Extend the use of the data model by mapping
policies to components and collections in
DevOps Config.

• Export config data for use by your
deployment tools downstream in your CI/CD
pipeline.
• Extend the use of the data model by
creating a custom exporter.
N/A

Configure your pipeline to interact with your
data model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
Data validation configuration tasks

(Optional) Advanced configuration tasks to extend
the use of the data model

Use DevOps Config Azure DevOps pipeline
tasks and Jenkins pipeline actions to integrate
your pipeline with DevOps Config.
9. Run validation in DevOps Config.

N/A

Run validation and review the results.

Install DevOps Config
Install the DevOps Config application from ServiceNow Store applications. Visit the ServiceNow
Store
website to view all the available apps and for information about submitting requests to
the store. For cumulative release notes information for all released apps, see the ServiceNow
Store version history release notes .

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: admin

About this task

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Click the Not Installed tab to view a list of applications available for installation.
3. Locate the DevOps Config application and click Install.
Configuration Data Management and Policy as Code Engine platform capabilities are also
installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
Install DevOps Config Policy content pack
Install DevOps Config Policy content pack for a default set of DevOps Config policies that you
can use as-is, or customize for your needs.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Note: You must install the DevOps Config application before installing the DevOps Config
Policy content pack.
Role required: admin

About this task

The DevOps Config Policy content pack contains a set of default DevOps Config policies to
validate your configuration data.

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Click the Not Installed tab to view a list of applications available for installation.
3. Locate the DevOps Config Policy content pack and click Install.
Install DevOps Config Exporter content pack
Install DevOps Config Exporter content pack for a default set of DevOps Config exporters that
you can use as-is, or customize for your needs.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Note: You must install the DevOps Config application before installing the DevOps Config
Exporter content pack.
Role required: admin

About this task

The DevOps Config Exporter content pack contains a set of Default DevOps Config exporters to
export your configuration data.

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Click the Not Installed tab to view a list of applications available for installation.
3. Locate the DevOps Config Exporter content pack and click Install.

Create an application in DevOps Config
Create an app in DevOps Config to manage its configuration data, and link DevOps Config with
other ServiceNow products, including DevOps Change Velocity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
An admin can create, edit, delete, and view DevOps Config apps.
Role required: sn_devops_config.admin

About this task

Watch this short video to see how to create an application in DevOps Config.
Create an application in DevOps Config
An app in DevOps Config is the container for the config data of an application. An app also ties
it with the DevOps Change Velocity application, where configuration data can be viewed in the
DevOps Pipeline UI.
In DevOps Change Velocity, an app links work items, code commits and CI/CD pipeline
executions together in the DevOps data model, which is displayed in change request, as well as
the DevOps Insights dashboard.
Apps in the DevOps Config application and in the DevOps Change Velocity application are
synced. Meaning, when an app is created in DevOps Config, it is also created in DevOps Change
Velocity, if installed, and vice versa.
You can edit or delete apps in DevOps Config. When you delete an app:
• In DevOps Config, the state of the application is set to Inactive and is no longer accessible in
DevOps Config.
• In DevOps Change Velocity, it's also deleted in DevOps Config (if installed).

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the apps icon (

) in the left navigation to open the Apps tab.

3. On the Applications form, click New to create an application and a new model, or to create an
application and specify an existing model (or service).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


<!-- page 1281 -->
For a New application without an existing application model, both application and model are
created.
For a new application to be tied to an Existing application model or service, only the
application is created.
The CSDM application model (name, owner, manufacturer) functions as the link between
ServiceNow DevOps products. There is an SDLC Component of the CMDB for each CSDM
application model.
4. In the Overview tab, fill in the Application details and select Save.

Maintained by

User groups that maintain the application.
With the cdm_admin role, you can add or
remove any user groups.
If groups you're a member of are removed,
you will lose access to the application.

Note: A user with cdm_all_app_access
and one of the other roles (cdm_admin,
cdm_editor, or cdm_viewer) can see
and manage the application even if
they are not in those groups. For more
information, see Roles in CDM.
Application description

Description of the application.

Application model owner

Username who owns the application model.

Manufacturer

Manufacturer of the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
The application does not yet contain config data, so the next step is to import your existing
config data into the application.
After you have imported config data and snapshots are generated, the list of snapshots are
displayed in the Overview tab.

Example:

DevOps Config App Overview

Create a CDM application that generates a new service in the CMDB
Generate a new service (an application service, application model, or dynamic CI group
[infrastructure application type]) in the CMDB) and create a CDM application as the container for
the config data for the service.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

About this task

For the application, you specify the number of deployables to generate and the SDLC
environment that the deployables represent. When you upload existing config data into the
application, the system maps the data as [name:value] pairs (config data items — CDIs)
in the appropriate node in the data structure of the CDM application. For an overview of the
process of preparing a new application to receive config data, see Preparing an application for
config data upload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
Procedure
1. Select the Applications icon (
New application.

) to open the Create new application page and then select

2. On the Overview tab for the new CDM application, fill in additional application details that
further identify the service in the CDM.
The CSDM application model (name, owner, manufacturer) functions as the link between
DevOps features. There is an SDLC component of the CDM for each CSDM application model.
Application settings on the Details tab
Application name

Unique and meaningful name for the
application.

Application model name

Name of the application model.

Maintained by

Groups with access to the application. Only
members of these groups can access the
application data.

Application description

Description that helps other users
understand the purpose, scope, and intent of
the application.

Application model owner

Name of the owner of the application model.

Manufacturer

Manufacturer of the application.

3. Select Manage deployables to open the Edit deployables tab where you can configure the
deployables.
4. Select Create deployables and then fill in the settings on the Create Deployables dialog box to
specify the quantity and environment type of deployables to create and the CMDB services to
connect them to.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
Create Deployables settings
Field

Environment

Description

The kind of environment that is configured by
the config data in the deployables.
◦ Development
◦ Test
◦ Production

Connection preference

Option to connect the newly created
deployables to the new services. Autoconnect is the only option when creating an
application to an existing CMDB entry.

Note: Because the DevOps pipeline
applies config data in a deployable only
to the services that the deployable is
connected to, every deployable must be
connected to a service.
Quantity

The number of deployables to create.
Limit: 100.

When you select Create, the system generates an application model in the CMDB and the
CDM application with the specified number and types of deployables. The system autogenerates names of the form AppName_EnvironmentType_number.
5. On the Edit deployables tab, select the card for each deployable in turn and update its
settings.
You connect each deployable to a service in the CMDB. The deployable holds the config data
for its associated service.
The system auto-saves your updates to settings.
Deployable details settings
Field

Deployable name

Description

Default name for the deployable. To ensure
that the auto-generated names are unique,
the system adds a timestamp.
Rename as needed.

Deployable description

Description that helps other users
understand the purpose, scope, and intent of
the deployable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
Field

Identifier

Description

Unique identifier that distinguishes this
deployable from other deployables that share
the same name and possibly many config
data settings.
For example, the production deployable that
has the identifier Pacific might have different
config settings for the language setting
than the deployable that has the identifier
EU.

Connected to

Service in the CMDB that the deployable
is associated with. Select a service in the
Available services list.
Perform one of the following actions:
◦ Link the deployable to a CI in the CMDB:
Select the cmdb_ci and then select Next.
◦ Create a CI to link to: Select New, define
the CI, and then select Next.

Note: To continue, you must connect
each deployable to a service.

6. Click Next to view the list of deployables on the Edit deployables tab.

What to do next

The application is not yet structured to accept config data, so the next step is to add the data
structure. See Add the nodes that will contain config data to a new CDM application.
Related topics
CDM data model
Create a CDM application that is based on an existing service in the CMDB
Create an application as the container for all config data for a service (an application service,
application model, or dynamic CI group [infrastructure] in the CMDB).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

About this task

For the application, you specify the number of deployables to generate and the SDLC
environment that the deployables represent. When you upload existing config data into the
application, the system maps the data as [name:value] pairs (config data items — CDIs)
in the appropriate node in the data structure of the CDM application. For an overview of the
process of preparing a new application to receive config data, see Preparing an application for
config data upload.

Procedure
1. Select the Applications icon ( ) to open the Create new application page and then select
Application based on existing services to specify the CMDB service that the new application
will hold config data for.

2. Fill in the settings on the Create Deployables dialog box to specify the quantity and
environment type of the deployables and the CMDB services to connect them to.
Create Deployables settings
Field

Description

Environment

The kind of code environment that is
configured by the config data in the
deployable.
◦ Production
◦ Development
◦ Test

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
Field

Description

Connection preference

Option to connect the newly created
deployables to services.
◦ Auto-connect each new deployable to
a service in the application model or
dynamic CI group.
◦ Manually specify the service to connect
each new deployable to. You make the
connections on the next page.

Note: Because the DevOps pipeline
applies config data in a deployable only
to the services that the deployable is
connected to, every deployable must be
connected to a service.
Quantity

The number of deployables to create.
If the number exceeds the number of
services that are associated with the existing
item in the CMDB, then the system generates
new blank services.

When you select Create, the system generates the application with the specified number and
types of deployables and opens the Edit deployables tab for the application.
3. Select Manage deployables to open the Edit deployables tab where you can configure the
deployables.
4. On the Edit deployables tab, update the settings for each deployable and then select Next.
You connect each deployable to a service in the CMDB. The deployable holds the config data
for its associated service.
The system auto-saves your updates to settings.
Deployable details settings
Field

Description

Deployable name

Default name for the deployable that the
system generates.
Rename as needed.

Deployable description

Description that helps other users
understand the purpose, scope, and intent of
the deployable.

Identifier

Unique identifier that distinguishes this
deployable from other deployables that share
the same name and possibly many config
data settings.
For example, the production deployable
that has the identifier Uraguay might have
different config settings for the currency

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
Field

Description

setting than the deployable that has the
identifier Greenland.
Connected to

Service in the CMDB that is configured by the
data in snapshots of the deployable. Select a
service in the Available services list.

Note: To continue, you must connect
each deployable to a service.
Perform one of the following actions:
◦ Connect the deployable to a CI in the
CMDB: Select the cmdb_ci and then select
Next.
◦ Create a CI to connect to: Select New,
define the CI, and then select Next.
The Review page opens.
5. Click Next to view the list of deployables on the Edit deployables tab.

What to do next

The application is not yet structured to accept config data, so the next step is to add the data
structure. See Add the nodes that will contain config data to a new CDM application.
Related topics
CDM data model
Viewing and editing config data
Define or update a component
Define or update a collection in an application
Create or update a variable CDI
How encrypted data is handled

Create and update a deployable
Create a deployable while working in a changeset. You can add multiple components and
collections to a deployable.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

Note: Uploaded data items are sorted alphabetically within the structural folders to enable
you to locate particular items quickly.
The system places the following limits on the count of config data items (CDIs):
• An application can contain a maximum total of 100,000 CDIs.
• Any single deployable can contain a maximum of 10,000 CDIs.
See CDM system properties for information on configuring the
sn_cdm.max_allowed_cdi_per_application and
sn_cdm.max_allowed_cdi_per_deployable property settings.

Procedure
1. On the Settings tab for an application, select Deployables in the tree view and then select
New.
2. Fill in the fields on the Enter details page of the wizard and then select Next.
Enter details page
Field

Description

Name

Unique and meaningful name for the
deployable.

Description

Description that helps other users
understand the purpose, scope, and intent of
the deployable.

Environment

The kind of application or infrastructure
environment that the deployable implements.
◦ Development
◦ Production
◦ Test

Restrict export

Option to ensure that only snapshots that
pass validation can be exported.

The wizard moves to the Link to CMDB page of the wizard.
3. On the Link to CMDB page and perform either of the following actions:
◦ Link the deployable to a CI in the CMDB: Select the cmdb_ci and then select Next.
◦ Create a CI to link to: Select New, define the CI, and then select Next.
The wizard moves to the Review page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
4. On the Review page, verify the settings for the new deployable.
Select Back to change settings. Select Create to create the deployable.
The system generates the deployable and displays it in the list on the Settings tab for the
application.

5. Optional: Follow this procedure to add a collection to one or multiple deployables:
a. For the collection node in the tree, select the menu icon (
deployables.

and select Include in

b. Select all deployables in which to include the collection and then select Include.

Note: Only deployables that do not already include the collection appear in the list.
The collection is included in each selected deployable.
(Optional) When you add a collection to a deployable, the Editor panel lists included collection
names but not contents. The Preview panel displays the full state of the data.
6. Optional: Add CDI settings to the deployable that will override or overlay settings in
components or collections.
For more information, see Define or update a component, Define or update a collection in an
application, or Create or update a variable CDI.
7. Select Save to save the changes in the changeset and ready the changes in the changeset to
be committed.
The Editor panel, List view, and Preview panel refreshes to reflect the resolved state of the
changeset. The system updates the changeset but does not update the application. Changes
appear on the Activity tab. You must commit a changeset to update the config data for the
application. After saving, you can move on to other activities and return later to edit the
changeset.
8. Optional: Select Commit.
The Commit changeset dialog box opens and lists each deployable that is affected by the
changes.

Note: After you commit a changeset, the changeset cannot be modified.
The system generates a snapshot of each deployable that is affected by the changes. The
dialog box offers the following Additional actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
◦ If no deployables are affected by the changes, select No additional actions. The system will
update the application to persist the changes.
◦▪ Select Validate snapshots to perform the following operations on all generated
snapshots:
▪ The system executes all policies that are statically or dynamically mapped to the
associated deployable.
▪ If the snapshot passes all policies, then the Validation status value is set to Passed and
no entries are listed on the Validation Results tab. If validation was invoked with the
Publish Valid publish option, then valid snapshots are auto-published.
▪ If any policy encounters issues, then the Validation status value is set to Failed. The
Validation Results tab displays all failures or warnings returned by policies.
▪ If any policy failed to run to completion, then the Validation status value is set to
Execution error and the Validation Results tab indicates that validation failed due to
error.
▪ Select Validate and publish snapshots to perform validation as described in the Validate
snapshots action. Only snapshots that pass validation are published. Only published
snapshots can be exported.
Select Commit.
▪ The system updates the application to persist the changes to config data.
▪ The changeset state changes to Committed.
▪ The changeset cannot be modified.
▪ If snapshots were created, the confirmation message includes a link to the snapshots.
▪ If an error occurs during the commit process, the changeset state is set to Commit failed.

What to do next

Map policies to the deployable
Related topics
CDM data model
Viewing and editing config data
Define or update a component
Define or update a collection in an application
Create or update a variable CDI
How encrypted data is handled
Delete a deployable
Delete a deployable to delete its config data and all associated snapshots.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

About this task

Note: When you delete a deployable, existing snapshots cannot be exported or validated
and cannot be referred to in exporters or policies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
Procedure
1. For an open application, select the Settings tab.
2. Select Deployables to view the list of deployables for the application.
3. Select one or more deployables and select Delete.
◦ The deployables no longer appear in any list.
◦ All config data in the deployables is deleted.
◦ All existing snapshots are deleted.
◦ You can create a new deployable with the same name as a deleted deployable.

Uploading your config data
You first create a new CDM application structure and then upload the existing config data into
the structure.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

How it works: Performing the initial upload of your existing config data into CDM
data tables

1. Open the CDM user interface and create a new application. For example, let's create the
Bookstore application to support an online bookstore. An application in CDM is the full
collection of config data for an application service, application model, or dynamic CI group
[infrastructure] in the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
2. Now open the Bookstore application and generate a new changeset so you can begin to put
the data structure in place. (A more detailed overview of this process appears in Preparing an
application for config data upload.)

In the changeset, define the data structure that includes a node for each set of config data that
you will upload. This process is called modeling the data. You add components, collections,
deployables, and CDIs as needed. For information on each of these items, see CDM data
model. For additional information on adding nodes to an application, see Preparing an
application for config data upload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
In this example, two components and two collections have been added. Now, the
PaymentSvc-1.0 component is included in the Release-1.0 collection. As with all collections,
this means that any data in the PaymentSvc-1.0 component is now included in the
Release-1.0 collection.

When you are satisfied with the structure (you can update at any time), you open the REST
Explorer to begin the process of uploading the source config data into the CDM data tables. Do
not commit the changeset — it remains open so you can upload data.
3. Using the REST APIs or the config data editor, set parameter values that specify the name of
the application to upload to, the path within the CDM application data structure to place the
data, the format of the source data (JSON in the example), and so on.

Note: When you upload your existing config from an XML file and the ignoreAttributes
is set to false, the CDM XML Parser retains the attributes in JSON using identifiers. For
more information, see Parsing of XML files in CDM.

This example shows the REST API Explorer platform utility for clarity. This is an example of
how you might construct an Upload to components REST POST request that creates a
dbProperties.json node in the PaymentSvc-1.0 component and then adds the source
data to the new node. (You specify the source data to upload in another field.) The APIs are
described in CdmApplicationsApi , CdmChangesetsApi , and CdmSnapshotApi .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
4. When you select Send, the API reads the original config data, uploads it and aligns it into the
CDM data structure.

Note: Uploaded data items are sorted alphabetically within the structural folders to
enable you to locate particular items quickly.
The system places the following limits on the count of config data items (CDIs):
◦ An application can contain a maximum total of 100,000 CDIs.
◦ Any single deployable can contain a maximum of 10,000 CDIs.
See CDM system properties for information on configuring the
sn_cdm.max_allowed_cdi_per_application and
sn_cdm.max_allowed_cdi_per_deployable property settings.

Important: Each time you submit a POST request, the API performs the POST and also
generates an upload script. You can specify one of several script languages. The purpose
is for you to use the code in your pipeline system to automate the upload process for this
application in future uploads.
5. Back to CDM: Review and update the config data as described in Preparing an application for
config data upload.
6. When you are satisfied that the application is a full and correct representation of the config
data, you can commit the changeset. The commit action generates a snapshot of each
deployable and causes the API to store the data in CDM tables.
Now that the application is fully in place, you can manage the data as needed: Update config
settings, apply policies to validate the data, export valid snapshots of config data, and so on.
While you export any snapshot, the system can generate API code that you can use to
automate the export process. See Generate API invocation code for an exporter for details.
Related topics
Preparing an application for config data upload
Parsing of XML files in CDM
Parsing of CSV files in CDM
Preparing an application for config data upload
An application in CDM is the full collection of config data for an application service, application
model, or dynamic CI group [infrastructure] in the CMDB. After you upload your source config
data, the application can support all potential deployables that make up each version of the
development, test, and production environments of the service.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Overview: Preparing an application to accept uploaded config data
You follow this general process to prepare an application to accept the upload of config data:
1. On the Apps tab, you, a user with the CDM Admin [sn_cdm.cdm_admin] role, create an
application record.
The system generates an application that includes several standard folders in a hierarchical
structure. You will map your existing config data into this data structure to enable the benefits
that are described in CDM data model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
The application supports creation of multiple deployables. For example, you might create a
deployable for each typical environment: Development, Test, and Production. You might also
create multiple versions of each deployable for each environment type.
2. Working in the CDM code editor, you now create a changeset — a draft copy of the application
that you can edit.
3. While working in the changeset, you create the following types of nodes in the appropriate
folders. This process models the config data, that is, it prepares the application to map your
source config data into the CDM data structure.

Note:
Starting with Configuration Data Management version 4.2, you can define a node using
any UTF-8 character, including the forward slash (/).
4. Now that the structure is in place, you use the REST APIs or the CDM code editing
panel to upload your existing configuration data into the changeset. The process is
described in Uploading your config data. For more information, see CdmApplicationsAPI
CdmChangesetsAPI , and CdmSnapshoAPI .

,

Note: If you're uploading an XML or CSV file to import your existing config data into
CDM, the CDM parser parses the data in a specific way. For more information, see
Parsing of XML files in CDM and Parsing of CSV files in CDM.
You can upload the following types of datasets: component variables, components,
collections, and deployables.
Components
Components are the building blocks that typically represent the config data
for a logical element of an application or a part of an infrastructure service.
For example, a monolithic app, a micro-service, a physical server, or a Docker
template.
A component can contain variables that can take on different values in collections
and deployables. More detailed instructions appear in Define or update a
component.
Collections
A collection is the set of components that together define a release — You can
think of a collection as a release composition.
A collection can contain variable or override settings that are specific to the
particular version. For example, the VM config data used in release-1 is different
from the data used in release-2. release-1 might use the value 2Gb for the
memory setting ("memory": "2Gb") and release-2 might specify a different
value ("memory": "4Gb"). In addition, a collection might include config
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
settings that do not appear in its components. You might think of such values as
"overlays".
Deployables
A deployable is a config dataset (for a development, test, or production
environment) that can be deployed into your CI/CD pipeline as a service. Each
deployable in an application configures a service in the CMDB. For example, you
might create three deployables, one for each environment type: Development,
Test, and Production.
A deployable is made up of the collection or set of collections that define the
release for a particular environment. The combination of collections+environment
link to an application service in the CMDB or an infrastructure service.
A deployable can contain variable or override settings that are specific to
the environment. For example, the database variable has one value in the
development environment and a different value in the production environment.
An override value in the production deployable might specify a required container
parameter that is not needed in the development environment.
5. After the data is uploaded, you return to CDM. You update variable and override values so
that the relatively small set of components and collections can provide config data for all
three deployable environments. For example, the Development deployable can use the
same components and collections as the Test deployable. Development uses the default
database variable value. Test, in contrast, uses a different value that is appropriate for the
test environment.
6. Now, save and commit the changeset. The system performs the following actions:
◦ Determine whether there are conflicts with other earlier commits. If the system reports a
conflict, you must resolve it and recommit or create a changeset and redo your changes. For
more information on conflict resolution, see Conflicts between changeset commits.
◦ Push all changes into the data model of the application (the config data is persisted).
◦ Generate a snapshot of each deployable that is affected by the changes in the changeset.
The system validates config data by executing specified policies against a snapshot. At the
moment that the snapshot is created, the snapshot can be published and used to export the
config data. Snapshots are permanent records that cannot be edited.
The source config data is now held in CDM tables. You can now manage the data as needed:
map policies to each deployable so that the snapshots can be validated, validate the data in a
snapshot (apply the policies), export config data, and so on.

Note: You can map policies to an empty deployable, but that is not a typical procedure.
Related topics
Define or update a component
Define or update a collection in an application
Create and update a deployable
Changesets and version control in CDM
Conflicts between changeset commits
Validating and correcting configuration data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
Add the nodes that will contain config data to a new CDM application
Add the data structure to a new application that will accept the uploaded config data into
appropriate nodes.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

About this task

When the system creates a new application, the application has only the highest level of
structure: components, collections, and deployables folders. In this procedure, you add
the component, collection, and deployable nodes that will accept the uploaded config data.
When you upload existing config data into the application, the system maps the data as
[name:value] pairs (config data items — CDIs) in the appropriate node in the data structure
of the CDM application. For more information, see CDM data model.

Note:
Starting with Configuration Data Management version 4.2, you can define a node using any
UTF-8 character, including the forward slash (/).

Procedure
1. Create the components that will be included in the collections.
For more information, see Define or update a component and Define or update a collection in
an application.
2. Add a collection to one or multiple deployables:
a. For the collection node in the tree, select the menu icon (
deployables.

) and select Include in

b. Select all deployables in which to include the collection and then select Include.

Note: Only deployables that do not already include the collection or any of its
descendants appear in the list. If the collection has the same name as an existing
node, then the collection is transformed into an override or overlay.
The collection is included in each selected deployable.
When you add a collection to a deployable, the Editor panel displays the included collection
names but not their contents (overrides or overlays do appear). This strategy reduces clutter
and clarifies the structure. To view the fully-resolved content of the data, view the Preview
panel.
3. Create the components that will be included in the collections.
4. Optional: Add CDIs to the deployable that will override or overlay settings in components or
collections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
Note: Uploaded data items are sorted alphabetically within the structural folders to
enable you to locate particular items quickly.
The system places the following limits on the count of config data items (CDIs):
◦ An application can contain a maximum total of 100,000 CDIs.
◦ Any single deployable can contain a maximum of 10,000 CDIs.
See CDM system properties for information on configuring the
sn_cdm.max_allowed_cdi_per_application and
sn_cdm.max_allowed_cdi_per_deployable property settings.
For more information, see Define or update a component, Define or update a collection in an
application, or Create or update a variable CDI.
5. Select Save to save the changes in the changeset and ready the changes in the changeset to
be committed.
The Editor panel, List view, and Preview panel refreshes to reflect the resolved state of the
changeset. The system updates the changeset but does not update the application. Changes
appear on the Activity tab. You must commit a changeset to update the config data for the
application. After saving, you can move on to other activities and return later to edit the
changeset.
6. Optional: Select Commit.
The Commit changeset dialog box opens and lists each deployable that is affected by the
changes.

Note: After you commit a changeset, the changeset cannot be modified.
The system generates a snapshot of each deployable that is affected by the changes. The
dialog box offers the following Additional actions:
◦ If no deployables are affected by the changes, select No additional actions. The system will
update the application to persist the changes.
◦▪ Select Validate snapshots to perform the following operations on all generated
snapshots:
▪ The system executes all policies that are statically or dynamically mapped to the
associated deployable.
▪ If the snapshot passes all policies, then the Validation status value is set to Passed and
no entries are listed on the Validation Results tab. If validation was invoked with the
Publish Valid publish option, then valid snapshots are auto-published.
▪ If any policy encounters issues, then the Validation status value is set to Failed. The
Validation Results tab displays all failures or warnings returned by policies.
▪ If any policy failed to run to completion, then the Validation status value is set to
Execution error and the Validation Results tab indicates that validation failed due to
error.
▪ Select Validate and publish snapshots to perform validation as described in the Validate
snapshots action. Only snapshots that pass validation are published. Only published
snapshots can be exported.
Select Commit.
▪ The system updates the application to persist the changes to config data.
▪ The changeset state changes to Committed.
▪ The changeset cannot be modified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
▪ If snapshots were created, the confirmation message includes a link to the snapshots.
▪ If an error occurs during the commit process, the changeset state is set to Commit failed.

What to do next

The application does not yet contain config data, so the next step is to import your existing
configuration data into the appropriate nodes in the application. See Uploading your config data.
Related topics
CDM data model
Parsing of XML files in CDM
Parsing of CSV files in CDM
Viewing and editing config data
Define or update a component
Define or update a collection in an application
Create or update a variable CDI
How encrypted data is handled
Parsing of XML files in CDM
The CDM XML parser enables the parsing of attribute key-value pairs in XML files, so when
you upload config data from an XML file into CDM, you can easily identify the attributes of each
element in the CDM editor or list view.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
This parsing of attribute key-value pairs from an XML file to a JSON format in CDM helps you in
the following ways:
• Uploading existing config data from an XML file, including the attributes of XML elements as
appropriate key-value pairs in JSON.
• Differentiating attributes from the config data items easily in the CDM editor.
• Validating imported CSV data with attributes in CDM for deployment.
• Converting attribute key-value pairs in JSON format as XML element attributes in XML file.

Parsing of XML to JSON during import
When you import an XML file to upload your config data into CDM, the parser converts attributes
and enclosing text in XML elements to the JSON format as follows:
• Adds the @ prefix to all key names corresponding to attributes of XML elements.
• Adds a #text key for the enclosing text value of XML elements that have both attributes and
enclosing text.
These options help in identifying attributes and enclosing text in the Editor panel and List view
while reviewing the config data.
The following example shows how the conversion looks between XML and JSON formats:
XML format
<app>
<components>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
<paymentService type="B2C">
<provider region="EMEA">ABCPay</provider>
<service>XYZPay</service>
</paymentService>
</components>
<app>
JSON format
{
"app" : {
"components" : {
"paymentService" : { //key-value pair for XML
elements with attributes
"@type" : "B2C", // @ prefix for attribute
"provider" : {
"@region" : "EMEA", // @
prefix to key name for attribute
" text" : "ABCPay" // text
key name for enclosing text
},
"service" : "XYZPay" //key-value pair for XML
elements without attributes
}
}
}
}

Parsing of JSON to XML during export
To keep the XML attributes and enclosing text in their original format when exporting the config
data to an XML file format, you must update the config data as follows:
• Add the @ prefix to all key names to make them parse as attributes of XML elements.
• Add keys named #text to CDIs that should be parsed as the enclosing text value of XML
elements, when both attributes and enclosing text are present.
Related topics
Uploading your config data
Add the nodes that will contain config data to a new CDM application
Parsing of CSV files in CDM
Parsing of CSV files in CDM
The CDM CSV parser enables parsing of data in CSV files, so when you upload config data from
a Comma-Separated Values (CSV) file into CDM, you can easily identify the data format attributes
and config data in the CDM editor or list view.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
The CDM CSV parser follows the CSV standard RFC 4180. This parsing of data from a CSV file to
a JSON format in CDM helps you in the following ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
• Uploading existing config data from a CSV file with custom header and delimiter attributes to
parse them as appropriate key-value pairs in JSON.
• Differentiating data format attributes (metadata) from the config data items (data) in the CDM
editor.
• Validating imported CSV data in CDM for deployment.
• Converting config data from JSON format to CSV format with attributes in the original format.

Parsing of CSV to JSON during import
When you import a CSV file into CDM, the parser converts the data in CSV format to the JSON
format as follows:
• Adds each record from the CSV file as a CDI in separate indexed nodes under the data node
in JSON format.
• Adds the data format attributes used during CSV upload under the metadata node.
The query parameter dataFormatAttributes includes attributes for determining the
delimiter, headers, first row as header, and secured headers.
Attributes for the CDM CSV parser
Attribute name

Description

delimiter

Character to separate out each header field
as a key and the record field as a value of a
CDI. You can specify a valid character as the
delimiter.
Default: "delimiter": ",".

containsHeader

Option to determine whether the first row in
the CSV file is considered as the header row.
This attribute is optional.
◦ true: The CSV file contains the first row as
the header.
◦ false: The CSV file doesn't have the first
row as the header. In this case, you must
provide the headers in the headers
attribute.
Default: "containsHeader": "true".

headers

List of header fields for record fields in the
CSV file. These headers are converted to the
key names of the CDIs in the JSON format.

Note: This attribute is applicable only
if the containsHeader attribute is
set to false.
If your CSV file doesn't have the first
row with headers, you can provide
an array of headers. The number of
headers must match the number of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
Attribute name

Description

record fields. Example: "headers":
["FirstName","LastName","Location","Salary"
Default: An empty array: "headers": [].
securedHeaders

List of header fields for which the value for all
records is displayed in the encrypted format
in the JSON format. This attribute is optional.
You can provide an array of headers that
must be secured. The name of the secured
headers must match the name of the headers
in the headers attribute or CSV file. Example:
"securedHeaders": ["Salary"].
Default: An empty array:
"securedHeaders": [].

Example: Conversion of CSV to JSON format
This example shows the given data format attributes and the conversion of CSV content to the
JSON format based on these attributes.
Data format attributes

Note: This parameter is optional. If you don't provide values, the default
values of the attributes are used.
{ "delimiter": ",", "containsHeader": "true", "headers":
[], "securedHeaders": ["salary"] }
CSV format
//Sample CSV file content: no header in the first row;
each line represents a record
FirstName,LastName,Location,Salary
David,Ben,NYC,1000
Jakes D,Ron,IRE,1220
"George, R",Martin,US,12120
"Antony, ""Ron",Mak,US,1210
JSON format

//data node for the records from CSV - each record row converted to individual
nodes with fields separated by delimiter character converted to individual items
of the node{
"data": {
"0": {
"FirstName": "David",
"LastName": "Ben",
"Location": "NYC",
"Salary": "*****"
},
"1": {
"FirstName": "Jakes D",
"LastName": "Ron",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
"Location": "IRE",
"Salary": "*****"
},
"2": {
"FirstName": "George, R", //the name has a delimiter char so the full
name is enclosed within " "
"LastName": "Martin",
"Location": "US",
"Salary": "******"
},
"3": {
"FirstName": "Antony, \"Ron", //the last name has "" so a \ is added to
include " in the last name
"LastName": "Mak",
"Location": "US",
"Salary": "*****"
}
},
//metadata added for the data format attributes
"metadata": {
"containsHeader": "true",
"delimiter": ",",
"headers": "FirstName�LastName�Location�salary",
"securedHeaders": "Salary"
}
}

Parsing of JSON to CSV during export
To keep the CSV config data in its original format when exporting the config data to a CSV file
format, ensure that you have the data and metadata nodes in your data.
• Config data items within the data node are converted to individual record rows in the CSV file.
• Data format attributes within the metadata node are used to define the delimiter, header, and
secret header information in the CSV file.
Related topics
Uploading your config data
Add the nodes that will contain config data to a new CDM application
Parsing of XML files in CDM

Define policies in DevOps Config
Define policies in DevOps Config to validate your configuration data.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: sn_devops_config.admin

About this task

You can use or customize default DevOps Config policies to validate that your config data
content is compliant, or write and test custom DevOps Config policies .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
Procedure
1. In the Admin view, select the Policies tab.
2. Select a default policy or select New to create a policy

.

3. Enter the policy name, category, and a description for the policy and select Save.

Note: You must publish a policy version to make it current, and activate it before it can
be invoked.
Related topics
Default DevOps Config policies
How to write and test custom PaCE policies

Mapping policies in DevOps Config
Mapping a policy to a deployable enables you to validate updates on it. These policies in
DevOps Config are powered by Policy as Code Engine (PaCE).

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
After you create a policy, you can map it to a deployable to invoke the policy when any changes
are made to the deployable. You can map policies using the following mappings:
Static mapping
In static mapping, a policy is directly mapped to deployables. This mapping type
helps you to apply policies to different environments or configurations. However, if
you have to map a policy to multiple deployables, you would have to do it multiple
times for each deployable. Validation is triggered on directly mapped policies for a
deployable.
Dynamic mapping
In dynamic mapping, a policy is mapped to deployables dynamically based on
pre-defined conditions. This mapping type helps you to apply policies to a larger
set of deployables across multiple applications that all meet the same conditions.
Validation is triggered on dynamically mapped policies at run time for a deployable.
You can view all policies mapped to deployables of an application by selecting the View
mapped policies option on the Policies tab on the Application form. Select a deployable from
the list to view policies mapped to it using both static mapping or dynamic mapping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
Policies tab on the Application form

Map policies to a deployable
Map policies to a deployable to define the validation processes that the config data must pass.
You can map policies to a deployable using static mapping or dynamic mapping.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_policy_editor or cdm_editor or cdm_admin

About this task

Policies validate any changes to the mapped deployable. Whenever changes that affect a
deployable are committed, the system generates a new snapshot of the deployable and then
executes all mapped policies against the snapshot. You can also manually execute a policy at
any time (for example, to test a policy operation).

Procedure
1. On the Policies tab for an application, select Manage static mappings.
The Manage static mappings page lists all deployables that have mapped policies. Policies are
grouped by the deployable to which they’re mapped.
2. Select Add.
The Map Policies dialog box displays with a list of available policies.
3. Select a deployable against which the policies should be executed.
4. Select the policies in the Policies list.
You can map any number of policies.
5. Select Map Policies.
On the Manage static mappings page, the deployable is updated with the list of mapped
policies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


<!-- page 1307 -->
Mapped Policies list - Columns
Column header

Description

Policy name

Name of the policy. Policies appear grouped
under the deployable to which they’re
mapped.

Input

Policy settings that are configurable.

Dynamic mapping

Identifier to denote whether the policy is
mapped dynamically or statically.
◦ true: The policy is mapped dynamically
based on the defined conditions.
◦ false: The policy is mapped statically.

Condition

Business conditions based on which the
policy is mapped dynamically to specific
deployables.
For example, to dynamically map policies to
only deployables that have the environment
type as production, you can define the
condition as: [Environment][is][Production].
For more information on defining a condition,
see Map PaCE policies using Dynamic
Mapping .

Description

Description of the policy, specifying what it
validates.

Category

Identifier that enables policy grouping. For
example, Production Policies.

Input status

Validation state of the mapping inputs in the
policy.

Note:
◦ This information reflects the validity
of the input settings (that is, the
readiness of the policy to perform
validation).
◦ All mapping inputs are valid on
insertion. Inputs become invalid if the
policy version is archived or deleted.
◦ This value does not indicate whether
the snapshot passed validation
(that is, whether the snapshot is
compliant).
State

Mapping state of the policy with the
deployable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
Column header

Description

Only mapped policies that are active execute
during snapshot validation.
Tags

Tags that are associated with the policy.

Related topics
Map PaCE policies using Static Mapping
Map PaCE policies using Dynamic Mapping

Define exporters in DevOps Config
Define exporters in DevOps Config to export config data from all or part of the data model as
input for further deployment or provisioning activities.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: sn_devops_config.admin

Procedure
1. In the Admin view, select the Exporters tab.
2. Select a default exporter or select New to create a custom exporter.
See Create a custom exporter for details.
3. Enter the exporter name and description and then click Confirm.
Related topics
Default DevOps Config exporters

Configure your pipeline in DevOps Config
Configure your Argo CD, Azure DevOps, or Jenkins pipeline with DevOps Config to interact with
your data model.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
These orchestration tool integrations are included with the DevOps Config base system.
• Argo CD
• Azure DevOps
• Jenkins

Required plugins
Argo CD
Visit the Ancillary Software section on the ServiceNow Store
website to download
the Argo CD plugin for ServiceNow DevOps to integrate your Argo CD pipeline with
the ServiceNow DevOps Config application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
Azure DevOps
Use the ServiceNow DevOps extension for Azure DevOps on Visual Studio
Marketplace
to integrate your Azure pipeline with the ServiceNow DevOps Config
application.
Jenkins
Visit the Ancillary Software section on the ServiceNow Store
website to download
the Jenkins plugin for ServiceNow DevOps to integrate your Jenkins pipeline with
the ServiceNow DevOps Config application.

Run validation in DevOps Config
After you have installed and configured DevOps Config, validate the configuration and review the
results.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: sn_devops_config.admin

About this task

Having the policy validation action at the deployable level and the publish action at the snapshot
level protects against non-compliant changes in your production environment.
You can also validate further by mapping more policies to a deployable and validating against
your latest snapshot.

Procedure
1. Open your application and in the Snapshots tab, and select the snapshot created from the
changeset created.
2. Select Validate and confirm.
All policies that are mapped statically and dynamically are run to validate the snapshot.
3. Review compliance results.
Any future snapshots generated are automatically validated against the configured statically
mapped policies. Dynamic mappings are determined at runtime based on the latest conditions
matching the deployable.

Fix the data that caused a validation failure
When a policy that executes against a deployable snapshot fails or generates an error or
warning, the policy identifies the offending CDI and the reason for the failure. While working in a
changeset, you can use the Validation failures panel to navigate directly to the offending CDI so
you can correct the issue.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: sn_devops_config.admin

About this task

The Validation failures panel appears on the application tab whenever validation fails for
any deployable in the application. The panel displays only snapshots with error, warning, or
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
execution failure status for validation. Snapshots with not validated or in progress status do not
appear.

Important: The data changes and status settings that you update in this procedure apply
only to the selected changeset. For that reason, be sure to coordinate your work with others
on your team.

Procedure
1. While working in a changeset, select the validation failures icon ( ) to view the list of
snapshots from the application that failed validation.
In this example, the snapshots for all three deployables in the application failed validation in
some way (error, warning, or execution failure).

2. Navigate to the failure.
a. Select a snapshot to view the cards.
Each card represents a policy validation failure. Use the filter to find a card with a particular
validation result. If another user has worked on the issue, you might also filter on a resolution
state (resolved, unresolved, or ignored).
b. Select a card to open the editor directly to the problematic CDI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
3. Review the data and perform the necessary updates.
4. When you finish working on the data, update the status of the error.
Open the more actions more actions icon (

) to update the status of the error.

◦ Unresolved: This status is the initial status for a validation error. Leave this status if you are
unable to repair the data. You might work on the issue with another user.
◦ Resolved: You have fixed the error. Be sure to commit the changeset and validate the data to
ensure that the data is correct.
◦ Ignored: This status indicates that no further actions will be taken.

CDM system properties
CDM system properties.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

CDM system properties
CDM system properties
Property

sn_cdm.variable_regex

Description

The regex used to capture variables
referenced in a CDI value. With this value, the
syntax to use a variable is:
@@name@@
Default: @@([^@].*?)@@

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
CDM system properties (continued)
Property

sn_cdm.cdm_queue_request_expiry_time_ms

Description

The maximum time for a process to be
available for processing before it is marked as
expired.
Default: 900000 ms (15 min)

sn_cdm.cdm_validation_timeout_ms

The maximum time limit for a validation of a
snapshot.
Default: 900000 ms (15 min)

sn_cdm.default_node_identifier_keys

The keys used to identify node objects within
an array node.
Default: (none)

sn_cdm.execute_exporter_async_for_standard_request
If set to false, exporter requests skip the
request queue and their output is returned
immediately. Changing this setting may
decrease system performance if there are
many export requests.
Default: true
sn_cdm.exception_enabled

If set to false, the control exception
functionality is disabled regardless of other
policy settings.
Default: true

sn_cdm.node_name_allowed_character_regex

The regex used to validate the name of a node.
Default allowed characters are:
0-9, A-Z, a-z, _, -, ., %, $,
whitespace, :, ✅
Default: [\\w-.% :$✅]

sn_cdm.app_name_allowed_character_regex

The regex used to validate the name of an
application. Default allowed characters are:
0-9, A-Z, a-z, _,-, .,
whitespace, |, :, [], (), %,
$, ✅
Default: [\\w-.%$✅() :|[\\]]

sn_cdm.snapshot_name_allowed_character_regex
The regex used to validate the name of a
snapshot. Default allowed characters are:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
CDM system properties (continued)
Property

Description

0-9, A-Z, a-z, _,-, ., %
Default: [\\w-.%]
sn_cdm.exporter_name_allowed_character_regex
The regex used to validate the name of an
exporter. Default allowed characters are:
0-9, A-Z, a-z, _,-, .,%
Default: [\\w-.%]
sn_cdm.exporter_argument_name_allowed_character_regex
The regex used to validate the name of an
exporter argument. Default allowed characters
are:
0-9, A-Z, a-z, _
Default: [\\w]
sn_cdm.cdm_max_allowed_open_changesets

The maximum allowed number of open
changesets.
Default: 10

sn_cdm.preventative_duplicate_node_name_check
If set to true, validating for node name
duplication will check name usage across all
other open changesets as well (as opposed to
limiting the check within the changeset).
Default: false
sn_cdm.max_allowed_upload_file_size

The maximum payload size for upload of
config data via the REST API.
Default: 5 MB

sn_cdm.max_allowed_cdi_per_application

The maximum number of CDIs allowed per
application. If the number is exceeded, further
upload of config data via the REST APIs is
blocked.
Increasing this limit may significantly decrease
performance and break UI functionality. If
you change the value, you must recalculate
the CDI usage data by running the following
command:
new
sn_cdm.CdmApplicationManager(

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
CDM system properties (continued)
Property

Description

).updateCdiCountOfApplications
();
Default: 100000
sn_cdm.max_allowed_cdi_per_deployable

The maximum number of CDIs allowed per
deployable. If the number is exceeded, further
upload of config data via the REST APIs is
blocked.
Increasing this limit may significantly decrease
performance and break UI functionality. If
you change the value, you must recalculate
the CDI usage data by running the following
command:
new
sn_cdm.CdmApplicationManager(
).updateCdiCountOfApplications
();
Default: 10000

sn_cdm.max_nodes_in_memory

The maximum number of nodes that can
be supported when using the queryTree
method of CdmQuery.
Default: 10000

sn_cdm.reserved_node_names

Names that cannot be used for nodes.
Default: vars, collections, deployables,
components

sn_cdm.max_allowed_cdi_per_shared_component
The maximum number of CDIs allowed per
shared component. If the number is exceeded,
further upload of config data via the REST APIs
is blocked.
Increasing this limit may significantly decrease
performance and break UI functionality. If
you change the value, you must recalculate
the CDI usage data by running the following
command:
new
sn_cdm.CdmApplicationManager(
).updateCdiCountOfApplications
();
Default: 10000
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
CDM system properties (continued)
Property

sn_cdm.max_allowed_cdi_per_library

Description

The maximum number of CDIs allowed per
shared component library. If the number is
exceeded, further upload of config data via the
REST APIs is blocked.
Increasing this limit may significantly decrease
performance and break UI functionality. If
you change the value, you must recalculate
the CDI usage data by running the following
command:
new
sn_cdm.CdmApplicationManager(
).updateCdiCountOfApplications
();
Default: 10000

sn_cdm.attachment.display_mime_types

File types for which the content preview is
available on the Preview pane.
You can add additional MIME types to display
in the Preview pane. However, the preview is
not available for binary file MIME types, such
as audio, image, and video.
Default: text/yaml,text/
css,text/csv,text/html,text/
javascript,text/plain,text/
richtext,text/x-vcard,text/
x-vcalendar,application/
xml,application/
javascript,application/json

Integrating your pipeline in DevOps Config
Integrate your Argo CD, Azure DevOps, or Jenkins pipeline with DevOps Config to interact with
your data model.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Validate application and infrastructure details against your organization policies, and commit
config data the same way software code is committed to a code repository.
Configuration data is pulled in your CI/CD pipeline to deploy not just a code for an application,
but all the related configuration with that code as well.

Note: Pipeline integration requires plugin installation. See Configure your pipeline in
DevOps Config for installation requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
DevOps Config and DevOps Change Acceleration
With the DevOps Change Velocity change control feature, a change request is created as part of
the pipeline for DevOps Config configuration changes.
Set up change acceleration in your pipeline.
Argo CD
Azure DevOps
Using the ServiceNow-DevOps-Server-Change-Acceleration Azure
DevOps task.
Jenkins
Using the snDevOpsChange Jenkins action.
In DevOps Change Velocity, navigate to DevOps > Orchestrate > Pipeline Change Requests to
view and approve DevOps change requests created by DevOps Config changes.
See Accelerating your DevOps change process for more information regarding the DevOps
Change Acceleration feature.

Azure DevOps pipeline tasks
Use these tasks in your Azure DevOps pipeline to interact with the DevOps Config data model.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
These tasks are provided to create a specific pipeline definition to achieve your goal.
• ServiceNow-DevOps-Config-Agent-Upload-Config
Upload config data to a deployable in the data model via Agent Job.
• ServiceNow-DevOps-Config-Agent-Get-Snapshot
Get the snapshots for an application.
• ServiceNow-DevOps-Config-Agent-Get-Snapshot-Name
Extract the name of a snapshot.
• ServiceNow-DevOps-Config-Agent-Publish-Snapshot
Publish a snapshot of your configuration data.
• ServiceNow-DevOps-Config-Agent-Export-Snapshot
Export a subset of your configuration data.
• ServiceNow-DevOps-Config-Agent-Register-Pipeline
Register a changeset and/or snapshot to a pipeline execution.
• ServiceNow-DevOps-Config-Agent-Validate-Snapshot
Validate configuration data against organization policies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
• ServiceNow-DevOps-Server-Change-Acceleration
Create a change request as part of the pipeline.

ServiceNow-DevOps-Config-Agent-Upload-Config
Task to upload a configuration file to a given location within an application data model.
This task is meant to be used in an iterative nature for all config files the user chooses to upload
to their application data model during the pipeline run.

Note: Pre-uploaded files must be in a compatible format.
Input variables

connectedServiceName

Specifies the DevOps pipeline endpoint
connection.

applicationName

Specifies the application to where
config data is uploaded.

deployableName

Specifies the deployable for the
application (required if target is
deployable).

uploadTarget

Specifies the data model target to
where config data is uploaded (for
example, component, collection,
deployable).

collectionName

(Optional) Specifies the collection to
where config data will be uploaded
(required if target is collection).

namePath

Specifies the data model path to where
config data is uploaded.

Note: When uploading to a vars
folder, you must start the name
path with "vars/" to specifiy the
variable folder path.
configFilePath

Specifies the source folder from
which config data is uploaded to the
component or deployable path in the
data model.
Empty is the root of the repo.
Use variables if files are not
in the repo (for example,
$(agent.builddirectory)).

convertPath

(Optional) Specifies whether to
preserve the directory structure of the
configuration files (with respect to the
workspace), and convert the directory to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


<!-- page 1318 -->
paths within the data model. Default is
false.
dataFormat

changesetNumber

Specifies the data format of the
config_file (for example, JSON, YAML,
XML, etc.).
(Optional) Specifies the (open)
changeset to which this upload activity
is associated. If not provided, a new
changeset is created.

Note: Only used for multiple
upload scenarios.
autocommit

Specifies whether to commit
configuration data after upload (true/
false). Default is false.

autoValidate

Specifies whether to validate
configuration data during commit (true/
false). Default is true.

Output variable

changesetNumber

Changeset record created/committed
during the upload.
Provide a name to the task so it can be
used later in the pipeline (per example,
componentUpload).

Example - Upload config
-task: ServiceNow-DevOps-Config-Agent-Upload-Config
name: componentUpload
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'component'
namePath: 'wep-api-v1.0'
configFilePath: 'k8s/helm/values.yml'
dataFormat: 'yaml'
autoCommit: true
autoValidate: true
Example - Multiple uploads (component)
You can call the upload task more than once to upload configuration data in
different file formats from different locations, while still keeping the uploads part of
one changeset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
• In the first upload, name the task so the changesetNumber output variable can be
reused in subsequent uploads.
YAML file upload:
-task: ServiceNow-DevOps-Config-Agent-Upload-Config
name: componentUpload
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'component'
namePath: 'wep-api-v1.0'
configFilePath: 'k8s/helm/values.yml'
dataFormat: 'yaml'
autoCommit: false
autoValidate: false
• In subsequent uploads, reference the changesetNumber output variable from the
first upload as an input variable.
JSON file upload:
-task: ServiceNow-DevOps-Config-Agent-Upload-Config
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'component'
namePath: 'wep-api-v1.0'
configFilePath: 'featureToggles/set1.json'
dataFormat: 'json'
autoCommit: true
autoValidate: true
changesetNumber:
'$(componentUpload.changesetNumber)'
Example - Multiple uploads (collection and vars)
You can call the upload task more than once to upload configuration data in
different file formats from different locations, while still keeping the uploads part of
one changeset.
• In the first upload, make sure to name the task so the changesetNumber output
variable can be reused in subsequent uploads.
XML file upload:
-task: ServiceNow-DevOps-Config-Agent-Upload-Config
name: componentUpload
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'collection'
collectionName: 'release-1.0'
namePath: 'v1-common-configs'
configFilePath: 'infra/v1/config.xml'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
dataFormat: 'xml'
autoCommit: false
autoValidate: false
• In subsequent uploads, reference the changesetNumber output variable from the
first upload as an input.
JSON file upload:
-task: ServiceNow-DevOps-Config-Agent-Upload-Config
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'deployable'
deployableName: 'Production-EMEA'
namePath: 'vars/dbSettings'
configFilePath: 'infra/prodc/dbSettings.json'
dataFormat: 'json'
autoCommit: true
autoValidate: true
changesetNumber:
'$(componentUpload.changesetNumber)'

Note: To upload to a variable folder, uploadTarget must be set to
deployable, and the correct values must be set for deployableName and
changesetNumber.

ServiceNow-DevOps-Config-Agent-Get-Snapshot
This task is intended to be used in different scenarios:
• Retrieve a specific snapshot.
Following the CD flow, a specific snapshot is retrieved so it can be published and then
exported to be consumed downstream (for example, to provision out infrastructure or
application).
• Retrieve latest validated snapshot.
The latest validated snapshot is retrieved for the given application-deployable combination.
• Retrieve all snapshots for any impacted deployables.
When config files are uploaded to an application data model, the system will create snapshots
for any deployables determined to be impacted by the upload. Following along the CI flow,
assuming the last Upload call had validation enabled, the next step would be to iterate through
the list of snapshots and ensure they all passed validation.
• Retrieve the latest snapshots for a deployable of an application in the event an upload does
not generate any snapshots.
A set of config data is available to deploy to an environment for an application-deployablechangeset combination when no configuration changes are made.
• Show policy validation results in a pipeline execution.
View policy validation results as test results on the ADO build tests results page, including
compliant with exception, when getting a snapshot.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
Input variables

connectedServiceName

Specifies the DevOps pipeline endpoint
connection (defined in the service
connection settings of the project).

applicationName

Specifies the application to upload
config data to, or export data from.

deployableName

(Optional) Specifies the deployable (per
the specified application) on which to
get the latest snapshot data.

changesetNumber

(Optional) Specifies the changeset ID
for the applicable set of config changes.

isValidated

(Optional) Specifies whether to return
only snapshots that are passed, or
passed with exception (true/false).
Default is true.

continueWithLatest

(Optional) Specifies whether to
return the latest snapshot per the
applicationName-deployableName-changesetNumbe
combination if no snapshots are
generated (true/false). Default is false.

Output variable

snapshotObject

A JSON object containing the
requested snapshots.
Provide a name to the task so it can be
used later in the pipeline (per example,
getSnapshot).

Example - Specific snapshot
-task: ServiceNow-DevOps-Config-Agent-Get-Snapshot
name: getSnapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production'
changesetNumber: 'Chset-16'
isValidated: true
continueWithLatest: true
Example - Latest validated snapshots (for a given application-deployable combination)
-task: ServiceNow-DevOps-Config-Agent-Get-Snapshot
name: getSnapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
deployableName: 'Production'
isValidated: true
Example - All changeset snapshots
-task: ServiceNow-DevOps-Config-Agent-Get-Snapshot
name: getSnapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
changesetNumber: 'Chset-16'
Example - Show policy validation results
Assign a variable to the path of the file that contains the snapshot validation
results generated during the ServiceNow-DevOps-Config-Agent-GetSnapshot task.
To load the snapshot validation results in your pipeline execution, you need to
leverage the ADO native Publish Test Results v2 task , using the variable as an
input.

stages:
- stage: Two
jobs:
- job: A
variables:
- name: validationResultsPath
value:
1/TEST_DATA_$(Build.DefinitionName)_$(Build.BuildNumbe
r)_*.xml
steps:
- task: PublishTestResults@2
inputs:
testResultsFormat: 'JUnit'
testResultsFiles:
'$(validationResultsPath)'
searchFolder: '$(System.WorkFolder)'

ServiceNow-DevOps-Config-Agent-Get-Snapshot-Name
This task is used as a follow-up from the ServiceNow-DevOps-Config-Agent-GetSnapshot-Name task to get the snapshot name from a particular snapshot. From here, the
snapshot name can be used as an input to a downstream task, like publishing the snapshot.
Input variables

deployableName

Specifies the deployable to get the
snapshot object that was returned
from the ServiceNow-DevOpsConfig-Agent-Get-Snapshot
task.

script

Specifies the script to extract the
snapshot name from the snapshot
object.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
Output variable

snapshotName

The snapshot name for the deployable.
Provide a name to the task so it can be
used later in the pipeline (per example,
getSnapshotName).

Example - Get snapshot name
Use this script to extract the snapshot name retrieved from the ServiceNowDevOps-Config-Agent-Get-Snapshot task.
-task: ServiceNow-DevOps-Config-Agent-Get-Snapshot-Name
inputs:
deployableName: 'PRD'
script: |
function run() {
let name;
let deployableName = process.argv[2];
let jsonObj = $(getSnapshot.snapshotObjects);
let size = jsonObj.result.length;
for(let i=0; i<size; i++) {
obj = jsonObj.result[i];
if(obj[“deployable_id.name”].toLowerCase() ==
deployableName) {
name = obj.name;
console.log(name);
}
}
}
run();
Example - Get snapshot name used with get snapshot
Call the ServiceNow-DevOps-Config-Agent-Get-Snapshot-Name task
right after the ServiceNow-DevOps-Config-Agent-Get-Snapshot task
to return the snapshot name.
Get snapshots (returns a JSON object containing impacted snapshots):
-stage: Two
jobs:
-job: B
steps:
-task:
ServiceNow-DevOps-Config-Agent-Get-Snapshot
name: getSnapshot
inputs:
connectedServiceName:
'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-2'
changesetNumber: 'Chset-16'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
Get snapshot name (returns snapshot name for a specific deployable):
-stage: Two
jobs:
- job: B
steps:
- task:
ServiceNow-DevOps-Config-Agent-Get-Snapshot
name: getSnapshotName
inputs:
deployableName: 'Production-2'
script:|
function run() {
let name;
let deployableName = process.argv[2];
let jsonObj =
$(getSnapshot.snapshotObjects);
let size = jsonObj.result.length;
for(let i=0; i<size ;i++) {
obj = jsonObj.result[i];
if(obj["deployable_id.name"].toLowerCase() ==
deployableName) {
name = obj.name;
console.log(name); // This standard
output of inline script is given as the task output
}
}
}
run();
Use returned snapshot name in the pipeline (for example, publish):
-stage: Three
jobs:
-job: C
variables:
varSnapshotName:
$[stageDependencies.Two.B.outputs['getSnapshotName.sna
pshotName']]
steps:
-task:
ServiceNow-DevOps-Config-Agent-Publish-Snapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-2'
snapshotName: '$(varSnapshotName)'

ServiceNow-DevOps-Config-Agent-Publish-Snapshot
This task publishes a snapshot for the given application and deployable. From here, the
snapshot can be consumed through the Export process.
Input variables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
connectedServiceName

Specifies the ServiceNow endpoint
connection.

applicationName

Specifies the application to publish.

deployableName

Specifies the deployable for the
application to publish config data.

snapshotName

Specifies the name of the snapshot to
publish.

Output variable
Not applicable (returns true if successful, otherwise false).
Example
-task: ServiceNow-DevOps-Config-Agent-Publish-Snapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-2'
snapshotName: 'Production-v23.dpl'

ServiceNow-DevOps-Config-Agent-Export-Snapshot
This task exports a snapshot for the given application and deployable. Specify the exporter,
relevant exporter arguments, the export format (for example, YAML, JSON, etc.), and output
location for the exported config data. From here, the config data can be used directly as an input
for a deployment or provisioning tool downstream in the pipeline.
Input variables

connectedServiceName

Specifies the ServiceNow endpoint
connection.

applicationName

Specifies the application from which to
publish.

deployableName

Specifies the deployable for the
application from which to export config
data.

snapshotName

Specifies the name of the snapshot
from which to export config data.

exporterName

Specifies the exporter to apply to the
snapshot (for example, UniqueCDIs).

args

(Optional) Specifies arguments to be
used along with the exporter.

exportFormat

Specifies the format to export the
snapshot data (for example, INI, YAML,
PROPS).

saveFile

Checks if file is to be saved to an Azure
repository (true/false). Default is false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
Note: Appropriate permission/
OAuth token access to script is
required.
Otherwise the export file is created in
the pipeline workspace directory.
Output variable
Not applicable (returns true if successful, otherwise false).
Example
-task: ServiceNow-DevOps-Config-Agent-Export-Snapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-2'
exporterName: 'returnAllData-nowPreview'
dataFormat: 'yaml'
args: ''
snapshotName: 'Production-v23.dpl'
saveFile: true
fileName:
'ExporterOutput/ExportData_$(build.definitionName)_$(b
uild.buildNumber).yaml'

ServiceNow-DevOps-Config-Agent-Register-Pipeline
This task ties a changeset and a snapshot to the pipeline so that it can be tracked during the
pipeline execution. In DevOps Change Velocity, this is shown in the Pipeline UI.
Input variables

connectedServiceName

Specifies the DevOps pipeline endpoint
connection.

applicationName

Specifies the application name.

changesetNumber

(Optional) Specifies the ID of the
changeset to associate to the pipeline
execution.

snapshotName

(Optional) Specifies the name of the
snapshot to associate to the pipeline
execution.

Output variable
Not applicable (returns true if successful, otherwise false).
Example
-task: ServiceNow-DevOps-Config-Agent-Publish-Snapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
changesetNumber: 'Changeset-143'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
ServiceNow-DevOps-Config-Agent-Validate-Snapshot
Validate config data against your organization policies.
Input variables

connectedServiceName

Specifies the ServiceNow endpoint
connection.

applicationName

Specifies the application to validate.

deployableName

Specifies the deployable (per the
specified application) to validate.

snapshotName

(Optional) Specifies the name of the
snapshot to validate.

showResults

(Optional) Specifies to show validation
results in the console log.

Output variable
Not applicable (returns true if successful, otherwise false).
Example
-task: ServiceNow-DevOps-Config-Agent-Validate-Snapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-2'
snapshotName: ''
showResults: false

ServiceNow-DevOps-Server-Change-Acceleration
This task is required for agentless (server) jobs to automatically create a change request in
ServiceNow Change Management as part of the Azure DevOps pipeline.
In DevOps Config, to associate multiple snapshots of the same changeset to a change request,
use snapshot name and application name to track specific configuration data for a given
application service.
See Accelerating your DevOps change process for more information regarding the DevOps
Change Acceleration feature.
Input variables (related to DevOps Config)

connectedServiceName

Specifies the DevOps pipeline endpoint
connection.

applicationName

Application associated with the
snapshot being attached to the change
request.

snapshotName

Name of the snapshot to attach to the
change request.

Example
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
-stage: ChangeRequest
jobs:
-job: 'changerequestjob'
pool: server
steps:
-task:
ServiceNow-DevOps-Server-Change-Acceleration
inputs:
connectedServiceName:
'MyServiceNowInstance'
applicationName: 'PaymentDemo'
snapshotName: 'Production-v23.dpl'

YAML pipeline example
trigger:
branches:
include:
- none
stages:
- stage: One
displayName: Upload Configuration Data
pool:
vmImage: ubuntu-latest
jobs:
- job: A
displayName: Upload
steps:
- task: ServiceNow-DevOps-Config-Agent-Upload-Config@1
name: componentUpload
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
uploadTarget: 'component'
configFile: 'k8s/helm/values.yml'
namePath: 'processor-api-v1.0'
dataFormat: 'yaml'
autoValidate: true
autoCommit: true
convertPath: true
- stage: Two
displayName: Get Latest Snapshot
pool:
vmImage: ubuntu-latest
jobs:
- job: B
displayName: Get Snapshot
variables:
- name: varChangesetNumber
value:
$[stageDependencies.One.A.outputs['componentUpload.changesetNum
ber'] ]
- name: varConfigValidationResults
value:
1/TEST_DATA_$(Build.DefinitionName)_$(Build.BuildNumber)_*.xml
steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
- task: ServiceNow-DevOps-Config-Agent-Get-Snapshot@1
name: getSnapshot
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-EMEA'
changeSetNumber: '$(varChangesetNumber)'
continueWithLatest: true
- task: ServiceNow-DevOps-Config-Agent-Get-Snapshot-Name@1
name: getSnapshotName
inputs:
deployableName: 'Production-EMEA'
script: "function run() {\n let name;\n
let deployableName = process.argv[2]; \n let
jsonObj = $(getSnapshot.snapshotObjects);\n let
size = jsonObj.result.length;\n for(let i=0;
i<size ;i++) {\n
obj = jsonObj.result[i];\n
if(obj[\"deployable_id.name\"].toLowerCase() == deployableName)
{\n
name = obj.name;\n
console.log(name);
// This
standard output of inline script is given as the task output\n
}\n }\n}\nrun();\n"
- task: PublishTestResults@2
inputs:
testResultsFormat: ‘JUnit’
testResultsFiles: ‘$(varConfigValidationResults)’
searchFolder: ‘$(System.WorkFolder)’
- task: ServiceNow-DevOps-Config-Agent-Register-Pipeline@1
inputs:
connectedServiceName: 'MyServiceNowInstance'
snapshotName: '$(getSnapshotName.snapshotName)'
applicationName: 'PaymentDemo'
- stage: Three
displayName: Publish Snapshot
pool:
vmImage: ubuntu-latest
jobs:
- job: C
displayName: Publish
variables:
- name: varSnapshotName
value:
$[stageDependencies.Two.B.outputs['getSnapshotName.snapshotName
']]
steps:
- task: ServiceNow-DevOps-Config-Agent-Publish-Snapshot@1
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-EMEA'
snapshotName: '$(varSnapshotName)'
- stage: ChangeRequest
dependsOn:
- Two
- Three
jobs:
- job: 'changerequestjob'
timeoutInMinutes: 2
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1329


<!-- page 1330 -->
pool:
name: server
variables:
- name: varSnapshotName
value:
$[stageDependencies.Two.B.outputs['getSnapshotName.snapshotName
']]
steps:
- task: ServiceNow-DevOps-Server-Change-Acceleration@1
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
snapshotName: '$(varSnapshotName)'
- stage: Four
displayName: Export Snapshot
dependsOn:
- Two
- Three
- ChangeRequest
pool:
vmImage: ubuntu-latest
variables:
- name: varSnapshotName
value:
$[stageDependencies.Two.B.outputs['getSnapshotName.snapshotName
']]
jobs:
- job: D
displayName: Export
steps:
- task: ServiceNow-DevOps-Config-Agent-Export-Snapshot@1
inputs:
connectedServiceName: 'MyServiceNowInstance'
applicationName: 'PaymentDemo'
deployableName: 'Production-EMEA'
exporterName: 'returnAllData-now'
dataFormat: 'yaml'
snapshotName: '$(varSnapshotName)'
saveFile: true
fileName:
'ExportData_$(build.definitionName)_$(build.buildNumber).yaml'
- task: CmdLine@2
inputs:
script: |
echo Write your commands here
echo Hello world
tree $(Pipeline.Workspace)

Jenkins pipeline actions
Use these actions in your Jenkins pipeline to interact with the DevOps Config data model.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Jenkins scripted and declarative piplines are supported.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
These actions are provided to create a specific pipeline definition to achieve your goal. Add a
command to your Jenkins file to perform these actions.
• snDevOpsConfig
Combined action to upload, validate, and publish config data.
• snDevOpsConfigUpload
Upload config data to DevOps Config via Agent Job.
• snDevOpsConfigGetSnapshots
Retrieve snapshots for a specific deployable, or all impacted deployables.
• snDevOpsConfigPublish
Publish a snapshot for the given application and deployable.
• snDevOpsConfigExport
Export a snapshot for a given application and deployable.
• snDevOpsConfigRegisterPipeline
Tie a changeset and/or snapshot to a pipeline execution.
• snDevOpsConfigValidate
Validate config data against your organization policies.
• snDevOpsChange
Create a change request with associated snapshot attached.

snDevOpsConfig
Upload, validate, and publish config data changes in one step.
This action combines snDevOpsConfigUpload, snDevOpsConfigGetSnapshots, and
snDevOpsConfigRegisterPipeline actions into one action, rather than having to execute each
action separately.
Input variables

configFile

Specifies the configuration data file to
upload to the component or deployable
path in the data model.

applicationName

Specifies the application to where
config data will be uploaded.

target

Specifies the data model target to
where config data will be uploaded (for
example, component, collection,
deployable).

collectionName

(Optional) Name of the collection
to upload to (required if target is
collection).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
deployableName

namePath

(Optional) Name of the deployable
to upload to (required if target is
deployable).
Specifies the name path in the data
model to where config data will be
uploaded.

Note: When uploading to a vars
folder, you must start the name
path with "vars/" to specifiy the
variable folder path.
dataFormat

Specifies the data format of the config
file (for example, JSON, YAML, XML,
etc.)

autoCommit

Specifies whether to commit
configuration data after upload (true/
false). Default is true.

autoValidate

Specifies whether to validate
configuration data during commit (true/
false). Default is true.

autoPublish

Specifies whether to publish the
configuration data after validation (true/
false). Default is true.

changesetNumber

(Optional) Specifies the (open)
changeset to which this upload activity
is associated. If not provided, a new
changeset is created.

Note: Only used for multiple
upload scenarios.
markFailed

(Optional) Fail the pipeline in the event
that the validation attempt failed (due to
a backend issue).

showResults

(Optional) Show validation results in the
Jenkins job console log.

continueWithLatest

(Optional) Specifies whether to
return the latest snapshot per the
applicatioName-deployableName-changesetNumber
combination if no snapshots are
generated (true/false). Default is false.

Output
• If successful, a snapshot or set of snapshots.
• If failure, an API/backend failure message is shown.
Example

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


<!-- page 1333 -->
• Input:

snapshotObj = snDevOpsConfig(
applicationName: "PaymentDemo",
configFile:
"config/application/Collection/Collection2/*.json",
target: "collection",
collectionName: "release-1.0",
namePath: "settings/infrastructure/database",
dataFormat: "json",
autoCommit: 'true',
autoValidate: 'true',
autoPublish: 'true',
continueWithLatest: 'true',
markFailed: 'true',
showResults: 'false'
)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
echo"*************************\n ${snapshotObj}"

• Output
Example - collection

Note: When uploading to a collection, the collectionName argument is
required.

snDevOpsConfig(
applicationName: 'PaymentDemo',
target: 'collection',
collectionName: 'release-1.0',
namePath: 'web-api-v1.0',
configFile: 'k8s/helm/*.yml',
dataFormat: 'yaml',
autoCommit: 'true',
autoValidate: 'true',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
autoPublish: 'true'
)
Example - deployable

Note: When uploading to a deployable, the deployableName argument is
required.

snDevOpsConfig(
applicationName: 'PaymentDemo',
target: 'deployable',
deployableName: 'Production',
namePath: 'web-api-v1.0',
configFile: 'k8s/helm/*.yml',
dataFormat: 'yaml',
autoCommit: 'true',
autoValidate: 'true',
autoPublish: 'true'
)
Multiple uploads in one commit
To upload configuration data from different locations, or to upload a set of data
to multiple targets (for example, one component, one deployable) tracked as a
single commit to your data model, you can call the snDevOpsConfigUpload
action as many times as necessary for the first set of uploads, then call the
snDevOpsConfig action for the final upload.​
Here's an example.

• In the first upload, create a variable (for example, $changeset), and assign the
return value of the step to it so it can be reused in subsequent uploads.
Upload 1 - XML file to component:
$changeset = snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'component',
namePath: 'paymentService-v1.0',
configFile: 'infra/v1/config.xml',
dataFormat: 'xml',
autoCommit: 'false',
autoValidate: 'false',
autoPublish: 'false'
)
• In subsequent uploads (and final upload), use the variable as an input.
Upload 2 - JSON file to vars folder of deployable:
snDevOpsConfig(
applicationName: 'PaymentDemo',
target: 'deployable',
deployableName: 'Production',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
namePath: 'vars/dbSettings',
configFile: 'infra/prod/dbConfig.json',
dataFormat: 'json',
changesetNumber: ”${changeset}”,
autoCommit: 'false',
autoValidate: 'false',
autoPublish: 'false',
continueWithLatest: 'true'
)
Upload multiple data formats
To upload configuration data in different file formats, you can call the
snDevOpsConfig action with these specifications.
• Ensure the configFile argument is using a wildcard in the path.
• Do not specify the dataFormat argument.
Here's an example.
• Let's say we have these config files.

• This is how to upload the config files using snDevOpsConfig.

snDevOpsConfig(
applicationName: 'PaymentDemo',
target: 'component',
namePath: 'paymentService-v1.0',
configFile: 'infra/v1/*',
autoCommit: 'true',
autoValidate: 'true',
autoPublish: 'true'
)

snDevOpsConfigUpload
This action uploads a configuration file to a given location within an application data model.
It is meant to be used in an iterative nature for all config files to upload to the application data
model during the pipeline run.
Supports:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
• Upload to:
◦ A component, collection, or deployable.
◦ The variable (vars) folder of a component, collection, or deployable.
• Regex pattern for config file input.
• Ability to be called multiple times in the same pipeline.
Input variables

configFile

Specifies the configuration data file to
upload to the component or deployable
path in the data model.

applicationName

Specifies the application to where
config data will be uploaded.

target

Specifies the data model target to
where config data will be uploaded (for
example, component, collection,
deployable).

collectionName

(Optional) Name of the collection
to upload to (required if target is
collection).

deployableName

Name of the deployable to upload to
(required if target is deployable).

namePath

Specifies the name path in the data
model to where config data will be
uploaded.

Note: When uploading to a vars
folder, you must start the name
path with "vars/" to specifiy the
variable folder path.
dataFormat

Specifies the data format of the config
file (for example, JSON, YAML, XML,
etc.)

convertPath

(Optional) Specifies whether to
preserve the directory structure of
configuration files (with respect to the
workspace) and convert the directory to
paths within the data model.

changesetNumber

(Optional) Specifies the (open)
changeset to which this upload activity
is associated. If not provided, a new
changeset is created.

Note: Only used for multiple
upload scenarios.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
autoCommit

Specifies whether to commit
configuration data after upload (true/
false). Default is false.

autoValidate

Specifies whether to validate
configuration data during commit (true/
false). Default is false.

Output variable

changesetNumber

(Optional) Specifies the (open)
changeset to which this upload activity
is associated.
If a changeset number is not provided, a
new changeset is created.

Example
• Input:
Here is an example of the snDevOpsConfigUpload action. For the sake of
illustration, we’ll assign the response to a variable, changeSetId, which could
be echoed out to our console log for debugging scenarios.

changeSetId = snDevOpsConfigUpload(
applicationName: "PaymentDemo",
target: 'component',
namePath: "web-api-v1.0",
configFile: "k8s/helm/values.yml",
dataFormat: "json",
autoCommit: 'true',
autoValidate: 'true'
)
echo "Changeset: $changeSetId created"
• Output:
In addition to the data being uploaded to our data model in DevOps Config, the
output would look something like this (using the Blue Ocean plugin to visualize
the console output).

Example - Multiple uploads (component)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
You can call the upload action more than once to upload configuration data in
different file formats from different locations, while still keeping the uploads part of
one changeset.
• In the first upload, name the action so the changesetNumber output variable can
be reused in subsequent uploads.
YAML file upload:
$changeset = snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'component',
namePath: 'wep-api-v1.0',
configFile: 'k8s/helm/values.yml',
dataFormat: 'yaml',
autoCommit: 'false',
autoValidate: 'false'
)
• In subsequent uploads, reference the changesetNumber output variable from the
first upload as an input variable.
3 JSON files upload:
snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'component',
namePath: 'wep-api-v1.0',
configFile: 'infra/*.json',
dataFormat: 'json',
autoCommit: 'false',
autoValidate: 'false',
changesetNumber: ”${changeset}”
)
• In the final call, in addition to referencing the changesetNumber output variable
from the first upload as an input variable, set autoCommit and autoValidate to
true.
INI file upload:
snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'component',
namePath: 'wep-api-v1.0',
configFile: 'featureToggles/set1.ini',
dataFormat: 'ini',
autoCommit: 'true',
autoValidate: 'true',
changesetNumber: ”${changeset}”
)
Example - Multiple uploads (collection and vars)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


<!-- page 1340 -->
You can call the upload action more than once to upload configuration data in
different file formats from different locations, while still keeping the uploads part of
one changeset.
• In the first upload, create a variable (for example, $changeset), and assign the
return value of the step to it so it can be reused in subsequent uploads.
XML file upload:
$changeset = snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'collection',
collectionName: 'release-v1.0',
namePath: 'v1-common-configs',
configFile: 'infra/v1/config.xml',
dataFormat: 'xml',
autoCommit: 'false',
autoValidate: 'false'
)
• In subsequent uploads, use the variable as an input.
JSON file upload:
snDevOpsConfigUpload(
applicationName: 'PaymentDemo',
target: 'deployable',
deployableName: 'Production',
namePath: 'vars/dbSettings',
configFile: 'infra/prod/dbConfig.json',
dataFormat: 'json',
autoCommit: 'true',
autoValidate: 'true',
changesetNumber: ”${changeset}”
)

Note: To upload to a variable folder, uploadTarget must be set to
deployable, and the correct values must be set for deployableName and
changesetNumber.

snDevOpsConfigGetSnapshots
This action is intended to be used in different scenarios:
• Retrieve all snapshots for any impacted deployables.
When config files are uploaded to an application data model, the system will create snapshots
for any deployables determined to be impacted by the upload. Following along the CI flow,
assuming the last Upload call had validation enabled, the next step would be to iterate through
the list of snapshots and ensure they all passed validation.
• Retrieve a specific snapshot.
Following the CD flow, a specific snapshot is retrieved so it can be published and then
exported to be consumed downstream (for example, to provision out infrastructure or
application).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
• Retrieve the latest snapshots for a deployable of an application in the event an upload does
not generate any snapshots.
A set of config data is available to deploy to an environment for an application-deployablechangeset combination when no configuration changes are made.
• Show policy validation results in a pipeline execution.
View policy validation results as test results on the Jenkins build tests results page, including
compliant with exception, when getting a snapshot.
Input definitions

applicationName

Specifies the application to upload
config data to or export data from.

deployableName

(Optional) Specifies the deployable
for the application on which to get the
latest snapshot data.

changesetNumber

(Optional) Specifies the changeset ID
for the set of config changes the user is
interested in.

isValidated

(Optional) Specifies whether to return
only snapshots that are passed, or
passed with exception (true/false).
Default is true.

continueWithLatest

(Optional) Specifies whether to
return the latest snapshot per the
applicatioName-deployableName-changesetNumber
combination if no snapshots are
generated (true/false). Default is false.

Output
• If successful, a snapshot or set of snapshots.
• If failure, an API/backend failure message is shown.
Example
• Specific snapshot (specified):

$snapshots = snDevOpsConfigGetSnapshots(
applicationName: 'PaymentDemo',
deployableName: 'Production',
changesetNumber: 'Chset-16',
isValidated: 'true',
continueWithLatest: 'true'
)
• Latest validated snapshot (returns the latest snapshot for application and
deployable combination):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
$snapshots = snDevOpsConfigGetSnapshots(
applicationName: 'PaymentDemo',
deployableName: 'Production',
isValidated: 'true'
)
• All changeset snapshots (returns all snapshots for application and deployable
combination):

$snapshots = snDevOpsConfigGetSnapshots(
applicationName: 'PaymentDemo',
changesetNumber: 'Chset-16'
)
• Show policy validation results in a pipeline execution.
1. Assign a variable to the path of the file that contains the snapshot validation
results generated during the snDevOpsConfigGetSnapshots action.
2. Call the JUnit action
to load the snapshot validation results into the pipeline
execution test section.
stage('Validate') {
steps {
script {
changeSetResults =
snDevOpsConfigGetSnapshots( … )
if (!changeSetResults) {
echo "No snapshots were created"
} else {
def changeSetResultsObject = readJSON text:
changeSetResults
changeSetResultsObject.each {
snapshotName = it.name
snapshotObject = it
}
// STEP 1
validationResultsPath =
"${snapshotName}_${currentBuild.projectName}_${curren
tBuild.number}.xml"
}
}
}
}
post {
always {
// STEP 2
junit testResults: "${validationResultsPath}",
skipPublishingChecks: true
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1342


<!-- page 1343 -->
snDevOpsConfigPublish
This action publishes a snapshot for the given application and deployable. From here, the
snapshot can be consumed through the Export process.
Input definitions

applicationName

Specifies the application from which to
publish config data.

deployableName

Specifies the deployable for the
application from which to publish config
data.

snapshotName

Specifies the name of the snapshot to
publish.

Output
• If successful, true.
• Otherwise false.
Example
snDevOpsConfigPublish(
applicationName: 'PaymentDemo',
deployableName: 'Production',
snapshotName: 'Production-v23.dpl',
)

snDevOpsConfigExport
This action exports a snapshot for the given application and deployable.
The user should specify the exporter, relevant exporter arguments, the export format (for
example, YAML, JSON, etc.), and output location for the exported config data.
From here, the config data can be used directly as an input for a deployment or provisioning tool
downstream in the pipeline.
Input arguments

applicationName

Specifies the application from which to
export data.

deployableName

Specifies the config deployable for the
application from which to export data.

snapshotName

(Optional) Specifies snapshot from
which to export data.
If a snapshot is not specified, the latest
snapshot for the deployable is used.

exporterName

Specifies the exporter to apply to the
snapshot (for example, UniqueCDIs).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1343


<!-- page 1344 -->
exporterArgs

(Optional) Specifies arguments to be
used along with the exporter.

exportFormat

Specifies the format to export the
snapshot data (For example, INI,
YAML, PROPS).

fileName

Specifies the file to export data to
(assumed to be in the workspace).
If a filename is not specified, a
concatenation of application name and
deployable name (plus file extension) is
used by default.

Output
• If successful, true.
• Otherwise false.
Example
snDevOpsConfigExport(
applicationName: 'PaymentDemo',
deployableName: 'Production',
snapshotName: 'Production-v23.dpl',
exporterFormat: 'yaml',
exporterName: 'returnAllData-now',
exporterArgs: '',
fileName: 'exported_file-Production-20220302.yml'
)

snDevOpsConfigRegisterPipeline
This action ties a changeset and/or snapshot to the pipeline so that it can be tracked during the
pipeline execution. In DevOps Change Velocity, this is shown in the Pipeline UI.
See Accelerating your DevOps change process for more information regarding the DevOps
Change Acceleration feature.
Input arguments

applicationName
changesetNumber

Specifies the name of the application.
(Optional) Specifies the changeset to
associate with the pipeline execution.

Note: Specify either
changesetNumber or
snapshotName, but not both.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1344


<!-- page 1345 -->
snapshotName

(Optional) Specifies the name of the
snapshot to associate to the pipeline
execution.

Note: Specify either
changesetNumber or
snapshotName, but not both.
Output
• If successful, true.
• Otherwise false.
Example
• Input:
Here is an example of the snDevOpsConfigRegisterPipeline
action. For the sake of illustration, we’ll assign the response to a variable,
changeSetRegResult, which could be echoed out to our console log for
debugging scenarios.

changeSetRegResult = snDevOpsConfigRegisterPipeline(
applicationName: "PaymentDemo",
changesetNumber: "Chset-122"
)
echo "Pipeline registration result:
${changeSetRegResult}"
• Output:
In addition to the data being uploaded to our data model in DevOps Config, the
output would look something like this (using the Blue Ocean plugin to visualize
the console output).

snDevOpsConfigValidate
Validate config data against your organization policies.
Input arguments

applicationName

Application to validate.

deployableName

Deployable for the application to
validate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
snapshotName

(Optional) Name of the snapshot to
validate.

markFailed

(Optional) Fail the pipeline in the event
that the validation attempt failed (due to
a backend issue).

showResults

(Optional) Show validation results in the
Jenkins job console log.

Output
• If successful, no output.
• If failure, an API/backend failure message is shown.
Example
• Specific snapshot (specified):

snDevOpsConfigValidate(
applicationName: 'PaymentDemo',
deployableName: 'Production',
snapshotName: 'Production-v23.dpl',
)
• Latest snapshot (retrieves and validates the latest snapshot for application and
deployable combination):

$changeset = snDevOpsConfigValidate(
applicationName: 'PaymentDemo',
deployableName: 'Production'
)

snDevOpsChange
Create a change request and attach a snapshot for reference.
See Accelerating your DevOps change process for more information regarding the DevOps
Change Acceleration feature.
Input arguments

applicationName

Specifies the name of the application.

snapshotName

Specifies the name of the snapshot to
associate with the change request.

Example
snDevOpsChange(
applicationName: 'PaymentDemo',
snapshotName: 'Production-v23.dpl'
)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
Jenkins pipeline example
pipeline {
environment {
buildArtifactsPath =
"build_artifacts/${currentBuild.number}"
validationResultsPath = ""
}
agent any
stages {
// Initialize pipeline
stage('Initialize') {
steps {
script {
// DevOps Config application related
information
appName = 'PaymentDemo'
deployableName = 'Production'
componentName = "web-api-v1.0"
collectionName = "release-1.0"
// Configuration file information
exportFormat = 'yaml'
configFilePath = "k8s/helm/values.yml"
// Exporter related information
exporterName = 'returnAllData-nowPreview'
exporterArgs = ''
// Jenkins variables declared to be used in
pipeline
exportFileName =
"${buildArtifactsPath}/export_file-${appName}-${deployableNam
e}-${currentBuild.number}.${exportFormat}"
changeSetId = ""
snapshotName = ""
snapshotObject = ""
isSnapshotValidateionRequired = false
isSnapshotPublisingRequired = false
}
}
}
// Validate configuration data changes
stage('Validate') {
parallel {
stage('Config') {
stages('Config Steps') {
// Upload configuration data to DevOps
Config
stage('Upload, Validate, & Publish') {
steps {
sh "echo uploading and
auto-validating configuration file: ${configFilePath}"
script {
changeSetResults =
snDevOpsConfig(
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


<!-- page 1348 -->
applicationName:
"${appName}",
target: 'component',
namePath:
"${componentName}",
configFile:
"${configFilePath}",
dataFormat:
"${configFileFormat}",
autoCommit: 'true',
autoValidate: 'true',
autoPublish: 'true',
isValidated: 'true',
continueWithLatest:
'true',
markFailed: 'true'
)
echo "Snapshots generated,
validated, and published: ${changeSetResults}"
def changeSetResultsObject =
readJSON text: changeSetResults
changeSetResultsObject.each
{
snapshotName = it.name
snapshotObject = it
}
validationResultsPath =
"${snapshotName}_${currentBuild.projectName}_${currentBuild.num
ber}*.xml"
}
}
}
// Export published snapshot to be used
by downstream deployment tools
stage('Export') {
steps {
script {
// create build artifacts
dir to store export file
sh "mkdir -p
${buildArtifactsPath}"
exportResponse =
snDevOpsConfigExport(
applicationName:
"${appName}",
snapshotName:
"${snapshotObject.name}",
deployableName:
"${deployableName}",
exporterFormat:
"${exportFormat}",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
fileName:
"${exportFileName}",
exporterName:
"${exporterName}",
exporterArgs:
"${exporterArgs}"
)
}
}
}
}
}
}
}
// Create change request and attach snapshot for
reference
stage('Change Management') {
steps {
script {
// Trigger change request
snDevOpsChange(
applicationName: "${appName}",
snapshotName: "${snapshotName}"
)
}
}
}
}
// NOTE: attach snapshot validation results to run (if the
snapshot fails validation)
post {
always {
// attach policy validation results
junit testResults: "${validationResultsPath}",
skipPublishingChecks: true
}
}
}

GitHub pipeline actions
Use these actions in your GitHub pipeline to interact with the DevOps Config data model.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
GitHub scripted and declarative pipelines are supported.
The ServiceNow DevOps Config Validate (servicenow-devops-config-validate) and DevOps
Config Export (servicenow-devops-config-export) GitHub Actions are provided to create a
specific pipeline definition.

DevOps Config Validate (servicenow-devops-config-validate)
Upload and validate configuration data in a ServiceNow instance.
Input arguments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
Argument

Description

instance-url

ServiceNow instance URL.

devops-integration-username

DevOps Config integration username.

devops-integration-user-password

DevOps Config integration user
password.

application-name

DevOps Config application name.

target

Data model target where configuration
files are uploaded.
Example data model targets are:
• component
• collection
• deployable

deployable-name

Deployable name in the DevOps Config
data model.

collection-name

(Optional) Collection name in the
data model. Required when target is
collection.

name-path

(Optional) Name path of the node in the
data model where the configuration files
are uploaded.

config-file-path

File path when uploading a single file
or file path pattern based on the Antstyle pattern when uploading multiple
files to the data model. See Directorybased Tasks
for information on Antstyle patterns in the Apache Ant.1.10.14
Manual documentation.

data-format

Data format of the configuration files.
Example data formats are:
• CSV
• INI
• JSON
• Properties
• RAW
• XML
• YAML

data-format-attribute

(Optional) Extended data format
attributes for parsing configuration data.

auto-commit

Boolean (true or false) input to commit
configuration data after successful
upload.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Argument

Description

Default value: true
auto-validate

Boolean (true or false) input to validate
configuration data after successful
commit.
Default value: true

auto-publish

Boolean (true or false) input to publish
configuration data after successful
validation.
Default value: true

changeset

(Optional) Open changeset associated
with the upload action. If not provided, a
new changeset is created.

snapshot-validation-timeout

(Optional) Maximum time in minutes for
validation to complete before failing the
action.
Default value: 60

terminate-on-policy-validation-failures

(Optional) Boolean (true or false) input
to terminate the GitHub workflow after
policy validation failures.
Default value: false

Outputs
changeset-number
Changeset number associated with the upload action.
snapshot-name
Name of the latest snapshot of the deployable.
validation-status
Validation status of the snapshot. Example: passed,
passed_with_exception, failed, execution_error,
not_validated
validation-results
Validation results in the JSON format for the snapshot.
Example — Uploading config files to a deployable
upload_and_validate_job:
name: Upload and validate
needs: <upstream job>
runs-on: ubuntu-latest
steps:
- name: ServiceNow Devops Config Validate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
uses:
ServiceNow/servicenow-devops-config-validate@v1.0.0-b
eta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-user-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
target: deployable
deployable-name: Production
name-path: web-api-v1.0
auto-commit: true
auto-validate: true
auto-publish: true
config-file-path: data/k8s/helm/*.yml
data-format: yaml
snapshot-validation-timeout: 60
terminate-on-policy-validation-failures: true
Example — Uploading config files to a collection
upload_and_validate_job:
name: Upload and validate
needs: <upstream job>
runs-on: ubuntu-latest
steps:
- name: ServiceNow Devops Config Validate
uses:
ServiceNow/servicenow-devops-config-validate@v1.0.0-b
eta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-user-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
target: collection
deployable-name: Production
collection-name: release-1.0
name-path: web-api-v1.0
auto-commit: true
auto-validate: true
auto-publish: true
config-file-path: data/k8s/helm/*.yml
data-format: yaml
snapshot-validation-timeout: 60
terminate-on-policy-validation-failures: true
Example — Uploading config files to a component
upload_and_validate_job:
name: Upload and validate
needs: <upstream job>
runs-on: ubuntu-latest
steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
- name: ServiceNow Devops Config Validate
uses:
ServiceNow/servicenow-devops-config-validate@v1.0.0-b
eta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-user-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
target: component
deployable-name: Production
name-path: web-api-v1.0
auto-commit: true
auto-validate: true
auto-publish: true
config-file-path: data/k8s/helm/*.yml
data-format: yaml
snapshot-validation-timeout: 60
terminate-on-policy-validation-failures: true
Example — Uploading multiple config files in a single commit
upload_and_validate_job:
name: Upload and validate
needs: <upstream job>
runs-on: ubuntu-latest
✅ Upload an XML file to a component
steps:
- name: ServiceNow Devops Config Validate
id: upload_and_validate_xml
uses:
ServiceNow/servicenow-devops-config-validate@v1.0.0-b
eta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-user-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
target: component
deployable-name: Production
name-path: web-api-v1.0
auto-commit: false
auto-validate: true
auto-publish: true
config-file-path: data/infra/v1/*.xml
data-format: xml
snapshot-validation-timeout: 60
terminate-on-policy-validation-failures: true
✅ Upload a JSON file to the vars folder of a
deployable
steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
- name: ServiceNow Devops Config Validate
id: upload_and_validate_json
uses:
ServiceNow/servicenow-devops-config-validate@v1.0.0-b
eta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-user-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
target: component
deployable-name: Production
name-path: web-api-v1.0
auto-commit: true
auto-validate: true
auto-publish: true
config-file-path: data/infra/prod/*.json
data-format: json
snapshot-validation-timeout: 60
terminate-on-policy-validation-failures: true
changeset :
${{ steps.upload_and_validate_xml.outputs.changeset-nu
mber }}

DevOps Config Export (servicenow-devops-config-export)
Export configuration data using ServiceNow DevOps Config.
Input arguments

Argument

Description

instance-url

ServiceNow instance URL.

devops-integration-username

DevOps Config integration username.

devops-integration-user-password

DevOps Config integration user
password.

application-name

DevOps Config application name.

deployable-name

Deployable name in the DevOps Config
data model.

exporter-name

Exporter name that exports
configuration data from the DevOps
Config data model.

snapshot-name

(Optional) Snapshot from which
to export data. If a snapshot is not
specified, the latest snapshot for the
deployable is used.

exporter-data-format

(Optional) Format to export the
snapshot data.
Example data formats are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
Argument

Description

• CSV
• INI
• JSON
• Properties
• RAW
• XML
• YAML
exporter-arguments

(Optional) Arguments to be used along
with the exporter. The value must be a
JSON object represented as a string.

Output
exporter-content
Configuration data that the exporter exports.
Example — Export specific snapshot
export:
name: Export config
needs: <upstream job>
runs-on: ubuntu-latest
steps:
- name: ServiceNow DevOps Config Export
uses:
ServiceNow/servicenow-devops-config-export@v1.0.0-beta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
devops-integration-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
deployable-name: Production
exporter-name: returnDataforNodeName-now
snapshot-name: Production-v1.dpl
exporter-arguments: '{ "nodeName": "node1" }'
Example — Export the latest deployed snapshot with additional parameters
export:
name: Export config
needs: <upstream job>
runs-on: ubuntu-latest
steps:
- name: ServiceNow DevOps Config Export
uses:
ServiceNow/servicenow-devops-config-export@v1.0.0-beta
with:
instance-url: ${{ secrets.SN_INSTANCE_URL }}
devops-integration-username:
${{ secrets.SN_DEVOPS_CONFIG_USERNAME }}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
devops-integration-password:
${{ secrets.SN_DEVOPS_CONFIG_PASSWORD }}
application-name: PaymentDemo
deployable-name: Production
exporter-name: returnDataforNodeName-now
exporter-arguments: '{ "nodeName": "node1" }'
exporter-data-format: XML

Using DevOps Config
The developer, or app engineer, role uses DevOps Config, once it's installed and set up by
the DevOps engineer role, to validate and correct config data (that they commit) before it gets
deployed.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Consumption process:
1. A configuration change is committed as part of the role of the developer, or app engineer.
2. The build process is kicked off in the pipeline.
When a configuration change is committed in the source code repository, it typically kicks off
the build process in the pipeline.
3. Upload configuration data using Azure DevOps pipeline tasks or Jenkins pipeline actions.
DevOps Config pipeline tasks and actions are used to interact with your data model to upload
config data for validation.
4. Get snapshot status of the uploaded configuration file.
A snapshort (of configuration data) is created when the configuration change is committed.
5. Check validity of the snapshot using DevOps Config policies.
Once config data is uploaded and the snapshot is created, it's validated in DevOps Config
against a set of policies predefined for the specific deployment environment.
6. Publish snapshot after validation.
Once validated by DevOps Config, the config data is then published and a DevOps change
request is created by DevOps Change Velocity (change control).
Snapshot information is shown in the DevOps change request Config changes tab for
accelerated root cause analysis.
7. Approve the DevOps change request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
Once the DevOps change request is approved, the config data is used downstream in your
CI/CD pipeline.
8. Deploy to your environment.
Once the change is deployed to your environment, the change request is closed.
9. Use DevOps Config exporters to export your config data to be used by your deployment tools.

Viewing and editing config data
You can update the config data of an application by creating or opening a changeset on the
Config data tab, where you update the structure and CDIs of the config data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Tabs on the Application page
When you open an application, the header area for each tab displays administrative details for
the application: Application name, name of the user that created the application, and timestamp
of creation.
• Overview: Basic settings of the application and a Manage deployables button that enables
you to edit config data.
• Snapshots: List of snapshots for each deployable in the application. Each entry includes
validation and publication status. Policies that execute against a snapshot return validation
result. Published snapshots are available for release to the CI/CD pipeline.
• Config data: Read-only view of the config data in a tree structure. Select a node in the tree
to view the config data for that node in the application service or infrastructure service. (You
can edit an open changeset or create a new or changeset. The tab then updates to show an
Editor panel and a Preview panel where you can create, edit, and save the changeset. You
cannot change an existing snapshot, but you can start with a snapshot changeset and save
the changes in a new changeset.)

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

• Settings: A list of policies that are mapped to the deployables. Select an item to open it.
• Activity: List of changesets. On this tab, you can open a changeset to continue editing or
publish a changeset as a new version of the application config data.

Config data tab
After you open a changeset by selecting Edit config data, you can edit the config data on the
Config Data tab. In the config data tree (A in the screenshot), select the node to edit. By default,
the editing panel (C) displays the script view of the key-value pairs (the config data items or CDIs)
in the selected node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
A: Config data tree
The config data tree displays the structured config data. Select a node to edit the
associated data.
B: View selector
To switch from the Script view (shown as panels C and D) to an editable list of CDIs
and their values, slide the selector to List view.
C: Editor panel
The Editor panel displays the contents of the selected node. You can edit the config
data directly in the Editor panel.

Important: To ensure that you edit only the data that you intend to edit, the
panel displays only data that is directly in the selected node. The Editor panel
lists all included collection and component names but not their contents. This
strategy reduces clutter and clarifies the structure of the deployable. To view
the fully resolved config data, view the Preview panel (D).
D: Preview panel
The Preview panel displays the persisted state of the data in structured form. If you
make any changes in the Editor panel and save the changes, the data in the Preview
panel is updated to include the changes.
• To resolve variables and view the fully resolved data in the preview panel: In the
More actions menu (

), select Apply variables.

• Encrypted data appears as ********. Users with the CDM Secrets
[sn_cdm.cdm_secrets] role can view all encrypted values in the preview panel. In
the More actions menu (

), select View encrypted data.

• To see nodes and CDIs that are excluded from inheritance: In the More actions
menu (

), select View excluded data.

E: Actions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


<!-- page 1359 -->
• Refresh View: Update data in the view.
• Save Changes: Save (persist) the current changes but do not commit the
data. The Editor panel, List view, and Preview panel refreshes to reflect the
resolved state of the changeset. The system updates the changeset but does not
update the application. Changes appear on the Activity tab. You must commit
a changeset to update the config data for the application. After saving, you can
move on to other activities and return later to edit the changeset. The button
appears only if you have made changes.
• Delete Changeset: Delete the record of the changeset.
• Commit Changeset: The system generates a snapshot of each deployable that is
affected by the changes.

Note: Because changes in two changesets that are open at the same
time can conflict, the system blocks such commits. See Conflicts between
changeset commits.
F: Header for the changeset
The header displays general read-only information about the changeset. You can
view this information and additional information on the Details tab, as described in
the next section.
G: Name path of the selected node
The name path is the complete folder path of the selected node in the list. Select
the copy name path to clipboard icon (

) to copy the name path of the node.

Changeset - Header and Details tab
Information on the Changeset Header and on the Details tab
Field

Description

Changeset number

Unique sequential changeset number that the
system auto-assigns.

Description

Description that helps other users understand
the purpose, scope, and intent of the
changeset.

Application

Application on which the changeset is based.

State

• Committed: This draft of the changeset has
been committed.
• Open: The changeset is being updated and
is not committed.
• Blocked: Other commits conflict with
this commit. The changeset cannot
be committed. See Conflicts between
changeset commits.
• Commit in progress: A draft of the
changeset that is currently being committed.

Created / Created by

User who created the changeset and the
timestamp of creation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


<!-- page 1360 -->
Information on the Changeset Header and on the Details tab (continued)
Field

Description

Updated / Updated by

User who updated the changeset and the
timestamp of the update.

Committed / Committed by

User who committed the changeset and the
timestamp of the commit.

Define or update a component
Define or update a component while working in a changeset.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

Procedure
1. Follow this procedure to add a component to an application:
a. While working in a changeset, select the more actions icon (
and select Create component.

) for the components node

b. Enter a unique and meaningful name and then select Create.
2. To perform other actions, select the more actions icon (
action, as follows.

) for a component and select the

Selection

Action

Create component

Add a component as described above.
Add an individual config data item (CDI) and
value to the collection. See the instructions in
the next step
The CDI can have an explicit value, or it can
be a variable, override, or overlay.

Create CDI

◦ Variable: The value for this CDI will set the
value for an identically-named CDI in an in­
cluded component.
◦ Override: The value for this CDI will over­
ride the value for an identically-named CDI
in an included component. You can also
override inherited nodes from the child col­
lection.
◦ Overlay: A CDI that does not appear in any
included component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
Selection

Action

Include the selected component in specified
collections.
In the Include in collections dialog box, select
the collections that should include the compo­
nent and then select Include.
Include in collections

Note: Only collections that do not al­
ready include the component appear in
the list. Inclusion of a node takes prece­
dence over inheritance. If a node is both
included and inherited, it is instead con­
sidered included.
Add a file as a file node.

Add file

You can attach a MIME-type file with a maxi­
mum file size of 5 MB.
For more information on adding files, see Man­
age files in the config data model using file
nodes.
Removes the inherited node and all child ob­
jects from the current collection.
You can see excluded nodes in the change­
set tree when you access the More actions

Exclude from inheritance

menu ( ) and select View excluded data.
Excluded nodes are appended with the label
"Excluded".
Select Include in inheritance from the more
actions icon (
) to stop excluding the node
and re-add it to the changeset.

Rename

Rename the selected component.

Delete

Delete the selected component.

View relationships

View direct relationships with the node. Direct
relationships are formed between nodes by in­
heritance or by being included.

3. Add a CDI: Select the more actions icon (

) for the item and select Create CDI.

Create CDI
Name

Unique and meaningful name for the CDI.

Value

Value that the CDI has in the current context
or define a variable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
◦ You can specify a direct key : value
pair.
◦ You can define a variable and specify its
default value. Variable definitions have the
following form:
@@<variableName>@@: <value>
◦ You can specify a value for a variable using
the following form:
"<variableName>": "<value>"
◦ You can specify a contextual variable.
These are variables defined out-of-thebox that use the context of the node to set
the variable value. The variable uses the
following form:
"<variableName>":
"(✅<value>✅)"
◦ You can use recursive variables for a
CDI value. Recursive variables use other
variable values as parameters to set the
CDI value. For example, each of these
CDI values can resolve the same due to
recursive variables:
cdi1:
@(favorite_food/@(person)
@)@
cdi2:
@(favorite_food/@(john)@)@
cdi3: waffles
Encrypted

Option to specify that the value of the
CDI should be encrypted. This option
appears only for users with the CDM Secrets
[sn_cdm.cdm_secrets] role.
After you create the CDI, the value appears in
all views as *******. To view the value on
any tab that displays the CDI, users with the
CDM Secrets [sn_cdm.cdm_secrets] role can
select the View encrypted data menu option.

Related topics
Create or update a variable CDI
Manage files in the config data model using file nodes
CDM data model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
Viewing and editing config data
How encrypted data is handled
Define or update a collection in an application
Define or update a collection while working in a changeset of a application.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

Procedure
1. To add a collection to the application: While working in a changeset, select the more actions
icon (

) for the collection node and select Create collection.

2. To edit individual data items, you can either work directly in the code or select the more actions
icon (

) for an item and select an action, as follows.

Selection

Action

Create collection

Add an individual component to the collec­
tion.
Add an individual config data item (CDI) and
value to the collection. See the instructions in
the next step.
The CDI can have an explicit value or it can
be a variable, override, or overlay.

Create CDI

◦ Variable: The value for this CDI will set the
value for an identically-named CDI in an in­
cluded component.
◦ Override: The value for this CDI will over­
ride the value for an identically named CDI
in an included component. You can also
override inherited nodes and CDIs from
the child collection. Overridden nodes and
CDIs are labeled as Overridden Inherited.
◦ Overlay: A CDI that does not appear in any
included component.
Automatically inherit changes from another
collection.

Inherit from collection

When you select the check box and then
specify a Collection, changes you make in
the specified parent collection are reflected
in all child collections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
Selection

Action

Select Remove inheritance to remove the
existing hereditary relationship from a collec­
tion.

Note: Inheritance is considered invalid
when:
◦ Circular, where the parent and child
both inherit from each other.
◦ There are more than the maximum
number of collections in a chain.
This number is 5 by default. Ex­
ample: Collection1 is inherited by
Collection2. Collection2 is inher­
ited by Collection3. This chain of
inheritance cannot continue to
Collection6. You can change the
valid chain length by editing the

sn_cdm.max_inheritance_chain_length
system property.

Include the selected collection in specified
deployables.

Include in deployables

In the Include in deployables dialog box, se­
lect the deployables that should include the
collection and then select Include.

Note: Only deployables that do not cur­
rently include the collection appear in
the list.
Rename

Rename the selected collection.

Delete

Delete the selected collection.

Details

View the administrative information associat­
ed with the collection.

View relationships

View direct relationships with the node. Direct
relationships are formed between nodes by in­
heritance or by being included.

3. Add a CDI: Select the more actions icon (

) for the item and select Create CDI.

Create CDI
Name

Unique and meaningful name for the CDI.

Value

Value that the CDI has in the current context
or define a variable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
◦ You can specify a direct key : value
pair.
◦ You can define a variable and specify its
default value. Variable definitions have the
following form:
@@<variableName>@@: <value>
◦ You can specify a value for a variable using
the following form:
"<variableName>": "<value>"
◦ You can specify a contextual variable.
These are variables defined out-of-thebox that use the context of the node to set
the variable value. The variable uses the
following form:
"<variableName>":
"(✅<value>✅)"
◦ You can use recursive variables for a
CDI value. Recursive variables use other
variable values as parameters to set the
CDI value. For example, each of these
CDI values can resolve the same due to
recursive variables:
cdi1:
@(favorite_food/@(person)
@)@
cdi2:
@(favorite_food/@(john)@)@
cdi3: waffles
Encrypted

Option to specify that the value of the
CDI should be encrypted. This option
appears only for users with the CDM Secrets
[sn_cdm.cdm_secrets] role.
After you create the CDI, the value appears in
all views as *******. To view the value on
any tab that displays the CDI, users with the
CDM Secrets [sn_cdm.cdm_secrets] role can
select the View encrypted data menu option.

4. Optional: Add CDI settings that will override or overlay settings in collections.
For more information, see Define or update a component.
Related topics
CDM data model
Viewing and editing config data
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
How encrypted data is handled
Create or update a variable CDI
Create or update a variable CDI
Define variables and set their values in components, collections, and deployables.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

• When you create an application, the system auto-generates an empty vars folder in each of
the three top-level folders: component, collection, and deployable.
• When you add a collection or deployable, the system adds an empty vars folder to the item
that you created.
• A vars folder can contain only variable CDIs or folders. Any subfolder can contain only
variables or folders.
• The value of a variable in a collection overrides the value of the variable in a component.
• The value of a variable in a deployable overrides the value of the variable in a collection or
component.

Procedure
1. Use either of the following methods to edit or add an instance of a variable while working in a
changeset:
◦ Edit directly in the editing panel. Use the following format to set the value of a variable:
"<variableName>": "<value>"
In this example, the dbName variable and several others reside in the database folder.
In addition, the backup folder (a child of the database folder) holds the dbServer
variable.

◦ Create the variable in a dialog box. Follow the procedure in the next step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
2. Select the more actions menu icon (
and then specify its settings.

) for the appropriate vars folder, select Create variable,

Create variable
Name
Value

Unique and meaningful name for the variable.
Value that the variable has in the current
context.

Tip: It is often useful to define a default
value for a variable in a component or
collection. This is a powerful strategy
because you can create a broad
variety of deployables from a small
set of components and collections.
Deployables that inherit a component or
collection can use overrides, overlays,
and variable settings to meet the needs
of the environment type. For example,
the Development deployable
can use the same components and
collections as the Test deployable.
Development uses the default
database variable value. Test, in
contrast, uses a different value that is
appropriate for the test environment.
Encrypted

Option to specify that the value of the
variable should be encrypted. The option
appears only for users with the CDM Secrets
[sn_cdm.cdm_secrets] role.
After you create the variable, the value
appears in all views as *******. To
view the value on any tab that displays
the variable, users with the CDM Secrets
[sn_cdm.cdm_secrets] role can select the
View encrypted data menu option.

Manage files in the config data model using file nodes
Add and manage files using file nodes in the config data model of a CDM app or in a component
library.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
About this task

When you attach a file to an applicable node, a file node is created under that node. The file
node contains a link to the attached file that stores configuration data. For example, a properties
file or a logo image file.
• In an app, you can add the file node to a node under the component, collection, or deployable
folder. The file nodes in a component are also included when you include a component to
a collection and the collection to the deployable in an app. You can override the file nodes
included at the collection or deployable level, like any other config data item.
• In a component library, you can add a file node to a node under a shared component. When
the shared component is used in an app, the file nodes are copied along with the file attached
to them.
App developers and members of the authoring group of the app can access the file nodes
and also download their attached files. They can manually validate the content of the file and
then publish the snapshot. DevOps users can export the validated config data, including file
nodes with URLs to the attached files hosted on the ServiceNow instance where the export was
executed.

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Open a DevOps Config app or a component library to add a file node to its config data model.
Option

Steps

a. Select the apps icon (
tion pane.
Adding a file node in an app

) in the left naviga­

b. Select an app from the Applications list.
c. Select Edit config data to open a change­
set.
a. Select the component libraries icon (
the left navigation pane.

Adding a file node in a component library

) in

b. Select a component library to open or cre­
ate one.
c. Select Edit to open a changeset.

A changeset is opened with the Config data tab selected.
3. In the config data tree, select the more actions icon ( ) next to a node to which you want to
add a file node, and then select the Add file from the menu.

Note: In an app, you can add a file node to a node under the component, collection, or
deployable, but not directly to the component, collection, or deployment folder in an app.
In a shared library, you can add a file node to a node under a shared component.
4. Add a file to create a file node.
a. In the Add file dialog box, browse and select a file from your system, and select Add file.
You can add a MIME-type file supported by the ServiceNow AI Platform with a maximum file
size of 5 MB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


<!-- page 1369 -->
b. In the Node name field, provide a name for the file node.
By default, the attached file name is populated as the file node name. The Content type field
is also populated with the content type of the attached file.
c. Select Add file.
The file node is added to the selected node. Select the file node in the config data tree to
display its metadata in the File information pane and preview the file's content in the File
content pane.

Note: The content preview is available for the files with the following MIME
types: text/yaml,text/css,text/csv,text/html,text/
javascript,text/plain,text/richtext,text/xvcard,text/x-vcalendar,application/xml,application/
javascript,application/json. To view content for additional
MIME type files, add them as a comma separated list to the system property
sn_cdm.attachment.display_mime_types. The preview is not available for
binary file MIME types, such as audio, image, and video.

5. Optional: After the file node is added to the config data, you can perform the following actions
on the file node or the file attachment within it.

Note: All actions on the file node or its file attachment can only be done via the More
actions menu on the file node.
Action

Steps

a. Select the more actions icon next to the file
node, and then select Rename from the
menu.
Rename the file node

b. In the Rename dialog box, enter a new
name of the file node in the Node name
field.
If the file node is included in the collection,
it’s renamed there as well.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
Action

Steps

a. Select the more actions icon next to the file
node, and then select Extract variables
from the menu.
b. In the Extract variables dialog box, speci­
fy the file path you want to extract the vari­
ables to.

Extract variables

All variables in the file node tagged as
@@<variableName>@@ are extracted to the
file path you specified. The variable is then
modified to also include the file path.
You can then resolve all the extracted vari­
ables. Define the extracted variables and
then select Apply variables from the form
context menu. This action replaces all extract­
ed variables in the file content with the de­
fined variable values.
a. Select the more actions icon next to the
file node, and then select Delete from the
menu.
b. In the Delete pop-up, select Delete.
Deleting the file node has the following effect
on it and its file attachment:

Delete the file node

◦ If the file node is included in the collection,
it’s also deleted from there. Any overridden
file node becomes a direct file node.
◦ If the file node is created in the currently
opened changeset that is not yet commit­
ted, then the file node and its file attach­
ment are permanently deleted.
◦ If the file node was created in a previously
committed changeset and is deleted in the
currently opened changeset, then the file
node is deleted from the config data but the
file attachment remains in the system.
Select the more actions icon next to the file
node, and then select Download file from the
menu.

Download the file attachment

Replace the file attachment

Alternatively, you can download the file by se­
lecting the file node and then selecting Down­
load on the File information pane.
a. Select the more actions icon next to the file
node, and then select Replace file from the
menu.
b. In the Replace file dialog box, attach a file
from your system, and select Replace file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
Action

Steps

If a file node is included in a collection and in­
to a deployable, then you can override it by re­
placing the attached file with a new one.
Override an included file node

a. Select the more actions icon next to the in­
cluded file node in the collection or deploy­
able folder, and then select Replace file
from the menu.
b. In the Replace file dialog box, attach a file
from your system, and select Replace file.

Compare config data of two CDM applications
Use the Config Data Analyzer tool to find similarities and differences between the config data
of two applications. You can compare either different applications or different changesets of a
particular application.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required:cdm_viewer, cdm_editor, or cdm_admin

Procedure
1. While viewing an application, select Compare config data.
The Compare config data tab opens.
The current application (the application that you started with, Demo_App1 in the example) is
called the target. The application to compare to the target is called the reference application.
The Target application field is set as the latest committed data for the target and is read-only.

2. Select the Latest data model option in the Compare type field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
3. Select a reference application (Demo_App2 in the example).
The Reference application selection list includes the latest committed data for all applications
except the target application.
4. Optional: Select the folder icon (

) to specify a folder path for comparison.

5. Optional: Select Apply variables to display fully resolved variable values in the comparison
results.
6. Optional: If you've the cdm_secrets role, you can select View encrypted data to view
encrypted values in clear text in the comparison results.

Note: The check box is inactive for users who do not have the cdm_secrets role. When
the values in the target and reference differ, the comparison results indicate that the
values differ, but the data itself still appears as ********.
7. Select Compare.
The Comparison results section displays the differences between the reference changeset
and the target changeset.

Important: If you commit changes to a reference application while the Compare

config data tab is open: When you return to the Compare config data tab and select
Compare, the comparison is performed on the most recently committed changeset, and
the updated results are displayed in the results section.
The letters in the following illustration identify the tools that you can use to analyze the data.

A. Navigation panel
The navigation panel displays the node structure of the applications.
◦ Nodes that include changed CDIs (either directly or in descendent nodes) are
annotated with Different.
◦ Nodes that include newly added CDIs (either directly or in descendent nodes)
are annotated with the identity of the application changeset that includes the
new data, either Reference or Target.
◦ Use the Search field to search for text in the navigation panel.
◦ Select a node to view its contents in the Differences panel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


<!-- page 1373 -->
B: Differences panel
◦ By default, all config data is displayed. Select Diff only to view only data that
differs between the two changesets.
◦ Use the Search icon (

) to search for text in the Component differences panel.

◦ The panel offers two tabs: Data model and CDIs and variables. In either tab,
expand and close groupings with the expansion icon (

).

◦ If a selection includes more than 50 CDIs, then CDIs are organized into pages
of 50.
The Data model tab displays changes to the structure of the application at the
folder level, such as, adding, deleting, or renaming a folder.
Data model tab - List columns
Column

Description

Differences

The path of the structure for which differences are
described.

Description

Text that describes any differences between the
reference and target changesets.

Folder

The folder in the structure.

Source level
(Reference/Target)

◦ Direct: The folder is explicitly specified or deleted in
the node.
◦ Included: The folder is included from a child folder.

The CDIs and variables tab displays changes to individual CDIs for the node that
is selected in the navigation panel.
◦ By default, the root node is selected and the data panel includes all CDIs for
both changesets. Select a node in the navigation panel to display data for only
that node and its descendents.
◦ When Diff only is selected, the number of CDIs that differ appears after the
node path.
◦ Node paths are displayed in gray. Use the expansion icon (
folder.

) to view CDIs in a

CDIs and variables tab - List columns
Column

Description

Differences

Indicator to show where the differences are.
◦ Target: The CDI appears only in the target changeset.
◦ Reference: The CDI appears only in the reference
changeset.
◦ Different: For the specified CDI, the values in the target
and reference changesets differ.

Description

Statement of how the changesets differ. For example, the
text might indicate that a CDI appears only in the reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Column

Description

changeset or that the values for variable differ between
the changesets. See Types of differences between CDM
applications for the full list of difference types and their
causes.
Name

Name of the CDI.

Reference (R)

Value of the CDI in the reference changeset.

Target (T)

Value of the CDI in the target changeset.

Source level (R/T)

The node level in the code at which the CDI is defined.
◦ Direct: The CDI is defined in the selected node.
◦ Include: The value of the CDI is obtained from a node
that is included in the selected node.
◦ Override: The value of the CDI in an included node is
overridden by a value that is specified in the including
node.
Values appear in the following formats:
◦ <reference level / target level> when a
value appears in both target and reference.
◦ <reference level> when a value appears in only
the reference changeset.
◦ <target level> when a value appears in only the
target changeset.
For example, when a CDI is defined in the reference
changeset with the value true and the CDI does not
appear in the target changeset, then the last three columns
in CDIs and variables tab will have the following values:
◦ Reference (R): true
◦ Target (T): [Empty]
◦ Source level (R/T): Direct

If a file node is selected in the tree, the File information tab displays its metadata.
File information tab - List columns
Column

Description

Differences

Indicator to show where the differences are.
◦ Target: The file node is available only in the target changeset.
◦ Reference: The file node is available only in the reference
changeset.
◦ Different: The file node data differs in the target and
reference changesets.

File metadata

Metadata of the file attached to the file node.
◦ File name: Name of the attached file in the file node.
◦ Content type: Content type of the file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
Column

Description

◦ Content: Content of the attached file. Preview is not available
on the list, but you can download the file to preview it.
◦ File URL: Folder path where the file exists.
Reference (R)

Details of the file present in the reference changeset.

Target (T)

Details of the file present in the target changeset.

Types of differences between CDM applications
Descriptions and examples of differences between CDM applications when using the Config
Data Analyzer tool.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Types of differences
On the App compare tab, the CDIs and variables tab displays changes to individual CDIs for
the node that is selected in the navigation panel. The Description column displays one of the
following values that describes how the changesets differ.
Values are different
Both the reference and target changesets include a particular CDI, but the values
differ between the two changesets. See the Reference and Target columns for the
values.
Encryption settings are different
The View encrypted data setting is selected for one changeset and not selected for
the other changeset.

Note: For users that do not have the CDM Secrets [sn_cdm.cdm_secrets]
role, encrypted data always appears as ********.
Source levels are different
One of the following cases:
• The value is direct in one changeset and is overridden in the other changeset.
• The value is direct in one changeset and is included in the other changeset.
Source levels and values are different
In addition to the cases described in "Source levels are different", the value differs
between changesets.
Target only
A CDI or the value for a CDI appears only in the target changeset.
Reference only
A CDI or the value for a CDI appears only in the reference changeset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
Examples of differences

Changesets and version control in CDM
A changeset is a draft copy of an application that you can update and save as often as needed.
When you are satisfied with your changes, you can commit the changeset to apply the changes
to the application. Committing

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

About changesets
To edit config data, you create a changeset and make changes in the changeset. You can
perform the following actions:
• Create a new changeset: The changeset includes the full config dataset of the application.
• Save a changeset: The Editor panel, List view, and Preview panel refreshes to reflect the
resolved state of the changeset. The system updates the changeset but does not update the
application. Changes appear on the Activity tab. You must commit a changeset to update the
config data for the application. After saving, you can move on to other activities and return later
to edit the changeset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
• Update an existing changeset: Edit a changeset that had been saved but not committed.
• Commit a saved changeset: The system generates a snapshot of each deployable that is
affected by the changes.

About conflicts with other changesets of the application that you are working on
Sometimes, UserA and UserB are working at the same time on two different changesets of the
same application. If UserA commits a changeset that sets variableX to A and later, UserB tries
to commit a changeset with variableX set to B, a conflict results.
An open changeset with conflicts is blocked—it cannot be committed. The system notifies you of
conflicts with a warning message on the page. In addition, the State value in the header changes
from Open to Blocked.
See Conflicts between changeset commits for descriptions of the types of conflicts that the
system identifies.
Open a changeset to update config data
Update config data in an existing changeset or in a new changeset. You can save your changes
for later updates or save and commit the changes. Committing the changes generates a
snapshot for each deployable that is affected by the changes.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task
• When you commit the changes that you have made to an application (commit the changeset),
the system generates a snapshot of each deployable that has been updated. A snapshot is an
exact record of the config data for a deployable. Snapshots are read-only — you cannot modify
a snapshot. You can, however, start a new changeset that is based on a particular snapshot.
• Sometimes, another user has committed changes to a data set (thus creating a new snapshot)
while you are working on a changeset of the same data. In this case, the data that you are
working on is stale (the data is in the state it was in before the other user committed changes).
This can result in data conflicts. Learn more about how you use changesets and how CDM
manages version control at Changesets and version control in CDM.

Procedure
1. Use one of the following methods to open a changeset for editing:
◦ On the Activity tab for an application, select a changeset number.
◦ On the Overview or Config data tab for an application, select Edit Config Data.

Important: Save your changes whenever you are confident of the changes and before
you leave the Config data tab.

The changeset opens on the Config data tab.
2. In the config data tree, select the item to edit in either the script view or the list view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
By default, the Editor panel displays the script view of the key:value pairs (the config data items
— CDIs) in the selected node. See Viewing and editing config data for details on operations in
the Config data tab.
3. Add components, collections or deployables, see the instructions in Define or update
a component, Define or update a collection in an application, and Create and update a
deployable.
4. Select Save to save the changes in the changeset and ready the changes in the changeset to
be committed.
The Editor panel, List view, and Preview panel refreshes to reflect the resolved state of the
changeset. The system updates the changeset but does not update the application. Changes
appear on the Activity tab. You must commit a changeset to update the config data for the
application. After saving, you can move on to other activities and return later to edit the
changeset.
5. Optional: Select Commit.
The Commit changeset dialog box opens and lists each deployable that is affected by the
changes.

Note: After you commit a changeset, the changeset cannot be modified.
The system generates a snapshot of each deployable that is affected by the changes. The
dialog box offers the following Additional actions:
◦ If no deployables are affected by the changes, select No additional actions. The system will
update the application to persist the changes.
◦▪ Select Validate snapshots to perform the following operations on all generated
snapshots:
▪ The system executes all policies that are statically or dynamically mapped to the
associated deployable.
▪ If the snapshot passes all policies, then the Validation status value is set to Passed and
no entries are listed on the Validation Results tab. If validation was invoked with the
Publish Valid publish option, then valid snapshots are auto-published.
▪ If any policy encounters issues, then the Validation status value is set to Failed. The
Validation Results tab displays all failures or warnings returned by policies.
▪ If any policy failed to run to completion, then the Validation status value is set to
Execution error and the Validation Results tab indicates that validation failed due to
error.
▪ Select Validate and publish snapshots to perform validation as described in the Validate
snapshots action. Only snapshots that pass validation are published. Only published
snapshots can be exported.
Select Commit.
▪ The system updates the application to persist the changes to config data.
▪ The changeset state changes to Committed.
▪ The changeset cannot be modified.
▪ If snapshots were created, the confirmation message includes a link to the snapshots.
▪ If an error occurs during the commit process, the changeset state is set to Commit failed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
Related topics
Changesets and version control in CDM
Define or update a component
Define or update a collection in an application
Publish or unpublish a snapshot
Validate a snapshot manually
View the results of snapshot validation
View snapshots
Conflicts between changeset commits
Service delivery can include multiple teams working at the same time on config data with
potentially hundreds of configuration changes every day. Because changes can be in conflict
with earlier changes by a different user, CDM manages commits and snapshots to block commits
that conflict. You are notified of changeset conflicts to help you to resolve them.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

When a conflict happens
Every time you attempt to commit a changeset, the system determines whether there are
conflicts with other earlier commits. If the system reports a conflict, you can choose to attempt to
keep some of the changes or discard all conflicted changes and start from a new changeset. For
this reason, to ease the task of recreating your work, you might copy-paste larger changes to a
text editor before closing a conflicted changeset.

How to avoid conflicts
Follow these suggestions to avoid conflicts:
• Try to keep a changeset open for a brief period. If you need to do research, close the
changeset and start a new changeset after you have the information.
• Coordinate your code editing tasks with coworkers. This enables you to avoid updating the
same configuration item at the same time.

Types of conflicts
In each of the following examples of an identified conflict, the "item" being described is the
configuration data item (CDI) in your changeset. Another user committed changes that your
changes conflict with.
Stale data in your working changeset
• The value of the item was changed in another changeset.
• The item is no longer included in a collection or deployable in another changeset.
• Data corruption caused by an incorrect change in the data table: The newly
added item in your open changeset was modified in the data table to incorrectly
refer to a previous version. The item in your open changeset was superseded by
a change in the data table. The updated or deleted item in your open changeset
was incorrectly modified in the data table to not refer to the previous version.
Changed parent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
The item is an orphan because its parent was deleted or renamed in another
changeset.
Changed parent/child relationship
New items were added in another changeset while you made changes to the parent
data item.
Changed references
• The Item was included in a collection or deployable in another changeset.
• The item cannot be deleted because it is included in a collection or deployable in
another changeset.
Duplicate
An item with the same name already exists.
Invalid includes
• The component or collection to which the include referred was deleted in another
changeset.
• The component or collection to which the include referred was renamed in
another changeset.
• A descendent of the component to be included is already included in the
collection in another changeset.
View the history of changes to a changeset
View the details of changes in each committed changeset on the Activities tab.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer or cdm_editor or cdm_exporter_editor or cdm_policy_editor or
cdm_admin

Procedure
1. While working on a changeset, select the Activity tab.
The Changes section displays the list of individual nodes for which changes were committed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
Fields on the Changes section of the Activity tab
Header

Description

Old name

The original name of the item. The entry is
listed as "(empty)" when the name of the item
has not changed. Select the link to view a
detailed list of changes.

New name / New value / New type / New
state

The setting that the item was changed to in
the changeset.
For all items, a value appears only if the data
changed.

Conflict / Reason for conflict

Boolean that indicates whether this
changeset has settings in conflict with
another committed changeset.

Path

Path to the item that changed.

Updated / Updated by

User that updated the changeset and
timestamp when it was committed.

2. Select the New name link to view the new, old, and current setting of the name, value, type,
and state of a CDI or variable.
The Details dialog box displays the settings and indicates whether the changeset is in conflict
with another changeset.
Details dialog box
Field

Description

New name, New value, New type, New state

The new setting that the item was changed to
in this changeset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
Field

Description

A value appears only if the data changed.

Important: The value that appears in

the New name column might represent
a setting that has not changed. To
determine whether the name has
changed, select the link. If there is a
New name value in the dialog box, then
the name has changed.
Old name, Old value, Old type, Old state

The original setting that the item had
before the changes in this changeset were
committed.

Current name, Current value, Current type,
Current state

The setting of the item in the case that
a changeset was committed after this
changeset was committed.
A value appears only if a valued changed in
the other changeset.

Delete a changeset
Select the changeset on the Activity tab and then select Delete.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

Procedure
Select the changeset on the Activity tab and then select Delete.
Delete a CDM application
Delete a CDM application to delete all associated config data and snapshots.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

Procedure
1. Select the Applications icon (

) and then select one or more applications.

2. Select Delete and then confirm the delete action.

Result

The system performs the following operations when you delete an application:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
• Change the state of the application to "Deleted".
• Disconnect the application from its associated SDLC component.
• Disconnect deployables from CMDB services.
• Return an error for any attempt to query associated snapshots.

Compare changesets from the same or different CDM applications
Use the Config Data Analyzer tool to find similarities and differences between any two committed
changesets from the same or different applications.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required:cdm_viewer, cdm_editor, or cdm_admin

Procedure
1. While viewing an application, select Compare config data.
The Compare config data tab opens. The current application is the target application, and its
name is pre-populated in the Target application.

2. Select the Changeset option in the Compare type field.
3. Select an application and then their snapshots to compare.

Option

Description

Reference
application

Application to compare with the target application. The field lists the latest
committed data for all applications including the target application.

Reference
snapshot

Snapshot of the reference application to compare.

Target
snapshot

Snapshot of the target application against which the reference snapshot is
compared.

4. Optional: Select the folder icon (

) to specify a folder path for comparison.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
5. Optional: Select Apply variables to display fully resolved variable values in the comparison
results.
6. Optional: If you've the cdm_secrets role, you can select View encrypted data to view
encrypted values in clear text in the comparison results.

Note: The check box is inactive for users who do not have the cdm_secrets role. When
the values in the target and reference differ, the comparison results indicate that the
values differ, but the data itself still appears as ********.
7. Select Compare.
The Comparison results section displays the differences between the reference changeset
and the target changeset.
The letters in the following illustration identify the tools that you can use to analyze the data.

A. Navigation panel
The navigation panel displays the node structure of the applications.
◦ Nodes that include changed CDIs (either directly or in descendent nodes) are
annotated with Different.
◦ Nodes that include newly added CDIs (either directly or in descendent nodes)
are annotated with the identity of the application changeset that includes the
new data, either Reference or Target.
◦ Use the Search field to search for text in the navigation panel.
◦ Select a node to view its contents in the Differences panel.
B: Differences panel
◦ By default, all config data is displayed. Select Diff only to view only data that
differs between the two changesets.
◦ Use the Search icon (

) to search for text in the Component differences panel.

◦ The panel offers two tabs: Data model and CDIs and variables. In either tab,
expand and close groupings with the expansion icon (

).

◦ If a selection includes more than 50 CDIs, then CDIs are organized into pages
of 50.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
The Data model tab displays changes to the structure of the application at the
folder level, such as, adding, deleting, or renaming a folder.
Data model tab
Column

Description

Differences

The path of the structure for which
differences are described.

Description

Text that describes any differences
between the reference and target
changesets.

Folder

The folder in the structure.

Source level (Reference/Target)

◦ Direct: The folder is explicitly
specified or deleted in the node.
◦ Included: The folder is included from
a child folder.

The CDIs and variables tab displays changes to individual CDIs for the node that
is selected in the navigation panel.
◦ By default, the root node is selected and the data panel includes all CDIs for
both changesets. Select a node in the navigation panel to display data for only
that node and its descendents.
◦ When Diff only is selected, the number of CDIs that differ appears after the
node path.
◦ Node paths are displayed in gray. Use the expansion icon (
folder.

) to view CDIs in a

CDIs and variables tab
Column

Description

Differences

Indicator to show what was the change
type.
◦ Target: The CDI appears only in the
target changeset.
◦ Reference: The CDI appears only in
the reference changeset.
◦ Different: For the specified CDI, the
values in the target and reference
changesets differ.

Description

Statement of how the changesets
differ. For example, the text might
indicate that a CDI appears only in the
reference changeset or that the values
for the variable differ between the
changesets. See Types of differences
between CDM applications for the
full list of difference types and their
causes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
Column

Description

Name

Name of the CDI.

Reference (R)

Value of the CDI in the reference
changeset.

Target (T)

Value of the CDI in the target
changeset.

Source level (R/T)

The node level in the code at which the
CDI is defined.
◦ Direct: The CDI is defined in the
selected node.
◦ Include: The value of the CDI
is obtained from a node that is
included in the selected node.
◦ Override: The value of the CDI in
an included node is overridden
by a value that is specified in the
including node.
Values appear in the following formats:
◦ <reference level / target
level> when a value appears in
both target and reference.
◦ <reference level> when a
value appears in only the reference
changeset.
◦ <target level> when a
value appears in only the target
changeset.
For example, when a CDI is defined
in the reference changeset with the
value true and the CDI does not
appear in the target changeset, then
the last three columns in the CDIs and
variables tab will have the following
values:
◦ Reference (R): true
◦ Target (T): [Empty]
◦ Source level (R/T): Direct

If a file node is selected in the tree, the File information tab displays its metadata.
File information tab - List columns
Column

Description

Differences

Indicator to show where the differences are.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
Column

Description

◦ Target: The file node is available only in the target
changeset.
◦ Reference: The file node is available only in the
reference changeset.
◦ Different: The file node data differs in the target and
reference changesets.
File metadata

Metadata of the file attached to the file node.
◦ File name: Name of the attached file in the file node.
◦ Content type: Content type of the file.
◦ Content: Content of the attached file. Preview is not
available on the list, but you can download the file to
preview it.
◦ File URL: Folder path where the file exists.

Reference (R)

Details of the file present in the reference changeset.

Target (T)

Details of the file present in the target changeset.

Validating and correcting configuration data
For every change to an environment, there may be tens or hundreds of rules (policies) that need
to be checked. CDM enables you to auto-validate configuration data to ensure that configuration
changes are error-free and policy-compliant before the config data is consumed.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

CDM automates much of the validation process
When teams deploy an application, they typically need to ensure that no errors are introduced at
the code and configuration level, and that compliance policies are respected. For every change
to an environment, there may be tens or hundreds of rules (policies) that need to be checked. A
manual validation process is prone to errors.
DevOps provides developers, IT admins, DevOps Config engineers, or team leads a way
to ensure that configuration changes are error free and policy-compliant. In addition, after
validation gives developers or IT admins enough contextual information to identify and fix issues.
This means that after a user commits any changes to configuration data, all relevant policies are
applied, results evaluated, and appropriate actions are triggered (for example, deploy or do not
deploy).
Here's the CDM process that auto-validates configuration data before it is consumed.
1. You create a policy version based on an existing policy and then activate and publish the new
version.
2. For dynamic mapping of policies to deployables, create a condition on the CDM Deployable
[sn_cdm_deployable] table. Associate the condition with one or more policies. At runtime,
these policies are executed to validate deployables that meet the defined conditions.
3. You map the policy to a deployable using static mapping or dynamic mapping to ensure that
the policy executes against any snapshot of the deployable when requested (manual or
automated request).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
For more information on policy mappings, see PaCE Static and Dynamic Mapping

.

4. When you commit a changeset for the deployable, the system must validate the resulting
snapshot. To auto-trigger execution of the mapped policies whenever a changeset is
committed, select the Validate option when committing the changeset. You also have the
option to validate the snapshot manually.
In both cases, the policies mapped using static mapping and dynamic mapping are executed.
◦ If you configured the automated process to be integrated with your pipeline, then the
policies return the results of the validation process to the pipeline in JSON files. The pipeline
decides whether to continue based on the validation decision: Compliant, Non-compliant.
◦ If the process is not integrated with your pipeline, or if validation failed or did not finish, then
you review the validation decision and take appropriate action.

Use pre-defined policies as models for your custom policies
CDM includes policies that you can use as models for custom policies that meet specific needs.
Note the following important patterns in the pre-defined policies;
• The policies all use the CdmQuery script include to retrieve config data.
• Use CdmQuery with Secrets to ensure all data is included.
• The CdmPolicyUtil script include adds warnings and failures.
• When all policies have run and a failure has been populated in the output, the decision is
non_compliant.
• Use the logger for debugging. Remove the logs when the policy is ready to be published.
• Use mapping input parameters to supply dynamic input values.

Guidelines for validating snapshots
• Do not manually validate snapshots that have already been validated and published.
• If you select the Validate snapshots or Validate and publish snapshots option when
committing a changeset, then the system auto-validates each snapshot when it is first
generated.
• To view the current validation failures or warnings for a snapshot, open the snapshot and
select the Validation Results tab. For details, see View the results of snapshot validation.
• Use the Policy Test Playground feature to revalidate snapshots while you develop a policy. The
resulting validation results are flagged as test results and do not affect operations.
• If there is a requirement to revalidate all snapshots for a deployable, revalidate only after you
have tested and published the policies.

Practices to avoid
• Do not use GlideRecord to retrieve config data records.
• To display policy decisions on the UI, CDM requires warning and failure data in a particular
structure. Use CdmPolicyUtil to add warnings or failures (not manual insertions). (At least
understand the structure that CdmPolicyUtil inserts into failures and warnings.)
• In policies, do not attempt to retrieve data that does not come from CDM data. This practice
can result in cross-scope access issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
• Do not write "always-compliant" or "always-non-compliant" policies.
• Do not hard-code any names or values in policies. Instead, use mapping input parameters to
supply dynamic input values.

Snapshot status
• Not validated: This is the initial snapshot state where no policy has been executed against the
snapshot.
• Requested: The validation flow has started.
• In progress: The validation flow is running and policies are currently executing.
• Passed: The snapshot has passed all policies.
• Failed: The snapshot has failed one or more policies.
• Execution error: A policy failed to run to completion due to an unexpected error, mostly when
the CdmPolicyUtil script include is not used to provide warning and failure messages..

Example flow
A user commits changes to config data before a deployment.
Data is validated against all assigned policies.
If validation fails, then deployment is stopped. A list of errors pointing to their location in the
config data is given to the user. Available actions should be determined in the context of the
application itself and the environment where the application is deployed. For example:
• Allow deployment in a TEST environment regardless of the number of errors or warnings.
• Stop deployment in PROD if any error.
• Stop deployment in PROD if any warning and if the application is critical.
• Allow deployment in PROD regardless of the number of warnings if non-critical.
User fixes errors and recommits change.
Data is validated again and the results are ok.
A snapshot is taken.
Deployment is executed.
Related topics
CdmQuery - Scoped
Validate a snapshot manually
Validate a snapshot from the Snapshot tab. For example, manually validate a snapshot to ensure
that its valid for new policy requirements.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
About this task
• Do not manually validate snapshots that have already been validated and published.
• If you select the Validate snapshots or Validate and publish snapshots option when
committing a changeset, then the system auto-validates each snapshot when it is first
generated.
• To view the current validation failures or warnings for a snapshot, open the snapshot and
select the Validation Results tab. For details, see View the results of snapshot validation.
• Use the Policy Test Playground feature to revalidate snapshots while you develop a policy. The
resulting validation results are flagged as test results and do not affect operations.
• If there is a requirement to revalidate all snapshots for a deployable, revalidate only after you
have tested and published the policies.

Procedure
1. Use either of the following methods to validate a snapshot:
◦ Use the REST API endpoint to validate.
◦ On the Snapshots tab for an application, select the name of the snapshot to validate and
then select Validate.
◦ On any tab for an open snapshot, select Validate.
2. Confirm the action on the Validate snapshot dialog box.
The system follows this procedure to validate snapshots:
◦ The system executes all policies that are statically or dynamically mapped to the associated
deployable.
◦ If the snapshot passes all policies, then the Validation status value is set to Passed and no
entries are listed on the Validation Results tab. If validation was invoked with the Publish
Valid publish option, then valid snapshots are auto-published.
◦ If any policy encounters issues, then the Validation status value is set to Failed. The
Validation Results tab displays all failures or warnings returned by policies.
◦ If any policy failed to run to completion, then the Validation status value is set to Execution
error and the Validation Results tab indicates that validation failed due to error.

What to do next

If the snapshot failed validation, you can view the issues to fix them. See View the results of
snapshot validation.
Related topics
View the results of snapshot validation
View the results of snapshot validation
View validation failures and warnings on the Validation results tab for the snapshot.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer or cdm_editor or cdm_exporter_editor or cdm_policy_editor or
cdm_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
Procedure
1. On the Snapshots tab for an application, select the snapshot to open the Validation results
tab.
2. View failure and warning information on the Validation results tab for the snapshot.
The Policies panel displays a card for each policy that is mapped to the associated
deployable.

Cards in the Policies panel
Card label

Description

All Policies

The card displays the total number of failures
and warnings for this validation run.

Name of the mapped policy

Each policy that has been executed for the
deployable and its execution results with
whether the snapshot is compliant with the
policy. It also displays the following data:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
Card label

Description

◦ Failures: Number of failures in the current
execution.
◦ Warnings: Number of warnings in the
current execution.
◦ Dynamic mapping: Value is true if the
policy is dynamically mapped, or else false.
◦ Select a card from the Policies panel to view the associated data in the Failures and
warnings panel.
◦ Select the more actions icon (

) for a policy and select an action, as follows:

More actions menu options
Option

Description

Execution record

View execution information for this policy
run. See View the execution record for a
policy run for details.

Open policy

Open the policy.

Open business condition

Opens the condition set on the CDM
Deployable [sn_cdm_deployable] table
based on which the policy was dynamically
mapped to the deployable and executed.

Note: This menu option is available
only for the dynamically mapped
policy.
For more information on conditions and
dynamic mapping, see Map PaCE policies
using Dynamic Mapping .
The Failures and warnings panel displays the list of all failures and warnings for the policy that
is mapped to the associated deployable.
Failures and warnings panel - List columns
Column header

Description

Description

Text that provides information about the
failure or warning result.

Type

Type of validation result:
◦ (Empty)
◦ Information
◦ Failure
◦ Warning

Policy

Name of the policy that returned a failure or
warning. Select to open the policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
Column header

Description

Impacted data

The CDI (name: value pair) that resulted
in the failure or warning.

Path

Path to the node in the data tree that includes
the impacted data.

View the execution record for a policy run
View the execution record to analyze policy execution.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer or cdm_editor or cdm_exporter_editor or cdm_policy_editor or
cdm_admin

Procedure
On the Validation results tab for a snapshot, select the more actions icon (
select Execution record.

) for a policy and

Policy execution information on the Details tab
Field

Description

Policy

Name of the policy that executed.

Version name

Version of the policy that executed.

End time

Timestamp when execution finished.

Decision

Result of policy execution.
• Compliant
• Non-compliant
• Execution error
• Compliant with exception

Adding warning and failure messages to validation results — CdmPolicyUtil
You use the CdmPolicyUtil script include to add warning and failure messages to validation
results in the CDM Policy Validation Results table. CDM expects validation warnings and failures
to contain a node path, a snapshot ID, and a reference to the impacted node.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
CdmPolicyUtil
• CdmPolicyUtil is a public script include.
• Because CdmPolicyUtil is a global script include, you do not need to invoke it like a new
CdmPolicyUtil().
• You can invoke CdmPolicyUtil in all scopes, but the expected invocation scope is PaCE
(specifically, during the execution of PaCE policies).
• The proper call is CdmPolicyUtil.methodName(parameters).

Note: If you add warning and failure messages to validation results manually instead of
using CdmPolicyUtil, the snapshot validation status will show Execution Error.

Methods
addFailure
Adds a failure message. The message appears on the Validation results tab for the
snapshot.
Parameters:
• Output: Policy decision for the subject snapshot (primarySnapshotId).
• cdmNode: Node (sn_cdm_node) that caused the failure.
• name: Name of the failure.
• description: Description of the failure.
addWarning
Adds a policy warning message. The message appears on the Validation results
tab for the snapshot.
Parameters:
• Output: Policy decision for the subject snapshot (primarySnapshotId).
• cdmNode: Node (sn_cdm_node) that caused the warning.
• name: Name of the warning.
• description: Description of the warning.
getLastCreatedSnapshotIds
Returns the latest created and published snapshot IDs for the supplied
additionalDeployables. If no published snapshot is available for a particular
deployable, adds a debug message.
Parameter:

additionalDeployables – can be passed directly as it comes to the policy.
getLastPublishedSnapshotIds
Retrieves the latest and published snapshot IDs for the supplied
additionalDeployables. If no published snapshot is available for a particular
deployable, adds a debug message.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Parameter:

additionalDeployables - can be passed directly as it comes to the policy.

Sharing components among applications — Component libraries
Some applications may share the same basic structure and require nearly identical configuration
data. Shared components in CDM enables you to use a component across several applications.
For better organization, these shared components are managed in component libraries.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Component libraries
Component libraries improve consistency and maintainability by ensuring a single source of
truth for a component's config data across applications. You can use the unified view in the
DevOps Config workspace or CdmSharedLibraryApi
REST API to create and maintain these
libraries.
In this example, an organization sells tea on its website. Both the Shopping-Cart and
Browsing-Pane application services make use of config data for product prices and
photo appearance. To ensure that the config data is identical in both DevOps applications,
each application uses shared components from the Tea-Service component library. The
components are managed in the library and the applications each use two of the components
from the library.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
Working with shared components
• A user with the sn_cdm.cdm_admin role can create and manage a component library and
create, add, and delete shared components in the library.
• While working in an application changeset, you can add, update, or remove a shared
component.
• Applications can use any mix of components: components that are defined in the application
(direct components) and components from a component library.
• While working in an application changeset, you cannot modify a shared component in the
same way as you can modify a direct component. A collection in an application can, however,
override any value in a shared component.
• For a shared component to be available for use in applications, the component must be in the
Published state and the library that holds the component must be in the Available state.
In the example, no application can use the Flavor-Sort-settings component because
it has not been published.
Working on component libraries with a unified view
The unified view of component libraries in the DevOps Config Workspace provides a single
location to view and manage component libraries and the components within them.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Using the unified view, you can:
• Search for a component library or shared component.
• Navigate quickly between different component libraries or shared components.
• View a list of all applications that use shared components of a library.
• Edit the config data of a library.
• View and create changesets for the library and components.
• View different versions of a shared component, and publish or unpublish them.

Users
The following users can view and manage the component libraries and shared components in
the DevOps Config Workspace.
• CDM admin can view and manage the libraries and shared components.
• CDM editor can view and manage the shared components within the libraries.
• CDM viewers can view the libraries and shared components.

Accessing the component libraries
To open the Component libraries, navigate to All > DevOps Config > DevOps Config Workspace
and select the component libraries icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
Component libraries list
On the Component libraries list, you can review all component libraries and shared components
within them. The list pane has the following sections to enable you to access and manage the
libraries and components quickly.
• View: Filter libraries by the categories: All libraries and Editable libraries. Editable libraries are
the libraries that you create or that others create but grant you permission to view and edit
through the associated authoring groups.
• Search: Search library or component by their names.
• Create new library: Create a library using this option.
• Listing: Select a library node or shared component node to view it in the form pane.
The following is an example of a unified view for Component libraries.
Unified view in DevConfig Workspace to manage component libraries

Component library form
On the Component library form pane, you can review and manage your libraries and
components within them. Select a library node in the left pane to view and edit the associated
data.
• Header: The header section shows the status and other metadata of the component library.
You can take the following actions:
◦ Mark a library as available or unavailable for use by using the Available toggle switch.
◦ Save the changes to the library.
◦ Edit to create or open a changeset for updating shared components.
• Tabs: The following tabs are available:
◦ Details: View and update a library's details such as name, description, and authoring groups.
The tab also includes a list of all applications that are using one or more components of the
library.
◦ Components: View all the components available in the library.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


<!-- page 1398 -->
◦ Config data: Review the config data in each component of the library. You can switch
between Editor and List view using the List view toggle switch.
◦ Activity: View a list of all changesets created for updating the library, its components, and
config data.
The following is an example of a component library form in the DevOps Config Workspace.
Component library form

Shared component form
On the Shared component form pane, you can review and manage components within your
libraries. Select a component node in the left pane to view and edit the associated data.
• Header: The header section shows the status and other metadata of the component library.
You can take the following actions:
◦ Save the changes to the component.
◦ Edit to create or open a changeset for updating the component.
◦ Refresh the form data.
• Tabs: The following tabs are available:
◦ Details: View the component's details and update its description as required. The tab also
includes a list of all applications that are using the components.
◦ Versions: View all the published and unpublished versions of the component. You can also
publish a component's version or unpublish a version.
The following is an example of a shared component form in the DevOps Config Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
Component library form

Create or update a component library
Create a component library to manage components that can be reused across multiple
applications.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_admin

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the component libraries icon (
tab.

) in the left navigation to open the Component libraries

3. Click Create new library to create a component library.
4. On the form, fill in the fields.
Create component library form
Field

Description

Library
name

Name of the component library.
This name must be unique across all CDM applications and libraries.

Description Description about the component library, such as what type of components it
includes.
Authoring
groups

User groups with access to edit the component library. Users in the groups with
appropriate roles can view the component library.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Field

Description

Note: If you choose an authoring group, make sure you’re a member of
that group, or you’ll lose editing access to the library.
However, if you have the cdm_all_app_access and cdm_admin roles, you
will have full access to the component library, even if you're not a member
of these authoring groups.

5. Click Create.

Result

A component library is created. The state of the library is set to Not Available, which means that
any components added to the library cannot be used, updated, or exported.

What to do next
1. Add or update a shared component in a component library.
2. Activate a component library.
Activate a component library
Activate a component library to make all of its shared components available for use.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_admin

About this task

A library can be in the Unavailable state in the following situations:
• When a library is created for the first time
• When a library and its components are being created
• When a newer version of the library is being created
If a library is unavailable, no component within that library can be used, updated, or exported.
However, it does not impact applications that are already using components within this library.
When the library is ready for use, you can activate it.

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the component libraries icon (
tab.

) in the left navigation to open the Component libraries

3. In the left pane, select a component library.
4. Select the Available toggle switch to make the library available so that its shared components
can be used in applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Result
• The library and the shared components in it become available for use.
• The status of the library is set as Available.
Delete a component library
Delete a component library and all of its components if no application is using the library's
components.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_admin

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the component libraries icon (
tab.
3. From the Options button (

) in the left navigation to open the Component libraries

), select Delete and then confirm the delete action.

Note: If a component is being used in any application, the Delete option is not
available.

Result

The component library and all of its components are deleted.
Add or update a shared component in a component library
Add or update a shared component in a component library.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_editor or cdm_admin

About this task

You can also add a component to the library as a shared component from a request. For more
information, see Accept or reject a component request for inclusion in a component library.

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Select the component libraries icon (
libraries tab.

) in the left navigation pane to open the Component

3. Select a component library from the Component libraries list tab to which you want to add a
shared component.
4. Select Edit to create a changeset or select an open changeset to work.
5. Add a shared component to the library.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
a. On the Config data tab of the changeset record, select the more actions icon (
components node and select Create shared component.

) for the

b. In the Create shared component dialog box, enter a unique and meaningful name for the
component.
c. Select Create.
A component is created.
6. Add config data items (CDIs) and values for the shared component.
a. With the shared component node selected, add one or more CDIs and values in the Editor
pane.
b. Select Save.
7. Add a file node to the component.
For more information on adding files, see Manage files in the config data model using file
nodes.
8. Optional: Select the more actions icon (

) for a component to rename or delete it.

◦ To rename the component, select Rename from the menu.
◦ To delete the component, select Delete from the menu.

Note: These options are available only if the component is not being used in any
application.
9. Select Commit to commit all changes for the shared component.
A new version of the shared components is created.
10. In the Additional actions field, select an option to either publish the latest version or do it later.
◦ No additional actions: Does not process anything for the latest version of the component.
◦ Publish latest version: Publishes the latest version of the component.

Note: For a shared component, only one version can be published at a time. So, any
existing published version is unpublished and the new version is published.
Publish or unpublish a shared component version
Publish a version of a shared component in a library so that it can be used in an application.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_admin

About this task

When a version is unpublished, it means that the component and its version can no longer be
used in an application. However, it has no impact on applications that are already using the
version.

Note: A shared component can only have one published version at a time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the component libraries icon (
libraries list tab.

) in the left navigation pane to open the Component

3. Select a component library from the Component libraries list tab.
4. Select the Components tab and then select a component name to open.
5. Select the Versions tab.
6. Publish or unpublish a version of the component.
Option

Description

Select an unpublished version from the list
and select Publish.
Publish a version of a shared component

If there’s any existing published version of the
component, then it’s unpublished before pub­
lishing the selected version. The Published
value updates to true.
Select a published version from the list, se­
lect the

Unpublish a version of a shared component

, and then select Unpublish.

The selected version of the component is un­
published and the Published value updates
to false.

Request to include a component to a component library
Submit a request for a component in an application that could be reused across multiple
applications to be added to a shared component library.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_admin or cdm_editor

About this task

While creating data models for their applications, DevOps Config editors and administrators may
identify certain components could be reused across multiple applications. They can submit a
request to the component library owners to add those components to the library.

Note: You can only submit one request for a component for the same library at a time.
Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Select the apps icon (

) in the left navigation to open the Apps tab.

3. Open an application and select the Config data tab.
4. Select the shared components icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
5. In the Shared components pane, select + Create request.
6. Enter the details in the request form.
Create shared component request
Field

Description

Component Name of the component to be added to the request.

Note: Config data from the last committed changeset is added to the
request, excluding any secret data values for keys, referenced variables,
and file attachments in file nodes.
Target
library

Component library to which the requested component should be added.
Only existing and available libraries are listed in the field.

Component Description about the component, such as how it works.
description
Additional
details

More details about the component that could be helpful to the approver during
approving.

7. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
A request is created for the library owner to add the selected component as a shared
component in the target library. The state of the request is set as Pending review and is listed
in the Shared components pane.
You can see all of your requests from the last 30 days and filter them by their state.

What to do next

While a request is in the Pending review state, you can change its information or withdraw it by
selecting the request card in the Shared components pane.
• To update the request, update the component's description or additional details in the
respective fields and select Update.
• To withdraw the request, select Withdraw.
The library owner can review and approve or reject the request.
Accept or reject a component request for inclusion in a component library
Review a request for adding a component to a component library and approve or reject it.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Someone has requested to add a local component from an application to the component library
as a shared component. If there are such requests in a library that need your approval, you see a
Requests label ( ) beside the library name.
Role required: cdm_admin or cdm_editor

Procedure
1. Navigate to All > DevOps Config > DevOps Config Workspace.
2. Click the component libraries icon (
tab.

) in the left navigation to open the Component libraries

3. Open a component library and select the Requests tab.

Note: The Requests tab is available only when there’s an open request for adding a
component to the library.
4. Click a requests card to review its config data.
The config data of the selected card appears in the preview pane.
5. As required, click accept or reject the request.
Approval action

Description

a. Click Accept on the card.
b. As required, update the fields in the Ap­
prove Request pop-up window.
Accept a request

▪ Select a library in the Target library field
to which the component will be added.
▪ Update the name of the component in
the Component field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Approval action

Description

Note: If a component with the
same name exists in the library, en­
ter a different name.
▪ Update the description of the component
in the Component description field.
c. Add comments about the approval for the
requester to see in the request.
d. Select an action option in the Additional
actions field to perform after the request is
processed.
▪ No additional actions: Does not process
anything for the latest version of the com­
ponent.
▪ Publish version: Publishes the compo­
nent version.
e. Click Accept.
a. Click Reject on the card.
Reject a request

b. Enter the reason of rejection for the re­
quester to see in the request.
c. Click Reject.

Result
• The request is removed from the Requests tab.
• Any comments added in the request can be seen by the requester in the app from where the
request was submitted.
• If the request is approved:
◦ The state of the request updates to Accepted.
◦ The component is added to the selected component library as a shared component. Any
secret data values (such as account id or passwords) for keys, referenced variables, and file
attachments in file nodes are not included with the component. You have to replace the file
attachments in all such file nodes.
If the library is available, the component is ready for use in multiple CDM apps.
◦ If you selected Publish version in the Additional actions field, then the shared component
is published.
• If the request is rejected, the state of the request updates to Rejected.
Manage shared components in a CDM application
Add a shared component to an application, view shared components that are available to add, or
remove a shared component from an application.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Roles required: CDM Editor [sn_cdm.cdm_editor]

About this task
• While working in an application changeset, you can add, update, or remove a shared
component.
• While working in an application changeset, you cannot modify a shared component in the
same way as you can modify a direct component. A collection in an application can, however,
override any value in a shared component. Also, you cannot rename a shared component in
an application. If such a change is needed, a new shared component with the required name
must be created, and then added again in the application.
All of these changes are withing the application changeset.

Procedure
1. While working on the Config data tab for an application changeset, select the shared
components icon (

).

◦ Each card on a Shared components tab displays the name, parent component library, and
version for a shared component.
◦ Components are grouped by library and are sorted alphabetically.
◦ Use the Libraries selector to display only components in the selected library.
◦ Use the Search text box to filter the list of components or libraries.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
◦ Available: List of shared components that the application can include in its config data.
For a shared component to be available for use in applications, the component must be in
the Published state and the library that holds the component must be in the Available state.
◦ In use: List of shared components that are currently used in the application.
◦ Updates: A card appears when a newer published version of a component is available.
Select the refresh icon (

) to ensure that you’re viewing all current updates.

2. Add a shared component to application data: On the Available tab, select Add.
◦ The component is added to the components folder in the application.
◦ The shared component icon (
library.

) indicates that the component comes from a component

◦ The component is selected and the Editor and Preview panels display the code of the
shared component.
3. View the config data in a shared component: On any card, select the additional actions menu
(

) and then select View config data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
A pop-up displays the latest published version of the shared component code. Variables are
not resolved and encrypted data is not decrypted in the pop-up view.
4. Remove a shared component: Use either of the following methods to remove a shared
component from the application data.
◦ On the In use tab, select the X in the component card and then confirm the action in the
pop-up.
◦ On the Config data tab for an application, select the Actions menu (
and then select Remove. Confirm the action in the pop-up.

) for the component

Note: Removal is not deletion. Removal takes the component's config data out of the
application, but the component remains unchanged in the component library. When
you remove a component from an application, the component card reappears on the
Available tab.
5. Update a shared component.
Select the refresh icon ( ) to ensure that you’re viewing all current updates. The system
indicates that a newer published version of a component is available in the following ways:
◦ Highlighted text "Update" appears next to the component in the components folder.
◦ The Updates tab displays a card for the component.
◦ The pop-up for committing a changeset includes a notification: "One or more of the shared
components have updates available".
Follow this procedure to review the updated config data and then update a component:
a. On the Updates tab, select Update for the component.
b. Review the information on the Update a shared component pop-up and then select Update.
▪ The Details tab displays name and version information.
▪ The Latest config data tab displays the latest version of the shared component code. In
the view, variables are not resolved and encrypted data is not decrypted.
6. Commit the application changeset to generate a snapshot containing all these changes.
The system generates a snapshot of each deployable that is affected by the changes.
Related topics
Sharing components among applications — Component libraries

View snapshots
View the snapshots of all deployables for an application on the Details tab for the application.
The release pipeline can access only a snapshot that is the currently published version.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
Procedure
1. Open an application and select the Snapshots tab.
The tab lists all deployables that are associated with the application. Each deployable displays
a short list of its snapshots. Select Show all to view the full list of snapshots.
Snapshots tab - Columns of the Snapshots list
Column name

Name

Description

Unique name for the snapshot.
When a snapshot is generated, the system uses the deployable
name and the snapshot number to generate a default name (for
example, deployableName_1, deployableName_2). You can
edit the name.

Tip: You can edit the name on the Details tab. Select the
snapshot name to open the tab.
Description

Descriptive information that you supply to help other users.

Tip: You can add a description on the Details tab. Select the
snapshot name to open the tab.
Published

Boolean that indicates whether the snapshot is published. Only
published snapshots can be exported.

Important: By default, exporters use the most recently
created published snapshot.
While defining or updating a deployable, you can specify that
only validated snapshots can be published. You can unupublish a
snapshot. See Publish or unpublish a snapshot.
Deployable
Validation

Deployable on which the snapshot is based.
Validation status:
◦ Not validated: This is the initial snapshot state where no policy has
been executed against the snapshot.
◦ Requested: The validation flow has started.
◦ In progress: The validation flow is running and policies are
currently executing.
◦ Passed: The snapshot has passed all policies.
◦ Failed: The snapshot has failed one or more policies.
◦ Execution error: A policy failed to run to completion due to an
unexpected error, mostly when the CdmPolicyUtil script include is
not used to provide warning and failure messages..

Last validated

Timestamp when the snapshot was validated last.

Created

Timestamp when the snapshot was created.

Created by

User who created the snapshot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
Column name

Changeset

Tags

Description

Changeset containing the data of the snapshot. Select the icon to
open the changeset.
Text tag that enables you to filter the snapshots in a list.

2. Select the snapshot name to view its details and set values on the Details tab.
Publish or unpublish a snapshot
Publish a snapshot so that it can be exported to enable the CI/CD pipeline to access and use the
config data. Exporters can execute only on published snapshots.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Editor [sn_cdm.cdm_editor] or CDM Admin [sn_cdm.cdm_admin]

About this task
• You publish a snapshot when you feel that the deployable that it represents is ready to export
to the pipeline.
• While defining or updating a deployable, you can specify that only validated snapshots can be
published.
• A deployable must be connected to a service to publish its snapshots.
• If a published deployable is disconnected from services, then you can perform the following
actions, but cannot publish snapshots of the deployable until it is connected to a service:
◦ Edit config data.
◦ Create snapshots.
◦ Validate snapshots.
◦ Fix validation errors.

Tip: You can add a text description of a snapshot or rename it on the Details tab for the
snapshot.
• When exporters look for the latest snapshot, they should look for the latest created
snapshot that is published.
• The published_date is the data at which the publish happens.
• The unpublish snapshot action removes the publish flag and removes the published_date
value.

Procedure
1. Use either of the following methods to publish a snapshot:
◦ On any tab for an open snapshot, select Publish.
◦ On the Version tab for an application, select Publish from the Actions menu for the
snapshot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
2. View info
Information on the snapshot header and Details tab
Changeset number

The system auto-assigns the changeset
number. The system uses the number as the
default changeset name.

Changeset name / Description

The system uses the changeset number as
the default changeset name. Update the
fields to help other users by changing to a
more user-friendly name or by associating
descriptive information with the changeset.

Deployable

Deployable on which the snapshot is based.

Validation status

◦ Not validated: No policy has been executed
against the snapshot.
◦ Passed: The snapshot has passed all
policy executions.
◦ Failed: The snapshot has failed one or
more policy executions.
◦ In progress: Policies are currently
executing.
◦ Execution error: A policy failed to execute
to completion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Created / Created by

User that created the changeset and
timestamp` of creation.

Published on

Timestamp when the snapshot was
published.

3. Use either of the following methods to unpublish a snapshot:
◦ On any tab for an open snapshot, select Unpublish.
◦ On the Version tab for an application, select Unpublish from the Actions menu for the
snapshot.

Compare snapshots from the same or different applications
Use the Config Data Analyzer tool to find similarities and differences between two snapshots
from the same or different applications.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer, cdm_editor, or cdm_admin

About this task

You can compare and contrast snapshots from any deployable of the same or different
applications.
To see the changes between two snapshots from the same deployables, see Compare two
snapshots of a deployable.

Procedure
1. While viewing an application, select Compare config data.
The Compare config data tab opens. The current application is the target application, and its
name is pre-populated in the Target application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
2. Select the Snapshot option in the Compare type field.
3. Select an application and then their snapshots to compare.

Option

Description

Reference
application

Application to compare with the target application. The field lists the latest
committed data for all applications including the target application.

Reference
snapshot

Snapshot of the reference application to compare.

Target
snapshot

Snapshot of the target application against which the reference snapshot is
compared.

4. Optional: If you've the cdm_secrets role, you can select View encrypted data to view
encrypted values in clear text in the comparison results.

Note: The check box is inactive for users who don’t have the cdm_secrets role. When
the values in the target and reference differ, the comparison results indicate that the
values differ, but the data itself still appears as ********.
5. Select Compare.
The Config data differences section displays the comparison results. It shows the differences
between the selected reference and target snapshots.

Important: If you commit changes to a reference application while the Compare

config data tab is open: When you return to the Compare config data tab and select
Compare, the system uses the most recent committed changeset, performs the
comparison again, and then displays the new results in the results section.
The letters in the following illustration identify the tools that you can use to analyze the data.

A: Navigation panel
The navigation panel displays the node structure of the applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
◦ Nodes that include changed CDIs (either directly or in descendent nodes) are
annotated with Different.
◦ Nodes that include newly added CDIs (either directly or in descendent nodes)
are annotated with the identity of the application changeset that includes the
new data, either Reference or Target.
You can search for a node name in the Search field. Select a node to view its
contents in the Differences panel.
B: Differences panel
The CDIs and variables tab displays changes to individual CDIs for the node that
is selected in the navigation panel.
◦ By default, the root node is selected and the data panel includes all CDIs for
both changesets. Select a node in the navigation panel to display data for only
that node and its descendents.
◦ When Diff only is selected, the number of CDIs that differ appears after the
node path.
◦ Node paths are displayed in gray. Use the expansion icon (
folder.

) to view CDIs in a

CDIs and variables tab
Column

Description

Differences

Indicator to show where the
differences are.
◦ Target: The CDI appears only in the
target changeset.
◦ Reference: The CDI appears only in
the reference changeset.
◦ Different: For the specified CDI, the
values in the target and reference
changesets differ.

Description

Statement of how the changesets
differ. For example, the text might
indicate that a CDI appears only in
the reference changeset or that the
values for a variable differ between the
changesets. See Types of differences
between CDM applications for the
full list of difference types and their
causes.

Name

Name of the CDI.

Reference (R)

Value of the CDI in the reference
changeset.

Target (T)

Value of the CDI in the target
changeset.

Source level (R/T)

The node level in the code at which the
CDI is defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


