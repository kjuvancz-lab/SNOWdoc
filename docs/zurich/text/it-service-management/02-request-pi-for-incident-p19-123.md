# Zurich IT Service Management — Request PI for Incident / Asset Management / ITSM Software Asset Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 19–123 of 3857

Sections: Request PI for Incident (p19); Asset Management (p21); ITSM Software Asset Management (p22)

---

<!-- page 19 -->
Solution definitions and plugins (continued)
Solution definition

Plugins

The plugins com.snc.contextual_search_ml
and com.snc.incident.mim.ml_solution must
be active.

• Similar Open Incidents
• Similar Resolved Incidents
• Similar Incidents
• Similar Knowledge Articles

For more information on classification and similarity solution, refer to Create solution definition
and Create similarity solution .

Business rule for classification solutions
This business rule applies only to the Incident Assignment and Incident Categorization solution
definitions and is available only on instances where both Predictive Intelligence and Incident
Management are active. Create your own business rules on the Incident table to customize
prediction and reporting behaviors.
Business rule for Incident Management
Business rule

Table

Description

Update Prediction Results

Incident

Updates the solution precision
and coverage statistics. Runs
when an incident record is
closed.

Upgrade Information
If your instance is running on the Kingston release and you are upgrading to the Zurich release:
• In a global domain environment, use the new solutionNames array variable which requires that
you explicitly provide the solutions that are called by the business rule.
• In a domain-separated environment, such as an MSP environment, refer to the commented
code in the business rule template for easy customization.
• The business rule template now calls the applyPredictionForSolution() method to predict
regardless of any changes to the default value.
Maintaining prediction accuracy
You can manage prediction drift by retraining, modifying, or creating new solutions to reflect
changes in your business conditions. Test and modify your business rule over time to ensure it
works as desired across multiple consumption points and user Personas.

Request Predictive Intelligence for Incident
To activate Predictive Intelligence for Incident, request the Predictive Intelligence for Incident
plugin (com.snc.incident.ml) through the Now Support Customer Service system. This plugin
activates related plugins if they are not already active.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

19


<!-- page 20 -->
About this task

The Predictive Intelligence for Incident plugin activates these related plugins if they are not
already active.
Plugins for Predictive Intelligence for Incident
Plugin

Description

Predictive Intelligence for
Contextual Search

Enables customers to leverage machine-learning algorithms
for searching with Contextual Search. For example: Similar
Open Incidents.

[com.snc.contextual_search_ml]

Activation of this plugin on production instances may require
a separate license. Contact ServiceNow for details.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of plugins (Zurich)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

20


<!-- page 21 -->
Predictive Intelligence for Incident
Use your instance records to build Incident Management -specific solutions.

Solution definitions
The solution definitions are available when you have the Predictive Intelligence for Incident
plugin (com.snc.incident.ml) activated in your system.
These solution definitions are available as templates on instances where both Predictive
Intelligence and Incident Management are active. Create your own solution definition records to
customize the behavior.
Solution Definitions for Incident Management
Solution Definition

Solution Type

Description

Similar Open Problems

Similarity

Recommends similar open
problems that the current
incident can be linked to.
By default, the similarity is
inactive.

Similar Open Change
Requests

Similarity

Recommends similar open
change requests that the
current incident can be linked
to as a request for change.
By default, the similarity is
inactive.

For more information on similarity solution, refer Create similarity solution

.

Asset Management
®

The ServiceNow Asset Management application integrates the physical, technological,
contractual, and financial aspects of information technology assets.

Note: Beginning with the ServiceNow AI Platform® Washington DC release, we will
provide limited support for the Asset Management Core UI interface. While it remains active
in your instance, including when you upgrade to a new ServiceNow AI Platform release,
we encourage you to move to the new workspace experience. For more information, see
KB1584548 , Exploring Asset Management Workspace
and Next Experience UI .
Asset management business practices have a common set of goals.
• Control inventory that is purchased and used.
• Reduce the cost of purchasing and managing assets.
• Select the proper tools for managing assets.
• Manage the asset life cycle from planning to disposal.
• Achieve compliance with relevant standards and regulations.
• Improve IT service to end users.
• Create standards and processes for managing assets.
Most successful ITAM programs involve various people and departments, including IT, finance,
services, and end users.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

21


<!-- page 22 -->
Asset Management and the Configuration Management Database (CMDB) are related, but
have different goals. Asset Management focuses on the financial tracking of company property.
Configuration management focuses on building and maintaining elements that create an
available network of services.
Related topics
Domain separation and Asset Management

ITSM Software Asset Management
The software asset management features of the ITSM suite can be activated using one of the
plugins in the feature table.

Note: These features support IT service management processes related to software
assets.
For the Software Asset Management product (requires a separate subscription), see Software
Asset Management .

Note: The Software Asset Management product is a standalone application supporting
advanced use cases for software asset management.
ITSM Software Asset Management feature plugins
Release

Plugin

Description

• Activation: Kingston

Software Asset Management
Foundation plugin

Manage your software assets
using manual normalization
and reconciliation to
determine software
compliance.

Legacy Software Asset
Management plugin

Manage your software
licenses.

• Introduced: Kingston

• Activation: Jakarta and
earlier
• Introduced: Berlin

Note: Customers
who have the Software
Asset Management
plugin enabled on a
release prior to Kingston
can continue to use
the Software Asset
Management plugin.

Legacy Software Asset Management plugin
The legacy Software Asset Management (com.snc.software_asset_management) plugin
activates the legacy ITSM Software Asset Management feature that is provided with the Asset
Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

22


<!-- page 23 -->
Important: The legacy Software Asset Management
(com.snc.software_asset_management) plugin is supported only in the Jakarta and earlier
releases. Although this legacy plugin can no longer be activated upon request, you can
continue to use it if it has already been activated on a ServiceNow instance running the
Jakarta or earlier releases.
If your ServiceNow instance is running the Kingston or later releases, you must request and
activate the Software Asset Management Foundation plugin instead.
A strong software asset management (SAM) program can help an organization reduce software
costs, improve compliance, and simplify or develop processes for employee software requests.
SAM programs can also help control inventory through accurate databases, which in turn helps
identify organizational software needs, identify unused software that can be deleted, as well as
reduce or consolidate the number of software vendors used.
Legacy Software Asset Management plugin Overview module
The Overview module for the legacy Software Asset Management
(com.snc.software_asset_management) plugin is a homepage that displays various software
asset management reports.
Use the legacy Software Asset Management plugin Overview module
The Overview module is a homepage that displays charts and graphs to help you manage
software assets in the organization.
To use the Overview module for the legacy Software Asset Management
(com.snc.software_asset_management) plugin, navigate to Software Asset Management >
Overview. Click an element within a report to see more information or add and move widgets as
needed.
Legacy Software Asset Management plugin Overview module

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

23


<!-- page 24 -->
The overview shows the following compliance types:
• Immediate Compliance: number of licenses that should be purchased in order to be compliant
immediately. Compliance is based on grouping. When tracking software licenses at a high level
without any grouping, you are more likely to be compliant. With grouping, you are more likely to
be out of compliance. For example, if grouping regionally by location, your organization can be
globally compliant, but regionally non-compliant.
• Planned Compliance: based on the number of licenses you plan to allocate and the number
installed.
The graphs show important statistics about the software being tracked, including software that
has been entitled but is not being used and the total number of unallocated licenses.
Legacy Software Asset Management plugin roles
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following user role.
Roles
Role Title

Contains Role Names

Description

sam

inventory_user

Can create, edit, change, and manage software licenses.

category_manager
contract_manager
financial_mgmt_user
Users with the sam or admin role can view the overview page and refresh, add, delete, and
rearrange reports and other widgets.
Installed with the legacy Software Asset Management plugin
A number of tables, properties, user roles, script includes, client scripts, UI policies,
and business rules are installed with the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Note: Demo data is available with the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Tables
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following tables.
Legacy Software Asset Management plugin tables
Table

Description

Processor Definition
[cmdb_processor_definition]

Describes a computer in terms of the attributes IBM uses
for its PVU licensing model. If they are all identical in terms
of the attributes used for PVU licensing, a row can be
associated with one or more discovered computers.

Processor Mapping
[sam_processor_mapping]

Encodes the information specified by the IBM Table of
Processor Value Units per core
and is used in matching

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

24


<!-- page 25 -->
Legacy Software Asset Management plugin tables (continued)
Table

Description

a computer's processor definition to a PVU cost for that
computer. Each row in this table is a mapping between a
set of processors and the associated PVU cost (per core).
Software Counter
[sam_sw_counter]

Configures license counting options for software models.

Software Counter
Compliance Violations
[sam_sw_counter_violation]

Stores records of software counter compliance issues that
are due to violations other than installs exceeding rights,
such as:
• Maximum CPU/user count exceeded, based on model
limits.
• Maximum or minimum rights rules not followed, based on
model limits.
• Options installed on a server with a license that does not
support options (Oracle).

Software Counter Detail
[sam_sw_counter_detail]

Reconciles a software installation or usage with its
corresponding software license and entitlement. The
software counting logic automatically generates and
maintains these records.

Software Counter History
[sam_sw_counter_history]

Stores read-only copies of software counter records, which
the system generates automatically each time a software
counter finishes counting licenses.

Software Counter Result
[sam_sw_counter_result]

Records all software counter results. Organizes the
results based on the Grouping field (such as Company,
Department, or Location) on the Software Counter record.

Software Counter Summary
[sam_sw_counter_summary]

Aggregates all the software counter details for a given
allocation state, a given group, and a given software
counter. The software counting logic automatically
generates and maintains these records.

Software Discovery Model
Stores a unique and definitive list of all software found by a
[cmdb_sam_sw_discovery_model] discovery tool.
Software Installation
[cmdb_sam_sw_install]

Associates software discovery models and the hardware
on which they are installed.

Software Usage
[cmdb_sam_sw_usage]

Associates software discovery models and the hardware
that uses the models. ServiceNow Discovery does not
populate the Software Usage [cmdb_sam_sw_usage] table.
Use a third-party tool to add information about software
assets to the Software Usage table.

Properties
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following system properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

25


<!-- page 26 -->
Legacy Software Asset Management plugin properties
Name

Description

sam.install_deletion_deadline Defines the number of days after which a software install is
deleted if not discovered with the configuration item. Use
a value that is greater than the number of days between
consecutive discovery runs.
• Type: integer
• Default value: 7
• Location: System Properties [sys_properties] table

User roles
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following user roles.
Legacy Software Asset Management plugin user roles
Role Contains roles

Description

sam

Can create, edit, change, and manage software licenses. Can edit
the Software model field on a Discovery model. Can approve a
model. Has full control of the Legacy Software Asset Management
plugin. Controls the legacy IBM PVU Process Pack, if activated.

inventory_user
contract_manager
category_manager
financial_mgmt_user

Script includes
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following script includes.
Legacy Software Asset Management plugin script includes
Name

Description

DiscoveryModelMatcher Matches a discovery model with a software product model.
ProcessorDefinitionsUtils Contains utilities for managing the Processor Definition
[cmdb_processor_definition] table.
ProcessorValueUnitsUtils Contains logic that determines the IBM PVU pricing associated
with a given processor. Also generates an event when a processor
mapping is not found.
SAMMigration

Deprecated. Used by the fix job that migrates software license
management data to the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

SAMSuiteEngine

Contains functions for handling suite inference on software
installations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

26


<!-- page 27 -->
Legacy Software Asset Management plugin script includes (continued)
Name

Description

SAMUtil

Generates models and counters for the legacy Software Asset
Management (com.snc.software_asset_management) plugin.

Client scripts
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following client scripts.
Legacy Software Asset Management plugin client scripts
Name

Table

Description

Clean up
Counter

Software Counter
[sam_sw_counter]

Ensures integrity between the various
counting options of a software counter.

Deactivate
automatched
checkbox

Software Discovery Model
Deactivates the automatically matched
[cmdb_sam_sw_discovery_model] check box when a user edits the software
model.

Notify if counter Software Counter
in progress
[sam_sw_counter]

Displays a message if the counter is
currently running.

UI policies
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following UI policies.
Legacy Software Asset Management plugin UI policies
Name

Table

Description

Enforce
Installs
per
license

Software Counter
[sam_sw_counter]

Makes the Installs per license field mandatory when
the software counter License type is By number of
users.

Handle
custom
counts

License Calculation
Displays the fields for entitlement type and valuation
[sam_sw_license_calculation] script when Count by is set to custom.

Hide
Software Counter
condition [sam_sw_counter]
fields

Hides the Software usage condition field if the
license calculation query table is set to Software
install and hides the Software install condition field if
the license calculation query table is set to Software
usage.

Hide
query
table

Hides the Query table field on the Software Counter
form.

Software Counter
[sam_sw_counter]

Business rules
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following business rules.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

27


<!-- page 28 -->
Legacy Software Asset Management plugin business rules
Name

Table

Description

assign
processor

Computer [cmdb_ci_computer]

Attempts to match a processor with a
processor definition.

Build Primary Software Installation
Key
[cmdb_sam_sw_install]

Sets the primary key for the
record to the serial number on the
[cmdb_sam_sw_install] table. If the serial
number is empty, the rule creates one
based on the publisher, display name,
product ID, version, and revision.

Build Primary Software Usage
Key
[cmdb_sam_sw_usage]

Creates the primary key for the
record from the publisher, name,
product ID, and version number on the
[cmdb_sam_sw_usage] table.

Check for
software
suite

Software Installation
[cmdb_sam_sw_install]

Checks if the current software install is part
of a software suite.

Check
for suite
omission

Software Installation
[cmdb_sam_sw_install]

Checks if the current software install should
be omitted from any suites.

Clean up
Cache

Software License [alm_license]

Removes the cache for the counter of the
software license record when a software
license is deleted.

Clean up
Software Installation
software
[cmdb_sam_sw_install]
normalization

Deletes the discovery model if the
discovery model is changed and it is not
used by other software installs. This rule is
not enabled by default.

Clear install
and usage
records

Software Counter Summary
[sam_sw_counter_summary]

Uncaches all related install and usage
records when a software counter summary
is deleted.

Clear
normalized
flag

Software Usage
[cmdb_sam_sw_usage]

Clears normalized flag on certain field
changes.

Clear
normalized
flag

Software Installation
[cmdb_sam_sw_install]

Clears the is_normalized check box when
a field value is changed from a normalized
value.

CPU/Core
count
change

Computer [cmdb_ci_computer]

Clears the Cached check box on related
software installs when the CPU count or
CPU core count changes.

Create a
Software Installation
Software
[cmdb_sam_sw_install]
Normalization

Links the record to the discovery
model with that primary key on the
[cmdb_sam_sw_install] table if the primary
key changes. The business rule creates
a discovery model if none exist for that
primary key.

Create a
Software Usage
Software
[cmdb_sam_sw_usage]
Normalization

Links the record to the discovery
model with that primary key on the
[cmdb_sam_sw_usage] table if the primary

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

28


<!-- page 29 -->
Legacy Software Asset Management plugin business rules (continued)
Name

Table

Description

key changes. The business rule creates
a discovery model if none exist for that
primary key.
Delete
cached
count results

Software License [alm_license]

Marks the software counter results to be
recounted when one or more fields on a
license have changed.
This script runs after a change to a field
that a counter can be grouped on, such
as location, department, company,
cost_center, entitlement_condition, or
assigned_condition. If one or more of these
fields changes, then the script sets the
Recount field to true on any cached counter
results matching the previous value. When
the counter runs, the results with Recount
set to true are treated as non-cached
results and are recounted. For example,
if Location on a license was Americas
and changes to EMEA, cached results for
Americas will have Recount set to true for
the next count.

Delete
Cached row
entry

License Entitlement
[alm_entitlement]

When an entitlement is deleted:
• Deletes all related software counter
details.
• Clears the Cached check box on the
related software install.

Drop counter Software Counter
Cache
[sam_sw_counter]

Clears the Cached check box for the
software counter if the grouping, license
type, contract, or installs per license
change in a software counter. Added
enforce field changes to the conditions

Flag counter
to reprocess

Software Upgrade
and Downgrades
[cmdb_m2m_downgrade_model]

Clears the Cached check box for all related
software counters if the upgrade parent or
downgrade child values are changed or
deleted.

Flag counter
to reprocess

Software Suite
[cmdb_m2m_suite_model]

Clears the Cached check box for all related
software counters if the suite parent or suite
child values are changed or deleted.

invalidate sw
install cache

Computer [cmdb_ci_computer]

Uncaches all install and usage records
referencing a computer when the
computer's processor field is changed.

Limit license
metric

License [alm_license]

Limits software licenses to a single license
metric value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

29


<!-- page 30 -->
Legacy Software Asset Management plugin business rules (continued)
Name

Table

Limit license Hardware [cmdb_ci_hardware]
metric
combinations

Description

Rejects license metric combinations of the
same type, such as CAL (user) and CAL
(devices).

Link to Model Software Discovery Model
Finds and sets the model field to the model
[cmdb_sam_sw_discovery_model] that best corresponds to the record when a
software discovery model is created.
Mark install
for suite
omission

License Entitlement
[alm_entitlement]

Searches for any matching installs and
marks them for suite omission.

One and only Processor Mapping
one default
[sam_processor_mapping]
mapping

Ensures only one default mapping by
resetting the last resort flag for modified
records and setting it to false for new
records.

Process
cache reset

Resets the install of any counter information
when it becomes uncached.

Software Installation
[cmdb_sam_sw_install]

Process suite Software Installation
component
[cmdb_sam_sw_install]
deletion

Updates all other members of an install's
suite if the install is deleted.

rebind
processor
definitions

Processor Mapping
[sam_processor_mapping]

Refreshes processor definitions when a
processor mapping changes.

Rebuild
Cache

Software Discovery Model
Clears the Cached field on the software
[cmdb_sam_sw_discovery_model] counter if the associated software model is
modified on the software discovery model
record.

Rebuild
Software Discovery Model
Clears the cached flag and inferred suite
inferred suite [cmdb_sam_sw_discovery_model] field on records referencing this discovery
and cached
model, when the matched model changes.
Remove
cached flag

Software Installation
[cmdb_sam_sw_install]

Clears the corresponding cached software
counter details if a software installation is
deleted or if the configuration item on which
it is installed changes.

Remove
cached flag

Software Usage
[cmdb_sam_sw_usage]

Clears the corresponding cached software
counter details if a software usage record
is deleted or if the configuration item from
which the software is accessed changes.

Remove
caches from
detail

Software Counter Detail
[sam_sw_counter_detail]

Clears the Cached check box on the related
entitlement, installation, and usage records
if they exist.

Reset
counter info
on suite
change

Software Installation
[cmdb_sam_sw_install]

Uncaches and resets counter information
on the install if its inferred suite changes.

Reset Installs Software Counter
per License
[sam_sw_counter]

Clears the Installations per license fields if
the counter license type is not per user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

30


<!-- page 31 -->
Legacy Software Asset Management plugin business rules (continued)
Name

Table

Description

Retrieve PVU
Mapping

Processor Definition
[cmdb_processor_definition]

Finds a matching processor mapping
based on the information of the processor
definition.

SAM: Core
Process

Global [global]

Not used for any processing.

Set Display
name

Software Counter Result
[sam_sw_counter_result]

Sets the display name of the counter result
to the counter name with the grouping type.

Set
normalized
fields

Software Usage
[cmdb_sam_sw_usage]

Sets normalized fields on insert to be
copies of discovered fields.

Set
normalized
fields

Software Installation
[cmdb_sam_sw_install]

Copies the given values as their normalized
values when a software install is inserted.

Sync
Software
Package

Software Discovery Model
Creates a row in the package table to reflect
[cmdb_sam_sw_discovery_model] the row in the discovery model table.

Update
Cache

Software Installation
[cmdb_sam_sw_install]

Updates all corresponding cached software
counter details if usage metrics for this
installation change.

Update
Cache

Software Usage
[cmdb_sam_sw_usage]

Updates all corresponding cached software
counter details if usage metrics for this
software usage change.

References
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds the
following references.
Legacy Software Asset Management plugin references
Name

Description

Processor If you activated the legacy IBM PVU Process Pack after activating the legacy
Definition Software Asset Management (com.snc.software_asset_management) plugin, a
reference to the processor definition is added to the Hardware [cmdb_ci_hardware]
table.
Legacy Software Asset Management plugin setup process
To get started with the legacy Software Asset Management
(com.snc.software_asset_management) plugin, you need to identify and discover software
owned, create software models, create license records, and configure software counters.
To get started with the legacy Software Asset Management
(com.snc.software_asset_management) plugin, perform the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

31


<!-- page 32 -->
• Identify the software that your organization owns using one of the following methods:
◦ Use Discovery to identify currently owned software and begin working with the legacy
Software Asset Management (com.snc.software_asset_management) plugin.
◦ Identify and add the software manually or with a third-party tool.
• Make the Configuration Management Database (CMDB) accurate.
Clean up information in CMDB. At first, focus on your top 10-20 software vendors.
• Create software models.
Create software models for all of the software that your organization wants to monitor. Software
models can also be imported from another source, such as a Discovery application, an existing
data set of software licenses, or a third-party source.
• Create software license records.
Create software license records for all of the software that your organization owns. This
information can also be based on information from a purchasing source or imported as a
spreadsheet.
• Configure software counters.
Configure software counters to view your organization's software compliance levels for all of
your software.
Determine where software is installed using the legacy Software Asset Management plugin
When using the legacy Software Asset Management (com.snc.software_asset_management)
plugin to determine where your software is installed, you must keep the following points in mind.
• The software instance no longer contains discovered information. The information previously
went to the Software Instance [cmdb_software_instance] table, but now goes to the Software
Installation [cmdb_sam_sw_install] table. Because the table has changed, you must change
your transform maps to point to the new table.
• Models identified by a discovery tool are linked to software models.
• Use grouping to obtain more specific information from a software counter.
• Software installations link a computer with a software model (via a discovery model).
A discovery tool places the data it obtains into the Software Installation [cmdb_sam_sw_install]
table. All of the information can be seen in the Software Installations list and the individual
Software Installation forms. When a record is created, the system analyzes the Discovery Model
table and identifies five key points.
• Publisher
• Display name
• Prod ID
• Version
• Revision
Find software on the network using the legacy Software Asset Management plugin
After using a discovery tool, you can find a definitive list of all the software found on the network
using the legacy Software Asset Management (com.snc.software_asset_management) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

32


<!-- page 33 -->
Before you begin
Role required: sam

About this task

Note: A user with the Asset role can delete software installations, but it is not
recommended. As an alternative, archive software installation information.

Procedure
1. Navigate to All > Software Asset > Discovery > Discovery Models.
A software administrator can, for example, look at the list and see that Adobe Acrobat 9.0, 9.2,
9.3, and 9.5 were found. Then, the administrator can edit software discovery models so all the
dot versions are considered version 9.0 when doing reconciliation.
2. Click a Display Name in a row.
All installations that map to an individual software discovery model are displayed.
All fields on the form are read-only.
Software installation fields
Field

Description

Display
name

Name of the software installation as it appears in record lists.

Publisher

Publisher of the software.

Version

Version of the software.

Discovery
model

Software discovery model that represents the installed software.

Prod id

Number created by the publisher to identify the software.

Install
location

Path under which the software is installed.

Install date

Date on which the software was installed.

Revision

Revision of the software.

Instance
key

Encrypted credentials for the software installation.

Installed on Hardware on which the software is installed.
Uninstall
string

Identifier used to uninstall the software.

ISO serial
number

ISO number of the software.

Foreground Duration of foreground usage of the software.
Background Duration of background usage of the software.
Last
scanned

Date and time on which the software was last discovered on this hardware.

Last used

Date and time on which the software was last used on this hardware.

Counted by The counter summary name that the installation is counted on.
Entitlement

Entitlement that is associated with the software installation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

33


<!-- page 34 -->
Field

Description

Inferred
suite

Software suite inferred by the inference parameters.

Valuation

Indicates the number of rights the install has.

Cached

If checked, the license installation has already been counted.

Omit from
suites

If checked, the license is ignored for any suite calculations. This box is
automatically checked if the install finds a possible entitlement of the exact
software model for this configuration item.

Note: Third-party discovery tools can use software normalization to more effectively
manage the software installation database. Software normalization allows you to
standardize your software installation data, such as the display name, publisher,
revision, and version. You can personalize the software installation form to include these
normalization fields. For more information, see Personalize a form .
Scan software installations with the system scheduler
The legacy Software Asset Management (com.snc.software_asset_management) plugin adds
a scheduled job for scanning software installations named SAM License Counters in System
Scheduler > Scheduled Jobs.
The SAM License Counters job occurs at 2:00am (local time) every morning. The job queries the
Software Installation [cmdb_sam_sw_install] table and captures any installations that have not
been scanned in the past 7 days.
Software licenses in the legacy Software Asset Management plugin
Software licenses are based on models that are defined through the legacy Software Asset
Management (com.snc.software_asset_management) plugin.
You can create the models to organize software licenses in any way that makes sense for your
organization. Common methods of defining models and licenses include by department or by
region.
Licenses can be associated with a contract. For more information, see the Contract Management
application.

Licensing types
The following license types are available in the legacy Software Asset Management
(com.snc.software_asset_management) plugin:
• By CPU
◦ By CPU cores
◦ By number of CPUs
• By number of points: Per installation - IBM PVU
• By user
◦ Number of installs per user
◦ Per named user
• By utilization

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

34


<!-- page 35 -->
◦ Usage (CPU)
◦ Usage (User)
• By workstation: Per workstation
Supported license models
Model

Description

Individual

Given to individuals.

Bulk allocated Allocated to users via entitlements.
Bulk not
allocated

Given to users with details, such as who has a license or where the license is
located, not tracked.

License management with the legacy Software Asset Management plugin
The legacy Software Asset Management (com.snc.software_asset_management) plugin allows
asset managers to track and organize the number of licenses available to the organization.
Software licenses are based on models that you create to organize software licenses in
meaningful ways. Different license calculation types determine how software is counted.
Software licenses can also be associated with a contract which enables a company to cover
software licenses for multiple assets or users. You can manage and track software contracts
using the Contract Management application.
Add a software license using the legacy Software Asset Management plugin
You can add a new software license using the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Software Licenses.
2. Click New.
3. Complete the form.

Field

Description

Display
name

Read-only. Name of the software license. Created automatically.

Model
category

Model category for the software license. Software License is selected by
default.

Model

Software model of the license you are matching to. For example, Microsoft
Excel.

Rights

Number of entitlements to be granted by this license. If an enterprise contract is
attached to the license, the Rights field does not display.

General

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

35


<!-- page 36 -->
Field

Description

Asset tag

Number from the asset tag. The tag contains the serial number and bar code for
tracking the software license.

State

Current status of the software license, such as On order or In use.

Assigned to User currently assigned to this software license.
Managed
by

User or department that maintains the software license. Can be different than
the owner. For example, a specified user can own a software license, but the IT
department manages it.

Owned by

User or department with financial ownership of the software license. Can be
different than the manager.

Parent

Parent asset of the software license, if any. For example, the parent asset of
Microsoft Word software is often the Microsoft Office suite.

Class

[Read-only] Automatically created as Software License.

License
metric

[Optional] A single metric which the software license is counted against.

Serial
number

Unique number assigned for identification.

Substate

More details about the software license stage. The available substate settings
depend on the State selected. For example, if you select the Retired state, the
substate options available are Disposed, Sold, Donated, and Vendor credit.

Location

Where the license will be used. For example, a specific site, country, or region.

Department Department of the person Assigned to this software license.
Company

Company that created the software.

Assigned

Date on which the software license was assigned.

Installed

Date on which the software license was installed.

Comments

Information about the software license that would be helpful for others to know.

For information about the fields in the Financial and Contracts sections of the form, see
Create assets .
4. Click Submit.
Create and manage an enterprise license using the legacy Software Asset Management
plugin
Enterprise licenses are typically for large customers and provide some flexibility, an agreed upon
discount price, and a mechanism for easy administration.

Before you begin

Role required: contract_manager

About this task

Use the Contract Management application to set a software license as enterprise or subscription
for the legacy Software Asset Management (com.snc.software_asset_management) plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

36


<!-- page 37 -->
Procedure
1. Navigate to All > Contract > Software Licenses.
2. Click New.
3. Select a License type of Enterprise.
4. Fill in as many of the remaining fields on the Contract form as you can, and click Submit.
5. Reopen the contract.
6. In the Assets Covered related list, click New.
7. In Asset, select the software covered by the contract.
8. In Date added, select the date the software license was added to the contract.
The date can be in the past, the present, or the future.
9. Optional: In Date removed, select the date asset was, or will be, removed from the contract.
10. Click Submit.
11. Navigate to Software Asset > Reconciliation > Software Counters.
12. Click the software you specified.
13. Click Count Licenses.
The licenses are listed under Software Counter Results. The licenses display as 0, but you
are not out of compliance because you have an enterprise license with an enterprise contract.
Once an enterprise contract is associated with software, all users are entitled when the
licenses are counted.

Note: In the Software Licenses list, enterprise licenses display 0 in the Rights column.
The concept of rights is not used with enterprise licenses.
Create and manage a subscription license using the legacy Software Asset Management
plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
create subscription licenses and manage the information as it changes.

Before you begin

Role required: contract_manager

Procedure
1. Navigate to All > Contract > Contracts > Software Licenses and click New.
2. Select Subscription from the Agreement type list.
3. Complete the Contract form, right-click the header, and select Save.
4. In the Assets Covered related list, click New.
5. In Asset, select the software covered by the contract.
6. In Date added, select the date the software license was added to the contract.
The date can be in the past, the present, or the future.
7. Optional: In Date removed, select the date asset was, or will be, removed from the contract.
8. Click Submit.
9. Navigate to All > Software Asset > Reconciliation > Software Counters.
10. Click the software specified in step 5.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

37


<!-- page 38 -->
11. Click Count Licenses.
The licenses are listed under Software Counter Results.
Software license entitlements for the legacy Software Asset Management plugin
Software entitlements enable you to define the people or machines to which a specific,
purchased software license is assigned.

Before you begin

Role required: asset

About this task

Asset managers allocate a license to entitle a user or machine to use the license. For example, a
company purchases a software license for 100 rights. The software entitlement specifies the 100
employees or machines that are rightfully assigned a license. If the ServiceNow Discovery tool
is used and it finds the software installed on 200 machines, the asset manager can identify the
employees or computers that have the software installed without a license. The asset manager
can ask users to remove the software from their computers.
Built-in rules prevent entitling more licenses than have been purchased. License entitlements
use specific software license asset tags. In addition to the mandatory asset tag, an individual
person and a specific configuration item can be assigned.
The benefits of using software entitlements include the following.
• If the overall license entitlement is exceeded, the asset manager can rapidly address the
problem and return to compliant status by either removing unauthorized software or ordering
more licenses.
• If the license entitlement is not being used completely, the asset manager can respond by
lowering the number of licenses purchased in the future.

Procedure
1. Navigate to All > Asset > Software > Asset License Entitlements and create a new record (see
table for field descriptions).

Field

Description

Display name

Name used in record lists.

Allocated to

The configuration item consuming the license token.

Licensed by

License granting this token.

Cached

Internal flag set and used by software counters logic.

2. Click Submit.
Create an entitlement for the legacy Software Asset Management plugin
You create software entitlements for both CIs and users from the same License Entitlement form.

Before you begin

Role required: asset

About this task

You can create these entitlements from the Asset Management application. Navigate to one of
these locations and click New:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

38


<!-- page 39 -->
• Asset > Software > Asset License Entitlements
• Asset > Software > User License Entitlements

Procedure
1. Navigate to Software Asset > Software Licenses.
2. Click an Asset tag.
3. Click Add Entitlement and complete the License Entitlement form using the fields in the table.
4. Click Submit.
The view returns to the Software License form.
5. Optional: Set a condition in the Allocated conditions section.
(Optional) The configuration items given this license must meet the specified conditions.
For example, you might set a condition that allocates this software license to CIs in a certain
department only.
6. Click Update.
License entitlement
Field

Description

Display name

Name used in record lists.

Assigned to

User of the entitlement token.

Allocated to

The configuration item consuming the license token.

Licensed by

License granting this token.

Cached

Internal flag set and used by software counters.

Create a software user license entitlement for the legacy Software Asset Management plugin
You can entitle a user to use one of your software licenses.

Before you begin

Role required: asset

Procedure
1. Navigate to All > Asset > Software > User License Entitlements and create a new record (see
table for field descriptions).

Field

Description

Display name

Read-only. Name used in record lists.

Assigned to

User of the entitlement token.

Licensed by

License granting this token.

Cached

Read-only. Internal flag set and used by software counters logic.

2. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

39


<!-- page 40 -->
Entitle a license to a configuration item using the legacy Software Asset Management plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
entitle a license to a configuration item, such as a computer or server, or a location, such as a city
of building.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Software Licenses.
2. Click an Asset tag, or click New to create a new software license.
3. In the Asset Entitlements related list, perform one of the following actions.
◦ Double-click in Allocated to to entitle the license to a specific configuration item, such as a
computer or server.
◦ Double-click in Location to entitle the license to a specific location, such as a city or
building.
4. Optional: Set the Allocated conditions condition to the configuration items given this license
must meet the specified conditions
Example
For example, only configuration items in a certain department can be allocated this software
license.
5. Click Update.
Entitle a license to a user or location using the legacy Software Asset Management plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
entitle a license to an individual user.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Software Licenses.
2. Click an Asset tag, or click New to create a new software license.
3. In the User Entitlements related list, perform one of the following actions.
◦ Double-click in Assigned to to entitle the license to a specific user.
◦ Double-click in Location to entitle the license to a specific location, such as a city or
building.
4. Optional: Set the Assigned to condition to require that every user given this license meets the
specified conditions.
Example
Only people in a certain region can be assigned this software license
5. Click Update.
License upgrade and downgrade with the legacy Software Asset Management plugin
The concept of upgrading and downgrading licenses is built in to the legacy Software Asset
Management (com.snc.software_asset_management) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

40


<!-- page 41 -->
This is helpful when reconciling licenses. Downgrading a license is the process of purchasing
a license, but using an earlier version. Upgrading a license occurs when a newer version of a
license is not purchased, but you are allowed to use the newer version. Downgrading is more
common than upgrading.
Any version defined as a downgrade child that does not have entitlements and a license can be
counted as an installation of the upgrade parent. Use this method to avoid having to uninstall
unlicensed versions of software running in your environment. When you define an unlicensed
version as a downgrade child of a licensed version, the system creates a software model
record for the unlicensed version with an upgrade path to the licensed version. If you delete the
downgrade child from the licensed version's record, it is automatically deleted from the Software
Model record for the unlicensed version.

Note: If the downgrade child has either a license or an entitlement, it must also have a
counter, which counts all installations of the downgrade child against its own license.
For example, you have licenses for the software model Microsoft Word 2010, but no licenses
or entitlements for Word 2007. Discovery finds installations of Word 2007 being used in your
organization. Rather than force users to uninstall all instances of this unlicensed version, you
decide to count installations of Word 2007 against your Word 2010 license. To do this, you
configure Word 2007 as a downgrade child in the Word 2010 Software Model record. A Software
Model record is automatically created for Word 2007 which specifies Word 2010 as the upgrade
parent.
If a software version has a downgrade child or an upgrade version that can be counted against
the parent, the number of installs counted is restricted to the number of available rights of the
parent. For example, Microsoft Word 2010 has a downgrade to Word 2007. Both versions have
an active counter. Microsoft Word 2010 finds all entitled copies of Word 2007, and also takes out
of compliance any installs from that downgrade counter until the available downgrade rights are
used. However, if Microsoft Word 2010 only has 100 rights, then the maximum number of rights to
be taken from the downgrade counter is 100.
You can set the start and end dates for a software upgrade parent and downgrade child to be
valid. The software counter counts the upgrade and downgrade licenses within the selected
dates. If the software counter runs outside of the date range, the upgrade and downgrade
licenses are not counted.

Note: If an upgrade parent or downgrade child is set on the software model, it applies
to all licenses of that model. If set on the software license, it applies specifically to that
license.
Upgrade a license using the legacy Software Asset Management plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
upgrade a software license through one of two methods: through a software license record or
through a software model record.

Before you begin
Role required: sam

Procedure
1. Complete the following steps to identify an upgrade parent from a software license record.
a. Navigate to Software Asset > Software Licenses and select a software license.
b. Click the Software Upgrade and Downgrade tab and click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

41


<!-- page 42 -->
c. Complete the form.
Software Upgrade and Downgrades form
Field

Description

License

Name and asset number of the software license.

Downgrade Child

Lower version of the software license.

Upgrade parent

Higher version of the software license.

Start date

Start date of the upgrade.

End date

End date of the upgrade.

d. Click Submit.
The software upgrade displays in the Software Upgrade and Downgrades section.
e. Select the software upgrade check box and click Update.
The software license is updated in the Software License list.
2. Complete the following steps to identify an upgrade parent from a software model record.
a. Navigate to Software Asset > Software Models.
b. Select a model.
c. In the Upgrade section, double-click under the Upgrade parent column heading.
d. Select a software model from the list.
e. Click the green check mark and click Update.
The Software Model form is updated.
Downgrade a license using the legacy Software Asset Management plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
downgrade a software license through one of two methods: through a software model record or
through a software license record.

Before you begin
Role required: sam

About this task

Note: Downgrade children set on the software license applies specifically to that license.
If a downgrade child is set on the software model, it applies to all licenses of that model.

Procedure
1. Complete the following steps to downgrade a license from a software model record.
a. Navigate to Software Asset > Software Models.
b. Select a model.
c. In the Downgrade section, double-click under the Downgrade child column heading.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

42


<!-- page 43 -->
d. Select a software model from the list.
e. Click the green check mark.
2. Complete the following steps to downgrade a license from a software license record.
a. Navigate to Software Asset > Software Licenses.
b. Select a license.
c. Click New in the Software Upgrade and Downgrades related list.
d. Select a software model from the list.
e. Select the Start and End dates.
f. Click Submit.
Identify a downgrade child from a software license record using the legacy Software Asset
Management plugin
Use the legacy Software Asset Management (com.snc.software_asset_management) plugin to
identify a downgrade child from a software license record.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Software Licenses.
2. Select a license.
3. Click New in the Software Upgrade and Downgrades related list.
4. Select a software model from the list.
5. Select the Start and End dates.
6. Click Submit.

Note: Downgrade children set on the software license applies specifically to that
license. If a downgrade child is set on the software model, it applies to all licenses of that
model.
View a list of unallocated software licenses for the legacy Software Asset Management plugin
Managing software licenses includes knowing what licenses are owned by your organization, but
are not allocated.

Before you begin
Role required: sam

About this task

You can allocate the licenses to users or devices. If no one needs the unallocated licenses, this
can be noted so that fewer licenses are purchased in the future.

Procedure
1. Navigate to All > Asset > Software > Unallocated Licenses.
2. View the Software Counter Details list (Unallocated License view).
The Valuation column lists the number of unallocated licenses for the given software model.
3. Click a name in the Model column for detailed information about a specific license.
View the Software Model list in the Unallocated License view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

43


<!-- page 44 -->
Merge software licenses using the legacy Software Asset Management plugin
If you have multiple software licenses that are linked to the same model, you can merge the
individual licenses into a consolidated license using the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

About this task

To be merged, the individual licenses must meet the following requirements:
• The licenses cannot already be merged into another consolidated license.
• The information in the following fields must match for each license:
◦ Model
◦ Allocated condition
◦ Assigned condition
◦ Company
◦ Location
◦ Department
◦ Cost center
◦ State
• The licenses must have the same set of software upgrades and downgrades and the same set
of assets covered. To verify this information, go to Software Asset > Software Licenses and
select a license.
◦ For upgrades and downgrades, go to the Software Upgrade and Downgrades related list.
◦ For assets covered, go to the Assets Covered embedded list in the Contracts related list.
If a license can be merged, Merge with similar licenses appears under Related Links on the
Software License form.
To merge a license:

Procedure
1. Open a license.
2. Click the Merge with similar licenses link.
Displays a dialog box with a message stating that the merge process is irreversible and that
license keys are not merged.
3. Click OK.
All qualifying licenses, including the current license, are merged into a new consolidated
license. An informational message appears until the user is redirected to the newly merged
license.
All qualifying licenses are merged into a new consolidated license unless they can be matched
to an existing consolidated license. If they are merged into a new consolidated license, the
Asset tag field is cleared. After merging, the merged license is marked as Is merged license
(field = true) and the Merged into field is set to this license for the consolidated licenses.

Note: Licenses that are marked as merged are not counted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

44


<!-- page 45 -->
For the consolidated licenses:
◦ The number of rights are summed up into a new count.
◦ The asset and user entitlements are transferred to the new license.
◦ The expense lines and assets on contract rate cards are transferred to the new license.
◦ The set of software upgrades and downgrades, as well as the set of assets covered, are
copied to the new license.
◦ The cost of each individual license is summed up into the new license using the system
base currency.
◦ A history of the consolidated licenses and where they went is maintained.
Related topics
License management with the legacy Software Asset Management plugin
Manage software models using the legacy Software Asset Management plugin
The legacy Software Asset Management (com.snc.software_asset_management) plugin uses
software models to manage licenses, specifically in software counters and license restrictions,
and to track upgrade and downgrade licenses.

Before you begin

Role required: sam or model_manager

About this task

Create software models for all of the software your organization wants to monitor. Software
models can also be imported from another source such as the Discovery application.

Note: Software does not create configuration items. If the discovery tool you use supports
and finds ISO information, details such as ISO ID and ISO serial number are added to the
Software Model form for compliance purposes.

Procedure
1. Navigate to All > Software Asset > Software Models.
Users with the model_manager role can navigate to Product Catalog > Product Model >
Software Models, but cannot administer all aspects of software models.
2. Click New.
3. Complete the form.
Software model fields
Field

Description

Display
name

[Read-only] Name of the model. A system property called
glide.cmdb_model.display_name.shorten controls how software
model display names are generated. Administrators can configure the
property.

Manufacturer The company that built the model.
Name

The manufacturer-assigned name of the model or an abstract name specified
by the model manager, such as Field Agent Laptop.

Edition

The edition of the software model, such as Professional.

General
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

45


<!-- page 46 -->
Field

Description

Short
description

A brief description of the model.

Model
categories

[Read-only] The category the model is assigned to. The system automatically
sets the value to Software License. This field is a glide list.

Asset
tracking
strategy

The process the model should be tracked by. Choose from the following:
◦ Leave to Category: model is transparent and the asset class is defined
solely by the category.
◦ Create Consumable Asset: model forces the asset class to be consumable,
regardless of what the category defines as the asset class.
◦ Don't create assets: model blocks asset instantiation, regardless of what
the category defines as the asset class.

Acquisition
method

The method for purchasing the model. Options are Both, Buy, and Lease.

Cost

The cost a single unit of the model.

Depreciation The depreciation scheme for the model.
Model
number

The specific model number assigned to the item by the manufacturer.

Barcode

The barcode number assigned to the model. Barcodes are usually assigned
by the manufacturer.

Owner

The person responsible for the model.

Status

The current status of the model. Options are In Production, Retired, and Sold.

Certified

The option that determines whether the model is approved for use.

Comments

Information about the model that would be helpful for others to know.

License
Version

The exact version of the software. For example, Version 2.

Major

The ISO major version number of the software.

Minor

The ISO minor version number of the software.

Build

The build number of the software.

Software
category

A category name for grouping software with similar characteristics.

Single or
multi license

Defines whether this model uses a single license or multiple licenses.

Maximum
Maximum number of CPU sockets that a computer must have for the software
socket count to be installed.
License type

The tracking type for the license. For example, by number of users, per
workstation, per installation with IBM PVU or per Oracle processors. If you
select the By number of users option, you can create a software counter and
specify the number of installations per license.

Activation
status

The activation state of the software model. Options are None and Activated.

ISO id

The unique ISO identification number of the software product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

46


<!-- page 47 -->
Field

Description

ISO serial
number

The serial number issued by ISO for the software.

Application
model

Application associated with this software.

Rights

Number of licenses granted to this software.

Minimum
users

Minimum number of user licenses required for this software.

Maximum
users

Maximum number of user licenses required for this software.

Suite Components
Inference
percent

The percentage of suite components that need to be present on a system to
count as a suite. Used for suite management. For example, Suite A consists
of 5 products. If the inference percent is set to 60% and a discovery tool
finds three of the products on the system, the software is flagged for possible
purchase as a suite.

Components The child product or products of the suite. For example, Microsoft Word and
Microsoft Excel are child products of Microsoft Office.
Suite Parents
Parents

The parent suites to which the software is assigned. For example, the parent
suite for several common Microsoft products is a version of Microsoft Office.

Upgrade
Upgrades

An alternative version license to which you have rights. For example, if you
purchase version 4 of a software product shortly before version 5 is released,
your version 4 license may include a free upgrade to version 5 when it is
released.

Downgrade
Downgrades

An alternative version license to which you have rights. For example, if you
purchase version 4 of a software product, your version 4 license may include
downgrade rights to version 3.

Licenses
Software
Licenses

The software licenses that should be created automatically from this model.

Note: This embedded list shows all assets created from this model,
whether or not they are software licenses, in versions prior to this
release.

Catalog Item
Product
Catalog

The information about the model as it appears in the product catalog and
service catalog. Information only appears if the model has been published to
the product catalog.

Description

Description of the software model as it appears in the product catalog.

Picture

An image of the software logo.

Any software licenses you create and assign to the new model are displayed in the Licenses
embedded list on the Software Model form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

47


<!-- page 48 -->
Create and manage software suites using the legacy Software Asset Management plugin
Software uses the concept of suites instead of bundles.
A software suite is a group of related software offered as one unit. An example is the Microsoft
Office Professional suite of office productivity software tools that includes Powerpoint,
Word, Excel, Outlook, and Access. You can use the legacy Software Asset Management
(com.snc.software_asset_management) plugin to create suites and add components to the suite
so that the licenses your organization own are counted accurately.
For any software model, you have the option to specify whether the model is a suite (parent)
or a component (child). A software model can be a component in multiple suites. For example,
Microsoft Word is a component in Microsoft Office Standard and Microsoft Office Professional.
Although you can set a single software model as both a suite and a component, software is not
typically sold as nested suites.
Use the Inference percent and Inference mandatory options for even greater control of suites.
• Inference percent: specifies what percentage of the components in the suite must be installed
for the software to be identified as a suite.
• Inference mandatory: enforces that a specific component in a suite must be installed to infer
that the suite is installed.
For example, specify the Inference percent as 80% and set the Inference mandatory option
to true on Microsoft Access. These settings specify that Microsoft Access must be installed,
along with 3 out of 4 other products (Microsoft Word, Microsoft Excel, Microsoft PowerPoint, and
Microsoft Outlook) to infer that Microsoft Office Professional is installed.
The interference percent and interference mandatory fields

To make the new software model record a parent record in a suite:
1. Open a software model record.
2. In the Suite Components section, double-click an empty row under Suite child.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

48


<!-- page 49 -->
Suite child

3. Add the software to include in the suite.
4. [Optional] Set the Inference mandatory option to true if the software must be installed to
count the model as a suite.
5. Repeat as necessary.
To make the new software record a child item:
1. Open a software model record.
2. In the Suite Parents section, double-click an empty row under Suite parent.
Suite parent

3. Add the suite to which this software model should belong.
4. Repeat as necessary.

Note: When a change is made to a suite, a scheduled job called Calculate suites
[Software Suite Model] is created. The job runs instantly, calculates any suites,
and then deletes itself. The calculations are stored in the cmdb_sam_sw_install table
under inferred suite.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

49


<!-- page 50 -->
License calculations with the legacy Software Asset Management plugin
Software license calculations with the legacy Software Asset Management
(com.snc.software_asset_management) plugin count the number of licenses that exist in your
network environment.
Users with the sam role can choose to count software licenses using a variety of license
calculation types, such as counting by the number of users, the number of workstations, the
number of CPUs, and others. For example, you can count the number of Adobe Acrobat 9.0
licenses based on the number of users that have the software installed in the organization.
Calculate software licenses using the legacy Software Asset Management plugin
Software calculations use license calculation types to determine how software licenses are
counted in your organization.
You can use the default license types provided by the legacy Software Asset Management
(com.snc.software_asset_management) plugin or create new ones. To view the default types,
navigate to Software Asset > Reconciliation > License Calculations and select a type. All fields
in the default records are read-only.
License calculation details
Field

Description

Name

The name of the license type.

Query
table

The table that is being used for data. Possible values are Software install and
Software usage.

Count by

The calculation type by which the license calculation type counts software
licenses.

License calculation types supported by the legacy Software Asset Management plugin
Default license calculation types are available with the legacy Software Asset Management
(com.snc.software_asset_management) plugin.
These license types cannot be deleted.
License calculation types
Category

License type

By CPU
• By CPU cores: The counter adds up the total license rights for all software
license records of this model. The CPU Core Count field on the hardware
configuration item determines the number of rights consumed by any software
installation located on the configuration item. For that installation, the counter
checks for a valid entitlement record on any of the software license records.
Applies to software installation data and hardware configuration items.
• By number of CPUs: The counter adds up the total license rights for all
software license records of this model. The CPU Count field on the hardware
configuration item determines the number of rights consumed by any software
installation located on the configuration item. For that installation, the counter
checks for a valid entitlement record on any of the software license records.
Applies to software installation data and hardware configuration items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

50


<!-- page 51 -->
License calculation types (continued)
Category

By number
of points

License type

Per installation - IBM PVU: The counter adds up the total license rights for all
software license records of this model. The installation count for every hardware
configuration item that has IBM PVU software is a point calculation. The CPU type
determines the PVU per-core multiplier based on the IBM PVU mapping table.
The total number of cores on the configuration item is multiplied with this percore multiplier to determine how many rights are used by an installation on this
configuration item. For that installation, the counter checks for a valid entitlement
record on any of the software license records. Applies to software installation data
and hardware configuration items.
This license type is present but does not work until the Software Asset
Management plugin IBM PVU Process Pack is active.

By Client
Access
License
(CAL)

• CAL (Device): The counter adds up the total license rights for all software
license records of this model. Usage is counted as one installation for every
unique configuration item (device). For each installation, the counter checks for
a valid entitlement record on any of the software license records. The Software
Usage [ast_usage] table is used for counting.
• CAL (User): The counter adds up the total license rights for all software license
records of this model. Usage is counted as one installation for every unique
user. For that installation, the counter checks for a valid entitlement record on
any of the software license records. The Software Usage [ast_usage] table is
used for counting.

By user
• Number of installs per user: The counter adds up the total license rights for
all software license records of this model. It counts an installation when one
software installation matches the discovery models that are mapped to this
software model for any hardware used by a user. It counts up to the specified
amount. For that installation, the counter checks for a valid entitlement record
on any of the software license records. Applies to software installation data and
hardware configuration items.
• Per named user: The counter adds up the total license rights for all software
license records of this model. It counts an installation when there is at least one
software installation that matches the discovery models that are mapped to this
software model for any hardware used by a unique user. For that installation,
the counter checks for a valid entitlement record on any of the software license
records. Applies to software installation data and hardware configuration items.
• No license needed (User): The counter adds up the total number of users
of this model. It counts an installation when there is at least one software
installation that matches the discovery models that are mapped to this software
model for any hardware used by a unique user. It applies to software installation
data and hardware configuration items. This license type is used for software
installations where no license is required, such as open source applications.
To compare Number of installs per user and Per named user:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

51


<!-- page 52 -->
License calculation types (continued)
Category

License type

• Number of installs per user counts the number of installs the user has and
assigns license cost based on installs per license. For example, UserA has three
installs. One license is used by each install, for a total of three licenses.
• For Per named user, there is no install limit for a particular user. For example,
UserB, who has three installs, needs only one license for the three installs.
By
utilization

• Usage (CPU): The counter adds up the total license rights for all software
license records of this model. The counter looks at all of the software usage
data mapped to any of the discovery model records of the counter's software
model. It counts one installation for every unique configuration item. For that
installation, the counter checks for a valid entitlement record on any of the
software license records. Applies to software usage data.
• Usage (User): The counter adds up the total license rights for all software
license records of this model. The counter looks at all of the software usage
data mapped to any of the discovery model records of the counter's software
model. It counts one installation for every unique user Accessed From
hardware configuration item. For that installation, the counter checks for a valid
entitlement record on any of the software license records. Applies to software
usage data.

By
workstation

• Per workstation: The counter adds up the total number of license rights for
all software license records of this model. It counts an installation when there
is at least one software installation on a hardware configuration item that
matches the discovery models that are mapped to this software model. For
each installation, the counter checks for a valid entitlement record on any of
the software license records. Applies to software installation data and hardware
configuration items.
• No license needed (Workstation)This license type is used for software
installations where no license is required, such as open source applications.

By Oracle
install

• Oracle Named User: Oracle licensing scheme that counts by the number of
unique users.
• Oracle Named User Plus: Oracle licensing scheme that counts by the number
of unique users and accounts.
• Oracle Processor: Oracle licensing scheme that counts by the number of
processors on a server.
This category and its license types are available when the Oracle Process Pack is
activated.

Create a custom license type for the legacy Software Asset Management plugin
Custom license types in the legacy Software Asset Management
(com.snc.software_asset_management) plugin allow you to create a license type with special
conditions.

Before you begin
Role required: sam

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

52


<!-- page 53 -->
About this task

A custom script can provide detailed information about the number of rights a software install or
usage consumes.

Procedure
1. Navigate to All > Software Asset > Reconciliation > License Calculations.
2. Click New.
3. Complete the form.
New license calculations
Field

Description

Name

Name of the software license type.

Query
table

The value that is used for queries. This can be either Software install to count
the number of installations or Software usage to count the number of times the
software is used.

Count by

The calculation type by which the license type counts software licenses. Make
sure this value is set to Custom to create a new calculation type.

Entitlement The entitlement type of the license, either Workstation or User. This field is
type
available only when the Count by field is set to Custom.
Script

The script used for custom license types. This field is available only when the
Count by field is set to Custom.

4. Click Submit.
Create a custom script for a legacy Software Asset Management plugin license type
By default, the Script field in the legacy Software Asset Management
(com.snc.software_asset_management) plugin Software License Calculation form contains
information about available variables and an example script.
You can use the example as the basis of the custom script or replace the example entirely.
You can use the following variables in the custom script.
Custom script variables
Variable

Description

found

Contains a GlideRecord of the software install or software usage record
currently being evaluated.

workstation Contains a GlideRecord of the workstation referenced by the found record.
user

Contains a GlideRecord of the user referenced by the found record. Can be
null if no user is assigned.

counter_id

Contains the sys_id of the counter running the script.

query_table Identifies the table currently being queried, either Software Installation or
Software Usage.

valuation

Identifies the value in rights that is given to this software install or software
usage record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

53


<!-- page 54 -->
The following functions are available as part of the SAMUtil script include and can be used in
custom scripts.

Note: All of these functions utilize and depend on the variables mentioned above.
Custom script functions
Functions

Description

getWorkstationInstallsOrUsages Returns a list of other installs on the given
workstation.

getUserInstallsOrUsages

Returns a list of all other installs belonging to the
user.

createCounterViolation

Returns insert a counter violation for the current
counter with the given cause.

Example:
The following script uses the number of rights equal to the number of CPU sockets on the
machine the script is installed on. The workstation variable is used to identify any
workstation that is in the development environment. If such a workstation is found, the script
then assigns a valuation equal to the number of CPU sockets on the machine. Otherwise, if
the workstation is not in the development environment, then no rights are assigned.
SAM custom calculation type

Software discovery models in the legacy Software Asset Management plugin
Software discovery models in the legacy Software Asset Management
(com.snc.software_asset_management) plugin can be used to help normalize the software you
own by analyzing and classifying models to reduce duplication.
Software discovery models are stored in the Software Discovery Model
[cmdb_sam_sw_discovery_model] table. There is a distinct difference between software models
and software discovery models.
• A software model is a specific version or configuration of software.
• A software discovery model is a model created when Discovery runs and identifies software.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

54


<!-- page 55 -->
Software discovery models cannot be created manually. The ServiceNow platform uses any
of the following field combinations to match the new software discovery model to an existing
software model.
• Display Name, Publisher, and Version
• Display Name and Version if the Publisher field is empty
• Display Name only if the Publisher and Version fields are empty
When analyzing version numbers, the ServiceNow platform always searches for an exact match
first, but rounds down to a major version number if an exact match is not found. For example, if no
match is found for version number 8.0.4, but version 8.0 is found, then version 8.0 is used in the
Software model field.
Edit a software discovery model using the legacy Software Asset Management plugin
You can edit only the Software model field and Approved check box on the legacy Software
Asset Management (com.snc.software_asset_management) plugin Software Discovery Models
form.

Before you begin
Role required: sam

About this task

If the information automatically added to the Software model field is incorrect, you can change
to an existing model or create a new one.
None of the software discovery model records are approved when they are created. You must
approve them manually after you have reviewed them for accuracy or normalized them. If the
automatically generated software model is correct, approve the model.

Procedure
1. Navigate to All > Software Asset > Reconciliation > Discovery models.
2. Click an entry in the Publisher column.
3. Select Approved.
SAM approval

Automatically match to an existing model using the legacy Software Asset Management
plugin
The automatic matching feature in the legacy Software Asset Management
(com.snc.software_asset_management) plugin allows you to match a software discovery model
to an existing software model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

55


<!-- page 56 -->
Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Reconciliation > Discovery models and open a model.
2. Clear the Software model field.
3. Click an entry in the Publisher column.
4. Click Match model.
The system searches for the best match from existing models. If a match is found, the system
automatically adds the name to the Software model field and selects the Automatically
matched check box. If a match is not found, a No match found message is displayed, and two
related links appear, allowing you to create a new model. No change occurs if the system has
already made a match.
5. If no match is found, create a new model.
If a model is already matched, then the automatic matching feature does not run.
The automatic matching feature can also be used when you insert a new discovery model
record or if you modify and update an existing discovery model. If automatic matching is run,
all software installations and usages that reference the discovery model will have their Inferred
suite and Cached fields cleared.
For more information on software installation and usage records, see Determine where
software is installed.
Create new models using the legacy Software Asset Management plugin
If the automatically generated software model is not correct or if the system cannot find a match
from existing models, you can create a new model using the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Reconciliation > Discovery models and open a model.
2. Clear the Software model field.
3. Save the record.
Two related links appear for creating software models.
4. Select one of these related links to create a new model, which are available only if no Software
model is specified.
◦ Create Software Model: Creates a new software model for this record if a suitable one does
not already exist. You can create a new software model for multiple records in the Discovery
Models list view. Select one or more records and then click the link in the Actions choice list.
◦ Create Software Model and Counter: Creates a new software model and a new software
counter for this record. The system creates the software model automatically using the value
in the Display name field, and then opens a new Software Counter form. In the Discovery
Model list view, you can select multiple records and choose this option from the Actions
choice list.
5. Complete the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

56


<!-- page 57 -->
Model fields
Field

Description

Display
name

[Read-only] Name of the discovery model as it appears in record lists.

Publisher

[Read-only] Publisher of the software.

Version

[Read-only] Specific version of the software.

Revision

[Read-only] Revision number of the software.

Software
model

Software product model to which the discovery model maps. Click the
reference lookup icon and use the lookup list to find the software model to
associate with this software discovery model.

Prod id

[Read-only] Product ID code for the software, as reported through the
discovery process.

Automatically [Read-only] Check box that indicates whether the discovery tool used the
matched
Display Name, Publisher, and Version fields to determine the Software
model.
Approved

Check box that indicates whether the mapping to software model has been
reviewed and approved.

Low
confidence

[Read-only] Check box that indicates whether the automatically matched
software model is not a close match. If selected, and if after reviewing the item
it is determined that it's the correct software model, click Confirm Mapping to
match the discovery model to the software model.

6. Select Approved.
SAM match model

7. Click Submit.
Legacy Software License Compliance Checker
The Software License Compliance Checker that is included in the legacy Software Asset
Management (com.snc.software_asset_management) plugin is a fast way to see if the software
licenses used in your organization are compliant based on number of rights purchased and
number of installations.
For example, if there are 100 licenses for a software program, the legacy Software License
Compliance Checker can show if the software has been installed more than 100 times. The
legacy Software Compliance Checker uses information found by a discovery tool such as
Discovery or third-party technologies, to analyze the software installed on your network.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

57


<!-- page 58 -->
Check your software license compliance using the legacy Software License Compliance
Checker
You can check your software license compliance using the Software License
Compliance Checker that is included in the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > System > Check License Compliance.
2. Click Proceed.
Your organization's network is analyzed for name, software model, rights, installs, license type,
and active status.
3. View the results.
The Software Counters list is color coded.
◦ Green - in compliance
◦ Orange - within 5% of being out of compliance
◦ Red - not compliant
Software Counters list

Software license reconciliation counters for the legacy Software Asset Management plugin
Software counters for the legacy Software Asset Management
(com.snc.software_asset_management) plugin reconcile software rights with software
installations to verify compliance.
For asset managers, software counters answer the question: Is my number of installations equal
to or lower than the number of rights purchased? Counters are useful for software that must
be tracked; some software may not need to be tracked closely. Grouping—such as location,
company, department, cost center, entitlement workstation and entitlement user—or no grouping
can be used with software counters.
In addition to software counters, the legacy Software Asset Management
(com.snc.software_asset_management) plugin offers usage counters that track a license based
on use by a workstation or user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

58


<!-- page 59 -->
The software counter cache is used to increase the speed of counting software licenses. If there
is a large number of software license records, the first time software is counted takes several
minutes. After the first count, only changes are processed so the procedure is faster.
Get started with software counters for the legacy Software Asset Management plugin
A good way to see how software counters work is to use the demo data provided with the legacy
Software Asset Management (com.snc.software_asset_management) plugin.
Load the demo data on a non-production instance.
Legacy Software Asset Management plugin demo data

Using the demo data, try some of the procedures on this page, such as Use the Software Counter
and View a Usage Counter Result.
To use software counters with your own information, follow the steps in the Legacy Software
Asset Management plugin setup process. ServiceNow Discovery does not populate the Software
Usage (cmdb_sam_sw_usage) table. Use a third party tool such as Microsoft's System Center
Configuration Manager to add information about software assets to the Software Usage table.
Schedule a software count for the legacy Software Asset Management plugin
How to schedule a software count for the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

About this task

The SAM License Counters scheduled job scans your instance for software installations. The
SAM License Counters job occurs at 2:00am local time every morning. The job queries the
Software Installation [cmdb_sam_sw_install] table and captures any installations that
have not been scanned in the past 7 days. The job runs a join query on hardware that has been
scanned within the last day and software installations that have not been scanned in the last 7
days.
The SAM License Counters scheduled job runs all software counters at once.
To refresh the cache manually for a specific counter:

Procedure
1. Navigate to All > Software Asset > Reconciliation > Software Counters.
2. Select a counter whose cache you want to refresh.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

59


<!-- page 60 -->
3. Right-click in the header bar of the Software Counter record and select Rebuild SAM Cache
from the context menu.
SAM rebuild cache

Use a software counter for the legacy Software Asset Management plugin
Use a software counter for the legacy Software Asset Management
(com.snc.software_asset_management) plugin to count the licenses for a specific version of
software and receive summary or detailed results.
When a software counter runs for the first time, it can take several minutes to process records.
The license counts are cached so that on subsequent runs, the counter processes only changed
records, both those from Discovery or altered entitlements, making it faster. The Software
Counter form contains check boxes to enable faster counting through the use of quick counters.
For more information on using quick counters, see Setting Up Quick Counters.
Use a software counter to count the licenses for a specific version of software and receive
summary or detailed results. For example, an asset manager can look at summary information
to discover which departments are not in compliance. Then, department managers can look at
detailed information to determine the people or individual computers that are not in compliance.
Software counters return results by Licensing Type:
• Entitled in use: Number of people who have been allocated a license and installed the
software.
• Entitled not in use: Number of people who have been allocated a license but did not install the
software.
• Not entitled: Number of people using an unauthorized copy of the software.
• Not allocated: Number of licenses not assigned.

Note: For information about the scheduled job that runs all counters each day or the
steps to run all counters manually, see Scheduling Software Counts.
The Software Counters list is color coded:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

60


<!-- page 61 -->
• Green - in compliance
• Orange - within 5% of being out of compliance
• Red - not compliant
SAM software license compliance check

Create a software counter for the legacy Software Asset Management plugin
How to create a software counter for the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

About this task

Depending on the license type you select for a counter, multiple installations can count as a
single license, such as when using the per user license type. This licensing concept is used on
occasion by companies like Microsoft and Adobe. It grants users the right to install software on
multiple machines if those users already have rights to install the software.

Note: You can create new counters from Discovery model records or from the list view.
To manage multiple versions of software from a single licensing perspective for the parent
software model:
• The downgrade child software models that are licensed under the parent software model
should all be related to a the single parent software model.
• The downgrade child software models should not have any software counters associated with
them.
• The software counter should be associated only with the licensed parent software model,
otherwise misleading results for the counter will be reported
To create a software counter:

Procedure
1. Navigate to All > Software Asset > Reconciliation > Software Counters.
2. Click New.
3. Fill in the fields on the Software Counter form (see table).
4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

61


<!-- page 62 -->
5. Reopen the new counter and click Count Licenses.
6. Reload the form to view the counter results.
Software counter form
Field

Description

Name

[Required] Enter the name of the software counter as it appears in record lists.

Software
model

[Required] Click the reference lookup icon and select the software model for
which the counter will check compliance.

Contract

Select the contract that you want to use to limit the license. Used for enterprise
and subscription-based licenses. Also restricts how counters retrieve licenses
for the given counter. If left empty, all licenses for the model are counted.

Active

Select the check box to have the scheduler run the counter.

Rights
Owned

[Read-Only] Displays a summation if a contract is specified. The total sum is
the license rights provided by all the licenses for the software model (of the
counter) under the specified contract. If no contract is specified, this field is a
count of all licenses of this model.

Rights Used [Read-Only] Displays the number of rights used by all installs, whether a
contract is specified or not.
Immediate
compliance

[Read-Only] Displays the number of additional rights needed to achieve
compliance based on installations.

Parameters
Grouping

Select the field for grouping data:
◦ Location: group by the geographic location set in the license record.
◦ Company: group by the company set in the license record.
◦ Department: group by the department set in the license record.
◦ Cost Center: group by the cost center set in the license record.
◦ Entitlement (CPU): group by the condition defined in the Allocated condition
field of the license record.
◦ Entitlement (User): group by the condition defined in the Assigned condition
field of the license record.
The software counter results also displays counts for licenses that do not
match the grouping parameter.

Enforce to

[Required] Select the level of adherence to the license:
◦ License: counts all existing entitlements for the installations or usage you are
analyzing regardless of the grouping parameter selected.
◦ Strict: counts the license and entitlement as valid only if the license also
matches the grouping category. For example, a license is assigned to a
specific location, such as Americas. With strict enforcement enabled,
the user and the machine on which the license is installed must be in the
Americas group. If the person and their license assigned to the Americas
group moves to the United Kingdom, the license is still valid, but strict
enforcement flags the user as unauthorized to use that license. The license
will be counted as valid, but will also show up as not entitled in the summary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

62


<!-- page 63 -->
Field

Description

Verify
Select the check box to view the software entitlement details for the software
entitlements counter. Results include the number of installations of all types: not entitled,
entitled in use, entitled not in use, and not allocated. For more information, see
Setting Up Quick Counters.
Generate
details
License
type

Select the check box to generate the details of the entitlement records. For
more information, see Setting Up Quick Counters.
[Required] Select the method for counting licenses. For example, Per named
user or Per workstation.
For more information, see License Calculation Types.

Installs per
license

Enter the number of installations allowed (one or more) per license for each
user if the License type is set to By number of users. You can allow more than
two installations per license.
For all other license types this field is set to 1 install per license.

Cached

[Read-Only] Shows whether this option is selected. If selected, only changed
information is counted, reducing the amount of time it takes to count the
licenses.

License
condition

Specify the condition a license should satisfy in order to be counted.

Software
install
condition

Specify the condition an install record should satisfy in order to be counted.
This field appears depending on the value of the License type field.

Software
usage
condition

Specify the condition a usage record should satisfy in order to be counted.
This field appears depending on the value of the License type field.

Related Lists
Software
Counter
Results

Displays all results for this software counter.

Software
Displays all records of compliance violations for this software counter.
Counter
Compliance
Violations
Software
Counter
Histories

Displays all software counter history records for this software counter. Each
time a count is completed, the system automatically generates a software
counter history record, which is a read-only copy of the software counter
record.

Note: A message is displayed at top of the software counter form indicating if a license
count is in progress. Reload the form to view the counter results.
Set up quick counters for the legacy Software Asset Management plugin
Quick counter settings can help speed up the software counting process that is used by the
legacy Software Asset Management (com.snc.software_asset_management) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

63


<!-- page 64 -->
The following check boxes are available in the Parameters section of the Software Counter form:
• Verify entitlements: When this check box is selected, the software counter will generate
entitlement details in the software counter summaries, displaying the number of entitlements
in use and entitlements not in use. If the check box is cleared, the software counter will display
Entitlement not known with a count of total installs. The counter will not check for entitlements.
• Generate details: When this check box is selected, the software counter will generate software
counter detailsfor each software counter result type. If the check box is cleared, no details will
be available.
Clearing these check boxes in addition to setting the Grouping parameter to None will enable
software counters to run more quickly.
View software counter results for the legacy Software Asset Management plugin
Software counter results provide detailed information about each grouping that is formed
through the legacy Software Asset Management (com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

Procedure
1. On the Software Counter form, click a name in the Software Counter Results related list.
SAM software counter results 2

2. View the Software Counter Result form (see table).
All fields on the form are read-only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

64


<!-- page 65 -->
SAM software counter results 3

Software counter result form
Field

Description

Software
counter

Name of the software counter whose results are displayed.

Grouping

Grouping this software belongs to.

Parent

Name of the parent software, if one exists, assigned to this software.

Rights

Number of rights available in the group.

Installs

Number of rights used by installations of the software in the group.

Immediate Number of additional rights needed for the group to achieve compliance based
compliance on installations.
Planned
Number of additional rights needed for the group to achieve compliance based
compliance on installations and number of unused entitlements available.
Usage Section
Foreground Total duration of foreground usage of the software, based on all the
installations for the group.
Background Total duration of background usage of the software, based on all the
installations for the group.
Times used

Total number of times the software was used, based on software usage records
for the group.

Duration

Total duration of software usage, based on software usage records for the
group. (Not the sum of Foreground and Background.)

Related List
Summary

Breakdown of software counter results bytype. Click a type to view a detailed
summary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

65


<!-- page 66 -->
View software counter summaries for the legacy Software Asset Management plugin
Software counter summaries provide information about each software counter type that is
supported by the legacy Software Asset Management (com.snc.software_asset_management)
plugin.

Before you begin
Role required: sam

Procedure
1. On the Software Counter Result form, click a type in the Summary related list.
2. View the Software Counter Summary form (see table).
All fields on the form are read-only.
SAM software counter results

Software counter summary
Field

Description

Software
counter
result

Name of the software counter result for which the summary is displayed.

Count as

The software model being counted.

Rights

Number of rights that have been used.

Valuation

How software is counted during the reconciliation process.

Software
counter

Name of the software counter.

Summary

Check box that indicates whether the form displays summary information
(selected) or detailed information (cleared).

Type

Type of license counted.

Usage Section
Foreground Total duration of foreground usage of the software, based on all the
installations for the grouping.
Background Total duration of background usage of the software, based on all the
installations for the grouping.
Times used Total number of times the software was used, based on software usage records
for the grouping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

66


<!-- page 67 -->
Field

Description

Duration

Total duration of software usage, based on software usage records for the
group. (Not the sum of Foreground and Background.)

Related List
Software
Counter
Details

Shows every entitlement, software install, and software usage for the software.
The related list also shows the Workstation and User, if applicable, for each
software counter detail. A software asset manager can, for example, identify
people who are using the license but are not entitled. The software can then be
uninstalled from machines that are not in compliance or people can be entitled
a license to meet compliance rules.
Click a type to view the software counter detail.

View software counter details for the legacy Software Asset Management plugin
Software counter details provide information about a specific software counter summary for the
legacy Software Asset Management (com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

Procedure
1. On the Software Counter Summary form, click a type in the Software Counter Details related
list.
2. View the Software Counter Detail form (see table).
All fields on the form are read-only.
Software counter detail form

Software counter detail
Field

Description

Type

Type of the counter detail.

Software
install

Name of the related software install record, if applicable. This field is blank if
the type is Entitled not in use or Not allocated.

Software
usage

Name of the related software usage record, if applicable.

Software
counter

Name of the related software counter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

67


<!-- page 68 -->
Field

Description

Software
counter
summary

Name of the related software counter summary.

Valuation

A valuation of 1 indicates that the license right is being used. A valuation of 0
indicates that the license right is part of a software suite, or that the license
allows more than one installation per right. The 0 indicates that this installation
does not count against the license.

Entitlement

Name of the related software license entitlement, if applicable. This field is
blank if the type is Not entitled or Not allocated.

Software
license

Name of the related software license, if applicable. This field is blank if the type
is Not entitled.

Usage Section
Foreground Total duration of foreground usage of the software, based on the related
software install record.
Background Total duration of background usage of the software, based on the related
software install record.
Times used Total number of times the software was used, based on the related software
usage record.
Duration

Total duration of foreground and background software usage, based the related
software usage record.

View usage counter results for the legacy Software Asset Management plugin
Usage counters for the legacy Software Asset Management
(com.snc.software_asset_management) plugin track licenses based on how often those licenses
are actually used either by a workstation or a user.

Before you begin
Role required: sam

About this task

A usage counter tracks a license based on how often the license is actually used either by a
workstation or a user. For example, an asset manager can use a usage counter to determine who
is actually using the software they have been entitled. If an individual is not using the software at
all or very infrequently, the software can be uninstalled and given to an individual who will use it
more often. If you have a way of capturing information, for example a proxy server or gateway, you
can capture the IP address and the name of the user accessing the license. The captured data
can be added directly into the Software Usages list.

Procedure
1. Navigate to All > Software Asset > Discovery > Software Usages.
2. Click the Display Name in the row containing the software and user to check.
3. View the Software Usage form (see table).
All fields on the form are read-only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

68


<!-- page 69 -->
SAM software usage

Software usage form
Field

Description

Display
name

Name of the software usage record.

Publisher

Publisher of the software.

Version

Version of the software.

Discovery
model

Software discovery model associated with the installed software.

Primary
key

Unique identifier for table row.

Usage
User

User who accessed the software.

Accessed
from

Hardware configuration item from which the software was accessed.

Last
scanned

Date and time when the software was last discovered on this hardware.

Duration

Duration of all usage.

Times
used

Number of times the software was accessed from this hardware.

Last used

Date and time when the software was last used on this hardware.

Software counter
Counted
by

The software counter summary record in the Software Counter Summary
[sam_sw_counter_summary] table on which this usage is counted.

Entitlement The entitlement rights of the software.
Valuation

Number of license rights used by this software usage.

Cached

If selected, indicates that a software count has already been cached.

Legacy IBM PVU Process Pack
Processor Value Unit (PVU) is a unit of measurement defined by IBM to determine software
licensing costs based on processor or server model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

69


<!-- page 70 -->
A processor is defined as each core on a socket. Each software package has a price defined
as number of points or PVUs per core. For a complete explanation of IBM PVU licensing for
distributed software, see Processor Value Unit [PVU] licensing for Distributed Software
on the
IBM website.
In the ServiceNow AI Platform, the concept of PVU is used by the legacy IBM PVU
Process Pack, which is an add-on to the legacy Software Asset Management
(com.snc.software_asset_management) plugin. This legacy process pack provides the ability to
manage software licensed under the IBM Processor Value Units licensing model.

Important: The legacy IBM PVU Process Pack is not required for tracking and managing
IBM PVU licenses through the Software Asset Management publisher pack for IBM, which
is available as part of the Software Asset Management Professional (com.snc.samp)
plugin. The IBM publisher pack includes all capabilities that are required for tracking and
managing both full capacity and sub-capacity PVU and RVU licenses for your IBM products.
See Software Asset Management publisher pack for IBM
for more information on the IBM
publisher pack.
The legacy Software Asset Management (com.snc.software_asset_management) plugin
Processor Definition Extension is automatically activated when the legacy IBM PVU Process Pack
is activated. It provides data model support for processor definitions and is required by all legacy
Software Asset Management (com.snc.software_asset_management) plugin process packs.

Note: Oracle and Microsoft also use the concept of PVU, but have slightly different
definitions.
Activate the legacy IBM PVU Process Pack
The legacy Software Asset Management - IBM PVU Process Pack (com.snc.sam.ibmpvu.pp)
plugin can no longer be activated upon request. If the legacy plugin has already been activated
on your ServiceNow instance, you can continue to use the legacy IBM PVU Process Pack.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. On the All Applications page, click Request Plugin to open the Request form on HI.
3. On Now Support, click the Take me to the Hi Service Portal Active a Plugin Service Catalog
link to access the Now Support Service Portal Service Catalog.
4. On the form, fill in the fields.
Activate Plugin Request form
Field

Description

Target Instance

Instance on which to activate the plugin.

Plugin Name

Name of the plugin to activate.

Specify the date and time you would like this
plugin to be enabled

The date and time must be at least two
business days from the current time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

70


<!-- page 71 -->
Field

Description

Note: Plugins are activated in two
batches, once in the morning and
once in the evening, on every business
day in the US Pacific time zone. If the
plugin must be activated at a specific
time, enter the request in the Reason/
Comments field.
Reason/Comments

Information that would be helpful for the
ServiceNow personnel who are activating the
plugin. For example, if you need the plugin
activated at a specific time instead of during
one of the default activation windows, specify
that in the comments.

5. Click Submit.
Validate legacy IBM PVU Process Pack requirements for associating software installations
with PVU mappings
Meet the recommended requirements to ensure that you receive the highest quality results with
PVU mapping.

Before you begin

Role required: admin

Procedure
1. Use a discovery tool, such as ServiceNow Discovery, to identify hardware and populate the
configuration management database (CMDB) with the configuration items you want to manage
with IBM PVU licensing.
2. Use a discovery tool, such as ServiceNow Discovery, to identify software installations.
Check that the added CPU information is correct.
3. Activate the Software Asset Management plugin - IBM PVU Process Pack plugin.
This also activates the Software Asset Management plugin if it is not already active.
4. Refresh processor definitions.
5. Ensure that the software models you want to manage with IBM PVU licensing have the correct
license type: Per installation - IBM PVU.
6. Create software counters to calculate IBM PVU licenses.
7. Count licenses to determine compliance with IBM PVU guidelines.
IBM PVU mapping preparation for the legacy IBM PVU Process Pack
Most IBM PVU mapping and license checking for the legacy IBM PVU Process Pack is managed
automatically.
For the automatic calculations to be as accurate as possible, it is important that configuration
item and software model information be accurate.
The important fields describing the processor on the configuration item form are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

71


<!-- page 72 -->
• CPU type
• CPU count
• CPU core count
PVU configuration item

This CPU data is often added accurately when the CMDB is populated with information. If the
fields contain incorrect information, manually edit the fields on the configuration item form.
The mapping between the configuration item form fields and processor definition fields is as
follows.
Preparing for IBM PVU mapping
Configuration Processor
Item Form
Definition Definition
Field
Form Field

CPU type

Processor
name,
Server
model
number,
and
Processor
model
number

Combination of processor name, server model number, and
processor model number. The CPU type field is created as part of the
general process described in Populating the CMDB. Some discovery
tools fill in the CPU name instead of CPU type. If the CPU type field
is empty, the CPU name field is used for mapping instead. (You can
configure the form to display the CPU name, if needed.) If the CPU
type field and the CPU name field are both empty, no mapping is
done.

CPU count

Number
of
sockets

Number of sockets.

CPU core
count

Cores per Cores per socket
socket

The key field on the Software Model form is License type. For any software licenses you want to
track with IBM PVU, open the corresponding software model form and select the Per installation
- IBM PVU license type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

72


<!-- page 73 -->
PVU software model

Refresh your legacy Software Asset Management plugin processor definitions
After activating the legacy IBM PVU Process Pack, use the Refresh Processor Definitions module
in the legacy Software Asset Management (com.snc.software_asset_management) plugin to
create process definitions for existing computers in the Computer [cmdb_ci_computer] table.

Before you begin
Role required: sam

About this task

After this step, business rules in SAM update the Processor Definition
[CMDB_processor_definition] table automatically when changes are made to computers or
when new computers are added. You should not need to use the Refresh Processor Definitions
module a second time, but it is always available if you make significant changes to the Computer
[cmdb_ci_computer] table.

Procedure
1. Navigate to All > Software Asset > System > Refresh Processor Definitions.
2. Click Proceed.
Legacy Software Asset Management plugin processor definitions
Processor definitions for the legacy Software Asset Management
(com.snc.software_asset_management) plugin are automatically derived from the information in
the configuration item form for an item such as a computer or server.
To view a processor definition, navigate to Software Asset > Reconciliation > Processor
Definitions and click an item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

73


<!-- page 74 -->
Processor definition

The following read-only fields are listed.
Processor definitions
Field

Description

Display
name

Name of the processor as it should appear in the processor list.

Manufacturer Company that built the processor.
Server model Number assigned to the model by the server manufacturer.
number
Number of
sockets

Number of dies on the computer motherboard. The number of CPUs per die is
specified by Cores per socket.

IBM PVU
Mapping

The IBM PVU mapping to which this processor is associated. The information
in this field is automatically calculated from the server model number, number
of sockets, processor name, and processor model number, based on the rules
defined in the IBM PVU Table.

Processor
name

Name assigned to the processor by the manufacturer.

Processor
model
number

Number assigned to the model by the processor manufacturer.

Cores per
socket

Number of cores (functional unit needed to execute programs) on each physical
connection (socket) on the motherboard.

Match level

Accuracy level of the association between processor and PVU mapping.
Automatically set when association is inferred.

View IBM PVU mappings for the legacy IBM PVU Process Pack
Every rule listed in the IBM PVU Table is represented by one PVU mapping record in the legacy
Software Asset Management (com.snc.software_asset_management) plugin.

Before you begin
Role required: sam

About this task

For example, in the IBM PVU Table there is one line with processor name POWER5 QCM and in
IBM PVU mappings there is a line representing POWER5 QCM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

74


<!-- page 75 -->
PVU mappings list

Procedure
1. Navigate to All > Software Asset > Reconciliation > IBM PVU Mappings.
2. Click a Short Description for detailed information about the mapping.

The fields are for information only and cannot be edited.
IBM PVU mappings
Field

Description

Processor
names

Names of running processors. Processor names are separated by commas.

Modelbased
condition

Regular expression used to determine whether the server model number of a
computer's processor definition matches that of the PVU entry.

Socketbased
condition

Regular expression used to determine whether the number of sockets of a
computer's processor definition matches that of the PVU entry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

75


<!-- page 76 -->
Field

Description

Short
description

A short description of this PVU mapping.

PVUs per
core

Number of processor value units consumed (according to the IBM PVU chart)
by each core.

Max cores

Maximum number of cores on the processor family, as shown in the IBM PVU
Table (rightmost column under cores per socket).

Rule
publication
date

Date published by IBM on the PVU Rules table.

Use software counters with the legacy IBM PVU Process Pack
To calculate IBM PVU licenses through the legacy IBM PVU Process Pack, you can create a
software counter with the IBM PVU license type. For a given PVU software package, you only
need to create the counter once and then it can be reused.

Before you begin
Role required: sam

About this task

Processor definitions are searched as licenses are counted. If a processor definition is found,
but no PVU mapping link exists for the processor, the system automatically does the following to
obtain a PVU mapping link.
• Pre-filtering based on processor name.
• Advanced filtering based on PVU mapping records' condition field.
• If no exact match is found, the most expensive mapping is used to increase the chance of
being compliant.

Procedure
1. Navigate to All > Software Asset > Reconciliation > Software Counters.
2. Click New.
3. Enter a Name.
4. Select a Software Model.
5. Select a level of adherence to the license in the Enforce to field.
6. For License type, select Per Installation - IBM PVU.

7. Add information to other fields as necessary.
8. Right-click the header bar and select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

76


<!-- page 77 -->
9. Click Count licenses.

10. In the Software Counter Results list, drill down to obtain summary and detailed information.

Installed with the legacy IBM PVU Process Pack
The following tables, fields, script includes, and business rules are installed with the legacy IBM
PVU process pack.

Tables
Table

Description

Processor Definition
Each row in this table describes a computer in terms of the
[cmdb_processor_definition] attributes IBM uses for its PVU licensing model. A row can be
associated with one or more (if they are all identical in terms of
the attributes used for PVU licensing) discovered computers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

77


<!-- page 78 -->
Fields
Field

Table

Description

ibm_pvu_mapping Hardware
[cmdb_ci_hardware]

PVU rule that applies to the software installation.
Used for IBM PVU-based license counting.

ibm_pvu_mapping Software Installation
PVU rule that applies to the software installation.
[cmdb_sam_sw_install] Used for IBM PVU-based license counting.

Script includes
Name

Description

ProcessorDefinitionsUtils Contains utilities for managing the Processor Definition
[cmdb_processor_definition] table.
ProcessorValueUnitsUtils Contains logic that determines the IBM PVU pricing associated with
a given processor.

Business rules
Name

Description

One and only one default
mapping

Ensures only one default mapping by resetting the last resort
flag for modified records and setting it to false for new records.

[sam_ibm_pvu_mapping]
Software contracts for the legacy Software Asset Management plugin
A software contract is a binding agreement between the owner of a software product and a
buyer. The contract enables the buyer to use the software legally.
You can use the Contract Management application to create contracts for software
that is tracked and managed through the legacy Software Asset Management
(com.snc.software_asset_management) plugin. When you create a new software contract, you
can specify that the contract is an enterprise or subscription license.
Create software contracts for the legacy Software Asset Management plugin
You can create binding agreements that enable buyers to legally use software
that is tracked and managed through the legacy Software Asset Management
(com.snc.software_asset_management) plugin.

Before you begin

Role required: contract_manager

Procedure
1. Navigate to All > Contract > Software License.
2. Click New.
3. Complete the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

78


<!-- page 79 -->
4. Add the software license to the contract.
Be sure to use the Software License option. The License Bundle and Software License
Contracts options are deprecated.
Related topics
Contract Management
Legacy Oracle process pack
The legacy Oracle process pack is an add-on to the legacy Software Asset Management
(com.snc.software_asset_management) plugin that provides the ability to manage software
licensed under the Oracle licensing model.

Important: The legacy Oracle Process Pack is not required for tracking and managing
Oracle licenses through the Software Asset Management publisher pack for Oracle, which
is available as part of the Software Asset Management Professional (com.snc.samp) plugin.
The Oracle publisher pack includes all capabilities that are required for tracking and
managing Oracle licenses. See Software Asset Management publisher pack for Oracle
for
more information on the Oracle publisher pack.
Administrators can use this feature to perform the following functions.
• Identify the software packs installed on Oracle database servers.
• See the software packs that are currently in use.
• List which options are installed and in use.
Using software counters with the legacy Oracle Process Pack
There are two distinct ways to count Oracle software through the legacy Oracle Process Pack. Be
sure that your Oracle models are set up accurately.

Note: Oracle license calculation types are available in the Software Counter form after you
activate the legacy Oracle process pack.
Oracle software that uses the Oracle Processor license calculation type counts by the number
of processors on a server. This license calculation type must exist in the Software Installation
[cmdb_sam_sw_install] table. A software installation record must be inserted with a discovery
model that matches the correct Oracle software. For an install to be counted by an Oracle
processor counter, the Installed on field on the Software Installation form should reference a
configuration item with a Metric type of Oracle Processor.
Oracle software that uses the Oracle Named User or Oracle Named User Plus license
calculation types count by number of unique users or number of unique users plus devices.
This license calculation type must exist in the Software Usage [cmdb_sam_sw_usage] table. A
software installation record must be inserted with a discovery model that matches the correct
Oracle software. For a usage to be counted by an Oracle New User or Oracle New User Plus
counter, the Target host field on the Software Usage [cmdb_sam_sw_usage] table should
reference a configuration item with a Metric type of Oracle NU or Oracle NUP.
Software models for the legacy Oracle Process Pack
In order to count Oracle software licenses, you must create software models for your Oracle
software.
For more information, see Manage software models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

79


<!-- page 80 -->
Request the legacy Oracle Process Pack
The legacy Software Asset Management - Oracle Process Pack (com.snc.sam.oracle.pp) plugin
can no longer be activated upon request. If the legacy plugin has already been activated on your
ServiceNow instance, you can continue to use the legacy Oracle Process Pack.

Before you begin

Role required: admin

About this task

The legacy Software Asset Management (com.snc.software_asset_management) plugin
activates all related plugins.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of plugins (Zurich)
Installed with the legacy Oracle Process Pack
The following tables, fields, and license calculation types are installed with the legacy Oracle
process pack.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

80


<!-- page 81 -->
The information from this table appears in the Software Counter Compliance Violations section
of the Software Model form.
Software counter compliance violations table
Table

Description

Software Counter
Compliance Violations
[sam_sw_counter_violation]

Used to store counter violations that are due to
violations other than installs exceeding rights, such as:
• Maximum CPU/user count exceeded (based on
model limits)
• Maximum or minimum rights rules not followed
(based on model limits)
• Option installed on a server with a non-optionsupporting license (Oracle)

Fields
Field

Table

Description

Software
counter
[counter]

Software Counter
Compliance Violations
[sam_sw_counter_violation]

References the software counter that this
violation belongs to. (Reference field to
Software Counter table [sam_sw_counter].)

Cause
[name]

Software Counter
Compliance Violations
[sam_sw_counter_violation]

An explanation of the violation.

Is an option
(is_option)

Software Model
Indicates if the software model is an option or
[cmdb_software_product_model] pack for some other software, such as Active
Data Guard or Data Mining options for Oracle
Enterprise Edition. This field only appears if
the manufacturer is Oracle.

License
Software License [alm_license]
metric
(metric_type)

A glide list reference to the License
Calculation [cmdb_sw_license_calculation]
table. This list contains all of the license
calculations that apply to this license and
identifies the preferred metric types to use
when running software counters.

License
Hardware [cmdb_ci_hardware]
metric
(metric_type)

A glide list reference to the License
Calculation [cmdb_sw_license_calculation]
table. This list contains all of the license
calculations that apply to this license. and
identifies the preferred metric types to use
when running software counters. This field
does not appear on the form by default.

The Oracle Process Pack adds the following license calculation types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

81


<!-- page 82 -->
Oracle license calculation types
Name

Description

Oracle Named User

Oracle licensing scheme that counts by the number of unique users.

Oracle Named User
Plus

Oracle licensing scheme that counts by the number of unique users
and devices.

Oracle Processor

Oracle licensing scheme that counts by the number of processors on a
server.

Create an Oracle software license for the legacy Oracle Process Pack
To use the legacy Oracle process pack, you must create an Oracle software license.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Software Licenses.
2. Click New.
3. Select Software License in the Model category field.
4. Select an Oracle model in the Model field.
The Oracle models in this list are created by the user. For more information, see Manage
software models.
5. Ensure that the License metric field specifies the correct license calculation type.
6. Fill in the remaining fields, as appropriate.
7. Click Submit.
Validate legacy Oracle Process Pack requirements for associating software installations with
Oracle mappings
Meet the recommended requirements to ensure that you receive the highest quality results with
Oracle mapping.

Before you begin

Role required: admin

Procedure
1. Use a discovery tool (such as ServiceNow Discovery) to identify software installations.
Check that the added CPU information is correct.
2. Activate the legacy Software Asset Management - Oracle Process Pack
(com.snc.sam.oracle.pp) plugin.
This also activates the legacy Software Asset Management
(com.snc.software_asset_management) plugin if it is not already active.
3. Refresh processor definitions by navigating to Software Asset > System and clicking Refresh
Processor Definitions.
4. Ensure that the software models that you want to manage with Oracle licensing are set up
accurately.
See Creating a software model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

82


<!-- page 83 -->
5. Create a software license for your Oracle software.
Ensure that the license is given the correct license metric.
The License metric (metric_type) field on the Software License table is a reference field to the
License Calculation table.
6. Create a software counter to calculate Oracle licenses with the matching license type.
7. Count licenses to determine compliance with Oracle guidelines.
Run the Oracle software counter for the legacy Oracle Process Pack
Running the Oracle software counter is a requirement to associate a software installation with an
Oracle mapping.

Before you begin
Role required: sam

Procedure
1. Navigate to All > Software Asset > Reconciliation > Software Counters.
2. Click the name of the counter.
3. Click Count Licenses.
You can view different types of software counter results.

Software Asset Management Foundation plugin
The Software Asset Management Foundation plugin activates the ITSM Software Asset
Management feature provided with the Asset Management application.
For documentation on the full fledged Software Asset Management product (also known as
Software Asset Management professional), see Software Asset Management .
Software Asset Management Foundation plugin systematically tracks, evaluates, and manages
software licenses and compliance. Functionality consists of these main features.

Feature area

Description

Dashboard

The Software Asset Management Foundation dashboard
shows software installation results for your environment in
the form of statistics and charts.

Licensing

Software models created for all installed software products
are used to tie software installations (software being used)
with entitlements (software owned). Entitlements define
license details and are assigned to software models.

Discovery and normalization

A discovery process, such as ServiceNow Discovery or
Microsoft SCCM, can be used to discover the software
installed in your environment.
An Out Of the Box (OOB) Normalization library contains
publisher and product content. Custom products can be
created if a software product does not exist in the Software
Library. Discovered software can be manually normalized for
reconciliation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

83


<!-- page 84 -->
Feature area

Description

Reconciliation

The reconciliation process calculates the compliance
status of software products with respect to discovery and
entitlements. Remediation options are created to resolve
compliance issues.

Exploring Software Asset Management Foundation plugin
Starting with the Zurich release, we have enhanced the Software Asset Management Foundation
plugin application's user interface to make it more user-friendly and intuitive, allowing you to
better manage your software installations.
You can use the new Software Asset Management Foundation plugin user interface, referred
to as Software Asset Workspace or continue using the classic Software Asset Management
Foundation plugin framework.
The Software Asset Management Foundation plugin application's core functionality remains the
same in both the user interfaces.

Using the Software Asset Workspace
Once you request and activate the Software Asset Management Foundation plugin
(com.snc.sams), you need to activate the Software Asset Workspace (sn_sam_workspace) store
application too.

Note: Once you activate the workspace plugin, you cannot revert to the classic Software
Asset Management Foundation plugin application.
For detailed information on configuring and using the Software Asset Workspace, refer to
Configuring Software Asset Management Foundation plugin workspace and Using Software
Asset Management Foundation plugin workspace.

Using the classic Software Asset Management Foundation plugin application
To continue using the classic Software Asset Management Foundation plugin application, just
activate the Software Asset Management Foundation plugin (com.snc.sams) plugin.
If you later decide to use the Software Asset Workspace, you need to activate the Software Asset
Workspace (sn_sam_workspace) store application.
For detailed information on configuring and using the classic Software Asset Management
Foundation plugin application, refer to Configuring the classic Software Asset Management
Foundation plugin and Using Software Asset Management classic .
Software Asset Management Foundation plugin roles
Software Asset Management Foundation plugin adds the following roles.
Roles
Role

Description

sam_admin Inherits the sam_user role and has permission to run reconciliation and manage
reclamation rules.
sam_user

Able to access all features except administrative.

Users with the sam_user or sam_admin role can view and refresh the overview page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

84


<!-- page 85 -->
Software Asset Management Foundation plugin software discovery and normalization
ServiceNow Discovery is used to automatically populate the Software Installations table so the
software can be manually normalized and reconciled.
The discovery process consists of automatically discovering software used at your organization,
which can be done either using ServiceNow Discovery, or using SCCM integration.
For more information, see Collect software data with either SCCM or Discovery
with Software Asset Management .

Note: To use Discovery, the Request Discovery

and Discovery

must be activated.

Discovery uses patterns in the discovery process that can be created or customized. The base
system contains a wide range of patterns that cover most industry standard network devices
and applications. Software Asset Management Foundation plugin automatically leverages SQL
Server, Exchange Server, and Oracle Database Server specifically, but other patterns can be
customized for use by Software Asset Management Foundation plugin, if needed.
Discovered software is stored in the Software Installations [cmdb_sam_sw_install] table.

Note: If you are already running Discovery but have not used a version of ITSM Software
Asset Management previously, run the Migrate Software Asset Management Foundation
plugin software installations script to copy records from the [cmdb_ci_spkg] table to the
[cmdb_sam_sw_install] table, so that any previously discovered software installs are utilized
by Software Asset Management Foundation plugin.
When software install records are written to the Software Installations table, a business rule
verifies whether the unique combination of the discovered publisher, discovered product, and
discovered version already exist in the Discovery Model table.
• If so, the reference to the discovery model is set in the Software Installations table.
• If not, a new record is created in the Discovery Model table, and that discovery model
reference is set in the Software Installations table.
After discovery, you can manually normalize the software discovery model for reconciliation.
Normalization status can have two different results:
Normalization status
Status

Description

Manually Normalized

A discovery model is manually normalized
when key fields in the discovery model are
filled in manually.

New

The software discovery model has not yet
been manually normalized.

Software Asset Management Foundation plugin discovery models and software installations
Software discovery models are automatically created during discovery so you can manually
normalize the software installed in your environment.
Software discovery models are stored in the Software Discovery Model
[cmdb_sam_sw_discovery_model] table.
There is a difference between software models and software discovery models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

85


<!-- page 86 -->
• A software model is a specific version or configuration of software that is purchased and/or
available to users.
• A software discovery model is a model created when a version of software is discovered in a
network environment.
Multiple software discovery models can be associated to one software model. For example, a
software model can be defined as follows:
• Publisher = X
• Product = Y
• Version = Starts with 10
If there are two separate installs of this product (version 10.1 and version 10.2), two discovery
models are created. One of the discovery models has the discovered version set to 10.1, and
the other discovery model has the discovered version set to 10.2. The reconciliation process
associates both of these discovery models to the same software model since they both meet the
version criterion of Starts with 10.

Discovery Models
Software discovery models cannot be created manually. The following field combination,
called the primary key, is used to match new software installations to a new or existing software
discovery model.
Primary key: Publisher, Display Name, and Version

Note: When analyzing version numbers, an exact match is always searched for first, but
rounds down to a major version number when an exact match is not found.
For example, if no match is found for version number 8.0.4, but version 8.0 is found, then
version 8.0 is used in the Software model field.
Discovery Models form
Field

Description

Display name Name of the discovery model as it appears in record lists. This value is
generated automatically using the discovered publisher, discovered product,
and discovered version.
Normalization Status of the normalization process:
status
• Manually Normalized
• New
Publisher

Publisher of the software.

Product

Product name of the software.

Version

Version of the software product.

Discovered
publisher

Discovered publisher of the software.

Discovered
product

Discovered name of the software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

86


<!-- page 87 -->
Discovery Models form (continued)
Field

Description

Discovered
version

Discovered version of the software.

Additional Information
Product type

• Child: A subcomponent of main software (not licensable).
• Driver: A software product that controls a device.
• Licensable: A software product that is licensable.
• Not Licensable: A software product that is not licensable.
• Patch: A software product designed to update, fix, or improve an existing
computer program.
• Unknown: Not discovered.
For unknown product types, the product type can be changed to another
value.
When the product type is changed, the normalization status of the discovery
model is updated to Manually Normalized.
The reconciliation process only considers software discovery models that are
licensable.

Platform

Platforms include:
• Windows
• Mac
• Unix

Language

• Dutch
• English
• French
• German
• Italian
• Spanish
Additional languages are generated if discovered.

Edition

Edition of the software.

Full version

Full version of the software.

Note: If a normalized discovery model has a missing version, edition, language, or
platform value, those field values can be set by the user. Once a new value is set, the
normalization status changes form New to Manually Normalized.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

87


<!-- page 88 -->
Software Installations
The Software Installations list contains the software installed in your organization and is
automatically populated by discovery.
Installed software is placed in the Software Installation [cmdb_sam_sw_install] table by
Discovery, and a primary key is built (using Publisher, Display Name, and Version fields).
Discovery automatically matches the discovered software installation with a new or existing
software discovery model using the primary key.
Software Installations form
Field

Description

Display name.

Name of the software installation as it appears
in the record lists. Can be a combination of the
discovered product name and edition.

Discovery model

Software discovery model that represents the
installed software.

Publisher

Publisher of the software.

Version

Version of the software.

Edition Override

Override of the software edition setting.
If the edition for the software was not
discovered, you can edit this field to set the
edition, if known, so reconciliation can be
performed successfully.
For more information, see Manually override
SAM Foundation edition value.

Installation
Prod id

Unique ID for the product assigned by the
manufacturer. Found through discovery.

Install location

Path under which the software is installed.

Install date

Date that the software was installed.

Revision

Revision of the software.

Instance key

Unique ID for the instantiation of the software.
Automatically generated when the software is
installed.

Installed on

Hardware on which the software is installed.

Uninstall string

Identifier used to uninstall the software.

ISO serial number

ISO number of the software.

Reconciliation
Entitlement

The entitlement found to use with this
installation.

Inferred suite

The inferred suite model this installation
belongs to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

88


<!-- page 89 -->
Software Installations form (continued)
Field

Description

Omit from suites

Check box for not counting the software
install as a component of a suite during
reconciliation.

Software Asset Management Foundation plugin software reconciliation for compliance
Automated license reconciliation keeps license positions accurate and up to date without
manual calculations. Reconciliation runs weekly or on demand.
Reconciliation is a scheduled job that is run at a specified frequency (default is weekly). It
can also be run on demand for specific or all publishers. For details on running software
reconciliation in workspace, see Run Software Asset Management Foundation plugin software
reconciliation in workspace. For details on running software reconciliation in the classic Software
Asset Management Foundation plugin framework, see Run Software Asset Management
Foundation plugin software reconciliation in classic.
When reconciliation is run, a list of reconciliation results is created that shows the compliance
status of software products with respect to discovery and entitlements. Users with the sam_user
role can view reconciliation results.
Remediation options include rights not in use, rights not allocated, rights needed, reclaimable
rights, and unlicensed rights.
Setting up Software Asset Management Foundation plugin
Set up Software Asset Management Foundation plugin before configuration.

Before you begin

Role required: sam_admin

About this task

Once you have requested Software Asset Management Foundation plugin and it has been
activated from ServiceNow personnel, complete these steps to set up Software Asset
Management Foundation plugin before you begin to use it.

Procedure
1. Determine whether you are currently running the ITSM Software Asset Management feature of
Asset Management using the Legacy Software Asset Management plugin.
Check the list of plugins to see if the Software Asset Management
(com.snc.software_asset_management) plugin is active.
◦ If so, complete the Software Asset Management Foundation plugin migration procedure.
This step automatically converts and adds new tables, forms and lists, fields and values, and
disables deprecated functionality. It also contains manual procedures for you to complete for
successful migration.
◦ If not, proceed to the next step.
2. Determine whether Discovery is activated (see Request Discovery
Check the list of plugins to see if the Discovery plugin is active.

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

89


<!-- page 90 -->
◦ If so, run the Migrate Software Asset Management Foundation plugin software installations
script.
This step copies records from the [cmdb_ci_spkg] table to the [cmdb_sam_sw_install]
table, so that any previously discovered software installs are utilized by the Software Asset
Management Foundation plugin.
◦ If not, activate and configure Discovery.
For more information, see Discovery

.

3. Proceed to Get started with Software Asset Management Foundation plugin to begin using the
Software Asset Management Foundation plugin in your environment.
Request Software Asset Management Foundation plugin
The Software Asset Management Foundation (com.snc.sams) plugin must be activated by
ServiceNow personnel. This plugin includes demo data.

Before you begin

Role required: admin

About this task

There are two ways to request a plugin:
• Access the Now Support Service Catalog directly by selecting Automation Store > Service
Catalog > Activate Plugin on Now Support.
• Access the Now Support Service Catalog through the All Applications page on your instance
by following these steps.
For additional details about requesting a plugin, see Requesting a Plugin from the Service
Catalog [KB0751715] article in the Now Support Knowledge Base.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

90


<!-- page 91 -->
Field

Description

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Manage a SAM Foundation software suite
Create a suite and add the corresponding components to the suite so the rights that your
organization owns are counted accurately during reconciliation.
A software suite is a group of related software offered as one unit. An example is the Microsoft
Office Professional suite of office productivity software tools that includes PowerPoint, Word,
Excel, Outlook, and Access.
For any software model, you have the option to specify whether the model is a suite (parent)
or a component (child). A software model can be a component in multiple suites. For example,
Microsoft Word is a component in Microsoft Office Standard and Microsoft Office Professional.
Although you can set a single software model as both a suite and a component, software is not
typically sold as nested suites.
Use the Inference percent and Mandatory fields when the suite parent is not defined in the
install table.
• Inference percent: Specifies what percentage of the components in the suite must be installed
for the software to be identified as a suite.
• Mandatory: Enforces whether a specific component in a suite must be installed to infer that
the suite is installed. Choices are: Optional, Always Mandatory, Mandatory Group.
For example, say you specify the Inference percent as 80% and set the Mandatory field to
Always Mandatory on Microsoft Access. These settings specify that Microsoft Access must be
installed, along with three out of four other products (Microsoft Word, Microsoft Excel, Microsoft
PowerPoint, and Microsoft Outlook) to infer that Microsoft Office Professional is installed on a
device.
When a suite parent is detected during reconciliation, the suite components do not count for the
individual license.

Note: Users with the model_manager role can navigate to Product Catalog > Product
Model > Software Models, but cannot administer all aspects of software models.
Customize a Discovery pattern for Software Asset Management Foundation plugin
Software Asset Management Foundation plugin automatically leverages SQL Server, Exchange,
and Oracle Database Discovery patterns, but you can perform steps for Software Asset
Management Foundation plugin to utilize additional Discovery patterns, if needed.

Before you begin

Role required: sam_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

91


<!-- page 92 -->
About this task

Discovery uses a series of scripts and operations (probes, sensors, and patterns) with the
base system to collect data, process it, and update the CMDB. Although Software Asset
Management Foundation plugin is already set up to utilize three common patterns (MSSQL
server discovery , Exchange MailBox discovery , and Oracle database discovery ), you can
perform a configuration procedure to include additional patterns.
This customization automatically copies the records from the discovered pattern to the Software
Installation [cmdb_sam_sw_install] table so Software Asset Management Foundation plugin can
utilize this data for reconciliation.
For more information on pattern customization, see Discovery patterns used by ITOM Visibility

.

Procedure
1. Configure a post processing step in the discovery pattern.
a. Navigate to Pattern Designer > Discovery Patterns.
b. Open the pattern record from which you would like to collect data for Software Asset
Management (for example, the discovery pattern for MySQL).
c. Select and copy the Class Name field value.
You will need to paste this class name value into a record field in the Software Installation
Name Mapping [cmdb_sam_sw_name_mapping] table as part of this configuration
procedure.
d. Click the Pre/Post Processing related link.
e. In the Sync Installed Software section, select the desired software from the list to add it (for
example, MySQL).
Data discovered relating to the software you select is automatically copied into the Software
Installation [cmdb_sam_sw_install] table as part of the discovery process.
f. Click Update.
2. Add the pattern data to a new record in the Software Installation Name Mapping
[cmdb_sam_sw_name_mapping] table.
a. Create a new record (see table for field descriptions).

Field

Description

Class name

Class name of the discovery pattern.
Paste the value that you copied from the
class field in discovery pattern.

Publisher

Publisher of the product (for example,
Oracle).

Product

Product name (for example, MySQL).

b. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

92


<!-- page 93 -->
When discovery is run, the records for the software product relating to the customized
discovery pattern are utilized by Software Asset Management.
No further configuration is needed unless you know the software product consists of an edition
that is not being discovered automatically.

What to do next

If the software product has an edition that is not being discovered, Manually override SAM
Foundation edition value so the software can be successfully reconciled.
Get started with Software Asset Management Foundation plugin
Get started with Software Asset Management Foundation plugin to optimize management of
software installations in your environment.

Before you begin

Role required: sam_admin

About this task

After you have Setting up Software Asset Management Foundation plugin, get started by
completing these steps for basic configuration.

Procedure
1. Create a software model for common software, such as Microsoft Office 2013.
2. Create a basic per-user or per-device entitlement for the software.
3. After discovery of software installed, run reconciliation to reconcile software rights owned
against software installed, with respect to discovery and software entitlements.
4. View reconciliation results that show the compliance status of your software products.

What to do next

Depending on the compliance status of your software installations, you can choose to optimize
your environment further.
Configuring Software Asset Management Foundation plugin workspace
Once you have finished setting up the Software Asset Management Foundation plugin and
the Software Asset Workspace plugin applications, you need to configure the Software Asset
Workspace.
If you have multiple entitlements, you can import them at one go using a Microsoft Excel
spreadsheet template.
If software models haven't automatically been created, you need to manually create software
models. For information on creating software models, see Create a Software Asset Management
Foundation software model in workspace
Create a Software Asset Management Foundation entitlement in workspace
Create entitlements in the Software Asset Workspace to enter your license details and allocate
purchased software rights to users or devices.

Before you begin

Role required: sam_admin or sam_user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

93


<!-- page 94 -->
About this task

These instructions are for using the standard form for creating software entitlements one at a
time. If you already have software entitlement details entered in a spreadsheet, you can also
import them using the bulk import functionality.
When you start creating the entitlement, it is in the build status. After you publish the entitlement,
the status changes to in use and makes the entitlement eligible for including in the reconciliation
process.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select New to open the Create new entitlement dialog box.
3. Select Fill out the details in a standard form and then select Next.
4. In the Create New Software Entitlement page, fill in the fields.
For a detailed description of the fields, see Create a SAM Foundation entitlement.
Create a Software Asset Management Foundation software model in workspace
Create a software model in the Software Asset Workspace to add product details that are used to
connect software rights you purchased with software installations discovered on your system.

Before you begin

Role required: sam_user, sam_admin, or model_manager

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Under Licensing, select software models.
3. Select New.
4. On the form, fill in the fields.
Software Model form
Field

Description

Display name

[Read-only] Name of the
model. The system property

glide.cmdb_model.display_name.shorten
controls how software model display names
are generated. System administrators can
configure this property.
Default format is publisher + product +
version + edition.
Publisher

Publisher of the software. You can use the
lookup list provided.

Note: Publisher is a reference to
the company [core_company]. Only
companies you’re using internally are
shown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

94


<!-- page 95 -->
Field

Description

If the publisher and product don’t exist, you
can Add a Software Asset Management
Foundation plugin custom license metric.
Product

Software product name. The same lookup list
provided on the Software Discovery Models
form.

Note: If the relationship between the
software publisher [samp_sw_publisher]
and company [core_company] isn’t
correct, products for that publisher may
not be shown.
Product classification

The official UNSPSC classification of the
product.

Product type

◦ Child: A subcomponent of main software
(not licensable).
◦ Driver: A software product that controls a
device.
◦ Licensable: A software product that is
licensable.
◦ Not Licensable: A software product that is
not licensable.
◦ Patch: A software product designed
to update, fix, or improve an existing
computer program.
◦ Unknown: Not discovered.

General
Short description

A brief description of the model.

Cost

The cost of a single unit of the software.

Next version

Reference to another software model of the
same manufacturer that represents the next
version of the product.

Owner

The person responsible for the model.

Status

The status of the model. Options are In
Production, Retired, and Sold.

Certified

Check box for indicating the software model
has been approved for use.

Discovery Mapping
Version condition

Condition qualifier for the Version field.
◦ starts with
◦ is
◦ is anything

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

95


<!-- page 96 -->
Field

Description

Default is is anything.
Version

Version of the software product.
Required if version condition value is starts
with or is.

Edition condition

Condition qualifier for the Edition field.
◦ starts with
◦ is
◦ is anything
Default is is anything.

Edition

Edition of the software product to use when
searching for the normalized discovery
model.
Required if edition condition value is starts
with or is.

Platform

Platform of the software product to use when
searching for the normalized discovery
model.
Default is --Anything-- for Windows, Mac,
UNIX.

Language

Language of the software product to use
when searching for the normalized discovery
model, which is populated once it has been
normalized or added manually.
Default is --Anything--.

Software installation condition

Only software installations that meet this
software discovery map condition are
counted during reconciliation.
If needed, specify a subset of software
installations that should be counted during
reconciliation.

Product Catalog
Catalog Item

The information about the model as it
appears in the product catalog and service
catalog.
Information only appears if the model has
been published to the product catalog.

Description

Description of the software model as it
appears in the product catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

96


<!-- page 97 -->
Field

Description

Picture

An image of the software logo can be added.
This logo appears in the Service Catalog if
the software model is published.

The Suite Components and Suite Parents related lists consist of parent and child configuration.

Note: If you have added a discovery map to your product details, predefined suites are
used and suite components are created automatically for known suite parent.
5. To publish the software model to the product catalog, under Related Links, select Publish to
Software Catalog and select a category for the software model.
The values set in the Product Catalog related list are published.
6. To show the list of discovery models that match the software publisher and product fields of
the software model, under Related Links, select Show Matching Discovery Models.
The Discovery Models list is opened in a new browser tab for your reference.
7. To perform additional configuration, select the new software model record in the Software
Models list.
a. In the Software Model Lifecycles related list, create a record (see table for field descriptions).
Software Model Lifecycle form
Field

Description

Software model

[Read-only] Name of software model.

Lifecycle type

▪ Internal
▪ Publisher

Lifecycle phase

▪ Pre Release
▪ General Availability
Date the software became generally
available to the market.
▪ Upgrade
Only shown when the Lifecycle type field
is Internal.
▪ End of Life
Date the software was no longer
supported by the publisher.
▪ End of Support
▪ End of Extended Support

Source

[Read-only] Internal (for new records
created manually), or ServiceNow (when
created automatically).

Description

Description of the software model lifecycle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

97


<!-- page 98 -->
Field

Description

Phase start date

Date the lifecycle phase starts.

Phase end date

Date the lifecycle phase ends.

Risk

▪ Very High
▪ High
▪ Moderate
▪ Low
▪ None

b. Create a SAM Foundation entitlement.
c. View Software Asset Management Foundation plugin software model results in classic.
The latest software model results are shown in the Software Model Results related list.
d. In the Metric Attributes related list, select a metric attribute to set the attribute value field
(see table for field descriptions).
The Metric Attributes related list contains metric values set in Create a SAM Foundation
entitlement and is used for reconciliation (metric group, license metric, and software model
combination).
Metric Attributes form
Field

Description

Software model

Software model associated with the metric
attributes.

Metric group

Grouping for the software metric (Common).

License metric

The license metric that the software license
is counted against when reconciliation is run
(per user, per device, for example).

Description

Attribute type description that is based on
license metric value.

Attribute

Attribute type for reconciling entitlements
license metric.
▪ Maximum active OSEs per server
▪ Maximum installs per OSE
▪ Maximum installs per right: For Per User,
Per Device, Per Named User, and Per
Named Device.
▪ Maximum processors per right
▪ Minimum users per processor
▪ Minimum cores per processor
▪ Minimum cores per server

Attribute value

Value of the attribute (integer).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

98


<!-- page 99 -->
Field

Description

Attribute value is unlimited

Check box for setting the attribute as
unlimited.

e. Create a vendor catalog item.
Configuring the classic Software Asset Management Foundation plugin
Configure Software Asset Management Foundation plugin if you prefer to continue using the
classic version.
Create a SAM Foundation entitlement
Software entitlements enable you to define license details that are matched to software models.

Before you begin

Role required: sam_user

About this task

Software entitlements are stored in the Software Entitlement [alm_license] table.

Note: Entitlements are assigned to Create a SAM Foundation software model, which are
different than software discovery models.

Procedure
1. Navigate to All > Software Asset > Licensing > Software Entitlements and create a new
record (see table for field descriptions).
Software Entitlement form
Field

Description

Display name

Automatically generated name based on
asset tag and model.

Asset tag

Specify the serial number and the bar code
for tracking the asset.

Software model

Select the software model to match the
entitlement.

License type

Specify the license type. Whether the rights
grant full access to the software or if they are
being upgraded from a previous version of
the software.
◦ Full: The rights grant full access to the
software.
◦ Upgrade: The rights are being upgraded
from a previous version of the software.
When upgrade is selected, the Upgraded
Entitlements related list is shown, which is
used to specify the entitlements you are
upgrading from.
This field becomes read-only after the form
has been submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

99


<!-- page 100 -->
Field

Description

License duration

Length of time the license is valid. Default
value is Perpetual.
◦ Perpetual: Duration is continuous.
◦ Subscription: Duration is for a specified
length of time.
Duration dates:
▪ Start date: Required.
▪ End date: If empty, subscription does not
expire.
State is automatically set to In Use when
current date is between start and end
dates.
State is automatically set to Retired when
current date is past the end date and active
rights is 0.
State is automatically set to On Order when
the start date is in the future and active
rights is 0.

Metric group

Select the metric group for the software. Each
metric group has a set of license metrics that
are specific to the publisher.
◦ Common
◦ Add a custom license metric

License metric

Select the license metric for the license
group that the software license is counted
against when reconciliation is run.
Point to the reference field icon to view the
license calculation.
◦ Common:
▪ Per Device: Licenses a device for a
number of installations of software.
▪ Per Named Device: Licenses a specific
device for a number of installations of
software.
▪ Per Named User: Licenses a specific user
for a number of installations of software.
▪ Per User: Licenses a user for a number of
installations of software.
◦ Custom:
Custom license metrics configured, if any.

Agreement type

Select the agreement type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

100


<!-- page 101 -->
Field

Description

◦ Generic
◦ Enterprise Level Agreement (ELA)
Purchased rights

Specify the number of rights that you are
purchasing.
The number of purchased rights for the new
entitlement gets set in the Active rights field.

Active rights

[Read-only] Specifies the number of
entitlements to be granted for this license.

Note: If an enterprise contract is

attached to the license, the Active
rights field is not shown.
Allocations available

[Read-only] Specifies the number of user or
device allocations that have not been created
for an entitlement.
Allocations available = (number of active
rights) - (sum of all allocation quantities)

General
Serial number

Unique number assigned for identification of
the asset.

Owned by

User or department with financial ownership
of the asset. Can be different than the
manager.

State

Current state of the asset. Values include On
order, In stock, In transit, In use, Consumed,
In maintenance, Retired, and Missing.
If the state is Retired, the Active rights field is
set to 0.

Substate

More details about the software license
stage. The available substate settings
depend on the State selected.
For example, if you select the Retired state,
the substate options available are Disposed,
Sold, Donated, and Vendor credit.

Company

Company to which this asset belongs.

Location

Where the license is used. For example, a
specific site, country, or region.

Department

Department of the person Assigned to this
software license.

Financial
Cost

Cost of the software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

101


<!-- page 102 -->
Field

Description

Note: Required for total cost and
savings calculations on the Software
Asset Management Foundation
dashboard.
Upgraded Entitlements
From Entitlement

The entitlement from which rights are
upgrading. Multiple upgrade entitlements are
supported.
You can upgrade previously owned rights for
a particular version of software to a newer
version (for example, Office Professional Plus
2013 to Office Professional Plus 2016).

Note: This field is shown only when
the License type is Upgrade.
The rights from entitlements that you
are upgrading from get deactivated
when you upgrade because they are
moved to the new entitlement.
Number of rights

Number of rights to upgrade.

The Contracts related list contains contract details.
The User or Device Allocations related list contains entitlement allocations.

Note: This related list is only shown when the License Metric field is Per User or Per
Device.
The Activities related list contains work notes for the asset.
2. To perform additional configuration, select the new software entitlement record in the Software
Entitlements list.
a. To set upgrade and downgrade entitlements, in the Downgrades/Upgrades related list,
create a new record to specify which software models to which you have upgrade or
downgrade rights (see table for field descriptions).
This allows you to set entitlement to previous or future versions of software (for example, the
purchase of Office Professional Plus 2016 rights entitles you to Office Professional Plus 2013
as well).
Downgrades/Upgrades form
Field

Description

Software entitlement

Software entitlement with which the
upgrade/downgrade is associated.

Software model

Software model of the entitlement.

Order

Order of the upgrade/downgrade.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

102


<!-- page 103 -->
Field

Description

Start date

Start date of the upgrade/downgrade.

End date

End date of the upgrade/downgrade.

b. To set up cost-tracking details, configure Expense Lines.
c. To manage license keys, in the License Keys related list, create a new record to specify the
licenses keys allocated to entitlements (see table for field descriptions).
License Key form
Field

Description

Is allocated

Check box indicating that the license key
has been allocated.

License key

License key value. Must be unique per
entitlement.

Software entitlement

Software entitlement associated with the
license key.

Create a SAM Foundation entitlement allocation
A user or device allocation can be added to a software entitlement to specify a user or device to
which rights have been allocated.

Before you begin

Role required: sam_user

About this task

User allocations are stored in the User Allocations [alm_entitlement_user] table. Device
allocations are stored in the Device Allocations [alm_entitlement_asset] table.

Note: The total of all allocation quantities cannot exceed the total number of rights for the
entitlement.

Procedure
1. Navigate to All > Software Asset > Licensing > Software Entitlements and open the software
entitlement record to add allocations to.
2. Click the applicable allocations related list (User Allocations or Device Allocations) to
configure (see table for field descriptions).

Note: The allocations related list that is shown pertains to the license metric that you
chose. Only one related list for allocations is shown.
Allocations
Field

Description

User Allocations
Assigned The user to which the license is allocated.
to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

103


<!-- page 104 -->
Field

Description

Software
Model

Automatically set based on entitlements software model.

Quantity

Quantity of rights allocated to this user. Default is 1.
Multiple rights come into play in the case where many rights are needed to fully
license a device or user, such as with per core.

License
Key

License key of the software.

Device Allocations
Assigned The device to which the license is allocated.
to
Software
Model

Automatically set based on entitlements software model.

Quantity

Quantity of licenses allocated to this user. Default is 1.
Multiple licenses come into play in the case where licenses are allocated per core
and multiple core rights are needed.

License
Key

License key of the software.

Create a SAM Foundation software model
Software models are used to connect purchased software rights with discovered software
installations. Additionally, software models can be used to manage suites of software as well as
to publish requestable software to the Service Catalog.

Before you begin

Role required: sam_user or model_manager

About this task

Manage software available and tie software installations (software being used) with entitlements
(software owned) using software models. Create software models for all software to be
monitored.

Note: Users with the model_manager role can navigate to Product Catalog > Product
Model > Software Models, but cannot administer all aspects of software models.

Predefined suites are used so suite components are automatically created for known suite
parent software models. Discovery maps indicate whether a suite is defined for the product.
You can also track a software model lifecycle phase for use with the Technology Portfolio
Management - Legacy .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

104


<!-- page 105 -->
Procedure
1. Navigate to Software Asset > Licensing > Software Models and create a new record (see
table for field descriptions).
Software Model form
Field

Description

Display
name

[Read-only] Name of the model. The system property

glide.cmdb_model.display_name.shorten controls how software
model display names are generated. System administrators can configure this
property.
Default format is publisher + product + version + edition.

Publisher

Publisher of the software. You can use the lookup list provided.

Note: Publisher is a reference to the company [core_company]. Only
companies you are using internally are shown.
If the publisher and product do not exist, you can Add a Software Asset
Management Foundation plugin custom license metric.
Product

Software product name. The same lookup list provided on the Software
Discovery Models form.

Note: If the relationship between the software publisher
[samp_sw_publisher] and company [core_company] is not correct,
products for that publisher may not be shown.
Product
The official UNSPSC classification of the product.
classification
Product type

◦ Child: A subcomponent of main software (not licensable).
◦ Driver: A software product that controls a device.
◦ Licensable: A software product that is licensable.
◦ Not Licensable: A software product that is not licensable.
◦ Patch: A software product designed to update, fix, or improve an existing
computer program.
◦ Unknown: Not discovered.

General
Short
description

A brief description of the model.

Cost

The cost of a single unit of the software.

Next version

Reference to another software model of the same manufacturer which
represents the next version of the product.

Owner

The person responsible for the model.

Status

The current status of the model. Options are In Production, Retired, and Sold.

Certified

Check box for indicating the software model has been approved for use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

105


<!-- page 106 -->
Field

Description

Discovery Mapping
Version
condition

Condition qualifier for the Version field.
◦ starts with
◦ is
◦ is anything
Default is is anything.

Version

Version of the software product.
Required if version condition value is starts with or is.

Edition
condition

Condition qualifier for the Edition field.
◦ starts with
◦ is
◦ is anything
Default is is anything.

Edition

Edition of the software product to use when searching for the normalized
discovery model.
Required if edition condition value is starts with or is.

Platform

Platform of the software product to use when searching for the normalized
discovery model.
Default is --Anything-- for Windows, Mac, Unix.

Language

Language of the software product to use when searching for the normalized
discovery model, which is populated once it has been normalized or added
manually.
Default is --Anything--.

Software
installation
condition

Only software installations that meet this software discovery map condition
are counted during reconciliation.
If needed, specify a subset of software installations that should be counted
during reconciliation.

Product Catalog
Catalog Item The information about the model as it appears in the product catalog and
service catalog.
Information only appears if the model has been published to the product
catalog.
Description

Description of the software model as it appears in the product catalog.

Picture

An image of the software logo can be added. This logo appears in the Service
Catalog if the software model is published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

106


<!-- page 107 -->
The Suite Components and Suite Parents related lists consist of parent and child configuration.
2. To publish the software model to the product catalog, under Related Links, click Publish to
Software Catalog and select a category for the software model.
The values set in the Product Catalog related list are published.
3. To show the list of discovery models that match the software publisher and product fields of
the software model, under Related Links, click Show Matching Discovery Models.
The Discovery Models list is opened in a new browser tab for your reference.
4. To perform additional configuration, select the new software model record in the Software
Models list.
a. In the Software Model Lifecycles related list, create a new record (see table for field
descriptions).
Software Model Lifecycle form
Field

Description

Software model

[Read-only] Name of software model.

Lifecycle type

▪ Internal
▪ Publisher

Lifecycle phase

▪ Pre Release
▪ General Availability
Date the software became generally
available to the market.
▪ Upgrade
Only shown when the Lifecycle type field
is Internal.
▪ End of Life
Date the software was no longer
supported by the publisher.
▪ End of Support
▪ End of Extended Support

Source

[Read-only] Internal (for new records
created manually), or ServiceNow (when
created automatically).

Description

Description of the software model lifecycle.

Phase start date

Date the lifecycle phase starts.

Phase end date

Date the lifecycle phase ends.

Risk

▪ Very High
▪ High
▪ Moderate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

107


<!-- page 108 -->
Field

Description

▪ Low
▪ None
b. Create a SAM Foundation entitlement.
c. View Software Asset Management Foundation plugin software model results in classic.
The latest software model results are shown in the Software Model Results related list.
d. In the Metric Attributes related list, click a metric attribute to set the attribute value field (see
table for field descriptions).
The Metric Attributes related list contains metric values set in software entitlements and is
used for reconciliation (metric group, license metric, and software model combination).
Metric Attributes form
Field

Description

Software model

Software model associated with the metric
attributes.

Metric group

Grouping for the software metric (Common).

License metric

The license metric that the software license
is counted against when reconciliation is run
(per user, per device, for example).

Description

Attribute type description that is based on
license metric value.

Attribute

Attribute type for reconciling entitlements
license metric.
▪ Maximum active OSEs per server
▪ Maximum installs per OSE
▪ Maximum installs per right: For Per User,
Per Device, Per Named User, and Per
Named Device.
▪ Maximum processors per right
▪ Minimum users per processor
▪ Minimum cores per processor
▪ Minimum cores per server

Attribute value

Value of the attribute (integer).

Attribute value is unlimited

Check box for setting the attribute as
unlimited.

e. Create a vendor catalog item.
Manually normalize a SAM Foundation software discovery model
You can edit a software discovery model to manually normalize discovered software on the
Software Discovery Models form so that it can be reconciled.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

108


<!-- page 109 -->
Before you begin

Role required: sam_user

About this task

If the information automatically added to the software discovery model is incomplete, you can
add the missing fields to manually normalize the software discovery model.

Procedure
1. Navigate to All > Software Asset > Discovery > Discovery models and open a discovery
model record.
2. Fill in the Publisher, Product, and Version fields, as appropriate.
3. Click Normalize.
The normalization status is set to Manually Normalized.
Manually override SAM Foundation edition value
When the edition of a software install is not automatically discovered, you can specify the
edition on the Software Installation form with the correct value (if known) so the software can be
successfully reconciled.

Before you begin

Role required: sam_admin

About this task

For reconciliation to run successfully, the publisher, product, version, and edition fields of the
software must be set. When the edition is not discovered automatically (edition value is not
included as part of the Display name field) but you know the edition, you can manually set it to
the correct value (Enterprise, for example).
Once the edition value is set, the discovery model for the software install is automatically reset. If
the appropriate discovery model does not exist, a new one is created.

Note: Not all software products consist of an edition. Of the software products consisting
of an edition, not all edition values are automatically discoverable.

Procedure
1. Navigate to All > Software Asset > Discovery > Software Installations and open the software
installation record for which to set the edition value.
2. Fill in the Edition override field, as appropriate.

Note: The Edition override field is a free-form field (no lookup list) therefore, since this
field is used as a key, the value entered must be exact.
3. Click Update.
The software installation is associated to different discovery model containing the edition
value as part of the primary key. If the appropriate discovery model does not exist, a new one is
created.
Using Software Asset Management Foundation plugin workspace
Use the Software Asset Workspace, the intuitive and streamlined user interface of the Software
Asset Management Foundation plugin application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

109


<!-- page 110 -->
The Software Asset Management Foundation plugin views let you create entitlements, software
models, run and review reconciliation results, give visibility into your software assets, and
provides access to analytics via dashboards.
The Software Asset workspace contains the following views:
• Software asset overview: the landing page of the Software Asset Workspace. You can create
entitlements, run reconciliation, view key metrics and get time sensitive alerts and notifications
regarding your software assets.
• License usage: You can view the compliance status of all your publishers, review reconciliation
results, and view and run reports.
• License operations: lists all the entitlements, software models, import entitlement errors,
discovery models.
Software asset overview for Software Asset Management Foundation plugin dashboard
Enhance your Software Asset Management Foundation plugin experience by using the
modernized and user-friendly software asset overview dashboard. The software asset overview
is a simplified and intuitive environment that helps you use the application more effectively by
reducing complexity.
Use the software asset overview view to:
• Gain insights into key metrics such as compliance trends and true-up costs.
• Execute routine tasks such as running reconciliation or creating entitlements.
Click any widget to view detailed information. All the widgets are updated whenever a new
reconciliation result is available.
Software asset overview dashboard

Report

Source

Description

Publishers out of compliance

Product Results

Number of publishers that
have at least one software
model out of compliance.

[samp_product_result]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

110


<!-- page 111 -->
Report

Source

Description

Click the report to view the
results in the License usage
view.
Products out of compliance

Product Results
[samp_product_result]

Number of products that have
at least one software model
out of compliance.
Click the report to view the
results in the License usage
view.

Total true-up Cost

Product Results
[samp_product_result]

Cost to be compliant based
on the average prices in
entitlements for the rights by
publisher.

License usage view for Software Asset Management Foundation plugin
Use the license usage view as a single plane to understand the license position of all software
products, remediate non compliance, and view reconciliation results.
The License usage view lets your organizations license usage trends and helps forecast the
needs of your organization by trending the number of licenses required against the number
of licenses purchased. Stay in compliance by purchasing additional rights before software
consumption surpasses the number of rights owned.
You can access the License usage view by navigating to Software asset > Software Asset
Workspace > License usage.
License usage

Use the License usage view to:
• filter by domain and compliance status.
• sort by True-up cost, over-licensed amount, and potential savings.
• run reconciliation and view its results.
• be informed about the last reconciliation run.
• view and export reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

111


<!-- page 112 -->
Run Software Asset Management Foundation plugin software reconciliation in workspace
Reconciliation is run as a scheduled job (default is weekly), but you can also run reconciliation
manually to reconcile software products in the Software Asset Workspace environment ondemand.

Before you begin

Reconciliation is run for products that have software entitlements or software installs. Grouping
and subgrouping are supported so you can narrow the compliance results.
When running reconciliation manually, allow enough time for the process to complete. For faster
results, narrow the scope by selecting specific publishers.
Role required: sam_user or sam_admin

Procedure
1. Navigate to the Run Reconciliation dialog box from either of the two ways:
◦ Software asset > Software asset workspace > Run Reconciliation
◦ Software asset > Software Asset Workspace > License workbench > Run Reconciliation
2. Select a particular publisher for which compliance should be calculated.
You can also select all publishers.
3. To narrow results further, select a group or subgroup.
Available group and subgroup values include None, Country, Department, Company, Region,
and Cost Center.
4. Select Run Reconciliation.
The reconciliation process may take some amount of time to complete. Once reconciliation is
complete, the reconciliation results are shown in the Reconciliation tab.
Reconciliation results
Field

Description

Number

Unique identifying number that is generated
during the reconciliation process.

Last reconciled

Date of last reconciliation run.

Status

Status of the reconciliation.
◦ Completed
◦ In Progress
◦ Failed

Ran for

All publishers, or specific publishers.

Publishers

Only shown if publishers were specified on
which to run reconciliation.

Group

Group specified on which to run
reconciliation. Values include None, Country,
Department, Company, Region, and Cost
Center.

Subgroup

Subgroup specified on which to run
reconciliation. Values include None, Country,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

112


<!-- page 113 -->
Field

Description

Department, Company, Region, and Cost
Center.
Progress

Percent complete and progress bar for the
reconciliation run.

Progress summary

Specific step within the reconciliation
process.

Note: This list column is not shown by
default. You can personalize your list
column settings to add it, if desired.
Updated

The date and time when the particular
reconciliation process was completed.

License Operation view for Software Asset Management Foundation plugin
Use the License operations view in the Software Asset Workspace to view all your licenses and
discovery models that are managed by the Software Asset Management Foundation plugin
application.
View all details related to entitlements and software models in the License operations view. You
can also create, edit, and delete entitlements and software models.
You can access the License operations view by navigating to Software asset > Software Asset
Workspace > License operations.
License operations

The License operations view also lets you view:
• all the discovered software for your engineering applications.
• engineering license servers.
• discovery models.
• license consumption.
View discovery models in workspace
View a list of all the discovered software for your engineering applications in the Software Asset
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

113


<!-- page 114 -->
Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software Asset > Software Asset Workspace > License Operations
2. Click Discovered engineering license from the Discovery list view.
3. You can click a record to view additional details.
Clicking a record takes you to the Company page in the classic view.
Using Software Asset Management Foundation plugin classic
Using Software Asset Management Foundation plugin classic.
Software Asset Management Foundation dashboard
View compliance and true-up cost trend charts on the Software Asset Management Foundation
dashboard.

Note: The Software Asset Management Foundation dashboard is no longer available
for new Zurich users who have activated the Software Asset Management Professional
(com.snc.samp) plugin or upgraded to Zurich without activating the Software Asset
Management Professional (com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
The Software Asset Management Foundation dashboard is accessed by navigating to Software
Asset > Overview. Click an element within a report to see more information, or add and move
widgets as needed.
Results are updated daily, or whenever a new reconciliation result is available, and can be
refreshed by clicking the Refresh icon for each result. You can also save charts in PNG or JPG
formats.
The source for overview data is the Product Result [samp_product_result] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

114


<!-- page 115 -->
Report

Description

Publishers out of Compliance

Number of publishers that have at least one
software model out of compliance.

Products out of Compliance

Number of products that have at least one
software model out of compliance.

Total True-up Cost

Cost to be compliant based on the average
prices in entitlements for the rights.

Top 10 Products by True-up Cost

Top 10 products graphed in order of true-up
cost.

Run Software Asset Management Foundation plugin software reconciliation in classic
Reconciliation is run as a scheduled job (default is weekly), but you can also run reconciliation
manually to reconcile software products in your environment on demand.

Before you begin

Role required: sam_admin

About this task

Reconciliation is run for products that have entitlements.
When running reconciliation manually, allow enough time for the process to complete. For faster
results, narrow the scope by selecting specific publishers.

Procedure
1. Navigate to All > Software Asset > Reconciliation > Run Reconciliation and select a publisher
for which compliance should be calculated, or select all publishers.
2. Click Continue.
The reconciliation process may take an extended amount of time to complete.
The Reconciliation Results list is shown.
View Software Asset Management Foundation plugin software model results in classic
View compliance information for software model results from the Product Results list after
reconciliation is run.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

115


<!-- page 116 -->
Before you begin

Role required: sam_user

About this task

You can view License Metric Results, Remediation Options, and Unlicensed Installs related lists
for a software model result from a Product Result record.
For example, if the status of a product result shows that it is not compliant, you can drill down on
the product result to view software model details, such as the number of unlicensed installs and
the true-up cost to become compliant. Further, you can drill down on the software model result to
view the license metric result, which is based on the entitlements for the product.
License metric result information includes rights owned and rights used as well as the license
allocation breakdown so you can determine your options to become compliant. The Remediation
Options related list shows the number of rights needed and calculates the cost of those rights for
you, based on the license metric.

Procedure
1. Navigate to All > Software Asset > Reconciliation > Product Results and open a record to
view product results details.
2. In the Software Model Results related list, open a record to view the details (see table for field
descriptions).
Software Model Results form
Field

Description

Software model

Software model associated with the product.
Drill down on the software model to see the
software model result.

Product result

Unique product result number generated
during the reconciliation process.

Latest

Indicates whether this software model result
is from the most recent reconciliation run.

Status

Status of the software model.
◦ Compliant
◦ Not Compliant

Agreement type

Common: Generic, Enterprise License
Agreement (ELA)

Note: If the agreement type is
Enterprise Level Agreement, the
Status is Compliant even if there are
unlicensed installations.
Unlicensed installs

Number of unlicensed software installations
that are not covered by any entitlements.

True-up cost

Estimated cost of remediating noncompliance based on the least number of
rights needed (rights needed * average price
per right from entitlements). The lowest cost
from Purchase Rights remediation options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

116


<!-- page 117 -->
Field

Description

Over-licensed amount

Estimated cost of rights not being used. The
sum of the Over Licensed amount from the
True-up value costs.

License Metric Results
License metric

License metric that the software license is
counted against when reconciliation is run.

Software model result

Software model with which the result is
associated.

Rights owned

Sum of all active rights from entitlements that
share a license metric.

Rights used

Sum of rights used during reconciliation
(allocated + not allocated and installed).

Unused rights

Sum of rights not used during reconciliation
(rights owned - rights used).

Over-licensed amount

Estimated cost of unused rights.

Right Allocations
Allocated in use

Rights that are allocated and are used to
license installations.

Not allocated in use

Number of rights that are used to license
installations, but not allocated.
When this value is greater than 0, two
remediation options (Create Allocations
and Remove Unallocated Installs) are
automatically created for each unique license
metric in the software model that meets this
requirement, except User CAL and Device
CAL.

Allocated not in use

Rights that are allocated but are not being
used to license any installations.

Note: Allocated not in use reflects
rights that are wasted because the user
or device for which these rights have
been allocated do not have the software
installed.
When this value is greater than 0, a
Remove Allocations remediation option is
automatically created for each unique license
metric in the software model that meets this
requirement.
Not allocated

Number of rights that have not been
allocated (rights owned - allocated regardless
of whether installed or not).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

117


<!-- page 118 -->
Field

Description

Allocations needed

Number of allocations needed for
compliance. Only used for Per Named User
and Per Named Device license metrics.

Remediation Options
Remediation action

Action to take to for compliance of Purchase
Rights.

Affects compliance

Specifies whether compliance is affected by
the remediation option.

License metric

Specific license metric of the software model
result.

Software model result

Specific software model result pertaining to
the remediation option.

Status

Status of the remediation option.
◦ New (blue)
◦ Complete (green)
◦ Void (red)
◦ In Progress (yellow)
In Progress state indicates that removal
candidates were created for the installs.

Rights needed

Purchase Rights shows Rights needed.

Actionable rights

Total rights affected by the action.

True-up cost

Estimated cost of remediating noncompliance based on the least number of
rights needed.

The Unlicensed Installs related list contains the software installations that are unlicensed.
Software Asset Management Foundation plugin Administration
Software Asset Management Foundation plugin administration tasks include adding custom
product records, creating custom license metrics, and setting properties. You can also refresh
processor definitions, and migrate software installations.
The sam_admin role is required to configure administrative tasks. However, the sam_user role
can view and read configurations.
Add a Software Asset Management Foundation plugin custom software product
You can add a custom product if a software product does not exist in the Software Library.
Custom products enable you to normalize and account for homegrown software, or software that
is not yet part of the Software Library.

Before you begin

Role required: sam_admin

About this task

The product and publisher combination is used during discovery model normalization. If the
custom product already exists, a message is shown.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

118


<!-- page 119 -->
Procedure
Navigate to All > Software Asset > Administration > Custom Software Products and create a
new record (see table for field descriptions).
Custom Software Product form
Field

Description

Publisher

Publisher of the custom software product. If it
does not exist, a new one can be created on
the Publisher field Companies lookup list.

Product

Name of the custom software product.

Product type

Product type of the custom software product.
• Child: A subcomponent of main software
(not licensable).
• Driver: A software product that controls a
device.
• Licensable: A software product that is
licensable.
• Not Licensable: A software product that is
not licensable.
• Patch: A software product designed to
update, fix, or improve an existing computer
program.
• Unknown: A software product that is
unknown.

Product classification

Official UNSPSC classification.

Active

Check box for activating the rule.

Add a Software Asset Management Foundation plugin custom license metric
You can add a custom license metric to modify the default reconciliation process.

Before you begin

Role required: sam_admin to read the custom metric script.

About this task

Custom license metrics can be created to define specific software calculations not included
in the predefined license metrics list. Custom license metrics are useful so reconciliation can
calculate rights per user or device for certain software products and bundles of lesser-known
software publishers.
For example, you can create a custom metric to avoid over counting installs for products that are
part of an unrecognized bundle.
Custom metrics can be disabled using the custom license metric property. This feature is
enabled by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

119


<!-- page 120 -->
Procedure
Navigate to All > Software Asset > Administration > Custom License Metrics and create a new
record (see table for field descriptions).
Custom License Metric form
Field

Description

License metric

Name of the custom license metric. This
name is shown in the License Metric field
of software entitlements, and in the license
metric results for the software model.

Metric group

[Read-only] Custom license metric.

Allocation type

Allocation type of the metric license, per
device or per user.
• Device
• User

Description

Description of the custom license metric.

Reconciliation order - allocated

Reconciliation metric rank priority for allocated
licenses. Lower rank value takes precedence.

Reconciliation order - unallocated

Reconciliation metric rank priority for
unallocated licenses. Lower rank value takes
precedence.

Calculation
Calculation Script

The calculation method for the license metric
is script. Specify the reconciliation script.

Migrate Software Asset Management Foundation plugin software installations
If you are using Discovery, run this script after installing Software Asset Management
Foundation plugin to copy previously discovered software installation records from the
[cmdb_software_instance] table to the [cmdb_sam_sw_install] table, which is used by Software
Asset Management Foundation plugin to store software installation records.

Before you begin

Role required: sam_admin

About this task

If you are running Discovery and have used a version of ITSM Software Asset Management
previously, there is no need to run this script. Additionally, if the [cmdb_sam_sw_install] table
is already populated with software installation records, this script is disabled. You can run
Discovery again to repopulate the table.
When running the Migrate Software Installs script, allow enough time for the process to
complete.

Procedure
Navigate to All > Software Asset > Administration > Migrate Software Installs and click
Procced.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

120


<!-- page 121 -->
The Software Installations list is shown. If the data has already been migrated, a message is
shown.
Software Asset Management Foundation plugin properties
You can set default reconciliation properties such as reconciliation run with custom license
metrics, and reconciliation debugging settings.
These properties are available for Software Asset Management Foundation plugin.
To access these properties, navigate to Software Asset > Administration > Properties.
Properties for Software Asset Management Foundation plugin
Property

Description

Run reconciliation with all available custom
Enable custom license metrics when running
license metrics
reconciliation.
com.snc.samp.recon.enablecustommetrics
If you have a custom license metric configured, it
is not applied when this property is set to No.
• Type: Reconciliation
• Default value: Yes
Enable debugging of reconciliation results
com.snc.samp.debug

Enable debugging of reconciliation results to
troubleshoot a result.

Note: Enabling debugging may have an
impact on performance.
• Type: Reconciliation
• Default value: No

Software Asset Management Foundation plugin migration
Migrate from the Software Asset Management plugin to the Software Asset Management
Foundation plugin to take advantage of more powerful features. Manual actions by the customer
are required after plugin activation.
After automatic changes are performed during plugin activation, successful migration from the
Software Asset Management (com.snc.software_asset_management) plugin to the Software
Asset Management Foundation (com.snc.sams) plugin requires a Overwrite customizations for
Software Asset Management migration
to be performed by the customer.
Customizations to forms and lists may need to be manually overwritten by the customer after
plugin activation. In addition, certain fields in software models, software entitlements, user/
device allocations forms require manual configuration by the customer after plugin activation.

Automatic changes
The Software Asset Management Foundation (com.snc.sams) plugin performs these automatic
changes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

121


<!-- page 122 -->
• Tables
◦ Table labels renamed
Table

Original Label

New Label

[alm_license]

Software License

Software Entitlement

[alm_entitlement_user]

User Entitlement

User Allocations

[alm_entitlement_asset]

Device Entitlement

Device Allocations

◦ Adds new tables and script includes.
◦ Adds any string value in the Software Entitlements License key field to the License Key
[samp_sw_license_key] table
• Field names and values
◦ Inference mandatory field
For software models that have suite components (to bundle software models), the Inference
mandatory field value in the Software Suite [cmdb_m2m_suite_model] table is transferred to
a new Mandatory field
◦ Rights field
The Software Entitlements (formerly Software Licenses) Rights field value in the License
Entitlements [alm_entitlement] table is transferred to a new Purchased rights field, and
name changed from Rights to Active rights
◦ The Software model field for a software entitlement allocation (Software Entitlement
[alm_license] table) is automatically set to the software model on the entitlement (License
Entitlements [alm_entitlement] table)
◦ The quantity for a software entitlement allocation (License Entitlements [alm_entitlement]
table) is set to 1 unless there are multiple allocations
If there are multiple software entitlement allocations for the same user or device, the
allocations are aggregated into one record, the quantity is set to the count of aggregated
records, and duplicate allocations are not allowed.
• Forms and lists
Software Models, Entitlements (formerly Software License), Discovery Models, and Software
Installations form and list layouts are modified to fit the new application

Note: Any customizations to these forms and lists must be manually overwritten after
plugin activation.
• Functionality
Functionality disabled
Functionality

Description

License and software counters

The scheduled job trigger for SAM License
Counters is changed to None so that it is
deactivated, and software counters are
disabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

122


<!-- page 123 -->
Functionality

Description

Auto-match functionality

The auto-match functionality, which
attempts to match a discovery model
to a corresponding software model, is
deactivated.

Navigation menu

The navigation menu for the Software Asset
Management plugin is deactivated and
renamed.

Business rules

Legacy business rules applied to discovery
models are disabled.

Overwrite customizations for Software Asset Management Foundation plugin migration
When migrating from the Software Asset Management plugin to the Software Asset Management
Foundation plugin, further actions are required by the customer after plugin activation to ensure
successful migration of customized forms and lists.

Before you begin

Role required: admin

About this task

If these lists and forms have been customized before the migration, they may have been skipped
during plugin activation and, in that case, require further action.
• Software Entitlements (formerly Software Licenses)
• Software Allocations (formerly Software Entitlements)
• Software Models
• Discovery Models
• Software Installations
You can review plugin activation changes in the Upgrade History module to determine what
changes have automatically been skipped so you can resolve the skipped update, if needed.
Certain fields added by the migration also must be configured to take advantage of the new
features offered.

Procedure
1. Navigate to All > System Diagnostics > Upgrade History.
2. Identify the records that correspond to the upgrade history for the activation of the Software
Asset Management Foundation plugin.
The records in System Upgrades list that represent plugin activation contain the
value n/a in the From field, and plugin name in the To field (such as com.snc.samp,
com.snc.samp.core, com.snc.sam.core, com.glide.data_services_canonicalization.client,
com.snc.asset_management, com.snc.model, com.snc.procurement).
You can determine the list of related plugins based on the time stamp of when the Software
Asset Management plugin was activated by sorting on the Upgrade started column.
3. Open a Software Asset Management Foundation plugin upgrade record that has changes
skipped.
4. In the Upgrade Details related list, open an Upgraded Details record, and then click Resolve
Conflicts to view a side-by-side comparison of the base system file with the customized file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

123


