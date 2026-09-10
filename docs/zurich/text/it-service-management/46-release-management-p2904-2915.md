# Zurich IT Service Management — Release Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2904–2915 of 3857

Sections: Release Management (p2904); Explore (p2905); Configure (p2908); Use (p2908); Reference (p2913)

---

<!-- page 2904 -->
The average time in days since the last update of an open problem. The score for
this indicator is calculated according to the formula [[Summed age of updated since
of open problems]] / [[Number of open problems]] / 24.
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open problems
• Summed re-assignment of open problems
• Summed age of updated since of open problems

Breakdowns
• Priority
• State
• Assignment Group

Release Management
®

The ServiceNow Release Management v2 application encompasses the planning, design,
build, configuration, and testing of hardware and software releases to create a defined set of
release components.

Get started

Explore

Configure

Learn about how Release Management
v2 help you manage the release process
for delivering products and services.

Plan and configure your releases.

Use

Reference

Manage products, product
hierarchy, and releases.

Get details about components such as
roles, tables, and plugins that are installed.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2904


<!-- page 2905 -->

<!-- page 2906 -->
Release Management concepts
The Release Management application encompasses the planning, design, build, configuration,
and testing of hardware and software releases to create a defined set of release components.
Release management comprises of a series of activities performed to ensure that the changes
are applied successfully to both pre-production and product environments.

Release Management concepts
Concept

Description

Products Represents the hardware or software for which releases are built. A product can be
linked with a Business Service in the CMDB to link it with other ITIL processes.
Releases Bundles all the work done (projects, epics, stories, enhancements, defects,
problems, incidents, and so on) for products or services together and ensures
that these work items are built, tested, and deployed on non-production and/or
production environments.
Release
Phases

Represents the planned phases within a release, which are used to group the tasks
required to carry out the release. For example, gathering requirements, planning,
design, development, testing, and deployment.

Release
Tasks

Represents any of the tasks required to implement a feature of a product.

Table relationships in Release Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2906


<!-- page 2907 -->
Note: The tables for Feature and Feature Task under a release are not removed. If you
already use Feature and Feature Task under a release, you can continue doing so.

Business stakeholder role for Release Management
Use the business stakeholder role to read and retrieve data from any table of the Release
Management application to generate reports.
When you activate the Business Stakeholder plugin (com.snc.business_stakeholder)
in your ServiceNow instance, the Read only roles for Release Management plugin
(com.snc.release_management_read_roles) is also activated. This plugin provides a business
stakeholder role (sn_release_read) with which you can access all the tables of the Release
Management application. You can assign this role to any user in your organization who is a
business stakeholder.

Plugin availability
If you are a new customer, the Read only roles for Release Management plugin
(com.snc.release_management_read_roles) is activated on zBoot. However, the business
stakeholder role (sn_release_read) is available only when you activate the Release Management
plugin (com.snc.release_management_read_roles).
If you are an upgrade customer, you must manually activate the read-only roles for Release
Management plugin and the Release Management plugin (com.snc.release_management_v2).

Release Management tables accessible by users with the business stakeholder
role
When the Read only roles for Release Management plugin (com.snc.release_management_v2)
is active in your ServiceNow instance, the user with the business stakeholder role
(sn_release_read) has read access to the following tables.
Release Management tables
Table

Description

Product

Represent whole products whose releases are being managed.

[rm_product]

It is optional to use the Product construct. A generic release can also
be defined without any specific product.

Release

Represent individual releases of the product.

[rm_release]
Release Phase
[rm_release_phase]
Release Tasks

Represent the different stages of work required to complete a
release.
Represent tasks under a phase for phase activities.

[rm_task]
Release Items
[rm_m2m_release_task]

Represents work items and change records associated to the
release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2907


<!-- page 2908 -->
Configuring Release Management v2
Plan and configure the Release Management application.

Activate Release Management
Activate the Release Management plugin (com.snc.release_management_v2) with the admin
role.

Before you begin

Role required: admin

About this task

For more information, see Components installed with Release Management v2.

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

Using Release Management v2
The Release Management v2 plugin (com.snc.release_management_v2) provides release tables
which store information about the planned release and tasks that are required to execute the
release.

Product
Use a Product record in Release Management to store information about a product for reference
purposes and groups all the releases and work artifacts for the product.
You can use the Configuration Items reference field to link the product with a corresponding
CI in the CMDB. Each CI keeps information about how it relates to other CIs, and can track
any incidents, problems, or changes related to it. Specifying a CI for the Product connects
information from the release process to other processes in the instance.
Defining a product is not mandatory to manage the release process. A release can be an
enterprise release in which it is associated with all products or services, or it can be associated
to more than one product as well. In either of these cases, defining a product is not mandatory.
Once releases are defined for a product, the Product Hierarchy related link displays the hierarchy
of releases, release phases, and release tasks associated with the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2908


<!-- page 2909 -->
Release
Once a product is defined, you can plan and execute a release. Start by defining a release for
the product and add child releases or release phases for the release. Then, scope the release by
defining work artifacts for the release.

Release Phase
Define multiple release phases for a release for release governance and smooth execution.
For example, if the release is managed more like a waterfall process, the release phases could
be requirement gathering, design, development, testing, build, acceptance, and deployment. For
each phase, there can be release tasks associated to it. The phase gets completed as and when
all tasks are completed for a phase. Release managers must keep the release phases updated.
If the release is divided into multiple merges, the phases could be merge 1, merge 2, merge
3, and so on. The type and number of phases would depend upon the release management
process of your organization.

Scoping a release
Before starting the release execution, you must define scope of the release. Scope of a release
includes the work artifacts such as projects, epics, stories, enhancements, and defects that are a
part of the release.
For example, a minor release might only have a few problems and enhancements whereas a
major release might have multiple projects or epics associated to it.

Important: Starting with the New York release, scoping a release using SDLC or Scrum
(Agile Development 1.0 (com.snc.sdlc.scrum.pp)) is not available.
While scoping the release, you can use the Release Hierarchy related list on the Release Form to
view the release as a hierarchy.

Product hierarchy in Release Management
A release can be an enterprise release, in which it is associated to all products or services or to
more than one product. In either case, defining a product is not required.
If a product has releases defined, the Product Hierarchy related link displays the hierarchy of
releases, phases, and phase tasks associated with the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2909


<!-- page 2910 -->
Define a product in Release Management
Define a product in the Release Management application to facilitate managing a release
process.

Before you begin

Role required: release_v2_admin

Procedure
1. Navigate to All > Release > Products.
2. Click New.
3. On the form, fill in the fields.

Field

Input value

Number

Auto-generated unique identifier for the Product.

Configuration Item

CI that corresponds to the product.

Assignment Group

Group responsible for the product.

Assigned To

user responsible for the product.

Short Description

Brief description of the product.

Description

Detailed description of the product.

Work Notes

A journal field for logging notes about the product.

4. Click Submit.

Define a release in Release Management
During the release planning process, release managers define the type of the release (major,
minor, and so on.), schedule of the release (planned start and end dates), required phase, phase
tasks, and the scope.

Before you begin

Role required: release_v2_admin

Procedure
1. Navigate to All > Release > Products.
2. Open the product to which you want to add a release.
If a release belongs to no product or more than one product, you can directly navigate to
Release > Releases to define the release. You need not define a release in the context of a
product.
3. In the Releases related list, click New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2910


<!-- page 2911 -->
Release form
Field

Description

Number

Auto-generated unique identifier for the
release.

Release Type

Type of the release such as Major, Minor,
Upgrade, Patch, or others.

Priority

Priority of the release such as Critical, High,
Moderate, or others.

State

State of the release such as Draft, Work in
progress, testing, or others.
If you want to customize the options in this
list, reach out to your admin. Custom states
can be added according to the default state
categories of the release table. Learn more
about the default states of the release table.

Percent complete

Progress of the release as a percentage of
the whole.

Short description

Brief description of the release. This
description helps in identifying this release
from a list of releases.

Description

Details of the release.

Planned start date

Tentative start date of the release.

Planned end date

Tentative end date of the release.

Planned duration

Duration of the release in days.
When you submit the form, this field autopopulates based on the values of Planned
start date and Planned end date.

5. Click Submit.

What to do next
• Attach documents such as release and deployment plans, installation manuals, and training
documentation to a release.
For more information, see Add and manage attachments

.

• Releases can have child releases. So, you can group minor releases under major releases.
Add a child release by clicking New in the Releases related list in the Release form.
• Define a release phase in Release Management.
• Define scope of a release in Release Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2911


<!-- page 2912 -->
Define a release phase in Release Management
Define a release phase to represent the different stages of work required to complete your
release.

Before you begin

Role required: release_v2_admin

Procedure
1. Navigate to All > Release > Releases.
2. Click the release number to which you want to add a release phase.
3. In the Release Phases related list, click New.
4. On the form, fill in the fields.
Release form
Field

Description

Priority

Priority of the phase such as Critical, High,
Moderate, or others.

State

State of the phase such as Draft, Work in
progress, testing, or others.

Percent complete

Progress of the phase as a percentage of the
whole.

Short description

Brief description of the phase. This
description helps in identifying this phase
from a list of release phases.

Description

Details of the phase.

Planned start date

Tentative start date of the phase.

Planned end date

Tentative end date of the phase.

Planned duration

Duration of the phase in days.
When you submit the form, this field autopopulates based on the values of Planned
start date and Planned end date.

5. Click Submit.

Define scope of a release in Release Management
Add projects, epics, stories, enhancements, and defects to define the scope of a release.

Before you begin

Role required: release_v2_admin

Procedure
1. Navigate to All > Release > Releases.
2. Click the release number for which you want to define the scope.
3. On the Release form, navigate to one of the following related lists.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2912


<!-- page 2913 -->
◦ Projects
◦ Scrum Epics
◦ Scrum Stories
◦ SAFe Epics
◦ SAFe Features
◦ SAFe Stories
◦ Defects
◦ Enhancements
◦ Incidents
◦ Problems
◦ Changes

Note: To view the respective work items, ensure that the plugins Agile Development 2.0,
Project Portfolio Management, Essential SAFe, and Portfolio SAFe are active.
4. Add a task to the related list.
a. Click Attach task.
b. Find and locate the required task by clicking the search icon (

).

c. Add the task as a release task by clicking the task number.
5. Click Submit.

Release Management v2 reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Digital Product Release (DPR).

Components installed with Release Management
Several types of components are installed with activation of the Release Management v2 plugin,
including tables and user roles.
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Contains roles

Release admin

Can access the entire application

release_v2_user

Can access the all the various feature and task-related
modules but cannot update any content.

None

[release_v2_admin]
Release user
[release_v2_user]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2913


<!-- page 2914 -->
Tables installed
The Release Management v2 application contains with a flexible product, release, phase, release
work items, and task hierarchical table layout to allow for releases of varying complexity.

Table

Description

Product

Represent whole products whose releases are being managed.

[rm_product]

It is optional to use the Product construct. A generic release can also
be defined without any specific product.

Release

Represent individual releases of the product.

[rm_release]
Release Phase
[rm_release_phase]
Release Tasks

Represent the different stages of work required to complete a
release.
Represent tasks under a phase for phase activities.

[rm_task]
Release Items
[rm_m2m_release_task]

Represents work items and change records associated to the
release.

Default state categories for Release and Release task tables
Understand how the different states of the Release [rm_release] and Release Task [rm_task]
tables are configured by default. Use this information to customize the states according to your
organizational release processes.
State categories for Release table
State category

State number

completed_states

3

close_states

3, 7

default_close_state

3

default_work_state

2

default_open_state

1

default_skipped_state

7

default_pending_state

-5

pending_states

-5

open_states

1

work_in_progress_states

2, 4, 10

skipped_states

4, 7

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2914


<!-- page 2915 -->
State categories for Release task table
State category

State number

completed_states

3

close_states

3, 4, 7

default_close_state

3

default_work_state

2

default_open_state

1

default_skipped_state

7

default_pending_state

-5

pending_states

-5

open_states

1

work_in_progress_states

2

skipped_states

4, 7

Software control distribution
The application enables the Release Management team to control the distribution of software by
creating a Definitive Media Library (DML) stored in the CMDB.
The DML table [dsl] consists of a physical store and a logical store.
• The physical store holds the original copies of all software media. This tends to be software
that has been provided from an external source.
• The logical store is the index of all software and releases, versions, and so on, highlighting
where the physical media can be located. The logical store may also be used to store software
that is developed within the organization.
Both physically and logically stored software are represented as records on the DML table [dsl].

Domain separation and Release Management
This is an overview of domain separation and Release Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2915


