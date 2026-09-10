# Zurich IT Service Management — Service Owner Workspace

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3466–3502 of 3857

Sections: Service Owner Workspace (p3466); Exploring Service Owner Workspace (p3467); Setting up Service Owner Workspace (p3475); Using Service Owner Workspace (p3492)

---

<!-- page 3466 -->
Tables installed with Service Portfolio Management Foundation (continued)
Table

Description

service_subscribe_sys_user_grp

Used to create a module enabling you to
categorize subscribers by group.

service_commitment

Used to store records from the Service
Commitments related list in the Service
Offerings form.

service_out_scope

Used to create and define services Out of
Scope and specify the scope parameters.

Domain separation and Service Portfolio Management
Domain separation is supported in Service Portfolio Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: Basic*
The support level is Basic but has some exceptions or special conditions.
• Business logic: Ensure that data goes into the proper domain for the application’s service
provider (SP) use cases.
• The user interface, cache keys, reporting, rollups, and aggregations all use the domain at
production run time.
• The owner of the instance must be able to set up the application to function across multiple
tenants.
For more information on support levels, see Application support for domain separation

.

*All components of Service Portfolio Management (SPM) and Service Owner Workspace (SOW)
are domain-separated in releases of New York and forward. If using Financial Management for
the SPM plugin for estimated spend, there can be only one fiscal calendar defined per instance.
When this plugin is activated, there can be only one approach for service offering cost modeling
per instance (using either the Financial Management engine or local data. Different domains
cannot choose their own spend model.
Related topics
Domain separation for service providers

Service Owner Workspace
®

ServiceNow Service Owner Workspace provides an integrated Service Portfolio Management
experience. If you're a portfolio manager or service owner, you can manage and monitor
portfolios and services in an integrated user interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3466


<!-- page 3467 -->
Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace but customers who
opt in for the new standard portfolio structure must implement Digital Portfolio Management
(DPM). See Digital Portfolio Management. For information on the deprecation process, see
Deprecation Process [KB0867184] .
Service Owner Workspace is available as a separate subscription and is part of the Service
Portfolio Management Premium experience.
Track and analyze how your services are performing and which services need attention. You
can also integrate data from the Vendor Management Workspace, Contract Management, SLA
Contracts, Risk Management, and Continual Improvement Management (CIM) applications to
quickly access data from one place.

Key features

Data all in one place
Manage the performance
of your services. Evaluate
performance against value
to ensure your services
merit the investment.

Comprehensive service
performance layout
Analyze service
performance metrics using
a comprehensive layout of
all information that is related
to a service and its offerings.

Integrated application data
Use aggregated data from
multiple applications
and measure service
performance using qualitative
and quantitative metrics.

Get started
Select a tile to get started.

Exploring Service Owner Workspace
The Service Owner Workspace provides portfolio and service owners with an integrated and
graphically intuitive user experience to manage and monitor portfolios and services.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3467


<!-- page 3468 -->
Navigate

How Service Owner Workspace works
Service Owner Workspace is a read only user interface driven by Service Portfolio Management
Premium plugin (com.snc.spm) functionality. Service Portfolio Management Premium collects
service offering metrics and rolls these calculations up to parent services and taxonomy nodes
for performance scores and other metrics viewed via Service Owner Workspace. Performance
Analytics indicators capture this data and Service Portfolio Management Premium uses the
Performance Analytics data as input metrics to calculate a service offering performance score.
These indicators can also track data about a service offering without including it in the offering
performance score.
Users can create new metric definitions or use the metric definitions provided in the base
system application. Assign metrics to service portfolios and define weights for every metric at an
offering level to provide more granularity into performance. Daily jobs then calculate the offering
performance score and roll the scores up to the service and other associated taxonomy nodes to
monitor in Service Owner Workspace.

Service Owner Workspace browser requirements
ServiceNow workspaces do not support mobile devices, and, starting with the Orlando release,
Internet Explorer, or Microsoft Edge. Instead, use Microsoft Edge-Chromium or one of the other
supported browsers listed in Browser support . If you're using New York or an earlier release and
®
you're using Internet Explorer 11 or Microsoft Edge with any workspace, such as ServiceNow
®
CSM Agent Workspace or ServiceNow Vendor Manager Workspace, you must migrate to a
newer browser before you upgrade to at least the Orlando release. See the Internet Explorer 11
Performance [KB0683275]
article in the Now Support Knowledge Base for more information.

Service Owner Workspace overview
Manage and monitor your services with premium features. View service offering details in the
workspace:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3468


<!-- page 3469 -->
Service offering details

Number

Agent Workspace feature

Description

1

Tabs

The multi-tab interface enables you to easily
navigate between service-related records.
• All services open in the Services Home tab.
• Associated service offering details open in
subtabs. Drill down to the lowest hierarchical level
to view details about all related service offerings.

2

Form header

The form header provides you with a quick
summary of the service offering and an associated
performance score. Estimated spend details appear
in the form header when available.

3

Related items menu

Service-related information is available to view in
the related items menu. Click an item to see the
related information.

4

Ribbon

Ribbon components display service offering
performance score, customer satisfaction, and total
subscriber trends. Estimated spend data is also
viewable when available.

5

Form pane

Additional service-related information is displayed
as you scroll down the page and drill deeper into
the data. Information includes, service-offering
availability, breached SLAs, customer satisfaction,
stability, and activity.

6

Contextual side panel details

Unique data details are displayed. Click icons
to display Outages, Critical Incidents, Change
Requests, or Attachments details.

7

Contextual side panel

The contextual side panel displays unique data
depending on which icon you select.

Integration with Common Service Data Model
Improve your measurement and evaluation by using services and offering references on multiple
IT Service Management task forms, including:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3469


<!-- page 3470 -->
• Problem
• Change
• Continual Improvement Management
• Incident
Directly reference a service offering as the target of a problem, change, or incident for
consistency with the Common Service Data Model (CSDM). The system filters available offerings
based on the service selected.
View and define the service model Model ID reference field on the Service and Offering forms to
integrate with the CSDM.

Service Owner Workspace performance metrics
Service Owner Workspace includes a metrics model in the platform Service Portfolio
Management Premium application for measuring the performance of services offerings. These
performance metrics are then aggregated to services and taxonomy nodes via a weighting
mechanism.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. Customers who
opt in for the new standard portfolio structure use metrics calculated from key performance
indicators (KPIs) in Digital Portfolio Management (DPM). For more information, see Digital
Portfolio Management.

Navigate

Metric Definitions
When activated, Service Portfolio Management Premium collects service offering metrics which
permit calculations to roll up to parent services and taxonomy nodes for performance scores
and other metrics. All metric configurations are performed in the platform application. Service
owners can view these performance scores and metrics via Service Owner Workspace. The
following Metric Definitions are installed with the Service Portfolio Management Premium plugin
(com.snc.spm):
Activity
The metric indicator is from service portfolio-related catalog activity. The metric
is calculated from fulfilled request items derived from catalog items, which are
connected to service offerings.
Availability
The metric indicator is Service Portfolio Management availability as calculated from
outage records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3470


<!-- page 3471 -->
Note: If more than one Availability commitment exists for a service offering,
at least one must be set as the Primary for trending purposes. Only one
availability commitment is considered for performance score calculation,
determined by the Use in performance score flag. Additional features include:
• Creation of Availability definitions specific to describe Availabilities for
service offerings.
• Directly link a service offering commitment to an Availability definition.
• Maintain Availability statistics regarding outages.
Breached SLA
The metric indicator is from an SLA record, based on a breached SLA. Calculations
depend on activation of the Service Portfolio Management SLA Commitments
plugin (com.snc.service_portfolio.sla_commitment), which enables the following
features:
• Creation of SLA definitions specific to describe the SLAs in place for service
offerings.
• Directly link a service offering commitment to an SLA definition.
• Maintain SLA statistics regarding breaches.

Note: If more than one SLA commitment exists for an offering, at least one
must be set as the Primary for use in performance scoring. Only one SLA
commitment is considered for performance score calculation, determined
by theUse in performance score flag.
Customer Satisfaction
Calculations are tabulated from surveys sent to unique subscribers to an offering.
Critical Incidents
The metric indicator is calculated from a combination of daily P1 and major incident
counts. You will need to update the lower and upper boundary for this metric. For
details refer to Service offering performance weighting.

Note: Prior to the Quebec release, the Critical Incidents metric was called Stability and

was depicted as a single score widget on the Trends tab the workspace. The data currently
appears as a time series chart. The default time frame for Service Owner Workspace metric
performance is 30 days, except for the Critical Incidents metric, which shows all open
major and P1 incidents per day.

Service offering performance weighting
Service owners can vary the inclusion and weighting of service offering metrics to reflect the
business needs and perspectives of their stakeholders. Metrics are normalized and weighted to
determine the performance of an offering. Metrics are only maintained for service offerings with
an operational status. Weights must equal 100 percent.
To disable a service offering metric with unavailable or unreliable data from performance
calculations, you can set the metric weight to 0 in the platform Service Portfolio Management
Premium application.
Click the Edit Metric Weights Related Link on the Service Offering form to edit the upper
and lower boundaries for each metric. The Maintenance pop-up window appears for you to
customize per service offering. The upper and lower boundaries define how a metric is measured
against a 0 through 100 percent scale and normalized together. To obtain a 100% score for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3471


<!-- page 3472 -->
negative metrics, such as for Critical Incidents, the score must be below or equal to the lower
boundary.
Service offering Edit Metric Weights

Service offering to service performance weighting
Service owners can vary the inclusion and weighting of the service offering in service
performance to reflect the business needs and perspectives of their stakeholders. Service
offering performance is weighted and combined to determine the performance of a service. Only
offerings with an operational status are used to contribute to service performance.
Set a service offering weight to 0 to disable it from the performance calculations of its parent
service.
Click the Edit Weights Related Link on the Services form to edit the weights for associated
offerings. Weights are valued against a 0 through 100 percent scale and normalized together.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3472


<!-- page 3473 -->
Service offering to service performance Edit Weights

Note: Upper and lower weight boundaries can be anything, from negative numbers to
thousands of numbers. They do not have to be 0 to 100. But the outcome of the linear
ranging math is to use those boundaries to make a normalized number between 0% and
100%.
For example, the normalization process dictates, that if you choose -20 and 150 as lower
and upper boundaries, then anything at -20 or below will get normalized to 0% and anything
at or above 150 will get normalized to 100%. Every number in between -20 and 150 is scaled
to within the 0 through 100 range.
Another way to describe the normalization process is, for example, if you choose 5 and
150 as lower and upper boundaries and the metric is negative (minimize). With this metric
anything below or equal to 5 gets a normalized score of 100%. Therefore, for a negative
metric, the lower the raw score is, the higher the normalized score, which is capped at
100%. If you choose 5 and 150 as lower and upper boundaries and the metric is positive
(maximize), then anything below or equal to 5 will get a normalized score of 0%.

Service to nodes performance weighting
Portfolio owners and editors can vary the inclusion and weighting of services in node
performance to reflect the business needs and perspectives of their stakeholders. Service
performance is weighted and combined to determine the performance of sublevel taxonomy
nodes, also called child nodes.
Use the Edit Weights Related Link on the Taxonomy Nodes form to edit the associated service
weights. Service weights are valued against a 0 through 100 percent scale and normalized
together.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3473


<!-- page 3474 -->
Service to nodes Edit Weights

Node to node performance weighting
Portfolio owners and editors can vary the inclusion and weighting of node in node performance
to reflect the business needs and perspectives of their stakeholders. Node performance is
weighted and combined to determine the performance of taxonomy parent nodes.

Performance scores
The performance score for services and offerings are highlighted with a different color in Service
Owner Workspace based on the configured threshold limit defined on the portfolio record.
• Red: Indicates the score is lower than the set threshold limit.
• Amber: Indicates the score is within the set threshold.
• Green: Indicates the score is higher than the set threshold limit.
Performance score indicators

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3474


<!-- page 3475 -->
Metrics configuration
To view or configure Service Owner Workspace metric definitions, refer to Configure Service
Owner Workspace metric definitions.
To view or configure Service Owner Workspace portfolio metrics, refer to Configure Service
Owner Workspace portfolio metrics.

Setting up Service Owner Workspace
Prepare for your Service Owner Workspace experience by activating necessary applications,
accessing quick start tests to ensure proper functionality, and configuring metrics to monitor.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

Integrate with other applications
After activating the Service Owner Workspace plugin (com.spm_owner_workspace), align with
other ServiceNow applications to expand your service portfolio monitoring experience.
Service Owner Workspace is meant to work seamlessly with Vendor Manager Workspace. Often
service owners are also vendor managers. For this reason, activation of the Vendor Manager
Workspace application is useful. Toggling between the two workspaces is easy because they
share the same interface. Simply click the Vendor Manager Workspace icon in the workspace to
view vendor-related data.
Workspace icons
Integrating with the Financial Management application provides estimated spend calculations
based on fiscal periods and rolls spend data up from service offerings to associated services
and taxonomy nodes within your portfolio. Estimated spend data is available to monitor and
analyze in the workspace.
Refer to Service Owner Workspace integrations for complete details about applications that
you can activate to add greater depth and value to your Service Owner Workspace monitoring
experience.

Metrics definition and configuration
Monitoring your services involves metrics and scores that keep you apprised of how well your
services are performing, how satisfied your customers are with the services you provide, and
how many people are subscribing to your services. Defining metrics and applying the metrics
to your portfolios, services, and offerings ensures an accurate and goal-oriented monitoring
experience. You determine the upper and lower thresholds of service performance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3475


<!-- page 3476 -->
Portfolio setup automations
Choose from pre-built setup automations to apply to a portfolio to reduce your time creating
services and offerings. Edit and update automations and scripts and define fields at the Service
Portfolio record level which trigger when to run a script, or series of scripts.
• Automatically add five default metrics when you create a new service portfolio. You can choose
not to add the metrics.
• Evenly weight all performance metrics for new offerings at the portfolio level.
Each time an offering is created as part of a portfolio, the performance weight of each metric is
evenly distributed. For example, each default metric is weighted at 20%.
If re-parenting a service to a different portfolio, offerings will automatically assume the metrics
of the new portfolio and the weights when the Evenly weight performance metrics for new
offerings is active when creating a new portfolio. This same logic applies when an offering is
created.

Note: When you cannot evenly equal 100% across all metrics, use order to give the
highest number the highest weight. For example, if you have seven metrics, you can
weight the percentages as: 15, 15, 14, 14, 14, 14, 14. If you have three metrics, you can
weight the percentages as: 34, 33, 33.
• Automatically create one-to-many offerings on a newly created service within a service
portfolio or when adding a service to an existing service portfolio. The service must be
associated with a service portfolio and it must not have any child offerings. When you activate
this feature, a drop down field appears enabling you to choose how many offerings you want to
create.
To activate these automations, refer to Create portfolios in Service Portfolio Management.

Activate Service Owner Workspace
The Service Owner Workspace plugin (com.spm_owner_workspace) is available as a separate
subscription. It activates related plugins, including the Service Portfolio Management Premium
plugin (com.snc.spm). Subscribing to Service Owner Workspace adds the service-owner user
interface and premium functionality to your Service Portfolio Management environment.

Before you begin

Role required: admin

About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3476


<!-- page 3477 -->
A subscription to Service Owner Workspace includes full access to Performance Analytics.
The Performance Analytics - Premium plugin (com.snc.pa.premium) is necessary for Service
Owner Workspace feature functionality. It must be activated before you can activate the Service
Owner Workspace plugin.
The Service Owner Workspace plugin (com.spm_owner_workspace) activates related plugins if
they are not already active.

Related plugins for Service Owner Workspace
Plugin

Description

Performance Analytics — Premium

Adds the following functionality to Service
Portfolio Management:

[com.snc.pa.premium]

Note: This plugin must be
activated before activating the
Service Owner Workspace plugin
(com.spm_owner_workspace).

• Create indicators, breakdowns, and other
records.
• Create text analytics widgets.
• Use Performance Analytics with external
data.
• Preserve performance scores beyond 180
days.

Service Portfolio Management Premium
[com.snc.spm]

Service Portfolio Management Estimated
Spend

Collects service offering metrics and rolls
these calculations up to parent services and
taxonomy nodes for performance scores
and other metrics viewed via Service Owner
Workspace.
Provides a simple cost model.

[com.snc.spm.spend]
Agent Workspace - Form

Provides workspace form configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3477


<!-- page 3478 -->
Related plugins for Service Owner Workspace (continued)
Plugin

Description

[com.snc.agent_workspace.form]
Agent Workspace - List

Provides workspace list configurations.

[com.snc.agent_workspace.list]
Agent Workspace - Highlighted Values
[com.snc.agent_workspace.highlighted_values]
Agent Workspace - Declarative Actions
[com.snc.agent_workspace.declarative_actions]
Service Workspace

Provides support for highlighted values in
workspace.
Provides support for declarative actions in
workspace.
Provides the Service Workspace application.

[com.snc.service_workspace]
Several additional plugins offer increased functionality to Service Owner Workspace. Activate
these plugins to enhance your monitoring experience.
Additional plugins for Service Owner Workspace monitoring functionality
Plugin

Description

Vendor Manager Workspace

Provides integration with the Vendor Manager
Workspace as part of the Service Owner
Workspace monitoring experience.

[com.snc.vlm.vmw]

Continual Improvement Management CIM Enables display of existing CIM records in Service
Owner Workspace when a service relation is
[com.sn_cim]
indicated on associated forms. Service owners
can initiate a CIM record to address a performance
issue with a service or offering.
Incident Management - Major Incident
Management

Provides a consolidated workbench to view major
incidents via Service Owner Workspace.

[com.snc.incident.mim]
Financial Management for SPM

Enables integration of Financial Management
with Service Portfolio Management, providing
[com.snc.financial_management_for_spm] preconfigured service offering cost models to view
in Service Owner Workspace.
Collects service offering cost and enables you
to select between your local cost model and the
Financial Management application model, when
used.

Note: Users can also choice not to use
the local cost model or the Financial
Management model, by selecting None in the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3478


<!-- page 3479 -->
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
Installed with Service Owner Workspace
List of plugins (New York)
Installed with Service Owner Workspace
Service Owner Workspace automatically activates the Service Portfolio Management Premium
plugin (com.snc.spm). Service Portfolio Management Premium installs the following components.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Service Portfolio Management Premium
Tables installed with Service Portfolio Management Premium
Table

Description

Metric Definition

Used to define metrics for use in the Service
Portfolio Management Premium application.

[spm_metric_definition]
Service Offering Metric Data
[service_offering_metric_data]

Used to configure service offering metric data.
With this record you can:
• Set boundaries within a service offering
performance score range.
• Set a weight value.

Portfolio Metric

Used to configure portfolio metric data.

[spm_portfolio_metric]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3479


<!-- page 3480 -->
Tables installed with Service Portfolio Management Premium (continued)
Table

Description

SPM Node Weight

Used to assign a weight value to a node in
relation to the value of its sibling nodes.

[spm_node_weight]

Quick start tests for Service Portfolio Management Premium
Validate that Service Portfolio Management Premium still works after you make any configuration
change such as apply an upgrade or develop an application. Copy and customize these quick
start tests to pass when using your instance-specific data.
Service Portfolio Management Premium quick start tests require activating the Service Portfolio
Management Premium plugin (com.snc.spm).
Service Portfolio Management Premium - ATF Tests test suite
Test

Description

Release version

Portfolio Editor: Not Portfolio
Owner, Read Only Taxonomy
Access

Ensure a portfolio editor can
only read associated nonowned portfolio taxonomies.

Orlando

Portfolio Editor: Cannot create Ensure a portfolio editor
new Portfolios
cannot create new portfolios.

Orlando

Portfolio Editor: Valid Portfolio
Owner Taxonomy Access

Ensure a portfolio owner has
access to taxonomies within
owned portfolios.

Orlando

Service Editor: Access

Ensure a service editor can
only edit owned services and
offerings.

Orlando

Portfolio Editor: Can Modify
Owned Portfolios

Ensure a portfolio editor can
modify and update owned
portfolios.

Orlando

Create a Portfolio

Ensure a portfolio admin can
create a new portfolio.

Orlando

Portfolio Editor: Cannot Modify Ensure a portfolio editor
Non-Owned Portfolios
cannot modify non-owned
portfolios.

Orlando

Service Workflow

Orlando

Verify that a service cannot
move forward to Catalog
phase without a service
portfolio, taxonomy node, and
service offering attached to it.
Verify a service cannot move
backward from the Catalog
phase to the Pipeline phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3480


<!-- page 3481 -->
Service Portfolio Management Premium - ATF Tests test suite (continued)
Test

Description

Release version

Service Portfolio (Normal)

Create a service portfolio,
Orlando
taxonomy layer, and taxonomy
nodes.

Create a Portfolio + 3
Taxonomy Layers

Create a service portfolio with
three taxonomy layers.

Orlando

Service Portfolio (Exception) - Create a service portfolio,
Orlando
Taxonomy Layer Definition Set taxonomy layer, and taxonomy
01
nodes.
SPM: Create a Portfolio

Create a service portfolio.

SPM: Create a Portfolio + 3
Taxonomy Layers

Create a service portfolio, with Paris
three taxonomy layers.

SPM: Service Portfolio
(Normal)

Create a service portfolio,
Paris
taxonomy layer, and taxonomy
nodes.

SPM: Service Portfolio
(Exception) - Taxonomy Layer
Definition Set 01
SPM: Portfolio Editor: Can
Modify Owned Portfolios

Create a service portfolio,
taxonomy layer, and taxonomy
nodes.
Ensure a portfolio editor can
modify portfolios that they
own.

Paris

Paris

Paris

SPM: Portfolio Editor: Cannot
Modify Non-Owned Portfolios

Ensure a portfolio editor
cannot modify portfolios that
they do not own.

Paris

SPM: Portfolio Editor: Cannot
create new Portfolios

Ensure a portfolio editor
cannot create new Portfolios.

Paris

SPM: Portfolio Editor: Valid
Portfolio Owner Taxonomy
Access

Ensure portfolio owners have
access to taxonomies that
they own.

Paris

SPM: Portfolio Editor: Not
Portfolio Owner, Read Only
Taxonomy Access

Ensure a portfolio editor can
only read the taxonomies of
portfolios they do not own.

Paris

SPM: Service Editor: Access

Ensure a service editor
can only edit services and
offerings that they own or are
a delegate of.

Paris

SPM: Service Viewer: Access

Ensure a service viewer has
access to view services.

Paris

SPM: Service Workflow

Verify a service cannot move
forward to Catalog phase
without a service portfolio,

Paris

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3481


<!-- page 3482 -->
Service Portfolio Management Premium - ATF Tests test suite (continued)
Test

Description

Release version

taxonomy node, and service
offering attached to it.
Verify a service cannot move
backward from Catalog to
Pipeline phase.
Related topics
Quick start tests

Service Owner Workspace Migration Dashboard
Service Owner Workspace provides a migration dashboard to support your transition from the
legacy Service Portfolio Management structure to the enhanced application structure.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.
By viewing the Migration Dashboard, portfolio managers can quickly determine which existing
services and offerings contain a deprecated structure or are considered orphaned in the
enhanced Service Portfolio Management taxonomy structure.
Users with the following assigned roles can view the Service Portfolio Management dashboard:
• service_viewer
• portfolio_admin
Users with the portfolio_admin or service_editor role can modify services and service offerings
to structurally comply with and migrate to the Service Portfolio Management Foundation
application.
By default, the dashboard displays reports for all existing service portfolios. An interactive filter
enables you to choose a single portfolio to view. The dashboard reports are visible even if there
are no service portfolios defined.
Dashboard report categories display the number of related identified migration issues. If there
are no migration issues identified for a report category, a 0 is shown.
Access the dashboard by navigating to Service Portfolio Management > Migration Dashboard.
To view detailed information, hover over any report graphic. All report graphs can be refreshed
for the latest data.
Migration issues are indicated when a number graphic greater than zero is indicated on the
report. For these reports, hover over and click the number graphic. A list opens displaying the
services or offerings that require modification to migrate to the Service Portfolio Management
Enterprise structure.
The following reports are available on the Migration Dashboard. If migration issues are
indicated, refer to the report description and how to remedy the issue for migration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3482


<!-- page 3483 -->
Migration Dashboard report

Description and migration task

Deprecated Operational Status Used for
Offerings

Indicates the number of existing service
offerings using the deprecated singular status
of Operational Status.
Modify these offerings by filling in both the
Phase and Status fields on the Service
Offering form.

Note: Status can be one of several

choices, such as Design, Development,
Build/Test/Release, Operational, and
Retiring.
Click Update.
Deprecated Operational Status Used for
Service

Indicates the number of existing services
using the deprecated singular status of
Operational Status.
Modify these services by filling in both the
Phase and Status fields on the Service form.

Note: Status can be one of several

choices, such as Requirements,
Definition, Analysis, Approved, and
Chartered.
Click Update.
Operational Services not in a Portfolio

Indicates the number of existing services not
currently associated with a portfolio.
Modify the Service form by selecting a
portfolio in the Service portfolio field. Click
Update.

Orphaned Services in Catalog Phase

Indicates the number of services in Catalog
phase that do not have a parent taxonomy
node.
Modify the Service form by selecting a
taxonomy node in the Taxonomy node field.
Click Update.

Deprecated Usage of Service Catalog Entry

Indicates the number of services or offerings
linked to a catalog item via the deprecated
Service Catalog Entry(sc_cat_item_service)
table.

Orphaned Service Offerings

Indicates the number of service offerings
where the Parent field on the Service Offering
form is not pointing to a parent service.
Offerings must be children of a service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3483


<!-- page 3484 -->
Migration Dashboard report

Description and migration task

In the Parent field on the Service Offering
form, search for and select the associated
service. Click Update.
Cataloged Non-operational Offerings

Indicates the number of active catalog items
connected to service offerings not in the
catalog phase or with an operational status.
Modify the Service Offering form Phase field
to Catalog and the Status field to Operational.
Click Update.

Services in Catalog Phase without Offering

Indicates the number of services in the
Catalog phase without at least one associated
service offering. An offering must be defined
for a service to move into Catalog phase.
To associate a service offering to a service,
open a specific service offering associated
with the cataloged service indicated in the
Migration Dashboard. In the Parent field on
the Service Offering form, search for and
select the associated service. Click Update.

Service Owner Workspace integrations
Align with other product applications to add value to your Service Owner Workspace monitoring
experience.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Service Owner Workspace and product alignment
Activate and integrate with these products to expand the functionality of Service Owner
Workspace:
Vendor Manager Workspace
Activate the Vendor Manager Workspace plugin (com.snc.vlm.vmw) to align this
workspace data with Service Owner Workspace.
Manage your vendors from the same workspace interface to effectively gain
knowledge of all vendor-related information.
Monitor and view vendor performance reports from the workspace view.
Decide what vendor metrics to monitor and manage in workspace view.
Calculate and view vendor CSAT weight and vendor service offering performance
weight.
Financial Management
Activate the Service Portfolio Management Estimated Spend plugin
(com.snc.spm.spend) to view service offering spend, enabling you to select
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3484


<!-- page 3485 -->
between your local cost model and the cost model provided by the Financial
Management application.
Activate the Financial Management for SPM plugin
(com.snc.financial_management_for_spm) to provide preconfigured service offering
cost models to view in Service Owner Workspace. Select between your local cost
model and the Financial Management application model, when used.
Continual Improvement Management (CIM)
Display existing CIM records in Service Owner Workspace when a service relation is
indicated on associated forms.
Service owners can initiate a CIM record when a performance issue with a service
or offering is displayed.
Incident Management — Major Incident Management
Activate the Incident Management - Major Incident Management plugin
(com.snc.incident.mim) to provide a consolidated workbench to view major
incidents via the Service Owner Workspace activity stream.

Integration with Common Service Data Model
Improve your measurement and evaluation by using services and offering references on multiple
IT Service Management task forms, including:
• Problem
• Change
• Continual Improvement Management
• Incident
Directly reference a service offering as the target of a problem, change, or incident for
consistency with the Common Service Data Model (CSDM). The system filters available offerings
based on the service selected.
View and define the service model Model ID reference field on the Service and Offering forms to
integrate with the CSDM.
When the Service Portfolio Management Premium plugin (com.snc.spm) is activated with CSDM
is applied, the navigational pane includes the modules Manage Technical Services and Sell
and Consume. Service offerings with associated catalog items are available to view and manage
via Technology Request Catalog and Business Request Catalog within these modules. For
complete information about CSDM and how it relates to Service Portfolio Management Premium,
refer to Applying CSDM guidelines to your product — product views .

Configure Service Owner Workspace metric definitions
Configure unique metric definitions to measure the performance of your service offerings in
Service Owner Workspace.

Before you begin

Role required: admin or portfolio_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3485


<!-- page 3486 -->
About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. Customers who
opt in for the new standard portfolio structure use metrics calculated from key performance
indicators (KPIs) in Digital Portfolio Management (DPM). For more information, see Digital
Portfolio Management.

Navigate

Service Owner Workspace includes several metric definitions which you can view and edit,
if necessary. You can also create new metric definitions unique to your desired performance
monitoring needs.

Procedure
1. Navigate to All > Service Portfolio Management > Configuration > Metric Definitions.
2. View the available base system metric definitions and associated indicators.
3. To create a unique metric definition, click New.
4. Provide a unique name for the metric definition in the Name field.
5. Select a Performance Analytics indicator in the Indicator field.
6. Click Submit.
For more information about Service Owner Workspace metrics and weight configuration, see
Service Owner Workspace performance metrics.

Configure Service Owner Workspace portfolio metrics
Decide which metrics to configure for your service portfolio to measure the performance of your
service offerings in Service Owner Workspace.

Before you begin

Role required: admin or portfolio_admin

About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. Customers who
opt in for the new standard portfolio structure use metrics calculated from key performance
indicators (KPIs) in Digital Portfolio Management (DPM). For more information, see Digital
Portfolio Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3486


<!-- page 3487 -->
Navigate

Procedure
1. Navigate to All > Service Portfolio Management > Configuration > Portfolio Metrics.
2. Click an existing service portfolio to learn what metrics are associated.
The Portfolio Metrics list opens displaying all the metrics applied to the service portfolio.
3. To add an additional metric to the service portfolio, click New.
4. Fill in the form fields.
Portfolio Metric form
Field

Description

Service portfolio

Select the service portfolio for which you
want to create a metric

Metric

Select the metric to apply. Choices include:
Activity, Availability, Breached SLA,
Customer Satisfaction, and Critical
Incidents.

Order

Specify the display order of the trend
chart on the Trends tab in Service Owner
Workspace.

Trend chart

Check the box to display this metric on the
Trends tab in Service Owner Workspace.

Performance calculation

Check the box to use this metric in the
service offering performance calculation.

5. Click Submit.
For more information about Service Owner Workspace metrics and weight configuration, see
Service Owner Workspace performance metrics.

Generate a service offering availability
Generate on-demand availability reports displayed in Service Owner Workspace. When a service
commitment contains an availability guarantee, the service offering displays an availability
report.

Before you begin

Role required: service_editor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3487


<!-- page 3488 -->
About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace but customers who
opt in for the new standard portfolio structure must implement Digital Portfolio Management
(DPM). See Digital Portfolio Management. For more information about availability, see View
availability results in Service Portfolio Management. For information on the deprecation
process, see Deprecation Process [KB0867184] .

Navigate

Availability records are generated by a daily job when you select an Availability type service
commitment for your service offering. By defining service offering availability, you generate
reports that track the actual availability of the offering. For a 7-day chart, no reporting data is
available until five days after the service offering is created. For 30-day charts, 23 days of data is
required before a report is generated. For a 12-month chart, the database must contain at least 10
months of data.

Procedure
1. To generate a new service availability, navigate to Service Portfolio Management >
Availability and click New.

Note: When an Availability commitment type is added to a service offering, it will
generate a year's worth of availability records for that offering and commitment. For this
reason, existing Availability forms should not be edited. Availability is calculated based
on the outages in the system for that offering. If an outage is updated, then the related
availability records are updated too.
2. Fill in the form fields.
Service Availability form
Field

Description

Display name

Enter the name of the service availability as
it appears in record lists. Automatically set at
record creation based on service offering and
commitment.

Service offering

Select the service offering for which you want
to generate an availability record.

Service commitment

Select the service commitment to apply the
availability record.

Start

Choose the start of this availability interval.

End

Choose the end of this availability interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3488


<!-- page 3489 -->
Field

Description

Committed uptime

Enter the total expected service availability
for this commitment.

Acceptable downtime

Enter the acceptable amount of downtime
against this commitment schedule for this
interval.

Total downtime

Enter the wall-clock downtime, independent
of schedule.

Met commitment

Availability commitment was met for this
interval. Check to indicate the commitment
was met.

Note: The following fields display SLA result data when available:
◦ Total availability % — Availability percentage for the entire interval, independent of
schedule.
◦ Total outages — Total number of outages in this interval, independent of schedule.
◦ Commitment availability % — Availability percentage within this commitment
schedule.
◦ Commitment downtime — Downtime that counts against this commitment schedule.
◦ Commitment outages — Number of outages against this commitment schedule in this
interval.
3. Click Submit.
View service offering Availability reports in Service Owner Workspace.

Change scope to Service Portfolio Management Premium
Grant access to a dedicated user to enable switching the scope from Global to Service Portfolio
Management Premium to create a custom automated indicator.

Before you begin

Role required: admin

About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

Both the indicator and the job must be in the same scope. Provide a user with delegated
developer access and the pa_admin role to change the scope from Global to Service Portfolio
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3489


<!-- page 3490 -->
Management Premium when creating custom indicators for Service Portfolio Management
Premium jobs.

Procedure
1. In the Navigator, type sys_scope.list and press Enter.
The Applications list appears.
2. Search by name for Service Portfolio Management Premium and click the application name to
open the associated Store Application form.
3. In Related Links, click Manage Developers.
4. Search for the user or group you want to grant delegated developer access to.
The Permissions configuration screen appears.
5. Configure delegated developer access for the user or group.
a. In the File Type Access section, toggle the Reporting category radio button to grant this type
of access.
b. Click Save.
Grant access to any other section category by toggling the associated radio button.
6. Assign the pa_admin role to the user or group with delegated developer access.

Create indicators in Service Portfolio Management Premium
Create custom indicators for your Service Portfolio Management Premium jobs in the correct
scope.

Before you begin

Role required: pa_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3490


<!-- page 3491 -->
About this task

Navigate

You must have the Reporting file type delegated developer access to change the scope from
Global to Service Portfolio Management Premium when creating custom indicators for the
application. Administrators grant the Reporting file type delegated developer access. For
information regarding obtaining delegated developer access, refer to Create indicators in
Service Portfolio Management Premium.
When you create an indicator and associate it with a job in an application, both the indicator
and the job must be in the same scope. Jobs and indicators available in the Service Portfolio
Management Premium base system are in the correct Service Portfolio Management Premium
scope. However, when you create a custom indicator, by default it is created in the Global scope.
To associate a custom indicator with a Service Portfolio Management Premium job, you need to
first change the scope from Global to Service Portfolio Management Premium.

Procedure
1. Click the Settings

icon in the banner.

2. In System Settings, click Developer.
3. In Application, find and select Service Portfolio Management Premium.
4. Navigate to Performance Analytics > Indicators > Automated Indicators and click New to
create an indicator in the Service Portfolio Management Premium scope.
For details on how to create an automated indicator, refer to Create an automated indicator

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3491


<!-- page 3492 -->
Using Service Owner Workspace
Use Service Owner Workspace to monitor the health of your services and your customer
satisfaction. View outages, critical incidents, and change requests associated with services and
offerings.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

With Service Owner Workspace you can monitor metrics and analyze the health of your services
from a single user interface. Get to know how metric models are created and configured for
service offerings and how they are used in Service Owner Workspace.

Service Owner Workspace features
Service Owner Workspace features include:
• A view-only, multi-tab interface for monitoring and managing multiple portfolios and related
services.
• Dashboards offer immediate access to portfolio and service health and performance metrics,
as well as who owns and manages the service.

Note: In most cases, data is collected up to the previous day. If there is a current outage
or incident, then data does not appear in trend charts or displays.
• Comprehensive layout of all information related to a portfolio and its component services.
Service owners can access the workspace to perform their most common tasks, including:
• View and manage owned IT services, as well as view all IT services the business manages.
• Expand service lists to expose child services and service offerings.
• Select a service to access pertinent information, including service trends, related services and
information, improvement initiatives, and associated service offerings.
• View and monitor service performance score reports, customers' scores, and total subscribers.
• Monitor recent and upcoming changes.
• Drill down into service offerings to view availability, SLA compliance, customer satisfaction,
offering stability, performance scores, and more.
• View associated unique or critical information about the service offering in the impact stream
panel on the right side of the workspace. For example, you can view outages records with a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3492


<!-- page 3493 -->
unique Outage Number identifier. You can also see the outage number on the list view for
outages via the Outage tab in the report viewer.

Note: The Outage Numbering plugin (com.snc.outage_numbering) must be activated
to introduce number data. The plugin is automatically activated for all instances and
upgrades except those that already have a number prefix column on the Outage table.
Refer to the Activate Outage Numbering plugin [KB0823685]
article in the HI Knowledge
Base or contact Customer Service and Support if the plugin is not active and you want to
move to the base system field.
System administrators can configure the workspace according to the specific needs within the
organization:
• Disable particular metrics from displaying in the workspace.
• Configure the metric weights that contribute to performance scores within the workspace.
• Configure the metric thresholds for each metric that displays in the workspace.
Start here: Access Service Owner Workspace.

Access Service Owner Workspace
Open the Service Owner Workspace to access and display all your portfolios and services at a
single location. Monitor and manage your services and offerings from the workspace.

Before you begin

Role required: service_viewer

About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

To access and use Service Owner Workspace, the Service Owner Workspace plugin
(com.spm_owner_workspace) must be activated and you must be assigned the Service Viewer
[service_viewer] role.

Procedure
1. Navigate to All > Service Portfolio Management > Service Owner Workspace.
2. Click a portfolio name to expand the layers of services.
3. Click My Services to view portfolios that you own and manage.
Or click All Services to view all the services your organization owns and manages.
A list of services displays. You can expand each service to see child services within the service
taxonomy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3493


<!-- page 3494 -->
4. Click a service name to view pertinent information about the service.
The Overview dashboard provides a recent snapshot of the service offering performance.
View performance over the last 7 days. The Additional Node Info sidebar displays who owns
and manages the service, as well as the associated Performance score, Taxonomy Nodes
(services), and Estimated spend if available.

To contact a service owner, service offering owner, or associated manager, click the person's
name in the workspace and then click the associated email. Phone numbers are also
displayed for quick access to service stakeholders.
5. Choose how to group and sort dashboard data in the Group by and Sort by lists.
You can group by No grouping or Taxonomy node owner. You can sort by Ascending,
Descending, Node weight, Performance score, or Name.
6. Click a Taxonomy Node (service) to view pertinent information about the service.
The associated service displays in the Overview tab.
7. Click in the Service card to drill deeper into the details and view health and performance
metrics, as well as any associated service offerings.
Service health and performance metrics, such as Service Performance Score, Customer
Satisfaction, Total Subscribers, Estimated spend, and associated Service Offerings are
displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3494


<!-- page 3495 -->
8. Click additional tabs besides the Overview tab to display data relevant to the offering,
including:
◦ Trends — View performance over a specified time frame, as well as SLA compliance. The
Trends tab provides you with a more strategic view of service and offering performance
over a longer period of time, so you can determine if performance is trending up or down.
The base system includes performance metrics for Activity, Availability, Breached
SLA, Customer Satisfaction, and Critical Incidents. The default time frame for Trends
performance is 30 days, except for the Critical Incidents metric, which shows all open major
and P1 incidents per day. Use the drop down menu to change the time frame if desired.
Choices include as few as the last 7 days to the last year.

Note: Prior to the Quebec release, the Critical Incidents metric was called Stability
and was depicted as a single score widget. The data is now visualized in a time series
chart. You need to set the lower and upper boundaries for the Critical Incident metric.
For details, refer to Service Owner Workspace performance metrics.
◦ Relationships — View service dependency details. This tab shows offering relationships, for
example, which services a service depends on and which services depend on it.
View the I depend on and Depends on me sections to see service offering dependencies at
the parent service level via a card with a highlighted label reading Inherited relationship.

Note: Dependencies that a service inherits from a child offering are visually distinct
from dependencies defined directly between services.
Service and offering types are distinguishable in the card by a unique icon and label
specifying the type of service and offering. For example, Business Service, Application
Service, and Technical Service. When you click on an offering card, the record view of the
offering is displayed.
◦ Info — View the service offering description, performance breakdown, general information,
commitments, team, and more. You can also view your service offering to catalog item
relationships via this tab. Click to open a catalog item to drill down into more details.
Monitor fulfilled requests for all associated catalog items in the Offering Activity metric.
For complete details about service offerings and associated catalog items, refer to Service
offering to catalog item relationships.

Note: The Create Catalog Item action is only available when there is no catalog item
mapped to a service offering and there is no catalog item with the same name as the
offering. This prevents the issue of having catalog items with the same name.
◦ Improvement Initiatives — View all CIM initiatives as links to the records. This tab displays
with activation of the Continual Improvement Management (CIM) plugin (com.sn_cim).
9. Click icons in the impact stream panel, on the right side of the workspace, to display related
information about Outages, Critical Incidents, Change Requests, or Attachments.
View the associated unique or critical information about the service offering in the impact
stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3495


<!-- page 3496 -->
10. Click an outage, critical incident, or change request to drill deeper into the details.
Once you click an impact stream item, for example, a critical incident, you can view all details
related to the item and even open the associated record by clicking Open record.
Recent, current, and upcoming outage data is available. Click a type of outage for the
information you want. Refer to Outages for information about a unique Outage Number
identifier and activating the Outage Numbering plugin (com.snc.outage_numbering).
11. If the service you are viewing has associated child offerings, click an offering to drill down and
view details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3496


<!-- page 3497 -->
View the offering overview, as well as other pertinent data, such as service offering availability,
breached SLAs, customer satisfaction, stability, and activity. Available service offering tabs
include, Overview, Trends, Relationships,Info, Catalog Items, and Improvement Initiatives.
These tabs similar data as is provided for services. The Catalog Items tab displays all catalog
items related to the service offering, as well as a short description of the item.

Service offering to catalog item relationships
Manage the relationships between your service offerings and catalog items by associating your
pre-existing catalog items to your service offerings and vice versa. View relationships in both
ServiceNow AI Platform form related lists and Service Owner Workspace.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace. For
information about this topic, see Subscribe users to a service offering in Service Portfolio
Management.

Required roles and actions
Service owners and catalog administration managers can edit relevant forms to associate and
manage pre-existing service offering to catalog item relationships. This feature is in addition to
the Create Catalog Item feature that enables you to create a new catalog item.
With the service_editor role, you can add, change, and remove catalog items associated with
an owned service offering via the Service Offering form Catalog Item related list. You can also
create a catalog item from a service offering via Service Owner Workspace by clicking the Create
Catalog Item link. A single service offering may have many related catalog items. Click the Link
button in the Catalog Item related list to make a change.

Note: If a catalog item is already associated with a service offering, you cannot associate
the item to a new offering. You will have to contact a catalog_admin to remove the existing
association so that you can make changes.
With the catalog_admin role, you can add, change, and remove service offerings associated with
a catalog item via the Catalog Item form Service Offerings related list. A single catalog item can
be related to one service offering.
Click the Link button in the related list to make a change. You can remove the association if
needed with the related list Delete button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3497


<!-- page 3498 -->
Note: If a service offering is already associated to a catalog item, the Link button does
not appear in the related list. For details about viewing and editing Catalog Items, refer to
Create or edit a catalog item .

Catalog items in Service Owner Workspace
View catalog items related to a service offering in Service Owner Workspace from the offering
page Catalog Items tab. Click to open a catalog item to drill down into more details and even
open up the form view.
Monitor fulfilled requests for all associated catalog items and order guides in the offering Trend
tab Activity metric.
Hover over the Trends tab Activity metric to view both the catalog item name and the 30 day
average running count.
When you click the trend line for an individual catalog item, only Requested Items for that
catalog item and the offering are visible on the list view of the report viewer.

Things to keep in mind
• Avoid model phase conflicts between offerings and catalog items.
◦ Catalog items can only be associated to service offerings in the Catalog phase.
◦ The service offering must be operational for catalog items to be active.
◦ Inactive catalog items can be associated to operational service offerings.
• Order guides are not referenced as associated items.
In Service Owner Workspace, Activity metrics are driven by catalog items that compose an
order guide.

Service Portfolio Management Premium notifications
Notifications are added with Service Portfolio Management Premium to manage your service
offering to catalog item relationships.
Service Portfolio Management Premium includes several email notifications that alert catalog
admins when a service offering associated with a catalog item is retired or when a new catalog
item has been created from a service offering.
The following notifications are included:

Name

Description

Offering retired

Sends an email to a specified user group when a service
offering that is associated with a catalog item is retired.

Table: Service Offering
[service_offering]
Catalog Item created from
Offering
Table: Available
for Subscribers
[sc_cat_item_subscribe_mtom]

Sends an email to a specified user group when a new catalog
item has been created from a service offering. The email
asks that the new catalog item be reviewed and prepared for
activation in the catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3498


<!-- page 3499 -->
To configure catalog_admin recipients for these notifications, refer to Create a user group

.

Service Owner Workspace Service Offering survey
Subscribers can rate their experience with service offerings via the Service Portfolio
Management Premium Service Offering survey. This feedback provides portfolio managers
and service owners with valuable information to improve service offering performance and
subscriber satisfaction.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

In the base system, a predefined SPM Service Offering Survey is available. Surveys are sent for
operational and retiring service offerings only. Portfolio admins [portfolio_admin] can edit the
survey and service editors [service_editor] can configure the associated trigger conditions.
You must have the admin or portfolio_admin role to modify the SPM Service Offering Survey. To
view the survey, navigate to Survey > View Surveys.
The SPM Service Offering Survey is triggered randomly for 10% of service offering subscribers.
Only subscribers who have not been polled within the previous three-month time period can
receive a survey. Subscribers receive an email with the survey link. The service offering name
is displayed and the survey inquires how satisfied the subscriber is with the service or service
offering. Subscribers use radio buttons to rate satisfaction on a 1 through 5 scale, with 1 being not
satisfied and 5 being very satisfied.
You are encouraged to modify the survey to better match your organizations needs.
Two system properties determine the percentage of subscribers to receive the survey and how
often a subscriber is polled.
• sn_spm.csat.survey_probability: Default value is 10% of subscribers are randomly
polled.
• sn_spm.csat.survey_period: Default value is 90 days. The system does not send a
survey to a subscriber who has been polled within the previous 90 days.
Service owners can use the Service Offering form to define how often to send a CSAT survey.
TheCSAT survey frequency field offers the following frequency choices:
• Never (default)
• Daily
• Weekly
• Monthly
Service owners can view the last time a survey was sent for an offering in the CSAT survey last
sent field on the Service Offering form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3499


<!-- page 3500 -->
Portfolio managers and service owners can review responses and view vendor CSAT weight in
Service Owner Workspace.
For more detailed information about working with surveys, trigger conditions, and survey
questions, see Surveys .

Financial Management for Service Owner Workspace
Integrate Service Owner Workspace with Financial Management to access preconfigured service
offering cost models. You can use these cost models to evaluate expenses and generate cost
lines based on the level of service offering for a defined cost.

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

Activation and features
Activate the Financial Management for SPM plugin (com.snc.financial_management_for_spm) to
access the preconfigured, base system models. Financial Management for SPM contains demo
data and activates related plugins if they are not already active.
The Service Portfolio Management Estimated Spend plugin (com.snc.spm.spend) is available to
enhance your Service Owner Workspace experience. With this feature, you can choose to use
the default local service offering cost model or access the cost models offered via the Financial
Management application.
When Service Owner Workspace (com.spm_owner_workspace) and Financial
Management for SPM (com.snc.financial_management_for_spm) are activated and the
sn_spm_spend.offering_cost_source system property is set to the value Financial
Management the Estimated Spend form section displays the fields Estimated annual spend,
FM aggregated period, and FM aggregated cost. These fields reveal read-only data stored on
the service offering, service, and taxonomy records.

View calculated spend per offering in Service Owner Workspace
When you choose to use the cost models offered via the Financial Management application,
calculated spend per service offering is displayed as a single score widget in Service Owner
Workspace. View Estimated Spend as part of the Overview dashboard displaying associated
service offering health and performance metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3500


<!-- page 3501 -->
Estimated spend

Service offering spend estimates are combined and summed up per period to the service and
portfolio levels within your portfolio taxonomy. Estimated spend at the service and portfolio level
enables you to better understand costs and how this aligns with performance throughout your
service portfolio. With the estimated spend feature, you can:
• Balance your required service performance with the appropriate spend.
• Compare similar services by weighing spend to performance.
• Verify whether service spend is meeting your desired goals.
• View cost drivers within your service portfolio and the taxonomy structure.
• Compare an internal service spend to external service provider options.

Local model compared to Financial Management model for estimated spend
Estimated spend calculations run daily as a separate job.
When the system property sn_spm_spend.offering_cost_source = Local Model, the
estimated annual spend for a service offering, service, and taxonomy is determined by adding
the estimated annual spends for all child entities. Estimated annual spend data is stored on the
service offering, service, and taxonomy records.
When the system property sn_spm_spend.offering_cost_source = Financial
Managment, the estimated spend for a service offering, service, and taxonomy is determined by
adding the Financial Management estimated spends for all child entities.
For each node, determine the Financial Management estimated spend for the currently selected
Financial Management period by adding all the child entity estimated spends. This happens
recursively up the entire taxonomy structure, starting with the service offering, to the service, to
the taxonomy.
For detailed information about integrating with Financial Management and configuring costing
for a service offering, refer to Financial Management for licensed SPM users .
Configure the estimated spend offering cost source
Define the source used to calculate the estimated cost for service offerings. You can use the
default local model or access the preconfigured Financial Management service offering cost
models.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3501


<!-- page 3502 -->
About this task

Important: As of the San Diego release, Service Owner Workspace is in a planned

®

deprecation. New customers can't find or activate Service Owner Workspace. ServiceNow
continues to support existing customers with Service Owner Workspace. For information on
the product replacement and the deprecation process, see Service Owner Workspace.

Navigate

The Service Portfolio Management Estimated Spend plugin (com.snc.spm.spend) is
automatically activated with Service Owner Workspace.
Activate the Financial Management for SPM plugin (com.snc.financial_management_for_spm) to
enable the associated cost model.
Service Portfolio Management Estimated Spend provides the
sn_spm_spend.offering_cost_source system property. With this property, you can
define the source used to calculate the estimated cost for service offerings. Values include:
• Local Model
• Financial Management
• None
The default value is Local Model.

Procedure
1. Enter sys_properties.list in the navigation filter to open the System Properties
[sys_properties] table.
2. Find the sn_spm_spend.offering_cost_source system property and set it to the
desired value.

Note: Users can choose not to use the local cost model or the Financial Management
model, by selecting None as the desired value.
Estimated spend offering cost source
Value

Description

Local Model

With this default source, the offering
Estimated Spend cost is calculated based on
the following fields on the Service Offering
form:
◦ Cost model: Choices include, Fixed and
Per unit.
◦ Estimated spend: The estimated cost of
the offering for the associated time period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3502


