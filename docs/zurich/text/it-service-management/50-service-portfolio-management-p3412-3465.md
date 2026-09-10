# Zurich IT Service Management — Service Portfolio Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3412–3465 of 3857

Sections: Service Portfolio Management (p3412); Explore (p3413); Configure (p3418); Use (p3426); Reference (p3463)

---

<!-- page 3412 -->
Store application

Description

Walk-up Experience
for Service Operations
Workspace

Setup for walk-up queues, stockroom, and appointments in Service
Operations Workspace.

[sn_sow_walkup]
Recommendation
Framework

Framework to generate contextual, actionable, and dynamic
recommendations in a configurable workspace.

[sn_rf]
Service Level
Management
Experience for
Workspace

Gathers service requirements and monitors and reports with
reference to agreed service levels (SLAs) in a configurable
workspace.

[sn_sla]
Service Operations
Workspace Admin
Center

Provides quick access to configurations of customisable pages in
Service Operations Workspace and recommends the additional
setup needed to extend Service Operations Workspace capabilities.

[sn_sow_admin]
Service Operations
Provides quick access to ITSM related configurations in Service
Workspace ITSM Admin Operations Workspace.
Center
[sn_sow_itsm_admin]

Service Portfolio Management
®

ServiceNow Service Portfolio Management enables you to improve your IT business operations
and meet customer demands by documenting and managing your IT services using a
standardized, structured format.
Service Portfolio Management enables portfolio owners and service owners to create and
manage services, service offerings, and portfolios.

Get Started

Explore

Configure

Learn about Service Portfolio
Management concepts and features.

Configure service offerings, commitments,
subscriptions, and the service catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3412


<!-- page 3413 -->
Use

Reference

Use Service Portfolio Management
to create and manage services,
service offerings, portfolios, and
service level agreements (SLAs).

Get information about Service
Portfolio Management administration.

Troubleshoot and get help
• Ask or answer questions in the Service Portfolio Management community
• Search the Known Error Portal for known error articles
• Contact Now Support.

Exploring Service Portfolio Management
The Service Portfolio Management application enables you to document and manage your
services, service offerings, and portfolios using a standardized, structured format.

Service Portfolio Management overview
The Service Portfolio Management application enables you to create, organize, and manage
portfolios of IT services. It optimizes the value of services and reduces their costs to help you
to streamline your IT business operations and meet customer demands. A service portfolio
includes information related to the organization of services and data about each service,
including status and related items.
Service portfolios typically have three phases:
• Service pipeline: Services that aren't yet operational or available for use. These services are
typically proposed or services in review for suitability. In this phase, you can analyze and
manage the future growth and time line for each service.
• Service catalog: Services that are operational and available for use, as well as design and
development. These services typically have representation in a request catalog.
• Retired services: Services that are no longer operational or available for use. These services
can include essential historical information.

Service Portfolio Management users
The following table presents the most common users for Service Portfolio Management. For more
information about core roles and tables, see Installed with Service Portfolio Management.
Users
User

Portfolio admin

Description

Set up, create, edit, and delete services and service portfolios.
Manage portfolios including related commitments and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3413


<!-- page 3414 -->
Users (continued)
User

Description

availability. Update taxonomy nodes, services, service
offerings, and reparent services.
Portfolio editor

Edit and delete services and service portfolios. Update
portfolios, taxonomy nodes, services, service offerings, and
reparent services.

Portfolio viewer

View portfolios, taxonomy nodes, services, and service
offerings.

Service admin

Set up, create, edit, and delete services and service offerings.

Service editor

Edit services and service offerings that they own or are a
delegate of.

Service viewer

View all service portfolios, services, and service offerings.

Service Portfolio Management workflow
Depending on your role, you can use Service Portfolio Management for a variety of use cases.
Service Portfolio Management overview

• Portfolio admins create service portfolios, services, and service offerings. Portfolio admins can
®
also use the ServiceNow Service Builder application to create and edit services and service
offerings.
• Portfolio editors and service editors create, add, and assign roles to service offerings. Portfolio
editors and service editors can also log outages, assess availability commitment results,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3414


<!-- page 3415 -->
assess service level agreements (SLA) commitment results, and identify service impacts from
dependencies.
• Portfolio viewers and service viewers can view service portfolios, services, and service
offerings in both Service Portfolio Management and in Service Builder.

Service Portfolio Management benefits
The Service Portfolio Management application provides several benefits to help you organize
services and other solutions.
Service Portfolio Management benefits
Benefit

Feature

Users

Create and manage service portfolios and add Create portfolios
services and offerings to the portfolios.
in Service Portfolio
Management

Portfolio admin

Create and manage the overall portfolio
taxonomy, including service nodes.

Service Portfolio
Management
taxonomy

Portfolio admin

Create taxonomy nodes

Create taxonomy
nodes

Portfolio admin

Create services

Create a service in
Service Portfolio
Management

Portfolio admin and
service editor

Create service offerings, commitments, assign Service offerings
support teams to a service offering, and
in Service Portfolio
subscribe users.
Management

Portfolio admin
to create service
offerings.
Service editor to
add commitments to
an offering, assign
multiple support
teams, and subscribe
users.

Log outages

Log outages in
Service Portfolio
Management

Service editor

View availability results

View availability
All Service Portfolio
results in Service
Management roles
Portfolio Management

Set the time zone for availability results

Set the time zone for
availability results
in Service Portfolio
Management

Integrates with the Common Service Data
Model (CSDM)

Applying the CSDM
Admin
guidelines to Service
Portfolio Management

Portfolio admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3415


<!-- page 3416 -->
What to explore next
To learn more about configuring and using Service Portfolio Management, see:
• Configuring Service Portfolio Management
• Using Service Portfolio Management
• Service Portfolio Management reference

Use Service Portfolio Management services
Configure IT services within your portfolios to add the most value to your organization. The IT
services defined in your portfolios may, or may not be, aligned to an application. IT services
defined in your portfolios may, or may not be, represented in a request catalog.
The phase and status of a service indicates the life-cycle position of the service. You can view,
track, and monitor the services by phase and status with platform lists and reports. The lists can
also include retired services for viewing purposes.
Each service record has a unique number to identify the record.
To reflect the importance or impact of each service on the operations of your organization, you
can select a criticality level for them. For example, you might select a high level for a service that
supports sales functionality using the organization's website. You might then select a lower level
for a service that provides internal printing for the organization's employees.

Business services
Business services make up the structure of your service portfolio taxonomy. You can manage
associated service and offering details via the dependency tabs of the related list on the Service
and Service Offering forms. Business services reside in the [cmdb_ci_service_business] table.
Create offerings as children of services. Offerings are created in the Service Offering
[service_offering] table. Refer to Service offerings in Service Portfolio Management for more
details.
You can designate services as Services I depend On or Services Dependent On Me via form
related lists.

Technical services
You can add technical services as part of your service portfolio taxonomy. Even if you don't, you
can still gain insight into these services by adding them as Services I depend On or Services
Dependent On Me in the related list section of the Service form.
Starting with the Zurich release, technical services align with the Common Service
Data Model (CSDM), version 5. With this alignment, technical services remain in the
[cmdb_ci_service_technical] table and are labeled in the user interface as Technology
Management Service. Service offerings remain in the [service_offering] table and are labeled
Service Offering.
Table and label for technical services
Table name

Label in Xanadu and prior
releases

[cmdb_ci_service_technical] Technical Service

Label in Zurich and later releases

Technology Management
Service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3416


<!-- page 3417 -->
To create or modify services, see Create or modify Service Portfolio Management services.
To learn about service offerings, see Service Portfolio Management service offerings.
To subscribe users to a service offering, see Subscribe users to a service offering in Service
Portfolio Management.

Service Portfolio Management portfolios
A service portfolio presents an overall top-level view of your currently available services,
possible future services, and services that existed in the past. Evaluate the impact that services
have on your business and manage them in a single portfolio or multiple portfolios with unique
taxonomy structures, owners, and market scope.

Portfolio overview
Gain valuable knowledge about your service portfolios, including an overall performance score
and estimated spend. This knowledge helps you budget for your services and make informed
decisions about adding new services and retiring services that no longer benefit your business.
Think of a service portfolio as a container that holds a hierarchical organization of definable
nodes, services, and service offerings. Taxonomy in Service Portfolio Management refers to the
classification of your portfolio layers and associated services (legacy portfolios use layers; see
the Note). Typically, taxonomy is structured from a general, high-level perspective to a specific
level, such as a service offering. With this dynamic taxonomy structure, you can organize your
service portfolios in various ways.

Standard and legacy portfolio structures
Prior to the Utah release, Service Portfolio Management provided one portfolio structure.
With the Utah release and after, existing customers can move from the legacy structure to the
improved standard structure by opting in via a system property.
As an existing customer, opting in to the standard portfolio structure upgrades all your service
portfolios. Your existing portfolios remain intact, but performance metrics, scores, and weights
are no longer available. With the improved standard service portfolios, you can use key
performance indicator (KPI) groups in Digital Portfolio Management (DPM) to report on services,
nodes, and portfolio performance.
The standard portfolio structure provides new features and capabilities for your service portfolios
so that you can:
• Create portfolio structures that have multiple different depths in the same portfolio.
• Update your portfolio structure over time to add or remove depth in areas of the portfolio, as
needed.
• Work in your existing portfolio in the new structure, even though "layers" are removed.
The portfolio_admin can navigate to All > Service Portfolio Management >
Administration > Upgrade to Standard Portfolio to access the system property
[standard_portfolio_construct.turn_on]. Only existing customers see this menu path. New
customers get the standard portfolio structure by default so this menu path isn't available.

Important: After you upgrade to the standard portfolio:
• You can't revert to the legacy portfolio structure.
• You don't have access to the performance score in Service Owner Workspace because
weights and performance metrics are no longer available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3417


<!-- page 3418 -->
Standard and legacy service portfolio structure considerations
Opt in to the standard service portfolios

Don't opt in — keep legacy service portfolios

• Use node-to-node relationships to create
service portfolios with different levels of
depth in a single portfolio (no more layers).

• Layered records are required, so you assign
nodes to a layer and then reference the
parent/child node.

• Report on services, nodes, and portfolio
performance using KPI groups in DPM.

• Report using portfolio performance metrics,
scores, and weights from Service Owner
Workspace (and not KPI groups from DPM).

When you opt in, a dialog box provides these important aspects and considerations. Select the
check box if you want to opt in or not (Yes or No).

Important: The Service Offering Metric Data [service_offering_metric_data] table along
with the following four indicators have been deprecated in the Utah release:
• Average SLA Achievement [ServiceOffering.MetricData.SLA.Daily]
• Average Customer Satisfaction [ServiceOffering.MetricData.CSAT.Daily]
• Average Availability [ServiceOffering.MetricData.Availability.Daily]
• Average Request Activity [ServiceOffering.MetricData.Activity.Daily]
Therefore, if you have the Vendor Management Workspace application integrated
with Service Portfolio Management, and if you are upgrading to the Service Portfolio
Management standard portfolio, the metric data from the legacy indicators are no longer
available. For information on vendor scores, see Vendor KPI Groups in Vendor Management
Workspace reference.

Portfolio administration
As a portfolio_admin user, you can create a single service portfolio or multiple portfolios. If your
organization has multiple businesses, you can define multiple portfolios to segregate them by
business location, by vendor, or by Chief Information Officer (CIO). You can also:
• Add and remove services from portfolios.
• Determine how the services in a portfolio are categorized.
• Update portfolio taxonomy.
• Update portfolio details.
• Update services and service offerings (the service_editor role also has access).
• Reparent services (the service_editor role also has access).
Related topics
Create portfolios
KPI groups in Digital Portfolio Management

Configuring Service Portfolio Management
Configuring topics provide information about how to set up and configure the Service Portfolio
Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3418


<!-- page 3419 -->
Configuration overview
To activate Service Portfolio Management, its plugins, and the sample content pack, you must
have the admin role. To set up services and commitments, you must have the portfolio admin role
or the service editor role.

Activate Service Portfolio Management
The Service Portfolio Management Core plugin (com.snc.service_portfolio_core) is available by
default for ITSM licensed customers. You can activate additional available related plugins for
enhanced features and functionality.

Before you begin

Role required: admin

About this task

The Service Portfolio Management Foundation plugin [com.snc.service_portfolio] enables
your organization to document portfolios, taxonomies, services, and service offerings using
a standardized, structured format. It contains demo data and activates related plugins. The
Foundation plugin is activated out of the box and activates related plugins, if they're not already
active. For general information, see Service Portfolio Management.
Related plugins for Service Portfolio Management Foundation
Plugin

Description

Service Portfolio Management Core

Adds the Service Offering table [service_offering] to
the Configuration Management Database (CMDB).

[com.snc.service_portfolio_core]

Available by default for users with ITSM SKUs.
Service Catalog core applications
[com.glideapp.servicecatalog]

Enables integrations with the Service Catalog
application and its capabilities.

Report Engine- use summary table for
reports

Adds the glide.report_summary_engine system
property and enables the Summary Sets reporting
engine for all reports within Service Portfolio
[com.glideapp.summary_report_engine] Management.
Several additional plugins offer increased functionality to Service Portfolio Management
Foundation. Activate these plugins to enhance your experience.
Additional plugins for Service Portfolio Management Foundation functionality
Plugin

Description

Service Portfolio Management SLA
Commitments

Adds SLA Commitment support to Service
Portfolio Management. Includes demo data.

[com.snc.service_portfolio.sla_commitment]
Service Portfolio Management Taxonomy
Content Pack
[com.snc.spm.content]

Provides sample taxonomy metadata, complete
with portfolio, layers, and nodes. Demo data
includes services and service offerings, including
related items, such as SLAs, incidents, changes,
and more. Includes demo data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3419


<!-- page 3420 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Installed with Service Portfolio Management

Service Portfolio Management activation administration
Service Portfolio Management includes several plugins to enable the organization,
documentation, and management of service portfolios within your IT business department.
Administrators can activate plugins and assign specific Service Portfolio Management roles to
system users.

Service Portfolio Management product applications
The following product application plugins are available:

Name

Description

Service Portfolio Management Core

Adds the Service Offering table
[service_offering] to the Configuration
Management Database (CMDB).

[com.snc.service_portfolio_core]

Available by default for ITSM SKUs.
Service Portfolio Management Foundation
(com.snc.service_portfolio)

Enables your organization to document
portfolios, taxonomies, services, and service
offerings using a standard and structured
format.
You can install this plugin from the ServiceNow
AI Platform user interface.

Service Portfolio Management Foundation
Demo Data
(com.snc.service_portfolio.demo_data)

Adds demo data for Service Portfolio
Management and service level agreement
commitments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3420


<!-- page 3421 -->
Name

Description

Note: If you installed the
Service Portfolio Management
SLA Commitments plugin
(com.snc.service_portfolio.sla_commitment)
before the New York release, this plugin
activates the newer version.

Service Portfolio Management Taxonomy Content Pack
You can also activate the Service Portfolio Management Taxonomy Content Pack plugin
[com.snc.spm.content]. This plugin contains demo data and provides sample taxonomy
metadata, complete with portfolio, taxonomy layers, and nodes. Users can view services and
service offerings, including related items, such as SLAs, incidents, changes, and more as a
demonstration.
Portfolio managers benefit from the Service Portfolio Management Taxonomy Content Pack
because it provides a useful example of how service portfolios and services are constructed
within the application. This example results in faster modeling of an organization's service
portfolio. Also, often portfolio managers must quickly provide the organization an example of a
portfolio structure to accelerate decision making regarding business approach.

Applying the CSDM guidelines to Service Portfolio Management
Service data relates to each other using different applications in different ways. Service Portfolio
Management references the Common Service Data Model (CSDM) framework to bring servicerelated data together in a single view.
®

Since both ServiceNow products of Service Portfolio Management and Digital Portfolio
Management (DPM) closely align with the CSDM, it's helpful to know the common terms and lifecycle fields when working in these applications.

Tip: For CSDM set-up information, see Implementing the CSDM framework in stages

.

CSDM life-cycle fields for business and technical services
After the CSDM activation plugin is installed [com.snc.cmdb.csdm.activation], you can
use the CSDM life-cycle fields in Service Portfolio Management. To see the field names, navigate
to All > Service Portfolio Management > Services, and set the view to Service Portfolio.
Using the CSDM life-cycle fields helps you manage the end-to-end life cycle of services and
service offerings. The shared field names provide you with consistency and alignment as you use
other ServiceNow applications. For more information about the CSDM, see Enabling life-cycle
sync from legacy-to-asset .

Important: For the Zurich release and later, the labels for the items in the
[cmdb_ci_service_technical] table and [service_offering] table are Technology Management
Service and Technology Management Service Offering, respectively. The label changes
align with the CSDM, version 5. Prior to the Zurich release, the labels are Technical Service
and Technical Service Offering.
The following comparison shows the differences from the traditional Service Portfolio
Management phase and status fields to the CSDM life-cycle stage and status fields.
These fields also display when you use the Performance Analytics (PA) indicators.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3421


<!-- page 3422 -->
Service table [cmdb_ci_service] mapping of Service Portfolio Management and CSDM
Service Portfolio Management Phase and Status
field names

CSDM life-cycle Stage and life-cycle Status field
names

Pipeline | Requirements

Ideation | Under evaluation

Pipeline | Definition

Ideation | Under evaluation

Pipeline | Analysis

Ideation | Under evaluation

Pipeline | Approved

Ideation | Under evaluation

Pipeline| Chartered

Design | Chartered

Catalog| Design

Design | Design

Catalog | Development

Design | Design

Catalog | Build/Test/Release

Deploy | Test

Catalog | Operational

Operational | In-use

Catalog | Retiring

Operational | Pending Retirement

Retired | Retired

End of life | Retired

Retired | Obsolete

End of life | Obsolete

Common CSDM terms used in Service Portfolio Management and in DPM
Common CSDM terms used in Service Portfolio Management and in DPM
Term

Definition

Notes

Portfolio

Collection of services,
products, projects, or
applications.

Used to manage like items together for a
business. Portfolios may be grouped by objective,
capabilities, organization, like projects or services.

Business
capability

High-level capability that
an organization requires
to execute its business
model or fulfill its mission.

Typically described in the context of performing
one or more specific tasks to achieve business
outcomes. For example, demand management or
financial planning.

Service

Means of delivering value Typically has three aspects:
to customers by facilitating
• Interaction
outcomes customers
• Offering
want to achieve without
the ownership of specific
• Service system
costs and risks.
ServiceNow provides three base service types:
• Business
• Technical
• Application
Customers can extend the base types to align with
the service types in their organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3422


<!-- page 3423 -->
Common CSDM terms used in Service Portfolio Management and in DPM (continued)
Term

Definition

Notes

Business
service

A service type that is
published to business
users and it typically
underpins one or more
business capabilities.

Typically orderable by business users. Business
users are able to select the desired offering and
service commitment levels via the ServiceNow
Service Catalog. For example, procurement,
shipping, and finance.

Technical
service

A service type that is
published to service
owners and typically
underpins a business or
application service.

Typically orderable by service owners. Service
owners are able to select the desired offering and
service commitment levels via the Service Catalog.
For example, computers, storage, and networks).

Application
service

A service type that is a
logical representation of
a deployed application
stack.

Examples of application services are hosting, data
backup, and recovery.

Note: There isn’t a 1-to-1 relationship
between application and application
services.

Application

Any deployed program,
module, or group
of programs that is
designed to provide
specific functionality on a
computer infrastructure.

Defines behavior and has specific functionality
associated with it. Applications are typically
discoverable functionality, like Apache Web Server.

Business
Application

Represents all software
and infrastructure
environments (dev, test,
prod) configured to
provide functionality.

Used to increase productivity and perform other
business functions accurately. For example, Dell
Online.

Service
catalog

Provides a consumable
view of available products,
services, service
commitment options, and
offerings.

Service
offering

A stratification of a service
into capability, availability,
pricing, and packaging
options.

Different levels of performance and features for a
given service can be made available. For example,
ITSM Standard and ITSM Pro.

Service
commitment

Defines service delivery
obligations agreed to
between the consumer
and the provider.

Often manifested in the form of contracts such
as service level agreements, operational level
agreements, and underpinning contracts. Service
commitments include specific performance
characteristics that differentiate one offering from
another.

Configuration Physical and logical
item (CI)
components of an
infrastructure that are
currently or soon will

Helps manage what services a user may have
access to. Also, catalogs are the initiation point for
access to available services. For example, the IT
services catalog.

A single module such as a server, database, or
router or a more complex item, such as a complete
system. For example, a web server, database, or
infrastructure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3423


<!-- page 3424 -->
Common CSDM terms used in Service Portfolio Management and in DPM (continued)
Term

Definition

Notes

be under configuration
management.
Asset

An item whose financial
value is tracked.

Many assets are CIs and vice versa, but that's
not always the case. Assets have a life cycle with
financial considerations, for example Microsoft
Office 365.

Operating
model

An abstract and ideally
visual representation
(model) of how an
organization delivers
value to its customers or
beneficiaries.

Typically represents the various elements of how
an organization operates. It usually incorporates
strategy positions such as the innovation model,
degree of intelligent automation, industry
alignment, provider delivery models, and the
business expectations of IT.

Related topics
Implementing the CSDM framework in stages

Set up services and commitments in Service Portfolio Management
Set up services and commitments in Service Portfolio Management to define services and track
their performance against availability commitments. You can relay the performance information
in real-time to your stakeholders.

Before you begin

Role required: portfolio_admin or service_editor

Procedure
1. Define the service offerings and commitments.
Create service offering records that define different levels of service for an existing service.
For example, you might offer two levels of desktop support in your organization. You offer
a standard offering for upgrades and virus protection and an executive offering that also
includes availability guarantee. Create a complete set of service offerings with service
commitments that define the specifics of the offering.
2. Define the scope of the service offerings.
Scope in Service Portfolio Management refers to the detailed service parameters that define
the limits of a service. Define specific additional services related to the service as In Scope or
Out of Scope. For instructions to apply scope definitions to services, refer to Apply scope to a
service in Service Portfolio Management.
3. Configure the price of the service offering.
Each service offering may have a pricing model and a price unit. Values are set on the parent
service and inherited by the offerings. The actual price per unit that is charged for the service
is established in the offering. For information about price modeling, refer to Service Portfolio
Management service offering price.
4. Configure the service catalog for the end user.
All the data created in the previous steps display on the service catalog page for a service.
The layout is not configurable, but an administrator can control how the service is categorized
and who can view the service in the catalog. For more information, see Service Catalog
administration .
5. Subscribe to service offerings.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3424


<!-- page 3425 -->
With Service Portfolio Management, service owners can subscribe various business entities to
Service offerings in Service Portfolio Management.
6. Optional: Opt in to the updated availability calculator system property [com.snc.availability.v2].
This updated availability system property [com.snc.availability.v2] offers improved calculations
and maintenance. For more information, see Set the time zone for availability results in Service
Portfolio Management or View Service Level Agreement (SLA) results in Service Portfolio
Management.

Install the Service Portfolio Management Sample Content Pack
Install the Service Portfolio Management Taxonomy Content Pack plugin (com.snc.spm.content)
to access a sample portfolio structure and service taxonomy. This sample data accelerates your
ability to create and manage a service portfolio.

Before you begin

Role required: admin or portfolio_admin
Dependency: Service Portfolio Management Foundation application

About this task

Installing the Service Portfolio Management Taxonomy Content Pack (com.snc.spm.content)
plugin, enables you to:
• Access demo data and a sample taxonomy structure metadata.
• Create portfolios and associated taxonomies.
• Access sample lists of service data.
• Link to periphery example data, such as vendors and contracts.
You can view the sample content in the Service Portfolios module of the Service Portfolio
Management application as Sample IT Services Portfolio. Alternatively, you can view data in the
DPM Workspace. For more information, see Digital Portfolio Management.

Important: For Step 2 in the procedure, enter com.snc.spm.content in the Search
field, and check the box to Load demo data.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3425


<!-- page 3426 -->
View Service Portfolio Management sample IT services portfolio content
Access, view, and analyze the Service Portfolio Management sample IT services portfolio content
to plan and create your service portfolio. Consider the sample structure as a starting point. You
can add to it or modify it to suit the specific needs of your organization.

Before you begin

Role required: portfolio_admin, service_editor, or service_viewer

About this task

The Sample IT service portfolio provides usable data in the form of portfolios, taxonomy layers,
and taxonomy nodes. It also provides demo data in the form of services, service offerings,
incidents, commitments, and more.
You can view the Sample IT service portfolio content with any Service Portfolio Management role.
To create portfolios or to manage the taxonomy nodes, you must have either the portfolio_admin
role or the service_editor role.
You can view the sample content in both the Service Portfolio Management application and in
the Digital Portfolio Management (DPM) Workspace.

Procedure
1. Navigate to All > Service Portfolio Management > Service Portfolios.
2. Select Sample IT Services Portfolio to open the portfolio details.
3. Review the taxonomy nodes.
A list of sample IT service-related nodes appear including but not limited to the following.
◦ Software Management
◦ Hardware Support
◦ IT Management and Consulting
◦ Network Support
◦ Data Center Management
◦ Software Support
4. Select a service type taxonomy node.
5. Review the sample IT service portfolio and its taxonomy nodes to understand the basic
structure.
Look at several service type taxonomy nodes to find the structure that best fits you your needs.
You can use them as guidance as you build your own portfolio content structure.
Related topics
Using Service Portfolio Management
Work with portfolios in Digital Portfolio Management

Using Service Portfolio Management
Service Portfolio Management enables you to create services and service offerings, and assign
them to service portfolios. You can also view service-related data including service availability
results.

Overview of Service Portfolio Management
The following topics provide guidance on how to use Service Portfolio Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3426


<!-- page 3427 -->
Create portfolios in Service Portfolio Management
You can create a single service portfolio or multiple service portfolios, each with its own
taxonomy structure. The service portfolio enables you to see an overall view of your current IT
services. You can also see services that may be available in the future and services that existed
in the past.

Before you begin

Role required: portfolio_admin

About this task

Create a service portfolio before you define taxonomy nodes. After you create the service
portfolio, you can edit it within the platform and monitor its performance in Digital Portfolio
Management (DPM).

Important: Existing customers can opt in to the improved portfolio structure by

navigating to Service Portfolio Management > Administration > Configuration >
New Portfolio Opt-In. The improved structure uses nodes and doesn't use layers and
weighted scores from the Service Owner Workspace. After customers opt in for the
improved portfolio structure, there isn’t an option to revert to the former structure. For
more information, see Service Portfolio Management portfolios. New customers have the
improved portfolio structure by default.

Note: The following procedure reflects the SPM Advanced user view.
Procedure
1. Navigate to All > Service Portfolio Management > Service Portfolios and select New.
2. On the form, fill in the fields.
Service Portfolio form
Field

Description

Name

Unique name that reflects the nature of the
service portfolio, for example, IT Service
Portfolio.

Short description

Brief details about the service portfolio.

Description

Comprehensive details about the service
portfolio, such as, Software and Network
Support Tiers.

Market scope

Detailed service parameters that define the
limits of a service. For example, who uses the
portfolio services.

Service portfolio owner

Person who owns the portfolio, usually at the
Chief Information Officer (CIO) level. This
person has the portfolio_editor role and can
view and update owned portfolios only.

Service portfolio manager

Person who has the portfolio_admin role and
is authorized to manage the service portfolio.
The portfolio_admin can create, read, update,
and delete portfolio records of all types,
including:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3427


<!-- page 3428 -->
Field

Description

◦ Portfolios
◦ Taxonomy levels and nodes
◦ Services and service offerings
◦ Relationships
◦ Performance criteria
Auto-create service offerings

When checked, the Number of offerings
per service field displays, enabling you to
select the number of service offerings to
auto-create.
Every service must have a service offering.
When you create a service offering using
the auto-create check box, the following
happens:
◦ Service offerings are created with the
naming convention of <service name>
Offering1. The number represents the
number of offerings that you created. If you
created two, then the second offering name
is <service name> Offering2.
◦ The service offering inherits the following
fields from the parent service:
▪ Owned by
▪ Delivery manager
▪ Delegate
▪ State
▪ Service classification
◦ The auto-created service offerings are
located in the Offerings related link of the
service.

Important: The following performance fields only appear if you're using the
deprecated Service Owner Workspace plugin. For more information on the deprecation
of Service Owner Workspace, see Service Owner Workspace.
Upper performance score threshold

Designated high threshold percentage point
above which the indicators change from
amber to green in Service Owner Workspace.
In addition to the color change, the default
percentage is 80.

Lower performance score threshold

Designated low threshold percentage point
below which the indicators change from
amber to red in Service Owner Workspace.
In addition to the color change, the default
percentage is 60.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3428


<!-- page 3429 -->
Field

Description

Add default performance metrics

Option to add five metrics when you create a
service portfolio. You can choose not to add
the metrics by clearing the check box.
Default metrics added include:
◦ Availability
◦ Customer Satisfaction
◦ Critical Incidents
◦ Activity
◦ Breached service level agreement (SLA)

Note: This field is hidden on Service
Portfolio records. It only appears when
you create a record.
Evenly weight performance metrics for new
offerings

When active, each time an offering is created
as part of this portfolio, the performance
weight of each metric is evenly distributed.
For example, each default metric is weighted
at 20%.

Note: If your instance is integrated with Financial Management and the Estimated

Spend Cost model fields are configured on the Service Offering form, then you 'd see the
Estimated Spend details for the portfolio.
3. Select Submit to save your service portfolio or select Update after editing.
The newly created service portfolio appears in the Service Portfolios module list.
4. Select the newly created service portfolio name in the list.
The Taxonomy Nodes, Portfolio Metrics, and Taxonomy Node Weights related lists appear
on the Service Portfolio form. See Service Portfolio Management taxonomy for detailed
information regarding creating and adding taxonomy nodes within your service portfolio
structure.
Service Portfolio Management taxonomy
Service Portfolio Management uses a taxonomy framework to organize and manage services in a
portfolio.

Portfolio structures
Prior to the Utah release, Service Portfolio Management provided one portfolio structure with
taxonomy layers and nodes. With the Utah release and beyond, existing customers can move
from the legacy structure to the improved standard structure by opting in via a system property.
The improved standard portfolio structure no longer uses layers in the taxonomy framework.
Rather, it only uses nodes. For more information on the two types of portfolio structures, see
Service Portfolio Management portfolios.
To upgrade to the standard portfolio structure, the portfolio_admin navigates to Service Portfolio
Management > Administration > Upgrade to Standard Portfolio to access the system property
[standard_portfolio_construct.turn_on]. Only existing customers see this menu path. New
customers get the standard portfolio structure by default so this menu path isn't available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3429


<!-- page 3430 -->
Legacy portfolio structure taxonomy
If you’re working in a legacy portfolio structure, then your taxonomy framework may look
something like this example.
Legacy portfolio structure taxonomy example

In this example, there are two service portfolios - IT Service portfolio and Smart devices portfolio.
• Below the service portfolios are the layers. You can have 1 to N layers and they can be a
taxonomy node or a taxonomy leaf node, or both.
• Below the layers and leaf nodes are the services and service offerings.

Standard portfolio structure taxonomy
If you’re using the improved, standard portfolio structure, then your taxonomy framework may
look something like this example.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3430


<!-- page 3431 -->
Standard portfolio structure taxonomy example

In this example, there’s one service portfolio at the top — Smart devices.
• Below the service portfolio, is the node level.
◦ You can have 1 to N node levels.
◦ A node level can contain both a taxonomy node and a leaf node.
◦ Assign multiple nodes (rather than layers) for more flexibility as you structure your service
portfolios. For example, a single portfolio can have multiple levels of depth via node-to-node
relationships.
• Below the taxonomy node levels are the services and service offerings.

Note: You can see a visual relationship map of nodes, services, and service offerings
in Digital Portfolio Management (DPM). For more information, see Getting started with
Digital Portfolio Management.
Related topics
Create taxonomy nodes
Create taxonomy layer definitions
View relationship maps in Digital Portfolio Management
Create taxonomy layer definitions
Create an unlimited number of taxonomy layers to organize, label, and manage your service
portfolio. Taxonomy layers represent the highest containment levels of your service portfolio.
Each level supports branches, or nodes, that contain child nodes or services in a hierarchical
top-to-bottom structure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3431


<!-- page 3432 -->
Before you begin

Important: This task applies if you are using the legacy portfolio structure. For
information on the legacy and standard portfolio structures, see Service Portfolio
Management taxonomy.

Role required: portfolio_admin

About this task

Opening the Taxonomy Layer Definitions module displays a list of all existing layers defined for
all service portfolios.
By default, the service portfolio name associated with the taxonomy layer is listed in the first
Service portfolio column of the list. The service portfolio is the parent element to the taxonomy
layer. Existing taxonomy layers appear in the Name column, and are chronologically sorted in the
Order column. Your layer with order number 100 is always at the top, followed by order number
200, and so on.
Always associated taxonomy layers with a parent service portfolio. Example layers for an IT
services portfolio might include the following taxonomy layers:
• Service Class
• Service Group
If the Service Portfolio Management Taxonomy Content Pack [com.snc.spm.content] plugin
sample data is activated on your instance, review the provided taxonomy data to gain an
understanding of how to best define your taxonomy layers. Refer to Activate Service Portfolio
Management Sample Content Pack for more details.

Procedure
1. Navigate to Service Portfolio ManagementTaxonomy Layer Definitions.
2. Select New.
Alternatively, to edit an existing taxonomy layer definition, select the name of the taxonomy
layer definition to open the form. Change any of the form field data as needed.
3. Fill in or edit the form fields.
Taxonomy Layer Definitions
Field

Description

Name

Unique name that defines the purpose of
the taxonomy layer, for example, Tier, as in
software support tier or network support tier.

Order

Value that represents the hierarchical level
where the taxonomy layer will exist. 1 is
the highest level, with each chronological
number following at a lower level.

Note: Layer ordering is locked and
cannot be changed when a node
is created for any layer in a service
portfolio. Nodes cannot be added to
layers if there is a gap in the layer order.
Service Portfolio

Service portfolio for which the taxonomy layer
is associated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3432


<!-- page 3433 -->
Field

Description

Short description

Brief detail about the taxonomy layer
purpose.

4. Click Submit to save your service portfolio or click Update after editing a taxonomy layer.
5. Click the newly created taxonomy layer definition in the list.
The Taxonomy Nodes and Portfolio Metrics Related Lists appear on the Service Portfolio form.
Refer to Service Portfolio Management taxonomy for detailed information regarding creating
and adding taxonomy nodes within your service portfolio structure.
Create taxonomy nodes
Create an unlimited number of nodes, or branches, and add them to your service portfolio
taxonomy layers. By configuring taxonomy nodes, you can successfully achieve a highly detailed
and organized service portfolio containing multiple elemental layers—from general to specific.

Before you begin

Role required: portfolio_admin

About this task

Add new nodes as needed and edit existing nodes, as well as reparent nodes or delete nodes.
You can reparent a node to another node at the same taxonomy layer.
In Service Portfolio Management, taxonomy nodes typically represent service types within the
configured taxonomy layers. These types act as containers for child nodes or services. Examples
for an IT services portfolio could include the following taxonomy nodes:
• Data Center Management
• Hardware Support
• Software Management
If the Service Portfolio Management Taxonomy Content Pack [com.snc.spm.content] plugin
sample data is activated on your instance, review the provided taxonomy data to gain an
understanding of how to best define your taxonomy layers. Refer to Activate Service Portfolio
Management Sample Content Pack for more details.

Procedure
1. Navigate to Service Portfolio Management > Taxonomy Nodes and select New.
To edit an existing taxonomy node, select the name of the taxonomy node to open the form.
Change any of the form field data as needed. To delete an existing node, select Delete.
2. Fill in or edit the form fields.
Taxonomy Node
Field

Description

Name

Unique name that defines the purpose of the
node.

Short description

Brief detail about the taxonomy node
purpose.

Description

In-depth details about the node.

Service portfolio

Service portfolio this taxonomy node is
associated with.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3433


<!-- page 3434 -->
Field

Description

Taxonomy layer

Taxonomy layer this node is associated with.

Parent

Taxonomy node to which the taxonomy node
is associated. Use this form field to reparent a
node at the same taxonomy level.

Owned by

Owner of the taxonomy node.

Valid from

The date the taxonomy code is valid.

Valid to

The date the taxonomy code is no longer
valid.

Performance score

Most recent performance score for this node.
The performance score is calculated by a
nightly script.

Note: Appears with a Service Owner
Workspace subscription.

Note: Only an admin can change the
score, if necessary.

3. Submit your taxonomy node.
Alternatively, you can select Update after editing an existing taxonomy node.
4. Edit or define the taxonomy node weights.
If available, select the Edit Weights related link to edit existing child service weights or child
node weights. Alternatively, you can navigate to Service Portfolio Management > Taxonomy
Nodes and find a node in the list. Select to open the form.

Note: The Edit Weights related link appears with a Service Owner Workspace
subscription. Weight values for associated child nodes are specified at the service
offering level via the Edit Metric Weights related link on the Service Offering form.
5. Specify weight values for each associated child node.
Total weight must equal 100 percent. For more information on weights and specifying weight
values, refer to Service Owner Workspace performance metrics.
6. Review the related list records.
Depending on the type of node, whether it is a leaf node or a non-leaf node, related lists
display the following associated data.
Option

Description

Taxonomy Nodes

List of all associated child nodes. You can ed­
it an existing child node by selecting a Taxon­
omy Node name. Create a new child node by
clicking New and completing the Taxonomy
Node form.

Services

List of all associated services shown for leaf
nodes. Edit the list by selecting Edit and mak­
ing changes to the form. You can select a ser­
vice in the Related List to modify and update.
Create a new associated service by clicking
New and completing the Service form. Refer
to Create a service in Service Portfolio Man­
agement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3434


<!-- page 3435 -->
Create a service in Service Portfolio Management
Create services that benefit and add value to your internal organization and external customers
and users.

Before you begin

Role required: portfolio_admin or service_editor

About this task

All occurrences of the table and reference field label Business Service throughout the product
have changed to Service. For example, the Business Service form has changed to Service form.
This change is for new instances only and doesn't affect existing upgraded instances.

Note: You can also create and edit services and service offerings by using the Service
Builder application. Service Builder provides a walk-through experience with contextual
help along the way. For more information, see Service Builder.

Procedure
1. Navigate to All > Service Portfolio Management > Services and select New.
Alternatively, to edit an existing service, select the name of the service to open the form.
Change any of the form field data as needed. To delete an existing service, select the Delete
button in the form header.
2. On the form, fill in the fields.
Service form header
Field

Description

Name

A unique name that reflects the nature of the
service.

Service portfolio

Service portfolio this service is associated
with.

Taxonomy node

Taxonomy leaf node within a portfolio this
service is associated with.

Phase

Phase that the service is in. Available values
are: Pipeline, Catalog, and Retired.

Status

That status of the service phase.

Short Description

Type of service. Available values are:
Business Service, Technical Service, and
Application Service.

Owned by

The service owner responsible for this
service in the organization.

Delivery manager

The delivery manager for the service.

Business relation manager

Relationship manager for this service.

Important: The following two fields only appear if you're using the deprecated
Service Owner Workspace plugin. For more information on the deprecation of Service
Owner Workspace, see Service Owner Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3435


<!-- page 3436 -->
Field

Description

Performance score

Most recent performance score. Populated
after the service is active. The performance
score is calculated by a nightly script and
can’t be changed.

CSAT score

Customer service feedback score.

3. Select the General tab.
4. On the form, fill in the fields.
Service form General tab
Field

Description

Number

Automatically generated unique identification
for a new service record. Its value consists
of a 'BSN' string and a unique number.
Other forms and scripts can reference this
identification.
The Number field is visible with the Service
Portfolio form view.

Note: The Number field in service
records that were created before the
field was added, is null.
Version

Version of the service.

Aliases

Other names used for this service.

Service classification

Type of service. Available values are:
Business Service, Technical Service, and
Application Service.

Consumer type

Type of consumer. Available values are:
Internal, External, and Internal and External.

Start date

Date the service is available.

End date

The date the service is retired.

Last review date

The date the service was last reviewed.

5. Select the Team tab.
6. On the form, fill in the fields.
Service form Team tab
Field

Description

Delegate

A person authorized to manage the service
on behalf of the service owner.

Business contact

Person to contact for issues related to this
service.

Vendor

The vendor providing this service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3436


<!-- page 3437 -->
Field

Description

Stakeholders

People with an interest or concern regarding
this service.

7. Select the Business Need tab.
8. On the form, fill in the fields.
Service form Business Need tab
Field

Description

Business need

Business need this service supports.

Business criticality

Criticality level that defines the importance of
the service in your organization.

9. After completing the form, select and hold (or right-click) the header bar and select Save from
the pop-up menu.
The related lists for the service appear. View associated or create the following:
◦ Offerings
◦ In Scope
◦ Out of Scope
◦ Services I depend On
◦ Services Dependent On Me
◦ Incidents
◦ Problems
◦ Change Requests
◦ Other tasks
◦ Knowledge Articles
◦ Service Offering Node Weights
◦ Improvement Initiatives
10. Select Submit to save your service or select Update after editing a service.

Apply scope to a service in Service Portfolio Management
Define the limits of a service with scope details to grant or deny specific service views. Out of
Scope items define what a service cannot provide and In Scope items define what a service
provides. For example, nightly backups may be In Scope for the Desktop Support service, but
Out of Scope for the Disaster Recovery service.

Before you begin

Role required: portfolio_admin or service_editor

About this task

The In Scope and Out of Scope definitions appear in the service catalog page that users see
when they access the service catalog.
To view the list of scope entries in your system, enter service_scope.list in the navigator
and press the Enter key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3437


<!-- page 3438 -->
Procedure
1. Navigate to All > Service Portfolio Management > Services.
2. Select the name of a service for which you want to define scope.
Only a parent service can have scope.
3. In the In Scope or Out of Scope related list, select New to create a new definition or select Edit
to add the scope to the In Scope or Out of Scope list for the service.
Configure scope with anything that is pertinent to the service and helps define the limits of the
service.
4. Give the scope item a descriptive name and provide details in the Description field.
5. Select Submit.

Edit and manage service portfolios in Service Portfolio Management
Manage the CSDM life cycle fields of your portfolio taxonomy nodes in the Service Portfolio
Management application. You can move taxonomy nodes easily from one portfolio to another to
confirm that your portfolios are synchronized. You can also decide to show or hide the life cycle
fields in the complimentary Digital Portfolio Management (DPM) Workspace.
Manage the CSDM life cycle fields in Service Portfolio Management
Manage the CSDM life cycle fields for the taxonomy nodes of your service portfolios. You
can also use the Active check box to display or hide the life cycle fields in the Digital Portfolio
Management (DPM) Workspace.

Before you begin

Role required: portfolio_admin or service_editor

About this task
Taxonomy node CSDM life cycle stages for service portfolios

Stage

Status

Ideation
• Draft
• Under evaluation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3438


<!-- page 3439 -->
Stage

Status

Operational
• In Use
• Published
• Pending retirement
End of Life
• Retired
• Canceled

Note: An end of life state would never be set to Expired.
Procedure
1. Navigate to All > Service Portfolio Management > Taxonomy nodes.
Use the Service Portfolio view.
2. Open the taxonomy node that you want to activate the CSDM life-cycle fields.
3. Enter or update the following fields.

Field

Lifecycle
stage
Lifecycle
stage
status

Description

The stage of the life cycle for the taxonomy node. The stages could be Ideation,
Operational, or End of Life.
The status of the life cycle for the taxonomy node. The system offers many
options but a few of the most common are Draft, Design, In Use, On Hold, and
Available.

Active
check box The Active check box determines if the portfolio is displayed in the DPM
Workspace. The check box is active (checked) by default but you can clear it
anytime.
Remap service portfolio taxonomy nodes in Service Portfolio Management
Use the flexible options when you remap (or reparent) taxonomy nodes from one portfolio to
another. You can move an entire branch of a taxonomy from one portfolio to another, including
the automatic move of its child nodes.

Before you begin

Role required: portfolio_admin or service_editor

About this task

When you move taxonomy nodes from one portfolio to another, all its associated child nodes
and their services and offerings move as well. This smooth transition confirms that your service
portfolios are synchronized. Following the procedure, you may find it helpful to open the two
portfolios in their own tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3439


<!-- page 3440 -->
Procedure
1. Determine the service portfolio name that you want to add taxonomy nodes to.
2. Open the service portfolio to take the taxonomy node from.
◦ Select the taxonomy node that you want to move.
◦ Change the Service portfolio field value to the name of the portfolio that you want to move
the taxonomy node to. A message explains the impact of changing the portfolio name.
◦ Save the record.
◦ Refresh the Taxonomy Node list to see the updated portfolio display in the Service portfolio
column.
3. Verify the change in the DPM Workspace.
◦ Navigate to the Enterprise portfolios in the DPM Workspace.
◦ Find the portfolio that you added the taxonomy nodes to.
◦ Verify that the taxonomy nodes were added as well as their child nodes, services, and
service offerings.

Important: Service portfolios contain the Performance snapshot key performance
indicator (KPI) values. If the KPI data is set to "latest score," the new node takes a day
to reflect the updated KPI data. For more information, see KPI groups in Digital Portfolio
Management.

Service offerings in Service Portfolio Management
A service offering derives from a service, refining the parent service to a specific business need
and performance level.

Service offerings and commitments
Offering records define different levels of performance for an existing service. For example,
you might offer two levels of desktop support in your organization. You can offer a standard
offering for upgrades and virus protection and an executive offering that also includes availability
guarantee.
Service offering types include business service offerings and technical service offerings.

Important: For the Zurich release and later, the label for the items in the
[cmdb_ci_service_technical] table is Technology Management Service, respectively. Prior to
the Zurich release, the label is Technical Service.
Create a complete set of service offerings defined by commitments that define the specifics of
the offering. Each service must have at least one defined offering to move to the Catalog phase.
This is because service offerings are where you define Service Level Agreements (SLAs) and
where metrics are collated.
For detailed information about SLAs, including SLA definitions and results, refer to Service Level
Management.

Service offering pricing
Each service offering may have a pricing model and a price unit. Use this pricing data towards
creating catalog items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3440


<!-- page 3441 -->
Service offering subscriptions
You can subscribe different entities to a service offering. This data is then used to determine the
total subscriber count on the offering form.

Technical service offerings
Technical service offerings can be shown as inherited relationships to business services and
offerings. They are not included in metric models and do not use the weighting model.

Re-parenting service offering types
You can change a service offering parent from one type of service to another. For example,
changing an offering parent from a business service to a technical service or vice versa.
Offerings cannot be re-parented to an application service. Some important information and
guidelines concerning re-parenting service offering types, include:
• When you change the offering parent from a business service to a technical service you will
receive a message alerting you that performance scoring is not available with technical service
offerings.
• When you re-parent from one service type to another, existing weighting rules will apply.
• If you try to re-parent and the parent service is in Catalog phase with only one offering, you will
receive a message that you cannot make this change.
• If the metric weight on the parent service is >0, you will receive a message alerting you to
adjust the data before re-parenting the offering. You cannot re-parent the offering to a different
service type until the weight for the offering on the former service type is set to zero.

Service offering topics in this section
View a service offering in Service Portfolio Management
View service offerings in Service Portfolio Management to find offerings that add value to your
organization and external users. You can also view service offerings in the Service Builder
application.

Before you begin

Role required: service_editor

Procedure
1. Navigate to All > Service Portfolio Management > Service Offerings.
2. Find the service offering by scrolling through the list or select the filter (
conditions.

) to adjust the filter

3. Select the service offering to open it.
Before you open an offering, you may see one of the following symbols in front of its name.
◦ The word [DRAFT] indicates that the offering is checked out and is in a draft state.
◦ A clear triangle warning symbol (
worked on.

) indicates that it's the new copy [DRAFT] that's being

◦ A red dot ( ) indicates that the offering is read only.
As you view the offering, you can use the first set of tabs to see its general information,
supporting teams, and information about price and operations. Use the second set of tabs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3441


<!-- page 3442 -->
(Related Links) for more details about the offering. Also, a button enables you to edit the
offering in the Service Builder application.
4. Optional: View a service offering using the Service Builder application.
a. Navigate to All > Service Portfolio Management > Service Builder.
b. Select the Services tab.
c. Find and open the service for the service offering that you seek.

Tip: You can narrow your search by using the filter options on the column headings.
d. After the service opens, select Manage Offerings in the navigation panel to see the list of
offerings.
You can also select New to create a service offering for that service.

Note: The same symbols apply as previously described.
Related topics
Create a service offering in Service Portfolio Management
Create a service offering in Service Builder
Create a service offering in Service Portfolio Management
Create service offerings to define services, document them, track performance against defined
availability commitments, and relay the performance information in real time to your end users.

Before you begin

Role required: portfolio_admin

About this task

Often the data that's defined on a service and on its child offerings are identical. For example,
the same person may own a service and its offerings, as defined in the Owned by field on the
Service form. However, flexibility exists for defined data to be different between services and
child offerings if the organization desires. For example, one person may own the service while
another person owns the child offering.
Link service offerings to catalog items required to provision a service. Each service offering has
commitments, which in turn, have service level agreements.
A service offering consists of a set of service commitments, which uniquely define the level
of service in terms of availability, scope, and pricing. For example, an organization may offer
two levels of Desktop Support in your organization. A Standard offering of upgrades and
virus protection. And an Executive offering with the standard commitments plus some type of
availability guarantee, such as 98% availability from 8-5 on weekdays.
When an offering is added to a service for the first time, some Offering form field values are
inherited from the parent Service record. These form fields are: Owned by, Business criticality,
Delivery Manager, and Delegate. When an offering is added and the parent Service record has
empty field values, these fields are also empty on the Offering record. When you first insert an
offering into a service, the parent Service record field values overwrite any existing values in the
Offering record. You can update the fields after you’ve added the offering, if necessary.
You can also auto-create service offerings when creating a service portfolio. For more
information, see Create portfolios in Service Portfolio Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3442


<!-- page 3443 -->
Procedure
1. Navigate to All > Service Portfolio Management > Service Offerings and select New.
Alternatively, to edit an existing service offering, select the name of the service offering to open
the form. Change any of the form field data as needed. To delete an existing service, select the
Delete button in the form header.
2. Fill in the form fields.
Offering form
Field

Description

Name

Unique name that reflects the nature of the
service.

Parent

The parent service.

Phase

Phase that the service is in. Available values
are: Pipeline, Catalog, and Retired.

Status

Status of the service per phase.

Short description

Brief details about the service portfolio.

Description

Comprehensive details about the service
offering.

CSAT score

Customer satisfaction feedback score.

Total Subscribers

Number of subscriptions for this service
offering. Total subscribers are calculated by a
nightly script.

Note: Only an admin can change the
score, if necessary.
Owned by

Service owner responsible for this service in
the organization.

Note: This value is inherited from
the parent Service record, but you can
update.
Performance score

Note: This field displays if you're
using the deprecated Service Owner
Workspace plugin. For more information
on the deprecation of Service Owner
Workspace, see Service Owner
Workspace.

Most recent performance score. Populated
after the service is active. The performance
score is calculated by a nightly script.

Note: Only an admin can change the
score, if necessary.

3. Select the General tab to complete the General section of the form.

Field

Description

Aliases

Other names used for this service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3443


<!-- page 3444 -->
Field

Description

Business criticality

Degree of how critical this service offering
is to the business. You can base a demand
response strategy off this value.

Note: This value is inherited from
the parent Service record, but you can
update.
Consumer type

Type of consumer. Available values are:
Internal and External.

Service classification

Type of service. Available values are:
Business Service, Technical Service, and
Application Service.

Version

Version of the service offering.

Start date

Date the service is available.

End date

Date the service is retired.

Location

Physical location of the service.

CSAT Survey Frequency

How often a customer survey is sent.

CSAT Survey Last Sent

Last time a customer satisfaction survey was
sent.

4. Select the Team tab to complete the Team section of the form.
The Teams related list enables you to assign different group types to support a service offering.
For more information, see Teams related list
and Assign multiple teams to support a service
offering.

Field

Description

Delivery Manager

The delivery manager for this service.

Note: This value is inherited from
the parent Service record, but you can
update.
Delegate

Person authorized to manage the service
along with the service owner.

Note: This value is inherited from
the parent Service record, but you can
update.
Support group

Group managing the service. See Assign
multiple teams to support a service offering.

Vendor

The vendor providing this service.

Stakeholders

People with an interest or concern regarding
this service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3444


<!-- page 3445 -->
5. Select the Price tab to complete the Price section of the form.

Field

Description

Price model

Pricing structure for a service offering as
defined in the parent service.
The Price model field is read only. This value
is set in the parent service.

Price unit

Short name of the unit for this service.
Appears when Per Unit is chosen for the
Price Model type in the parent service.
The Price unit field is read only. This value is
set in the parent service.

Price

Price and currency.

Unit Description

Longer description of a unit of this offering.

6. Select the Operations tab to complete the Operations section of the form.

Field

Description

Contract

Associated contract number.

Maintenance schedule

Time during which maintenance is
scheduled.

Service level requirement

Field captures the requirements, which
include the service level agreements and
service level targets, for the service.

Prerequisites

Prerequisites for this service offering.

Compatibility dependencies

Compatibility dependencies for this service
offering.

Monitoring requirements

Requirements to monitor this service offering.

7. Optional: Select the Estimated Spend tab to view the Estimated Spend section.

Important: This step and the next one are optional because they only apply if you're
using the deprecated Service Owner Workspace plugin. For more information on the
deprecation of Service Owner Workspace, see Service Owner Workspace.
8. Optional: Choose a value for the Cost model field.
Choices include the default None, Fixed, and Per unit. View read-only data in the Estimated
spend field.
9. After completing the form, select and hold (or right-click) the header bar and select Save from
the pop-up menu.
The Related Links and related lists for the offering appear.
10. Optional: In Related Links you can create an offering improvement initiative, edit offering
metric weights, and subscribe to the offering by selecting the associated link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3445


<!-- page 3446 -->
Important: This step is optional because it only applies if you're using the deprecated
Service Owner Workspace plugin. For more information on the deprecation of Service
Owner Workspace, see Service Owner Workspace.
11. View associated related lists and items.
View associated or create new:
◦ Service Commitments
◦ Service Offerings I Depend On
◦ Service Offerings Dependent On Me
◦ Outages
◦ Incidents
◦ Problems
◦ Change Requests
◦ Other Tasks
◦ Knowledge Articles
◦ Catalog Items
◦ Subscribed by Group
◦ Subscribed by Location
◦ Subscribed by Department
◦ Subscribed by User
◦ Subscribed by Company
◦ Performance Metrics
◦ Improvement Initiatives
12. Select Submit to save your service offering or select Update after editing a service offering.
Related topics
Teams related list
Assign multiple teams to support a service offering
Add a commitment to a service offering in Service Portfolio Management
Service commitments are specific services that define the unique availability guarantees, scope,
and pricing for a service offering.

Before you begin

Role required: service_editor

About this task

Service commitments define the expected level of a service. A service offering derives from a
service, tailoring the parent service to a specific business need. A service offering consists of a
set of service commitments which uniquely define the service offerings.
To create service commitments, each service needs at least one associated service offering.

Procedure
1. Navigate to All > Service Portfolio Management > Service Offerings.
Alternatively, you can navigate to Service Portfolio Management > Commitments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3446


<!-- page 3447 -->
2. Open a service offering record.
3. In the Service Commitments related list, select New.
4. Give the commitment a descriptive name.
You can specify any kind of service.
5. Select the Type of commitment from the list.
Option

Description

Used in system processing. If you select Main­
tenance Window, the Schedule field is re­
quired.
Availability or Maintenance Window

Response Time, Delivery or Other

Recovery time objective

Creates Availability records for the service of­
fering based on the outages for that offering.
If an Availability commitment exists, when an
Outage is created against a service offering
with the Availability commitment, it will begin
tracking down time and availability.
Display additional information in the service
catalog. This information details the type of
service commitment the user may expect
from a given service offering. These service
commitment types do not provide additional
functionality or a homepage gauge.
Guarantee of how long it takes to recover the
system from the recovery point. Set the re­
covery time in the Time Amount field that ap­
pears when you select this commitment type.
This field is available with vendor ticketing.

Note: These service commitment
types do not provide additional function­
ality or a homepage gauge.

Recovery point objective

Guarantee of how often backups are per­
formed. Set the backup interval in the Time
amount field that appears when you select
this commitment type. This field is available
with vendor ticketing.

Note: These service commitment
types do not provide additional function­
ality or a homepage gauge.

SLA

Allows commitments defined by a service lev­
el agreement (SLA) that tracks whether a ven­
dor provides a level of service for a defined
percentage of the time. The SLA results are
calculated automatically and can be viewed
on the My Services - SLAs homepage or by
navigating to Services > Service Offering
SLAs > SLA Results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3447


<!-- page 3448 -->
6. Optional: Select a Contract for this service commitment.
This information is used when creating vendor credit records.

Tip: If you don't see task (SLAs for incidents related to service commitments), then

contact your Administrator. When Contract is entered in the Reference field of the
incident, then the Use reference qualifier field should be set to Advanced, and the global
business rule contractFilter must be entered in the Reference qual field.
7. Enter the information to calculate credit owed by the vendor for any contract breaches.
These fields are available with vendor ticketing:
◦ Breach penalty amount: Amount assessed per unit of time for a breach.
◦ Per: Unit of time used to calculate the total credit owed for a breach.
◦ Breach penalty time: Amount of free time provided by the vendor per breach.
8. Complete the form and select Submit.
The Service Offering form opens, and the new commitment appears in the Service
Commitment related list.
9. Select New to add another service commitment or select Edit to add an existing commitment
to this offering.
Assign multiple teams to support a service offering
You can assign multiple teams to support a single service offering when several teams are
responsible for that offering.

Before you begin

Role required: service_editor

About this task

The service offering team table [cmdb_rel_team] enables multiple groups to be related to a single
service offering. While in the offering record, use the Team tab to assign a support group to the
offering. Use the Related Links Teams tab to add more support groups to the service offering. You
can also edit the group type of the teams that you add in the Related Links Teams tab.

Procedure
1. Navigate to All > Service Portfolio Management > Service Offerings.
2. Open the service offering that you want to assign support teams.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3448


<!-- page 3449 -->
Offering record example

3. In the first Team tab on the offering record, use the Search icon ( ) to select the support
group for this service offering, and then Save the page.
Multiple Teams can be created but without duplication of the Group type. After you save the
page, the support group that you selected displays in the second Teams tab, in the Related
Links area. The Related Links Teams tab has three columns: User group (the support group
name that you selected in the first teams tab), Group type, and Primary. You can set the
primary entry to true or false, indicating that the user group is the primary support group.
4. Save the offering record.
5. The Related Links Teams tab contains all the teams that you added.
You can select any team in the User group column to change the team. You can also select any
Group type to change it to one of the other options: Support Group, Approver Group, Change
Group, or Managed By Group.
Subscribe users to a service offering in Service Portfolio Management
Subscribe users to a service offering so they can order it from the catalog. You can also
subscribe offerings for companies, locations, groups, and departments.

Before you begin

Role required: com.snc.service_portfolio
Role required: service_editor

About this task

Subscribers define who a service offering is for. Subscribe users to service offerings so they
can view and request catalog items related to the service offering. For example, if a service is
for video teleconferencing, it might have two offerings — one for a personal communications
platform and one for a webinar. To select either option, users must order the option from the
catalog. To order, they must be added as a subscriber to that service offering.
The base system counts the number of subscribers per offering and per service. It also enables
you to send customer satisfaction (CSAT) surveys to subscribers to gain feedback about the
service offering. You can choose the cadence for how often to send the surveys per interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3449


<!-- page 3450 -->
Procedure
1. Navigate to All > Service Portfolio Management > Service Offerings.
2. Select a service offering that you want to add subscribers.
3. Select the Subscribed by User related list (tab), and then select Edit.
Alternatively, you can select one of the other related lists (tabs) to subscribe groups, locations,
departments, or companies.
4. Select the subscriber name from the Collection and move it to the Subscribed by User List.
5. Select Save.
Create catalog items for service offering subscribers in Service Portfolio Management
As a service owner or service offering subscriber, you can create one or more catalog items for
your service regardless of the offering phase or status. You can also relate an existing catalog
item to a service offering.

Before you begin

Role required: com.snc.service_portfolio or service_editor

About this task

Use the Items orderable by subscribers related list (tab) on a service offering to:
• Relate an existing catalog item to a service offering.
• Create catalog items for a service offering.

Procedure
1. Navigate to All > Service Portfolio Management > Service offerings.
2. Open a service offering that you want to relate a catalog item to or add a catalog item to.
3. Select the Items orderable by subscribers tab.
4. Optional: Relate a catalog item to an existing service offering.
a. Select Edit to see a list of catalog items that you can relate to the service offering. The list of
catalog items includes record producers. To see a list of record producers, open a new tab
and type sc_cat_item_producer.list in the Filter navigation field.
b. Move the catalog item from the Collection list to the Items orderable by subscribers List.
c. After you have moved all the catalog items that you want to relate to the service offering,
select Save.
5. Create a catalog item for the service offering.
a. Select New.
b. On the form, fill in the fields.
Catalog Item form
Field

Description

Name

Unique name for the catalog item.

Catalogs

The catalogs that this item is related with.

Category

Category for the item. Adding the catalog enables others to search for this
item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3450


<!-- page 3451 -->
Field

Description

State

State of the catalog item. When creating a catalog item, you can't edit the
State field. The state changes to Draft after you select Submit.

Checked
out

Name of the person who has the catalog item checked out for editing.

Owner

Owner of the catalog item.

Fulfillment The fulfillment level of the catalog item.
automation
level
Item Details
Short
Short description that is viewed on the service catalog homepage, search
Description results, and the title bar of the order form.
Description Full description of the catalog item. You can embed videos, images, links
to internal Knowledge Base (KB) articles, and links to external sources of
information.
Meta

Comma-separated list of tags used to search for the catalog item. Use
commas between keywords for better results when searching.
For more information, see Configure keyword search for catalog items

.

Process Engine

Note: You can specify a value for only one of these fields.
Flow

Flow that defines the fulfillment of the catalog item.

Workflow

Workflow that defines the fulfillment of the catalog item.

Execution
plan

Execution plan that defines the delivery of the catalog item.

Picture
Icon

Image next to the catalog item in the catalog. The icon dimensions are 27x27
pixels. If no image is uploaded, the default icon is next to the catalog item.
Your uploaded image overwrites the default image stored in images/
service_catalog/generic_small.gif.

Picture

Image of the item.

Pricing
Price

Price for the catalog item. Select the currency from the list.

Recurring
Price

Price for the catalog item that recurs. For example, a maintenance service
could have a monthly recurring price.

Recurring
Price
Frequency

Time frame for recurrence, such as Monthly or Annually.

Portal Settings
Use these settings to configure the catalog item behavior in the Service Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3451


<!-- page 3452 -->
Field

Description

Request
method

Setting that controls the label for the Order Now button and the order
submission experience.
▪ Order:
▪ Button label: Order Now
▪ Confirmation dialog box: Displayed
▪ Delivery information: Editable

Note: This setting is the default setting.
▪ Request:
▪ Button label: Request
▪ Confirmation dialog box: Displayed
▪ Delivery information: Not displayed
This setting can be used in scenarios such as a code access request where
the delivery information is pre-determined.
▪ Submit:
▪ Button label: Submit
▪ Confirmation dialog box: Not displayed
▪ Delivery information: Not displayed
This setting can be used in scenarios such as a reset password request
where no further request information is required.
Hide 'Add
to Cart'

If selected, the Add to Cart button isn’t displayed for the item. If the Show
Add to Cart instance option of the widget is set to false, then this setting is
ignored.
This setting is selected by default if the Request method is Request or
Submit.
For upgrade scenarios, if the No cart field is selected in Platform, then run
the CatalogPortalSettingsMigration script include to update this
setting to the Hide 'Add to Cart' field on the Portal Settings tab.

Note: This field is applicable for a catalog item and order guide.
Hide
Quantity

If selected, the Quantity list isn’t displayed for the catalog item.
Hide Quantity is selected by default if the Request method is Request or
Submit.
For upgrade customers, if the No quantity field is selected in Platform, run the
CatalogPortalSettingsMigration migration script to update this
setting to the Hide Quantity field on the Portal Settings tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3452


<!-- page 3453 -->
Field

Description

Note:
▪ Applicable for a catalog item.
▪ An order guide inherits this setting from the included catalog item.
Hide
Delivery
time

If selected, the Delivery Time field isn’t displayed for the catalog item.
Hide Delivery time is selected by default if the Request method is Submit.

Note:
▪ Applicable for a catalog item.
▪ An order guide inherits this setting from the included catalog item.
Hide 'Add
to Wish
List'

If selected, the Add to wish list button isn’t displayed for the catalog item.
If the wish list is inactive for the catalog item or the portal widget instance
option is set to false, then this setting is overridden for the item.

Note: Applicable for a catalog item and record producer.
Hide
If selected, the Add attachments button isn’t displayed for the catalog item.
Attachment

Note:

▪ Applicable for a catalog item and record producer.
▪ An order guide inherits this setting from the included catalog item.
Mandatory If selected, adding an attachment is required for the catalog item.
Attachment
Note: Applicable for a catalog item and record producer.

6. Submit.
Before you submit, select Try It to see the result.
Reporting for services and service offerings in Service Portfolio Management
See what's impacting your services and service offerings and report on them by using related list
information in Service Portfolio Management.
Service owners can track service level agreements (SLA) when an incident (or a problem or
a change) references their service offering in one of these related lists: Impacted services or
Affected configuration items (CIs). Portfolio admins can create indicators and reports for service
offerings to get a comprehensive view of what is impacting each service offering.

Offering record related lists
On the service offering record, there are three related lists that impact your service offerings:
• All Incidents
• All Problems
• All Changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3453


<!-- page 3454 -->
As implied, each related list retrieves all the incidents, all the problems, and all the changes
where the service offering has them added as part of these areas:
• Service offering field on the record
• Affected CIs related list on the record
• Impacted services related list of the record
You can also filter on each related list to find specific items.

SLA commitment reporting
When a service offering is added to the impacted service or to the affected CI related list, the
SLA breach reporting is triggered for that offering. The trigger happens even if the offering isn’t
listed in the service offering field on the record.
Related topics
View availability results in Service Portfolio Management
Service Portfolio Management service offering price
Service offerings inherit the pricing structure of the associated parent service. If the price model
for each service offering in Service Portfolio Management is defined in the parent service as per
unit, then each service offering must also have an associated price unit. The actual price for that
unit is established in the service offering record.
You can review service offering information regularly as a part of Data Certification
and
workflow. For example, you can set up a certification to validate pricing for your service offerings.
Forecast service usage and cost for a fiscal period to plan your future business using the
Showback
functionality of Financial Management.
To set a service offering price, navigate to Service Portfolio Management > Service Offerings
and select an offering for which a defined pricing structure exists. Enter the Price for the
service price unit and update the record. You can also type an optional description in the Unit
description field of the service offering record.
A Service Offering Cost unit is a unit of measurement of the service offering. For example, let's
say your service is Microsoft Suite. The cost unit would be the number of users. It could also
be the API calls. A cost model that's Per unit refers to the price per unit. In this case, it would
be the price per Microsoft Suite user or API call. The Estimated Spend for the Per unit cost
model is determined by the price per unit and units per period. A cost model that's Fixed refers
to a predetermined and agreed-upon total cost. For example, you set a specific price for your
Microsoft Suite service and stick to it. The cost unit is still the same (users or API calls), but the
Estimated Spend is determined by the agreed-upon price.

Log outages in Service Portfolio Management
Log outages to adjust your business or technical service commitment availability.

Before you begin

Role required: service_editor

About this task

Service Portfolio Management tracks and reports on outages for all business or technical service
offerings that include availability commitments.
The outage is used to evaluate the availability of the offering and appears in the reports
generated for this offering. There are three types of outages:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3454


<!-- page 3455 -->
• Outage: An unplanned outage that could be caused by hardware or network issues. The only
type of outage that's considered when calculating the availability of a business or a technical
service.
• Planned Outage: A necessary, expected outage caused by planned maintenance or an
upgrade.
• Degradation: A problem that affects a business or technical service but doesn't result in a
disruption of that service.
Outage records can relate to multiple configuration items (CIs). You can link a single outage to
multiple CI records using the Affected CIs related list.

Note: An outage must be created and saved before you can add a CI relation or link an
outage to multiple CI records using the Affected CIs related list.
View a unique Outage Number identifier for your outage records. View the Outage Number
column in the Outage table records list and on the Outage form.

Note: The Outage Numbering plugin (com.snc.outage_numbering) must be activated to
introduce number data. The plugin is automatically activated for all instances and upgrades
except those instances that already have a number prefix column on the Outage table.
If the plugin isn't active and you want to move to the base system field, see the Activate
Outage Numbering plugin [KB0823685]
article in the HI Knowledge Base or contact
Customer Service and Support.
When an outage is opened against a business or technical service, all child offerings are added
to the Affected CI related list on the outage form. A pop-up message notifies you that the outage
affects all child offerings. If needed, the offerings can be removed from the Affected CIs related
list.

Procedure
1. Navigate to Service Portfolio Management > Outages.
2. Select New to create an outage or find the business or technical service offering in the
Outages records list Configuration item field to edit.
◦ If creating an outage, the Outage form opens.
◦ If editing an existing outage, select the outage in the Type field.
3. Edit the Type field as necessary or choose None.
4. Optional: Enter text in the Message field.
5. Enter the length of the outage.
◦ Select the Begin and End dates and times with the calendar or
◦ Enter the Duration as a function of days and hours.
6. Select and hold (or right-click) in the form header to save the record or select Submit or
Update if editing an existing outage record.

Note:
If a single outage impacts multiple business or technical service offerings, you can add
those offerings to the Affected CIs related list.
7. To add an associated affected CI, select Add.
All affected CIs are listed in the Service Offering configuration class.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3455


<!-- page 3456 -->
8. Select a single CI or group of CIs.
Select the box next to the CI name and then select Add Selected. Alternatively, you can
choose to add all the listed affected CIs to the outage record by selecting Add All.
9. Close the Add Affected Configuration Items list window.
The CI or CIs are added to the Affected CIs related list.
10. Select Update.

View availability results in Service Portfolio Management
View availability calculations for commitments on service offerings and application services.
After the commitments are set up in Service Portfolio Management, you can view the results by
an automated report that you set up.
After an availability commitment is added to a service offering or to an application service,
Service Portfolio Management generates a year of availability records for that item and
commitment, starting from the previous year. Service availability is based on the availability of the
offerings, rolled up to the service. If an outage is updated, then the related availability records are
updated as well so you can assess outage impacts and manage outage records.
Service Portfolio Management runs a daily job to generate the commitment availability reports
and uses the system time zone.
For information on adding availability commitments, see Add a commitment to a service offering.

Availability calculator
Starting with the Zurich release, you can use an availability calculator
[com.snc.availability.v2] for improved performance, calculations, and maintenance.
The availability calculator is redesigned from its predecessor to ensure that you see the most
updated and accurate availability data in the period that you want.
Service Portfolio Management creates availability records on the first of the period so you can
see the availability as the period progresses. This real-time data is especially valuable when
you’ve committed to a specific level of availability for your customers.
Also, the improved calculator updates the record as outages are created. For example, you
can start off with 100% availability, and then when an outage happens, it updates to 99.95%
based on the outage duration. You and your customers can rely on accurate availability data
during outages, without repeated outage recalculations with no end date (as with the previous
calculator).
Here are the availability period options that you can choose from when using the updated
availability calculator:
• Daily
• Weekly
• Monthly
• Annually
• Last 7 Days
• Last 30 Days
• Last 12 Months
New customers automatically get the updated availability calculator, but existing customers must
set the property to 'true' to opt in.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3456


<!-- page 3457 -->
To set the updated system property to 'true,' admins must do the following:
• Type sys_properties.list in the Filter navigator, and then press Enter.
• Select the for text search option.
• Type availability in the Search field, and then press Enter.
• Find the [com.snc.availability.v2] option, and then set its value to true.

Availability reporting for application services
To view availability reporting for application services, you must create and map availability
commitments to an application service using the [service_offering_commitment
table].
In the [service_offering_commitment table], use the cmdb_ci field in the
service_offering_commitment table to associate an application service to an
availability commitment.

Generate availability results
To view availability results, navigate to All > Service Portfolio Management > Availability, and
then select the related record from the list.
Service availability fields and calculations
Field

Description

Calculations

Display
name

Name of the configuration item (CI) and the
availability for the commitment. You can't
edit this field.

Not applicable.

Service
offering

The affected offering for this availability.

Not applicable.

Service
The affected commitment for this
commitment availability.

Not applicable.

Start

Start of the availability interval. Mouse
device pointing over this field displays the
duration.

Not applicable.

End

End of the availability interval. Mouse
device pointing over this field displays the
duration.

Not applicable.

Committed
uptime

Total expected service availability for this
commitment, given in days, hours, minutes,
and seconds.

Period end to period start.

Acceptable
downtime

Acceptable amount of downtime against
Scheduled period end to
the commitment's schedule for this interval, scheduled period start, multiplied
given in days, hours, minutes, and seconds. by commitment percentage.

Total
downtime

Wall clock downtime (independent of the
schedule), given in days, hours minutes,
and seconds.

Outage end to outage start.

Total
Availability percentage for the entire interval (Available uptime minus the total
availability % (independent of the schedule).
downtime) divided by the available
uptime.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3457


<!-- page 3458 -->
Service availability fields and calculations (continued)
Field

Total
outages

Description

Total number of outage periods in this
interval (independent of the schedule).

Calculations

Number of outages.

Note: If an unplanned outage (in
full or in part) overlaps with a planned
outage, then the unplanned outage
time that overlaps doesn't count
toward the total outage time. This logic
applies to the CI and affected CIs on
the outage record.
Commitment Availability within this commitment’s
availability % schedule.

(Committed uptime minus
commitment downtime) divided by
the committed uptime.

Commitment Downtime that counts against this
downtime
commitment’s schedule, given in days,
hours, minutes, and seconds.

(Outage start minus outage end) in
scheduled up time.

Commitment Number of outage periods against this
outages
commitment’s schedule in this interval.

Number of outages in scheduled
uptime.

Met
When checked, indicates that the
commitment availability commitment has been met.

True or false depending on
if commitment availability
percentage is higher than the
service commitment.

Mean time
between
failures
(MTBF)

Average time between commitment outages Basic formula: Total uptime in
for a CI.
period divided by the number of
outages in period (Commitment
outage periods), where total
uptime in period = (Committed
uptime minus Committed
downtime).

Mean time
to restore
service
(MTRS)

Average duration of commitment outages
for a CI.

Basic formula: Total duration
(Commitment downtime) divided
by the number of outages in
period (Commitment outage
periods).

Note: For more information about calculations for MTBF and MTRS, see KB1505841

.

Archival rules for better performance
Starting with the Vancouver release, archival rules are activated by default. Service Portfolio
Management uses a scheduled job called table cleaner to archive older records from tables in
the instance to keep table sizes and query performance manageable. To ensure you get quicker
data results, Service Portfolio Management uses the table cleaner job to archive availability data
that is older than three years.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3458


<!-- page 3459 -->
Set the time zone for availability results in Service Portfolio Management
By default, the time zone to calculate availability for services and commitments is set to the
global (system) time zone. You can change the global time zone or you can set the time zone for
service commitments. With either option, you can recalculate the availability results based on the
time zone that you set.

Before you begin

Role required: portfolio_admin or admin

About this task

The following system properties work in the background for you to set the time zone for
availability results:
• spm.availability.global.tz — The default time zone, also called the system time zone. This
system property enables you to select a time zone from a list to calculate availability results for
all commitments using this global time zone.
• spm.availability.commitment.tz — When set to true (or to Yes in the interface), this system
property enables you to calculate availability results using the time zone that you select for a
commitment record.
To set the time zone, the availability system property [com.snc.availability.v2] must be set to true.
1. In the Filter navigator, enter sys_properties.list.
2. Enter *avail in the System Properties Name search field, and then press Enter.
3. Verify that the availability system property [com.snc.availability.v2] is set to true.

Note: If the availability system property isn’t set to true, then select the system property
name, set the Value field to true, and then select Update. A banner might display with a
link to edit the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3459


<!-- page 3460 -->
Procedure
1. Navigate to All > Service Portfolio Management > Administration > Availability calculation
settings.
Availability calculation settings page

2. Decide how you want to calculate availability.
◦ Calculate availability with commitment time zone or
◦ Set the global availability time zone.
Refer to the Availability calculations settings page image for the next steps.
3. Optional: Calculate availability with commitment time zone.
a. On the Availability calculations settings page, select Yes to Calculate availability with
commitment time zone, and then Save.

Note: Notice that the global availability time zone can't be set.
b. In the Core UI tab, navigate to the list of service commitments.

Tip: To see a list of service commitments, enter service_commitment.list in
the Filter navigator, and then press Enter.

c. Open a service commitment that you want to change the time zone. In the Time zone field,
use the down arrow to select a different time zone, and then select Update.
d. The Time zone column of the Service commitment table shows the time zone that you
updated.
4. Optional: Set the global availability time zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3460


<!-- page 3461 -->
a. On the Availability calculations settings page, select No to Calculate availability with
commitment time zone.
b. Use the down arrow to Set the global availability time zone, and then Save.
c. In the Core UI tab, navigate to the service availability list.

Tip: To see the service availability list, enter service_availability.list in
the Filter navigator, and then press Enter.

d. Select Recalculate results, and then select Recalculate on the Confirmation page.
e. Select Refresh (
zone column.

) on the service availability list to see the updated time zone in the Time

Note: It takes a few minutes for all the records to recalculate and show the updated
time zone field.
5. Optional: Configure the available time zones.
a. On the Availability calculations settings page, select Configure available time zones to
open it in another tab.
b. In the opened tab, select the time zone from the Available field and move it to the Selected
field.

Note: You can also add a time zone to the Available field. Enter a time zone in the
Enter new item field, and then select Add.
c. Select Save.
d. To return to the Availability calculation settings page, select its tab.
6. Select Save.
Related topics
View availability results in Service Portfolio Management

Convert services in bulk in Service Portfolio Management
Convert multiple services from the Configuration Management Database (CMDB) service table to
one of the dedicated child tables. You can convert to a business service or to a technical service.

Before you begin

Role required: admin

About this task

You can convert services individually but to reduce manual overhead, convert multiple services
at once from the CMDB service table [cmdb_ci_service] to one of the dedicated child tables:
• Business service table [cmdb_ci_service_business]
• Technology management service table [cmdb_ci_service_technical]

Note: Starting with the Zurich release, the [cmdb_ci_service_technical] table is labeled
Technology Management Service in the user interface (formerly labeled Technical service).
Additionally, the [service_offering] table is labeled Technology Management Offering in the
user interface (formerly labeled Technical service offering).
When you convert a service, the record and all its relationships remain intact.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3461


<!-- page 3462 -->
Note: Service offerings can’t be converted but they inherit the parent type (Service
classification if your organization uses that field).

Procedure
1. Navigate to All > Service Portfolio Management > Services.
2. Select the services that you want to convert.
If your organization uses the Service classification field for business and technical services,
then you can filter by Service classification.
3. Select Actions on selected rows, and then select Convert to business service or Convert to
technical service.
4. At the prompt, select OK to continue to convert the services or select Cancel.

Note: If a selected item can’t be converted, a warning message is displayed.
5. Optional: Convert a service while in the service record.
To convert a service wile in the service record, find the convert options under Related Links. If
you don't see the convert options, then you might be in a record that isn't in the CMDB service
table [cmdb_ci_service].

View Service Level Agreement (SLA) results in Service Portfolio Management
Service Portfolio Management leverages the Service Level Management application and
includes a module to manage your Service Level Agreement (SLA) definitions and results.
You can view, modify, or create SLA definitions from the Service Portfolio Management
application. You can also view, modify, or create SLA results. Refer to Service Level Agreement
(SLA) definition and Create an SLA definition for information about SLA definitions and
configuration. For complete detailed information about SLAs, refer to Service Level Management.
After you define service commitments for your offerings, you can monitor the SLA results to
manage performance by the running a daily job that generates the SLA results.
To enable Service Level Agreement (SLA) commitment support to Service Portfolio Management,
activate the com.snc.service_portfolio.sla_commitment plugin. For more information, see
Activate Service Portfolio Management.
To view the SLA results, navigate to Service Portfolio Management > Service Level
Management > SLA Results. To edit an SLA result, select the name of the SLA result to open the
SLA Result form. Change any of the form field data as needed.
SLA Result form
Field

Description

Service offering

Select the service offering for which you want
to create or modify an SLA Result record.

Service commitment

Select the service commitment to apply the
SLA Result record.

Start

Specify the start date for this SLA Result
interval.

End

Specify the end date for this SLA Result
interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3462


<!-- page 3463 -->
SLA Result form (continued)
Field

Description

Company

Specify the company for which the SLA Result
record is created.

Required SLA percentage

Enter the percentage of tasks that must meet
this SLA.

Note: The following fields display SLA result data when available:
• Total tasks — Total number of incidents that are opened against the service offering.
• Breached — Number of tasks that breached this SLA for this interval.
• Achieved — Number of tasks that achieved this SLA for this interval.
• Total achieved % — SLA percentage achieved for the entire interval.

Note: When an SLA definition is triggered against a particular task, a task SLA record
generates and contains all the tracking data for the specific SLA on that record. To create an
SLA task or modify an existing task, refer to Task SLA table.

Service Portfolio Management reference
Reference topics provide additional information about the roles, lists, and forms to configure and
administer Service Portfolio Management.

Installed with Service Portfolio Management
Service Portfolio Management Core is active by default for users with ITSM licenses. Service
Portfolio Management Foundation is administrator activated and enables you to document
portfolios, taxonomies, services, and service offerings using a standardized, structured format.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Service Portfolio Management plugins
The following two plugins enable you to use the full functionality of Service Portfolio
Management:
• Service Portfolio Management Core [com.snc.service_portfolio_core]
• Service Portfolio Management Foundation [com.snc.service_portfolio]
The Service Portfolio Management Foundation plugin automatically activates the Service
Portfolio Management Core plugin. Each plugin independently installs a set of roles and tables.
If you install Service Builder from the ServiceNow Store, its plugin [com.snc.service_builder]
automatically installs. Service Builder uses the same role set as Service Portfolio Management.
See Service Builder for more information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3463


<!-- page 3464 -->
Service Portfolio Management Core roles and tables
Roles installed with Service Portfolio Management Core
Role

[portfolio_admin]

Role actions

Contains roles

• portfolio_editor

• Set up, create, edit, and
delete services and service
portfolios.

• service_admin
• sla_manager

• Manage portfolios including
related commitments and
availability.
• Update taxonomy nodes,
services, service offerings,
and reparent services.
[service_editor]

Edit services and service
offerings that they own or are
a delegate of.

service_viewer

[service_viewer]

View all services and service
offerings.

cmdb_read

Table installed with Service Portfolio Management Core
Table

Description

Extends the [cmdb_ci_service] table.

[service_offering]

Service Portfolio Management Foundation roles and tables
Roles installed with Service Portfolio Management Foundation
Role

[portfolio_editor]

Role actions

Contains roles

• Edit and delete services and
service portfolios.

• service_editor

• Update portfolios, taxonomy
nodes, services, service
offerings, and reparent
services.

• portfolio_viewer
• sla_manager

[portfolio_viewer]

View portfolios, taxonomy
nodes, services, and service
offerings.

service_viewer

[service_admin]

Set up, create, edit, and delete service_author
services and service offerings.

[service_author]

Create, edit, and delete
services and service offerings

service_editor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3464


<!-- page 3465 -->
Roles installed with Service Portfolio Management Foundation (continued)
Role

Role actions

Contains roles

of which they’re an owner or
have created.
Tables installed with Service Portfolio Management Foundation
Table

[spm_service_portfolio]
[spm_taxonomy_layer_definition]

Description

Used to create or modify a service portfolio.

Used to define the order of a taxonomy layer
associated with a service portfolio.

Note: Use this table with the legacy
portfolio structure. The standard portfolio
structure doesn’t have taxonomy layers.
For more information, see Service
Portfolio Management portfolios.
[spm_taxonomy_node]

Used to create or modify a taxonomy node
associated with a service portfolio.

[service_subscribe_company]

Used to associate service offering
subscriptions to a specific company.

[service_scope]

Used to store user-defined limits to the service
levels of a service.

[service_subscribe_department]

Used to associate service offering
subscriptions to a specific department.

[service_availability]

Used to store the calculated availability
records of a service.

[service_subscribe_sys_user]

Used to create a module enabling you to
categorize subscribers by individual users.

sc_cat_item_subscribe_mtom

Used to create a catalog item and make it
available for subscription.

sc_cat_item_subscribe_no_mtom

Used to create an item while not making it
available for subscription.

service_subscribe_location

Used to specify where a service offering is
located, by actual physical address.

sc_cat_item_service

Used to enter an item in the Service Catalog.

service_offering_commitment

Used to create and configure service
commitments by specifying orders and
associating service offerings.

service_in_scope

Used to create and define services In Scope
and specify the scope parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3465


