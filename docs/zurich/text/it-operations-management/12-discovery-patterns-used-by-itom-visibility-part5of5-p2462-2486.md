# Zurich IT Operations Management — Discovery patterns used by ITOM Visibility

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2462–2486 of 4823 | Part 5 of 5

Sections: Discovery patterns used by ITOM Visibility (p1862)

---

<!-- page 2462 -->
Verify Password2 implementation
Discovery and Service Mapping Patterns store app
Verify that the Discovery and Service Mapping Patterns store app (version 1.0.76) is
installed.
Verify Password2 is included in XML records
View the XML records in the ServiceNow AI Platform
instance, and verify that the encryption looks similar to this

example:

Create CI types for Service Mapping and Discovery
Create CI types (or CI classes) for applications and devices, which Service Mapping and
Discovery do not support by default.

Before you begin

Role required: service_mapping_admin, personalize_dictionary, or admin
Verify that there is no existing CI type for this application or device.

About this task

All applications and hosts in your organization must have a corresponding configuration item (CI)
type, which is necessary for discovering and processing applications and hosts correctly.

Note: The Discovery and the CMDB interface refers to CI types as CI classes.
A wide range of preconfigured CI types that cover most commonly used applications are
available to you. If your organization uses a less known or proprietary application that does not
have a corresponding CI type, you must create it.
A CI type is a generic notion that is used by several ServiceNow applications, but there are some
attributes that are specific to Service Mapping and Discovery.
A CI type (or class) contains several important definitions that apply to all CIs belonging to it,
such as:
• CI attributes are added as fields to the CMDB tables.
• Identifiers help Service Mapping and Discovery to differentiate between new and existing
CIs. For example, if there is an Apache Web Server CI type defined in the CMDB, and Service
Mapping and Discovery both discover an Apache Web Server CI, it processes it using
identifiers. It then recognizes it as an updated version of the Apache Web Server CI that
already exists in the system, not a new Apache Web Server CI.
• There are reconciliation rules
that help the ServiceNow platform to consolidate CI attributes
received from different applications correctly. These rules are necessary for organizations
where more than one application participates in the discovery process. Reconciliation rules
define how attributes of the same CI discovered by different discovery sources are merged.
For example, Service Mapping discovers the version and home directory attributes of an
Apache Web Server CI, while Discovery discovers the version and patch level attributes for the
same Apache Web Server CI. The ServiceNow AI Platform applies the reconciliation rule and
as a result Service Mapping does not overwrite the attributes found by Discovery.
• Related items, both CIs and non-CIs, serve as a reference and provide additional information
about the CI. For example, you can define a serial number, a port and an network APR table
as related items for a hardware server. The system does not use these items for identification.
After you configure related items for the CI type, you can use horizontal discovery for CIs of this
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2462


<!-- page 2463 -->
type together with their related items. For information, see Discover related items together with
the main CI.

Note: Non-CIs are items that do not extend the Configuration Item [cmdb_ci] table.
Examples of non-CIs are ports, serial numbers, or Network ARP tables.
• CMDB stores CI class in the form of a hierarchy where some CI classes are parents to other
CI classes, who automatically derive their parent's attributes in addition to attributes you
configure specifically for child CI classes. CI class hierarchy is used widely for configuring CI
behavior, relationships, and display. In this example, the Apache Web Server CI is a child of
the Web Server CI and derives many attributes from its parent, such as name, version, model
ID. By default, child CI classes inherit identifiers from their parent CI classes.
In addition to these CI type definitions, the horizontal discovery process uses a CI classification
to define to which CI type a CI belongs. Create a device CI classification if you create a CI type
for devices using SNMP and a process CI classification for an application CI type.

Procedure
1. Navigate to All > Configuration > CI Class Manager.
2. To use an existing CI type as a parent for the new CI type, click Hierarchy to display the CI
Classes list.
3. Click the context menu for the required CI type and select Add Child Class.
4. Create a table

to store the CI type attributes:

New table form
Field

Description

Label

CI type name. For example, Apache Web Server.

Name

The table name. For example, cmdb_ci_apache_web_server.
Use a name similar to the other CMDB classes (for example,
u_cmdb_ci_laptop).

Extends The table name of the parent CI type.
table
All CI types are extensions of the Configuration Item [cmdb_ci] table or its child
tables. For example, if the new class is Laptops, which is a subclass of Computers,
select the cmdb_ci_computer table. If the new class is a top-level class, select the
cmdb_ci table.
The most commonly used parent CI types are:
◦ cmdb_ci - basic
◦ cmdb_ci_database - for databases
◦ cmdb_ci_app_server - for application servers
◦ cmdb_ci_infra_service - for infrastructure services
◦ cmdb_ci_endpoint_inclusion - for entry points of the inclusion type
◦ cmdb_ci_appl - for applications
◦ cmdb_ci_web_server - for web servers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2463


<!-- page 2464 -->
Field

Description

◦ cmdb_ci_lb - for load balancers
◦ cmdb_ci_endpoint - for entry points
5. Configure how the instance determines if a discovered CI is an upgraded CI existing in the
instance or a brand new CI.
See Create or edit a CI identification rule
for detailed procedure.

Warning: If there is no CI identification rule for a CI type, Service Mapping discovers
CIs belonging to this type, but cannot interpret the results of the discovery process. In
this case, the ServiceNow AI Platform rejects the discovery results for these CIs and their
information is not updated.
a. On the Identifiers page, configure the parameters as follows:
Identifier form
Field

Description

Name

Use a meaningful name.

Applies to

Enter the CI type.

Active

Select the check box.

Independent

Clear the check box.

b. Configure the identifier entry parameters as follows:
Identifier entry form
Field

Description

Criterion Select the attribute that you want to use for identifying the CI. For example,
attributes Class, Installation directory, or Serial number.
Allow
null
attribute

Select the check box.

Priority

If there is more than one identifier entry, add priority to determine the order
in which Service Mapping applies these entries. If none of the identification
criteria matches the discovered CI, this CI is new.

6. Optional: Configure references to other CIs or non-CIs as related items for the CI type.
Related Entry form
Field

Description

Active

Check box that specifies that the related entry is active.

Related
table

A related table that references the CI that is being matched.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2464


<!-- page 2465 -->
Field

Description

Referenced A referenced field in Related table that should store the referenced CI. This
field
field always references the cmdb_ci table, or a descendent of the cmdb_ci
table.
Priority

Priority of the related entry for the specified Related table. Rules with lower
priority numbers are given higher priority while matching a related item for
specific related table. Related entries for the specified related table with
identical priorities are applied randomly.
You can keep gaps between the priority numbers, so you can assign the
unused priority numbers to new entries without modifying the existing priority
order.

Criterion
attributes

The set of attributes to uniquely identify the related item. Attributes can belong
to the current class, or to a parent class.

Note: It is possible to add reference fields as a criterion attribute.
However, such fields might not always be effective:
◦ Reference fields store sys_ids that point to a record in another
table, and thus is considered a weak criterion attribute (in terms of
uniqueness) for the current table.
◦ The system detects and then replaces invalid values in a reference field
with 'Unknown'. For example, an invalid Model ID value is replaced
with the value 'Unknown'. Also, if several CIs end up having that same
reference field set to 'Unknown', then these CIs become duplicate CIs.
Select the lock icon to view, add, or remove attributes from the identification
rule.
Allow null
attribute

If at least one criterion attribute in the related table is not null, allow to attempt
matching with an identifier entry even if there are criterion attributes which are
null.

Filter
conditions

Add conditions to construct a filter to narrow the set of records that will be
searched for a matching related item.

7. Optional: Configure the instance to consolidate CI attributes received from different data
sources correctly.
See Create or edit a CI reconciliation rule .
Configure the following Service Mapping related parameters correctly:
Reconciliation Definition form
Field

Description

Data source

Select ServiceWatch.

Applies to

Select the relevant CI type.

Optional condition

Set a condition if necessary.

Note: If you do not create a CI reconciliation rule, data discovered by patterns is used to
update CI attributes.
8. Configure the CI classification for your CI type:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2465


<!-- page 2466 -->
◦ For CI types representing applications, perform configuration as described in Create a
Discovery process classification.
◦ For CI types representing SNMP devices, perform configuration as described in Create a
Discovery CI classification.

Note: There is no need to create CI classifications for hosts because these
classifications are included in the base system.
9. For CI types that represent inclusions, define the hierarchy for the new CI type.
Clear the Reverse Relationship Direction check box while performing this configuration.
See Create dependent relationships

.

10. If necessary, customize icons that represent CIs in maps.
See Create or modify map icons .

Create entry point types for Service Mapping
An entry point is a point where clients access a service instance. Service Mapping starts the
mapping process for every application service from the entry point you define for it. Service
Mapping includes a wide range of preconfigured entry point types that cover most commonly
used applications. If your organization uses a less known or proprietary application that does not
have a corresponding entry point type in Service Mapping, you must create it.

Before you begin

If your ServiceNow instance uses domain separation and you have access to the global domain,
log in to the relevant domain. The selected domain must be a domain without any child domains.
Role required: service_mapping_admin or admin

About this task

In addition to starting the mapping process from entry points, Service Mapping patterns use
entry points to discover CI outbound connections.
Entry points are modeled in the ServiceNow CMDB as CIs of endpoint type. Entry points are
stored as records in the Endpoint [cmdb_ci_endpoint] tables.
Like any other CI type, an entry point contains several important definitions that apply to all CIs
belonging to it:
• CI attributes are added as fields to the CMDB tables.
• Identifiers help Service Mapping and Discovery to differentiate between new and existing CIs.
For example, if there is an endpoint CI type for Active Directory Forest in the CMDB 360, and
Service Mapping discovers an Active Directory Forest CI. Service Mapping processes this CI
using identifiers and recognizes it as an updated version of the Active Directory Forest CI that
exists in the system, not a new Active Directory Forest CI.
• CI type hierarchy. CMDB stores CI class in the form of a hierarchy where some CI classes
are parents to other CI classes, who automatically derive their parent's attributes in addition
to attributes you configure specifically for child CI classes. CI class hierarchy is used widely
for configuring CI behavior, relationships, and display. Create standard entry points as child
CIs for the endpoint CI type, which creates an extension for the cmdb_ci_endpoint table. For
entry points of inclusion type create child CIs for the inclusion endpoint CI type extending the
cmdb_ci_endpoint_inclusion table. In an inclusion, a server hosts applications that are treated
as independent objects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2466


<!-- page 2467 -->
Procedure
1. Navigate to All > Configuration > CI Class Manager.
2. Select Open Hierarchy.
3. To create a standard entry point, right-click Endpoint from the Class Hierarchy pane and
select Add Child Class.
4. To create an entry point of the inclusion type, right-click Inclusion Endpoint from the Class
Hierarchy pane and select Add Child Class.
5. Define the parameters for the new entry point type as described in Create a CI class

.

Related topics
Map a single application service using classic Service Mapping
Create CI types for Service Mapping and Discovery

Create or customize patterns
Create or modify a discovery pattern and define its basic attributes.

Before you begin

Make sure that the application for which you want to create a pattern, has a corresponding
configuration item (CI) type and a CI classification. If the CI type you require is not in the list,
create it as described in Create CI types for Service Mapping and Discovery.
If your ServiceNow instance uses domain separation and you have access to the global domain,
log in to the relevant domain. The selected domain must be a domain without any child domains.
Role required: pd_admin
Basic knowledge of programming is desirable.

About this task

Patterns can be of the infrastructure or application type. Infrastructure patterns are used only
by Discovery for creating lists of devices. Application patterns serve both Service Mapping and
Discovery, which use the same application patterns for their purposes.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click New or select the relevant pattern from the list.
3. Define the basic pattern attributes on the Basic tab.

Field

Description

Pattern
type

◦ Select Application for an application pattern. It can be used both for topdown discovery performed by Service Mapping and horizontal discovery
performed by Discovery.
◦ Select Infrastructure for an infrastructure pattern used for the horizontal host
discovery performed by Discovery.

Name

Enter the pattern name. This name must be unique to this pattern. Use selfexplanatory names such as Apache on Unix pattern.

CI type

Select the CI type which you want this pattern to discover.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2467


<!-- page 2468 -->
Field

Description

Note: Discovery can find multiple CIs that belong to the same CI type.
Operating Select the operating system that the selected CI runs:
system
◦ Click All if the CI runs on more than one operating system.
[Application
patterns
Or
only]
◦ Select the relevant operating systems from the list.
Run Order For an application pattern used by Service Mapping, define when the pattern
[Application runs
patterns
a. Select the order in which this pattern always runs:
only]
▪ Before
▪ After
b. Then select the other applicable pattern. This field is only relevant if a
particular pattern can be confused with another pattern.
For example, both IIS and MS Exchange applications have an HTTP entry point.
However MS Exchange uses some of the components of IIS. Therefore, if the
IIS pattern ran first, discovery might incorrectly identify MS Exchange as IIS. To
prevent this error, in the Run Order field in the MS Exchange pattern definition,
select Before and IIS.
Description Provide a description for this pattern.
4. Optional: When creating an application pattern, make the MID Server run this pattern only if
the process identified on a CI matches the classification criteria for this pattern, select Enforce
Process Classification.
All simplified patterns created from generic applications, have this attribute enabled. For more
information about creating process classification, see Discovery classifiers.
5. Define a set of identification steps for every incoming connection of a configuration item (CI) as
described in KB1698521: Create or customize patterns .
6. If necessary, create more identification sections.
7. Save the pattern.
8. Optional: To test the pattern, select Debug Mode and enter the IP address of the host.
9. Upload the updated set of patterns onto the MID Server:
a. Navigate to Discovery > MID Servers.
b. Alternatively, navigate to Service Mapping > MID Servers.
c. Click Pattern Sync to Mid.

What to do next

For application type patterns, continue with creating a connection section as described in the KB
article KB1698521: Create or customize patterns .
Related topics
Discovery for cloud environment
KB0747679: Pre/Post Processing Scripts for patterns
KB0854603: Pattern Debugger Session Timed Out

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2468


<!-- page 2469 -->
Discover related items together with the main CI
Add related items to the patterns to perform horizontal discovery of configuration items with all
their related items: CIs or non-CIs, like ports or serial numbers.

Before you begin
1. (Optional) Check if the CI is dependent: The system uses the identification rules to identify the
CI independently of other CIs. Refer to Create or edit a CI identification rule .
2. (Optional) To understand the model better, check dependent relationship rules which
define the dependency structure of the CI types and the relationship types in these service
definitions. For example, you can discover a Tomcat server with Tomcat WARs belonging to it.
For more information, refer to Dependent relationship rules .
Example of the Containment rule for Tomcat WAR

3. To add a non-CI to the pattern, add it as a related item for the CI type to which the main
CI belongs. For more information on adding related items for the CI type, see Configure
references to other CIs or non-CIs as related items for the CI type.
Role required: pd_admin

About this task

Related items, both CIs and non-CIs, serve as a reference and provide additional information
about the CI. For example, you can define a serial number, a port and an network APR table as
related items for a hardware server. The system does not use these items for identification. After
you configure related items for the CI type, you can use horizontal discovery for CIs of this type
together with their related items.

Note: Non-CIs are items that do not extend the Configuration Item [cmdb_ci] table.
Examples of non-CIs are ports, serial numbers, or Network ARP tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2469


<!-- page 2470 -->
Pattern Designer displays attributes of related CI types, which you added to the pattern in the CI
attributes pane. You can view and use these attributes while creating or modifying the main CI
pattern.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Select the relevant pattern.
3. On the pattern form, select the relevant identification section.
4. Make sure that you are not in Debug mode.
5. On the CI Attributes pane, click the Manage related CIs icon.

6. Select the relevant related CI type.
You can use the search box to locate a specific CI type.
7. Click the Plus icon.
The new related CI type is added to the list.
8. Optional: Add other related CI types.
9. Click OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2470


<!-- page 2471 -->
New tabs for related CI types you added appear under the tab for the main CI:

What to do next

Continue editing the pattern by adding more steps as necessary. To view or use attributes of a
related CI type, click the relevant tab in the CI Attributes pane.

Enhance patterns without changing their identification sections
Enable patterns to search for additional attributes and modify pattern discovery logic defined
in identification sections by using extension sections. Each extension section contains a
preconfigured set of discovery steps referred to as a shared library.

Before you begin

If your ServiceNow instance uses domain separation and you have access to the global domain,
log in to the relevant domain. The selected domain must be a domain without any child domains.
Basic knowledge of programming is desirable.
Role required: pd_admin

About this task

Patterns can be of the infrastructure or application type. Infrastructure patterns are used only
by Discovery for creating lists of devices. Application patterns serve both Service Mapping and
Discovery, which use the same application patterns for their purposes. Each pattern including
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2471


<!-- page 2472 -->
its identification and connection sections is an individual file. There are also reusable sequences
of discovery steps referred to as shared libraries. Each shared library is an individual file, but it is
always part of the infrastructure or application pattern and is not used as a standalone pattern.
Records for both patterns and shared libraries reside in the Discovery Patterns [sa_pattern]
table.
To modify the discovery logic in identification sections without changing the identification
sections themselves, you can add extension sections to the pattern. Every extension section
consists of a shared library, either new or existing.
Adding an extension section to a pattern

When you create or modify a shared library in the extension section, you save changes only to
the shared library, not to the pattern containing this extension section.

Warning: The changes to the shared library affect all patterns using this shared library.
The MID Server runs extension sections after identification sections and only if at least one
identification section completes successfully.
If there are more than one extension sections associated with this pattern, define the order in
which the MID Server runs these extension sections.
You can deactivate shared libraries, so that patterns using them, skip steps in deactivated
shared libraries. For more information, see Discovery Configuration Console. If a precondition
defined for a shared library step is not fulfilled, the pattern skips all steps belonging to this
shared library. For example, if the file, to which the variable points, does not contain "test", the
pattern does not run the shared library steps 1-1 to 1-5. The precondition exists only for the
pattern within which you created it. The precondition does not affect other patterns using this
shared library.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2472


<!-- page 2473 -->
Library Reference operation form

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns and open the required pattern from
the pattern list.
The pattern can be of the Infrastructure or Application type.
2. To create an extension section and define discovery steps for its shared library.
a. Click New under Extension section.
b. Enter the name of this extension section.
c. Click Done.
The pattern form displays the new section under Extension section.
d. Click the name of the new extension section.
The Pattern Designer opens showing the Steps tree on the left.
If no discovery steps have been identified for this pattern, the Untitled Step appears in the
Steps tree in the left pane of the window.
e. Define discovery steps.
f. Click Save to save the extension section and make Service Mapping and Discovery use it.
You do not publish extension sections.
3. To use an existing shared library for the new extension section:
a. Click Add under Extension section.
b. Select the shared library from the name list.
4. If there are more than one extension sections, define the order in which the MID Server runs
the extension section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2473


<!-- page 2474 -->
a. Select the check box next to the extension section.
b. Click Edit under Extension section.
c. Enter a number that determines the order in the Order field.
If there is only one extension section, its order is 1 by default.
The section with the lowest order number is used first.
d. Click Done.

What to do next

Click Debug to run the newly created extension section. Pattern Designer runs extension
sections after running identification sections.

Fine-tune patterns using traffic-based discovery
As an alternative to customizing the pattern from the Pattern Designer side, improve existing
patterns so that Service Mapping can use them to find configuration item (CI) connections
previously found using traffic-based discovery.

Before you begin

Role required: pd_admin
Basic knowledge of programming is desirable.

About this task

Service Mapping can discover and map configuration items (CIs) following their traffic-based
connections. This method is referred to as traffic-based mapping and complements patternbased mapping.
Using traffic-based discovery, Service Mapping may discover an important CI connection. In this
case, you can make sure that this connection is always found for all CIs belonging to the same
CI type. You do that by modifying the pattern used to discover CIs of that CI type. A pattern is a
sequence of commands designed to detect attributes of a CI and its outbound connections.
You can search CI configuration files to locate data discovered using traffic-based discovery, for
example IP address and port. If there are configuration files containing this data, you create a
pattern step to parse this file. Next time Service Mapping discovers this CI using the modified
pattern, it extracts the information about this connection directly from the configuration file.

Procedure
1. Navigate to Service Mapping > Services > Application Services.
2. Click View Map next to the relevant service instance.
3. Right-click the relevant CI.
4. Select Show traffic based connections.
The Traffic Based Connections List displays the following information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2474


<!-- page 2475 -->
Traffic Based Connections List (when discovery based on Predictive Intelligence is
disabled)
Field

Description

IP

The IP address of the application connected
to the selected CI.

Port

The port on the selected CI that is used to
communicate to the other application.

Process

The ID of the process in the selected CI.

Already on map

◦ Yes — if this connection shows on the map.
◦ No — if this connection is not part of the
service instance and not on the map.

System decision

The setting defines if Service Mapping keeps
the discovered traffic-based connection
or removes it. The value comes from the
algorithm that Service Mapping uses.

User decision

(Optional) The setting overrides the System
decision setting, which defines if Service
Mapping keeps the discovered traffic-based
connection or removes it. For example, if the
System decision setting for a connection
is Keep, and you want to remove this
connection, select Remove.

Note: There may be a case when you can see traffic-based connections on the
map, but the Traffic Based Connections list does not display them. It happens for the
connections that have been removed from the TCP Connection [cmdb_tcp] table less
than three days.
5. Double-click the connection you want to use to create a pattern step.
6. If there are multiple patterns used to discover this CI, select the pattern for which you want to
create the step, and click OK.
Pattern Designer creates a temporary connection section for this pattern with a new step.

The Debug Connection Section window is displayed with some fields automatically populated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2475


<!-- page 2476 -->
7. Click Connect.
The Debug mode is activated.
The Search Assistant window opens.
8. Search CI configuration files for data received using traffic-based discovery:
a. Under Free Text, review data automatically filled in from the Traffic Based Connections List.

The File Patterns field displays file types in which Pattern Designer performs the search.
b. Click the Search Files tab and review files.
If necessary, you can remove irrelevant files from the search by clicking the Minus icon.
c. Click Search.
After search completes, the Search Result tab opens with the list of files in which any of the
search criteria was found.
9. Create a pattern step for parsing the configuration file containing information about the
connection:
a. On the Search Result tab, click one of the files and review connection data found in this file.
b. Wait for the file content to load and select the relevant entry under the file name:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2476


<!-- page 2477 -->
c. To use this data to create the pattern step, click Create parse file step.
Pattern Designer shows the new step with the Parse File operation. It automatically assigns
this step the name in the following format: Parsing <file name>.
Pattern Designer automatically sets the file name, file path, and parsing strategy for the
step. It also creates variables that contain data you searched for. If there is a variable, which
contains the file path, Pattern Designer enters this variable for the path.

d. Optional: If necessary, you can modify parsing strategy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2477


<!-- page 2478 -->
e. Rename the section to provide a meaningful name, for example Discover HA Proxy client
connection.
Or
Copy and past the step into the relevant connection section.
10. Complete modifying the pattern as described in Finalize a pattern.
Related topics
Traffic-based discovery in Service Mapping
Enable traffic-based discovery for CI types or specific CIs
Discovery patterns used by ITOM Visibility

Finalize a pattern
After you finish defining your pattern, make it ready for use by Service Mapping and Discovery.

Before you begin

Role required: pd_admin

About this task

There are several ways to finalize a pattern after creating or modifying it:
• Saving — Save all the information you defined for the pattern creating a draft. You can continue
working on the pattern draft at any time. Service Mapping and Discovery do not use the pattern
draft for discovery and mapping.
• Discarding changes — If you realized that the changes you made to a pattern are incorrect, you
can discard them.
• Checking — Actually run the pattern on the relevant configuration item (CI) to check that the
operations that you defined for it are correct. Check your pattern before activating it. This
option is available only for application patterns used by Service Mapping.
• Publishing — Make Service Mapping and Discovery use this pattern for discovery and
mapping. A new version of this pattern is created. The state of the pattern version used
previously changes to History.

Procedure
1. On the pattern definition form, complete your pattern definition by performing one or more of
the following actions.
To accomplish this

Do this

Save the pattern

Click Save.

Discard unwanted changes

Click Discard.

Check the pattern

a. Click Check Pattern.

(only for application patterns used by Ser­
vice Mapping)

b. Enter parameters for connecting to this CI.
c. Click Connect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2478


<!-- page 2479 -->
To accomplish this

Do this

d. Wait for Pattern Designer to run the pattern
and check that there are no errors.
e. Troubleshoot any errors. If there are no er­
rors, you can publish or save your pattern.
Publish the pattern

Click Publish.

2. Close the Pattern Designer tab.

Copy patterns from one instance to another
To copy patterns from one instance to another, create an update set containing new or modified
patterns with their related items in your development instance. Then, import the update set into
your production instance.

Before you begin

Role required: pd_admin

About this task

Typically, you maintain two ServiceNow instances in your organization: for production and
for development. Create or modify patterns, test them, and verify results in the development
instance. When you are satisfied with the discovery results, export relevant patterns from the
development instance to create an update set.
Update sets is a ServiceNow feature for transferring customizations from one instance to another.
Each update set is stored in the Update Set [sys_update_set] table. Specific customizations
associated with the update set are the entries in the Customer Update [sys_update_xml] table,
and they appear as a related list on the update set record. The method of creating update sets
for patterns is different from creating update sets for other types of customizations.

Warning: Always follow this procedure to create update sets for patterns. Do not use the
standard platform procedure for creating update sets.
Depending on the extent of the changes, you can use the following pattern export methods:
Export patterns
This option creates a new, customized version of the pattern and its related items
necessary for the patterns to function properly. It then links them to the update set.
The related items include:
• Extension sections
• Tracked files
• Related CI types
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2479


<!-- page 2480 -->
• Classification records
• Associated scripts

Note: Update sets do not include changes in script includes used in
patterns.
Export patterns with CMDB items
This option creates a new, customized version of the pattern and its related items
from the previous option, including any associated CMDB items. It then links all of
these to the update set. The CMDB items include:
• Main CI type
• Entry point types
• Lookup tables
• Identifiers
• Hosting and reconciliation rules
The update set is an XML file with the following name convention:
sys_remote_update_set<random alphanumeric string>.xml.

Procedure
1. In the development instance, perform these steps to export patterns:
a. Navigate to Pattern Designer > Discovery Patterns.
b. Select application or infrastructure patterns that you want to export.

Note: You cannot export shared libraries.
c. At the bottom of the window, click the Actions on selected rows button.

Note: You cannot use more than 20 patterns at a time for the Export patterns with
CMDB items method.

d. Click Export patterns or Export patterns with CMDB items.
e. When the system finishes exporting patterns, it creates the update set.
f. To view the list of items included in the update set, click View Logs in the success message.
g. Click Close.
The update set file in XML format is automatically downloaded on the computer.
h. Save the update set file locally for future use.
2. In the production instance, perform these steps to import the customized patterns:
a. Elevate privileges to the security_admin role.
b. Navigate to System Update Sets > Retrieved Update Sets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2480


<!-- page 2481 -->
c. Select the link Import Update Set from XML.
d. Select Choose File and select an XML file.
e. Select Upload.
The customization is now available as a retrieved update set with state Loaded.
3. Preview the imported update set .
The system scans and validates the update set and displays its contents on the Customer
Updates tab.
4. Commit the update set

.

5. Click Close in the success message.
The production instance contains all new or modified patterns with related items from the
update set.
6. Upload the updated set of patterns and related items onto the MID Server:
a. Navigate to Discovery > MID Servers.
b. Alternatively, navigate to Service Mapping > MID Servers.
c. Click Pattern Sync to Mid.
7. If the discovery fails or the result is not as expected, restart the MID Server to make sure that
the MID Server runs the latest set of patterns.
Related topics
System update sets

Choose the pattern version
Every time you modify and save a pattern, you create a version of this pattern. Choose which
pattern version Service Mapping and Discovery use for discovery.

Before you begin

Role required: admin

About this task

By default, the latest version is used for discovery, but you can choose any other version to use.
If necessary, you can compare pattern versions.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click the required pattern.
The form for this pattern opens.
3. Click the Pattern tab.
4. Scroll down to the Versions section.
The state of the active pattern version that Service Mapping and Discovery use is Current.
5. Click the version you want to use.
6. Click Revert to this version under Related Links.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2481


<!-- page 2482 -->
This pattern version becomes the active version that Service Mapping and Discovery use. Its
state changes to Current.
Compare pattern versions
If you have multiple versions of the same pattern, you can compare them to decide which pattern
version to use for discovery.

Before you begin

Role required: pd_admin

About this task

Service Mapping and Discovery use patterns in their discovery process. Every time you modify
and save a pattern, you create a version of this pattern.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click the required pattern.
The form for this pattern opens.
3. Click the Pattern tab.
4. Scroll down to the Versions section.
The state of the active pattern version that Service Mapping and Discovery use is Current.
5. Click the previous pattern version, which you want to compare to the current version.
6. Click Compare to Current under Related Links.
7. In the Compare to Current window, click the Pattern text pane either under Selected Version
or Current Version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2482


<!-- page 2483 -->
The text comparison view opens showing the text of the selected pattern version and the
current pattern version side by side. The step containing a difference appears highlighted.
Highlight colors indicate the type of change:
◦ Updated step — purple
◦ New line or characters — green
◦ Deleted line or characters — red
8. Review the differences in the pattern versions.
9. If necessary, click Revert chunk to replace the step in the current version with the step from
the previous version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2483


<!-- page 2484 -->
10. Click OK when done.
11. If you copied any steps from the previous version and want to save the change, click Save
Merge.

Activate a disabled pattern
If you want to use a pattern for discovery that's disabled by default, activate it manually.

Before you begin

Role required: discovery_admin

About this task

Starting with Visibility Content version 6.28.0, activating or deactivating a pattern won't be
considered a customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading while retaining
the last active field value.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. In the Name field, search for the relevant pattern.
3. Select the pattern.
4. Select the Active check box.
5. Select Update.

Enable the Cloud Hardware Type class extension
Enable the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table to store the predefined
virtual machine (VM) hardware type records for Amazon AWS Cloud Microsoft Azure Cloud
and Google Cloud Platform (GCP). This class extension helps prevent duplication of the VM
hardware type records in the Hardware Type [cmdb_ci_compute_template] table, which improves
performance for Discovery and related flows.

Before you begin
• Veirfy that the latest versions of the following applications are installed:
◦ CMDB CI Class Models
◦ Discovery and Service Mapping Patterns
If the version of Discovery and Service Mapping Patterns is earlier than 1.6.0, see the
Knowledge Base article KB0955939 .
• Ensure that the application scope is the Discovery and Service Mapping Patterns application.
Role required: admin

About this task

Each cloud service provider offers several predefined VM hardware types, such as t1.micro
(AWS), and so on. You can also create your own. By default, Discovery stores the discovered VM
hardware types in the Hardware Type [cmdb_ci_compute_template] table. This table is a "child" of
the cmdb_ci_logical_datacenter class, so the attributes in the Hardware Type table includes the
attributes in the cmdb_ci_logical_datacenter class.
This model might create duplicate records for each discovered VM hardware type:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2484


<!-- page 2485 -->
The count of records for each discovered VM hardware type is determined by the number of
service accounts multipled by the Number of logical datacenters.
For example, let's assume an organization has an AWS account of t1.micro VM. The organization
has 3000 service accounts and 10 Logical Data Centers (LDCs), such as West US. Your next
discovery can detect the VM hardware type and create 30,000 records in the Hardware Type
[cmdb_ci_compute_template] table.
This approach could slow down your discovery and related flows.
Avoid these issues by storing the predefined AWS and GCP VM hardware types in the Cloud
Hardware Type [cmdb_ci_cloud_hardware_type] table.
This table extends the Hardware Type [cmdb_ci_compute_template] table. Because it's not tied
to any LDC or service account, Discovery avoids adding many VM hardware type records to the
Hardware Type [cmdb_ci_compute_template] table.
The Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table uses the object_id and the
provider fields in the identification rule.

Note: In AWS environments, the discovery pattern discovers hardware types only to the
master account’s datacenter. It then creates relationships of the discovered hardware types
to the corresponding regions in member accounts.
• If a discovery schedule is run for both a master account and member accounts, the
pattern discovers only the master account’s datacenter hardware type.
• If a discovery schedule is run for a standalone member account, the pattern discovers
that member account’s datacenter and its hardware type.
• If a discovery schedule is run for a master account after a standalone member account
has already been discovered, the pattern doesn’t rediscover the hardware type for the
member account. Instead, it discovers the hardware type for the master account and
maps the relationships between the master and member accounts.

Procedure
1. In the navigation filter, enter sys_properties.list.
2. In the Name field, search for sn_itom_pattern.use a single hardware type
for cloud data centers.
3. Select the sn_itom_pattern.use a single hardware type for cloud data
centers property.
4. In the Value field, enter true.
5. Select Update.

What to do next
1. Clean up the Hardware Type records. For more information, see the Knowledge Base article
KB1285337 .

Important: The cleanup removes all the existing compute profiles from the CMDB.
Therefore, if you have manually added a hardware template to the Hardware Type
[cmdb_ci_compute_template] table, you must manually add it to the Cloud Hardware Type
[cmdb_ci_cloud_hardware_type] table.
2. Rerun the Cloud Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2485


<!-- page 2486 -->
Related topics
AWS discovery using patterns
Google Cloud Platform (GCP) Cloud discovery using Patterns
Microsoft Azure Cloud discovery using patterns

Enable Cloud OS Image discovery
Enable the Cloud OS Image [cmdb_ci_cloud_os_image] table to store the cloud OS image
records for Amazon AWS Cloud, Microsoft Azure Cloud, Google Cloud Platform (GCP), Oracle
Cloud Infrastructure (OCI), and IBM Cloud.

Before you begin
• Ensure that the latest versions of the following applications are installed:
◦ Discovery and Service Mapping Patterns
◦ CMDB CI Class Models
• Ensure that the application scope is the CMDB CI Class Models application.

Note: Cloud Provisioning and Governance (CPG) doesn’t support the New Cloud Image
(cmdb_ci_cloud_os_image) table. If you’re currently utilizing CPG Provisioning flows or have
intentions to do so, don’t migrate to the new Image Model.
Role required: admin

About this task

Each cloud service provider offers OS images to launch a Compute/VM instance. Cloud
Discovery stores the discovered Image [cmdb_ci_os_template] table. This table is a dependent
class on [cmdb_ci_logical_datacenter] or [cmdb_ci_cloud_service_account]. The new Image
model creates one record for each public Image (object id) irrespective of the service account
and populates them in the Cloud Image [cmdb_ci_cloud_os_image] table. There for, the new
model reduces the number of records in the CMDB

Note: If you have Discovery and Service Mapping Patterns version 1.10.0- November 2023,
proceed to the following procedure. If you have an earlier version, see the Knowledge Base
article KB1000183 .

Procedure
1. In the navigation filter, enter sys_properties.list.
2. In the Name field, search for sn_cmdb_ci_class.use_single_cloud_os_image.
3. Select the sn_cmdb_ci_class.use_single_cloud_os_image property.
4. In the Value field, enter true.
5. Select Update.

What to do next
1. Clean up the Image records. For more information, see the Knowledge Base article
KB1537376 .
2. Rerun the Cloud Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2486


