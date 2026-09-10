# Zurich IT Operations Management — Service Mapping

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1750–1861 of 4823 | Part 3 of 3

Sections: Service Mapping (p1450)

---

<!-- page 1750 -->
4. Optional: For a discovery schedule based on service attributes, click View Selected Services
to preview the list of services that answer the filtering criteria you entered, and then select
Close.
5. Optional: For a discovery schedule based on service group attributes, click View Selected
Groups to preview the list of groups that answer the filtering criteria you entered, and then
select Close.
6. Define the rediscovery frequency by selecting the relevant option from the Run list.
See Run options for discovery schedules.
7. Click Submit.
Related topics
Pattern-based discovery in Service Mapping
Top-down discovery schedules
Learn about schedules that trigger top-down discovery of application services.
When you define a new application service, Service Mapping performs discovery of all CIs that
participate in this application service and creates its map. After the initial mapping is complete,
Service Mapping regenerates application service maps regularly by rediscovering the CIs
making up an application service.
By default, Service Mapping is preconfigured with these generic schedules:
All Applications
This schedule triggers the top-down discovery of all CIs of the application type
[cmdb_ci_appl].
Load Balancer Service
This schedule starts the top-down discovery of all CIs of the load balancer service
type [cmdb_ci_lb_service].
The generic schedules trigger discovery of all applications and load balancer services in
your organization once a day. Typically, these preconfigured schedules are enough to update
information for application services. However, if it is necessary to discover specific CIs or
services more frequently, you can create the following custom discovery schedules:
Schedule types for top-down discovery
Schedule type

Description

Example

Services

Service Mapping discovers all CIs
belonging to certain services that
answer filtering criteria.

In your organization, some
application services are more critical
than others and it is important for
you to rediscover such services
with high criticality more frequently.
Create a custom discovery schedule
to discover all services with the
business criticality value set to most
critical.
Alternatively, certain services in
your organization are undergoing
changes more often than once a
day. You may want to create custom
schedules to rediscover such
services more frequently.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1750


<!-- page 1751 -->
Schedule types for top-down discovery (continued)
Schedule type

Description

Example

You can also create a schedule of
this type to discover application
services in a sub-production
instance, where services are not in
the operational state yet.
Services
belonging to a
group

Service Mapping discovers all CIs
belonging to services assigned to
groups that answer filtering criteria.
Service Mapping discovers only
services located directly inside the
group that answers defined filtering
criteria. Service Mapping does not
discover services inside embedded
groups.
Notice that you can define
schedules based on service groups,
even if your role does not have
access to these service groups.

For CI types

Service Mapping discovers all
application CIs belonging to this
application type. Some application
CI types are prone to more frequent
changes and updates than others,
so you can manage the load by
adjusting the discovery schedule to
match the nature of each CI type.

In a distributed organization with
offices in several geographic
locations, you may want to create
a custom discovery schedule
to rediscover services in one of
these locations. For example, one
schedule can trigger rediscovery of
all services relevant for the EMEA
site at 7am GMT, while another
schedule can start rediscovery of
services for the US headquarters at
7am PT.

If you modify a certain application
more often than the rest of your
applications, you may want to
discover it more frequently than
other CIs. In that case, create a
custom discovery schedule for such
an application CI type.

When you define discovery
schedules based on application CI
types, several schedules may apply
to the same CI. To avoid discovering
the same CIs more than once, the
most specific schedule always has
precedence. For example, if you
create separate discovery schedules
for a parent CI type and its child
CI type, CIs belonging to the child
CI type are discovered using its
dedicated schedule. At the same
time, if there is no schedule for a
child CI type, the parent CI type
schedule is used to discover the
child CIs.
This schedule discovers only CIs
belonging to application services in
the operational state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1751


<!-- page 1752 -->
Schedule types for top-down discovery (continued)
Schedule type

Description

Example

Specific CIs

Service Mapping discovers only
one CI that you specified for this
schedule.

For rare cases of rediscovering a
specific CI that causes discovery
errors frequently.

If you define a discovery schedule
for a specific CI as well as a
schedule for the CI type to which this
CI belongs, Service Mapping uses
the schedule for this specific CI, and
not the generic schedule for its CI
type.
This schedule discovers only CIs
belonging to application services in
the operational state.
Part of discovering an application CI is identifying its host. Service Mapping checks if the device
hosting this application CI exists in the CMDB. For a load balancer service, Service Mapping
checks if the load balancing device hosting this load balancer service exists in the CMDB. If not,
Service Mapping triggers Discovery to perform the horizontal discovery. As a result, Discovery
performs host detection and updates the information on hosts in the CMDB. If necessary, you
can manage the schedules that trigger horizontal discovery as described in:
• Schedule a horizontal discovery — for standard horizontal discovery.
• Create a schedule for standard serverless Discovery — for discovering CIs using a protocol
such as REST, without using the IP address of any devices or hosts.
• Create a schedule for host-based serverless Discovery — for discovering CIs that reside on an
already discovered host using this host as a Proxy server.
Related topics
Schedule a top-down discovery by Service Mapping
Service definition transfer from one instance to another
Save time and effort by exporting definitions of service instances from the source instance and
importing these definitions into the target instance. You can use this method to copy definitions
of service instances only of the discovered type.
Typically, you maintain two ServiceNow instances in your organization: for production and for
development. Perform the initial mapping of application services in your organization on the
development instance, which you use for testing. The results of initial mapping often require
some basic troubleshooting or fine-tuning. Once you finish mapping application services on your
source instance, transfer service definitions into the target (production) instance.
Notice that you cannot export the actual application services, only service definitions.
Mapping is a dynamic process, and the mapping result reflects the actual infrastructure and its
configuration. Therefore, the services you exported from one instance and imported into another
may look different.
By default, you export the following service definitions:
• Service name
• Traffic-based discovery usage
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1752


<!-- page 1753 -->
• Entry point
• Business criticality
• Group to which the service belongs
If this service group is part of a service group hierarchy, all parent service groups in this
hierarchy are exported as well.
• Comments
The system uses the Sys ID [sys_id] attribute to identify services on the source and target
instances and implements service definition import according to these rules:
• If a service Sys ID does not exist on the target instance, the system creates a new service on
the target instance.
• If a service Sys ID and name already exist on the target instance, the system updates this
service by overriding the existing service definitions with the imported definitions.
• If a service Sys ID exists on the target instance, but is associated with a different service name,
the system updates the service with this Sys ID. The system overrides service definitions,
including the service name.
• If the same name is used for different services on the source and target instances, the system
does not import service definitions.
• You cannot export manual services. Likewise, you cannot export manually added entry points.
When importing definitions of a service containing manual entry points, the system does not
make any changes to the entry points.
Exporting service definitions flow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1753


<!-- page 1754 -->
When transferring service definitions between instances, imported service instances and
service groups are assigned to the user's domain.
By default, the system assigns Non-operational status to application services whose
definitions you imported.
A service definition transfer deploys the standard import set feature available on the ServiceNow
AI Platform. When you export service definitions on the source instance, the system creates a
JSON file containing exported data. When you copy service definitions into the target instance,
you import the data from this JSON file, which becomes an import set.
Export service definitions
Create an import set containing definitions of services. You use this import set to import service
definitions into another instance.

Before you begin
• Decide which service definitions you want to export.

Important: You can use this method to copy definitions of application serviced of the
discovered type only.
• Verify that the source and the target instances are on the same ServiceNow release.
• Open the source instance from which you want to copy service definitions.
• If necessary, fine-tune the import set creation by modifying relevant properties under Service
Mapping > Administration > Properties. For more information, see Components installed with
Service Mapping.
Role required: service_mapping_admin

Procedure
1. If the instance uses domain separation and you have access to the global domain, select the
domain to which the service instance belongs from the domain picker (
The selected domain must be a domain without any child domains.

).

2. Navigate to Service Mapping > Services > Application Services.
3. Select the application services that you want to export.
4. Click Actions on selected rows at the bottom of the page and select Export Services.
The import set appears in the Downloads folder. The file name follows this convention:
export_service_<datetime>.json.
5. If necessary, copy the import set to a different location on the computer.
Import service definitions from one instance to another
Import definitions of application services from the source instance.

Before you begin
• Verify that the source and the target instances are on the same ServiceNow release.
• Open the target instance into which you want to import service definitions.
Role required: import_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1754


<!-- page 1755 -->
Procedure
1. If the instance uses domain separation and you have access to the global domain, select the
domain to which the service instance belongs from the domain picker (
The selected domain must be a domain without any child domains.

).

2. Navigate to Service Mapping > Services > Import Service Definitions.
3. In the Import Service Definitions window, click Choose File, navigate to the JSON file that
contains service definitions, and click OK.
4. Optional: Click Show Preview and check the definitions in the chosen JSON file.
5. Click Import.
6. Click Yes to confirm that you are ready to import service definitions.

Important: During import, the system irreversibly overrides the current service
definitions.
The Progress window displays the success message.
Service Mapping automatically starts the discovery of services containing imported entry
points.
7. Review imported or updated services after Service Mapping finishes the mapping process.
If the transfer result is not as you expected, perform basic troubleshooting as described in the
following table.
Trouble?

Symptom

Cause

Changes
you have
recently made
to an service
instance
disappear.

Definitions of existing application services are
always overridden during transfer.

An imported
service group
does not
appear.

The import of an application service assigned to
this group failed and the system did not create
the group because it appears to be empty.

Solution

1. Make necessary
changes to the
definitions of this
service instance again.
2. Run the top-down
discovery of this
service instance by
clicking Run Discovery
in the service map.

1. Resolve the issue
that prevented the
system from importing
the service instance
belonging to this group.
2. Import the import set
again.
3. Check that the service
group appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1755


<!-- page 1756 -->
Symptom

Cause

An imported
service group
appears to
have wrong
application
services
assigned to it.

This is a different service group with the same
name, not the service group you imported.
The system failed to import the service group,
because the source instance already has a
service group with the same name or with the
same name and Sys ID.

Solution

1. Check the import log.
2. If an error states that
a record creation
failed while running
the Check Name
Uniqueness business
rule, perform the
following steps:
a. Rename the service
group on the source
instance.
b. Re-export the
application services
assigned to this
group.
c. Import the latest
import set on the
target instance.
3. If an error states that a
record creation failed
because the Sys ID
already exists, perform
the following steps:
a. Recreate the service
group on the source
instance, ensuring
you provide a
different group name
and Sys ID to it.
b. Re-export the
application services
assigned to this
group.
c. Import the latest
import set on the
target instance.
4. Verify that the service
group appears correctly
on the source instance.

Application service analysis and maintenance using classic Service Mapping
Service Mapping creates maps to help you see the architecture and organization of application
services. These maps are useful for planning change or migration, as well as analyzing the
continuity and availability of services.
The maps are useful in the following cases:
Planning the migration of an entire service instance or its segments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1756


<!-- page 1757 -->
Use the map to see which configuration items (CIs) need relocating or which CIs
become redundant.
Planning the upgrade or replacement of a CI
Check the map to see what other CIs are affected when the CI is non-operational
during maintenance. You can assess and plan the downtime or make provisions to
avoid the downtime.
Because the same CI may be used for multiple application services, check the CI
using the Dependency Views application. With this application, you can see all
application services that a CI belongs to.
Analyzing a service instance for high availability and continuity
Use the map to identify CIs crucial for the service performance. Decide if you want
to fortify these CIs by creating clusters.
Troubleshooting application services
Use the map to understand the impact of an issue and determine which CI is
causing the problem.
Application service maps in classic Service Mapping
Maps offer you a visualization of data on configuration items (CIs) comprising application
services, and relations and connections between these CIs.
A new map is created every time you manually create an application service or map an
application service using Service Mapping. The system updates the map every time you add
CIs to the application service or when Service Mapping runs discovery for CIs belonging to this
application service.

Note:
Information and actions available on a map depend on your role:
• As a Service user [app_service_user] or Service Mapping user [service_mapping_user], you
can view the map in the View mode.
• As a Service administrator [app_service_admin] or Service Mapping administrator
[service_mapping_admin], you can view application services in View mode and modify
discovered and manually created services in Edit mode.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
• As a Service Mapping administrator [service_mapping_admin], you can view discovery
messages and errors generated by Service Mapping and modify services in the Edit mode. You
can also reload the map to ensure the map reflects the latest information.
• As a Service owner [sm_app_owner] role, you can review, provide feedback, and approve
services discovered using Service Mapping in the View mode.

Note: The review and approval process is available only for discovered and manually
created service instances.
Also, actions and information related to automatic discovery using Service Mapping are not
available for CIs that Service Mapping cannot discover. For example, you do not see the tab for
Discovery Messages for a manually created service instance that Service Mapping does not
discover.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1757


<!-- page 1758 -->
Map window
Aside from the map itself, the map window also displays the Properties pane and tabs with
additional information.
Map window of Service Mapping

You can navigate to a different application service map directly from this window by selecting it
from the list.
Service list

By default, the entire map is shown in the center of the visible map area of the window. You can
zoom in and out as well as position the map depending on which segment of the map you must
see using these controls:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1758


<!-- page 1759 -->
Map navigation

You can also click anywhere in the map area and drag the required segment of the map into the
visible area.
You can view changes made to an service instance as a whole and to individual CIs belonging
to a service by choosing a time range. For more information, see View the change history of
application services in classic Service Mapping.

Map elements and their appearance
Every map consists of icons representing CIs and arrows that represent the connections
between them.
Connected CIs

Some map elements can contain other elements such as in the case of application clusters. On
the map, application clusters appear as a stack of CIs with the plus (+) symbol next to it. The
cluster label shows the number of CIs in this cluster with the multiplication sign.
CI cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1759


<!-- page 1760 -->
When the CI has inclusions, the CI icon has the plus (+) symbol next to it and shows the
contained application when you expand it.
Inclusion

An OS cluster appears as a CI with the plus (+) symbol and the number of CIs in this cluster.
OS cluster CI

CI attributes and CI-related messages
When a map is loaded and no elements are selected, the Properties pane shows the details of
this service instance.
A selected device, application, or connector appears in blue and is highlighted. Information
about the selected map element is displayed in the Properties pane on the right of the map. The
Properties pane contains the links to the Detailed Properties page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1760


<!-- page 1761 -->
Connection information in the Properties pane

The attributes for the server hosting applications and applications themselves are shown
separately inside the Properties pane.
Server information in the Properties pane

If there is any information related to the selected CI or connection, it is highlighted on the tab at
the bottom of the window.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1761


<!-- page 1762 -->
The CI and the related discovery message

When you select information on a tab at the bottom of the map window, the related CI displays in
yellow.
The message and the CI it is generated for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1762


<!-- page 1763 -->
Map indicators
You can show additional information for a CI or service instance itself by displaying its
related records such as alerts, outages, incidents, and problems. If you enable this feature,
record indicators appear next to relevant CIs and next to the service instance name. Records
themselves are displayed on the tabs at the bottom of the map window.
Application service with indicators

Map views
Customize a map view to exclude irrelevant information and increase clarity, as described in
Modify view for an application service map.
To open this service instance in Event Management and view alerts on CIs that are part of the
service instance, click Monitor Service at the top of the window.
Monitor Service button

Related topics
View CI attributes in an application service map in classic Service Mapping
Modify display for CI attributes
Modify view for an application service map
View an alert impact on CIs in a service map
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1763


<!-- page 1764 -->
View CI attributes in an application service map in classic Service Mapping
An application service map displays attributes for each configuration item (CI) that is part of the
application service, as well as for the application service itself. The attributes come from the
CMDB.

Before you begin

Role required: service_mapping_admin or service_mapping_user

About this task

You can view the following information for each CI:
Name label
The CI name. This attribute is either preconfigured on the CI or configured during CI
installation.
Basic attributes
A summary of the most important CI attributes.
Detailed attributes
A complete list of all attributes collected for the CI.
Each CI type (CI class) has different attributes. For example, the Linux Server type has different
attributes than the SQL Instance type.
If Service Mapping is deployed, the way CIs appear on the map depends on the view you select
for the map. Attributes available for viewing also depend on the Service Mapping setup. For more
information, see description of components installed with Service Mapping.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. If needed, click Edit to ensure that the map is in Edit mode.
If Service Mapping is deployed, then in Edit mode, the Discovery Messages section appears
below the map.
3. To see the full name of a CI whose name has been shortened on the map, point to the CI.
A tooltip displays the full CI name.
4. Click a CI to see its details in the Properties pane.
The attributes of applications and the servers that host them appear separately.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1764


<!-- page 1765 -->
5. To view more detailed attributes for the CI, click Detailed properties at the bottom of the
Properties pane.
6. Optional: To view configuration files associated with a CI in environments where Service
Mapping or Discovery are enabled and tracking changes to CI configuration files is enabled):
◦ Review the list of files under Tracked Files in the Properties pane. Click the file name to
open the actual file.
◦ Click the Affected CIs tab and view the list of configuration files. Click the file name to open
the actual file.
View CI connection attributes in an application service map in classic Service Mapping
You can view attributes of connections between configuration items (CIs).

Before you begin

Role required: service_mapping_admin or service_mapping_user

About this task

You can view the following information for each connection:
• The source and target CIs of this connection displayed in the Context (right-click) menu.
• A complete list of all attributes collected about the connection in the Properties pane.
By default, Service Mapping merges connection lines for the same CI to declutter an application
service map. It helps to make the map more readable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1765


<!-- page 1766 -->
Merged connection lines

Each connection type has different attributes. For a merged connection line, all underlying
connections are listed.
The way an service instance map displays connection attributes depends on the following
factors:
• Views you configure for CIs define which connection attributes appear in the Properties pane
of the map.
• Connection lines on the map depend on the view you select for the map.
• Attributes available for viewing also depend on the Service Mapping setup, for more
information see description of components installed with Service Mapping.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. View connection attributes as follows:

To view

Do this

The source and
target CIs of a regular
connection

Right-click the connection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1766


<!-- page 1767 -->
To view

Do this

(Available for
◦ Right-click the merged connection line with a number and select
application services
the relevant connection.
discovered with
Service Mapping)
The source and target
CIs for a merged
connection

Or
◦ If a segment of a connection line is shared by more than one
merged connections, there is no indication that it is a merged line.
Right-click the connection line coming out or going into a CI, and
select the relevant connection.

The source and target
CIs for a connection a. Click the CI whose connections you want to view.
if the spanning tree
view is enabled.
All concealed connections for this CI appear on the map.
The spanning tree
b. Right-click the relevant connection line.
view simplifies an
service instance map
concealing most of
the connection lines.

Detailed attributes of
a regular connection
in the Properties
pane
(Available for
application services
discovered with

Click the connection line.

Click the merged connection line indicated by a number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1767


<!-- page 1768 -->
To view

Do this

Service Mapping)
Detailed attributes of
a merged connection
in the Properties
pane.

All underlying connections are displayed separately in the
Properties pane.

Detailed attributes
Right-click the connection line coming out or going into a CI, select
of a connection
the relevant connection, and then choose Select edge.
segment shared
by more than one
merged connection in
the Properties pane.

The detailed attributes are displayed in the Properties pane.

Note: Shared segments do not have an indication that it is a
merged line.
(Available for
application services
discovered with
Service Mapping)
Detailed properties
of a connection in
the Properties pane,
when the spanning
tree view is enabled.

a. Click the CI whose connections you want to see.
All concealed connections for this CI appear on the map.
b. Click the required connection line.

The spanning tree
view simplifies an
service instance map
concealing most of
the connection lines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1768


<!-- page 1769 -->
To view

(Available for
application services
discovered with
Service Mapping)
Traffic-based
connections for a CI.

Note: You
can see
traffic-based
connections
for a CI, even
if you disabled
the traffic-based
discovery for an
service instance
the CI is part of.
Manually added
connection.

Do this

a. Right-click the CI whose traffic-based connections you want to
check.
b. Select Show traffic based connections.
The Traffic Based Connections List opens displaying the
information in Traffic Based Connections List table.
c. Click Close when finished viewing this list.

Click the manually added connection.

The Properties pane shows Manual Endpoint under Endpoint Type.
You can either add
a connection or
a CI manually. In
both cases, the
connection you
manually add an
entry point to the next
tier of the application
flow.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1769


<!-- page 1770 -->
Field

Description

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

View the change history of application services in classic Service Mapping
You can view the changes made to an application service as a whole and to the individual
configuration items (CIs) comprising the service. Change history is useful for maintenance,
planning, or troubleshooting procedures.

Before you begin

Role required: admin, service_mapping_admin, service_mapping_user, app_service_admin, or
app_service_user

About this task

Details about changes to a service instance and to its CIs are stored in the CMDB. Typically,
these changes reflect adding or removing CIs from a service instance, upgrading or updating
CIs, or modifying CI configuration files. The system gathers this data by querying CMDB tables
and then creating the change history view. In deployments where Service Mapping is activated,
the type of change information Service Mapping queries depends on discovery patterns that
Service Mapping uses to discover CIs.
Changes to configuration files are associated with CIs to which these files belong. Maps show
configuration file changes as changes to related CIs.
While you can see change records for a specific CI in the context of application services, you
can also see detailed history of a specific CI separate from its service instance as described in
History Timeline .
If the ServiceNow AI Platform is configured to validate changes, all changes are evaluated and
rendered as valid or not. If a change is valid, its change record on the service instance map is
marked as approved. For more information about configuring the platform for change validation,
see Managing proposed changes .
Changes to the service instance appear on the history timeline.

The type of change mark depends on the nature of changes that it represents:
Light gray balloon (

)

Unapproved change that does not influence the service instance behavior. For
example, a change in a network path or adding a node to a cluster.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1770


<!-- page 1771 -->
Dark gray balloon (

)

Unapproved change that changes the service instance behavior.
Green balloon (

)

An approved change in deployments where the ServiceNow AI Platform is
configured to validate changes.
Double balloon (

)

Multiple separate changes that happened a short time from each other.
You can mark times on the history scale by creating baselines to quickly return to the marked
view.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Review change records created for this service instance on the Changes tab at the bottom of
the page.
If Service Mapping is deployed, then in Edit mode, the Discovery Messages section appears
below the map.
3. On the history timeline, set the time range of changes that you want to view.
Option

Action

Click the hour, day, week, or month icons.
To set the time range of the history timeline

Click the zoom in and zoom out icons.
To increase or decrease the time range

Click the history scale.
To change the upper limit on your history
range
The time that serves as the upper limit ap­
pears above the history timeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1771


<!-- page 1772 -->
Option

Action

Note:
You cannot set the lower limit on your
history range to a time before this ser­
vice instance was created. This time
is marked with the IT Service Created
event on the history timeline.

The map shows the history view of the service instance for the time you selected.

Note: The Change tab shows all change records, even the ones which are filtered out of
the history view.
4. To mark a time on the time scale, set a baseline:
a. Click the Compare icon.

b. Navigate to the time you want to mark as a baseline on the history scale.
c. Click Set baseline.

d. Enter the name of the baseline and click OK.
The new baseline appears as a button above the history scale and as a blue flag on the
history scale.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1772


<!-- page 1773 -->
5. View the change history.
Option

Action

Select a change record on the Changes tab.
The related CI is marked yellow in the map.

To see the CI responsible for a change
record

Select the required CI or the connection on
the map.
The Changes tab displays only change
records related to the selected CI or connec­
tion.

To see only change records related to a CI

a. Set the time on the history scale.
To see the configuration file at the selected
moment in the past

b. In the Properties pane, scroll to Tracked
Configuration Files, and click the file name.
The new tab opens displaying the content
of the tracked configuration file at the se­
lected time.
a. Set the time on the history scale.

To see the network at the selected moment
in the past

b. Right-click the connection and select Show
network path.
The new tab opens displaying the network
or storage path map for the time you select­
ed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1773


<!-- page 1774 -->
Option

Action

Note: You cannot view the network
path for connections marked as bound­
aries to this service instance.

6. To exit the history view and see the current status of the service instance, click the current
icon.

Related topics
View an application service map in base system
Compare two versions of an application service in classic Service Mapping
Modify tracking changes in configuration files
Fine-tune tracking changes for the change history
Compare two versions of an application service in classic Service Mapping
You can see a summary of application service changes at a glance by comparing two versions
of an application service. This feature is useful for checking the application service status before
and after a certain change or problem.

Before you begin

Role required: admin, app_service_admin, app_service_user, service_mapping_admin, or
service_mapping_user

About this task

Specify two points in time for which to compare the two versions of an application service.
You can use the change indicators on the timeline to specify one point in time that is before
and another that is after a change for which to see the details. For example, if you know that
the application service started to fail at a certain time, you can compare two versions of the
application service, one before and one after the problem started. This comparison lets you see
the summary of changes that possibly led to the problems.
Service Mapping, if deployed, tracks and shows all changes to a CI including configuration files
associated with a CI. When you compare two versions of an application service, you can see
changes made to configuration files as changes to CIs. You can also compare two versions of a
configuration file to see the actual changes in the files, during the time range specified for the
comparison.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. If needed, click Edit to ensure that the map is in Edit mode.
If Service Mapping is deployed, then in Edit mode, the Discovery Messages section appears
below the map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1774


<!-- page 1775 -->
3. On the history timeline, set the time range of changes that you want to view.
Option

Action

Click the hour, day, week, or month icons.
To set the time range of the history timeline

Click the zoom in and zoom out icons.
To increase or decrease the time range

Click the history scale.

The time that serves as the upper limit ap­
pears above the history timeline.

Note:
To change the upper limit on your history
range

You cannot set the lower limit on your
history range to a time before this ser­
vice instance was created. This time
is marked with the IT Service Created
event on the history timeline.

The map shows the history view of the service instance for the time you selected.

Note: The Change tab shows all change records, even the ones which are filtered out of
the history view.
4. Click the Compare icon.

5. Set Compare point 1 and Compare point 2 as the two points in time for the comparison.
You can drag the pointers on the history scale to set corresponding time points.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1775


<!-- page 1776 -->
If the history scale does not include the time set for comparison, then its corresponding
pointer appears next to the compare point in yellow:

Note: If there are no changes to the service during the time interval specified by
Compare point 1 and Compare point 2, then no change details are displayed.
6. Click Compare.
The comparison view opens in a separate tab.
7. Select a marked CI to see the relevant change record on the Changes tab.

8. Optional: If Service Mapping is deployed, you can compare two versions of a configuration file
that appears on the map as Updated:
a. Select the CI that is associated with the updated configuration file.
b. In the Properties pane, click the link to the updated file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1776


<!-- page 1777 -->
The Tracked Configuration Files Version Compare tab opens showing two versions of the
configuration file side by side.
c. Review actual changes.
(Optional) Highlight colors indicate the type of change:
▪ Purple — Updated line
▪ Pink — New line
▪ Gray — Deleted line
d. Navigate between the changes using the Next difference icon and the Previous difference
icon .
e. Close the Tracked Configuration Files Version Compare tab when finished.
9. Close the comparison view when finished.
Related topics
View the change history of application services in classic Service Mapping
Compare versions of CI configuration files
View dependent application services in classic Service Mapping
Check which application services depend on an application service and open maps for
dependent application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1777


<!-- page 1778 -->
Before you begin

Roles required: service_mapping_user

About this task

The service that contains a reference to another service instance, becomes a dependent
service. The service that you include as a reference is a contained service.
Dependent service map with a reference to a contained application service

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Right-click the entry point and select Show dependent services.
The pop-up window displays the links to all dependent services for this application service.
3. Select the link for the dependent service whose map you want to view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1778


<!-- page 1779 -->
The map window shows the map for the dependent service you selected.
Related topics
Link application services
View contained application services in classic Service Mapping
A contained application service is a reference included into another, dependent application
service. You can open the contained service map directly from within the dependent service
map.

Before you begin

Roles required: service_mapping_user

About this task

The service that contains a reference to another service instance, becomes a dependent
service. The service that you include as a reference is a contained service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1779


<!-- page 1780 -->
Dependent service map with a reference to a contained application service

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Right-click the CI that is the contained service, and select Show contained service.
The map shows an automatic redirection to the web address for the contained service. No
additional tabs need to open.
Check CI dependencies
You can see if a particular configuration item (CI) is part of other application services and check if
it depends on other CIs.

Before you begin

Role required: admin, app_service_admin, app_service_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1780


<!-- page 1781 -->
About this task

While Service Mapping shows position of a CI in a particular application service, your
organization may also use the same CI in other application services. If you are planning to
perform changes to this CI, make sure that the changes do not affect other application services.

Procedure
1. In the map, right-click the relevant CI and select Open dependency views.
The Dependency Views page opens in the new tab showing the selected CI in the center.
2. Click Details.

3. Click the Related Services tab.
The list of links to application services containing this CI appear on the Related Services tab.
4. To view the map of another application service containing this CI, click the relevant link.
Related topics
Application service maps in classic Service Mapping
Dependency Views
View the network or storage path in classic Service Mapping
You can drill down to see objects behind a connection on a map for troubleshooting service
performance or maintaining your network. This feature is not available for manually created
services or for services on instances using Edge Encryption.

Before you begin

Role required: admin, service_mapping_admin or service_mapping_user

About this task

Displaying a network or storage path allows you to see routers, switches, and host ports which
are part of the connection. The following connection types exist:
Network path
The infrastructure route between two CIs of the host type.
Storage path
The infrastructure route between a CI of the host type and a CI of the storage type.
Service Mapping discovers and displays network devices located on your organization local
network, not on WAN or the public cloud. When Service Mapping encounters a connection
between two applications, it uses traceroute on the source host to figure out the path to the
target host. Then Service Mapping use SNMP credentials to discover the devices it found on the
path.
Service Mapping can show devices for storage paths using the following protocols:
• Fiber Channel: Storage Area Network (SAN)
• IP Ethernet: Internet Small Computer Systems Interface (iSCSI) or Network Attached Storage
(NAS)

Note: For storage paths using Fiber Channel, Service Mapping does not display Fiber
Channel switches.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1781


<!-- page 1782 -->
Between a host CI and a storage CI there may be two separate storage paths using different
protocols: Fiber Channel and IP Ethernet. If so, the service instance map displays one
connection line for both protocols.
You can see the change history for network and storage paths for application services. Checking
path history for manual or technical services is not supported.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. On the map, right-click the connection for the network or storage path you want to see.
3. Select Show network path or Show storage path.
4. If necessary, select the type of protocol and click Choose in the Choose Protocol Type dialog
box.
The view showing the network or storage path opens in a new tab.

If Service Mapping cannot discover all objects in a connection, the connector line on the
network or storage path appears dotted as shown above.
5. For storage paths, use the Storage Mapping tab at the bottom of the screen to view correlation
between file systems on the host and the storage volume or the shared folder on the storage
device.
6. To view the change history for network paths, perform steps in View the change history of
application services in classic Service Mapping.
7. If you access the network or storage path map from Event Management, you can see the list of
alerts related to this path appear at the bottom of the screen.
Related topics
Application service maps in classic Service Mapping
SNMP-based queries

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1782


<!-- page 1783 -->
View the list of CIs belonging to an application service
View a complete list of CIs that make up an application service, including CIs not shown on the
application service map: tracked configuration files, endpoints, processes, and network devices.

Before you begin

Role required: service_mapping_admin or service_mapping_user

About this task

By default, application service maps show application CIs and connections between them.
The rest of the CIs behind applications and connections between them are hidden. The CI list
displays the following additional CIs:
• Servers that host applications.
• Network devices like routers or switches.
• Processes running on hosting servers. Processes are used for identification and classification
of applications.
• Tracked configuration files for applications that are part of the service.
• Endpoints belonging to the applications. Endpoints contain information necessary for
connecting to applications, like hosts and ports.
• The application service CI for this application service.
The CI lists for empty application services, that do not contain any CIs contain only one CI: For
the application service itself.

Procedure
1. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
2. Navigate to Application Services > View:csdm_view > View > Default view.

3. Click the name of the application service for which you want to view the list of CIs.
The discovery state of the selected service must be Done.
4. Click List CIs under Related Links.

5. View the complete list of CIs that are part of the selected application service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1783


<!-- page 1784 -->
6. Click the back button on your browser to return to the Mapped Application Service page when
you have finished reviewing the list of CIs.
7. Select View map to navigate to the application service map.

Convert application service maps into PDFs
You may want to create a PDF for a map to share information about the service content with
other people. PDFs are especially useful during the review and approve process for application
services discovered by Service Mapping.

Before you begin

Role required: app_service_admin, app_service_user

About this task

The PDF of an application service map shows the name of the application service and the exact
time when this PDF was created.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Click the Additional actions menu.

3. Click the button next to the Export to PDFoption.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1784


<!-- page 1785 -->
4. When the PDF is ready, click the Download PDF button in the Export Map into PDF Format
dialog box.
The PDF appears in the downloads folder on your computer.
Modify view for an application service map
Customize a map view to display relevant information and increase clarity.

Before you begin

Role required: app_service_admin, app_service_user, service_mapping_admin, or
service_mapping_user

About this task

By default, service maps are concise and contain every detail about all CIs that you added
manually or that Service Mapping mapped. While it provides a complete picture, using such a
map might be difficult. Customizing maps allows you to:
• make it easier to navigate the map.
• hide irrelevant information.
• show essential information.
Attributes you show or hide when you customize maps are not removed permanently and can
be displayed or hidden again as you need. The system saves the changes to the map view and
displays the last map view when you reopen a service instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1785


<!-- page 1786 -->
Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Click the Additional actions menu.

3. Select the relevant option:

Option

Display in Host View
This option is available only
when the Service Mapping
plugin is activated.

When Enabled

When Disabled

The service map shows host
CIs.

The service map shows
application CIs.

Switch between the CI view
that hides hosts and the host
view that hides CIs.
The host view can help
determine that Service
Mapping discovered and
mapped all hosts correctly
as well as help locate
connections to each host.
The host view also simplifies
the map especially when
many applications are
running on a few hosts.
The Host View is useful
only for service instances
discovered using Service
Mapping. This view does not
offer additional information
for manually created service
instances.

Click the plus icons to see
application CIs running on
the hosts.
The Properties pane shows
information about both
servers who act as hosts and
applications running on the
hosts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1786


<!-- page 1787 -->
Option

When Enabled

When Disabled

The Properties pane shows
only information about
servers who act as hosts.
Group CIs on map
Simplify maps by grouping
CIs belonging to the same
type and hosted on servers
sharing a prefix and domain
name.

The service instance map
shows groups of CIs. The
map is more compact.

The service instance map
shows all CIs separately. The
map is larger.

The service instance map
hides topology cycles.

The service instance map
shows topology cycles.

The service instance map
displays CIs and hosts that
Service Mapping discovered
using both patterns and
traffic-based discovery.

The service instance map
shows only CIs and hosts
discovered using patterns.

The map still reflects the
application flow correctly,
because grouped CIs belong
to the same tier.
This option is relevant for
service instances consisting
of more than 10 CIs.
Remove Topology Cycles
This option is available
only for users with
these roles: Service
Mapping administrator
[service_mapping_admin]
and Service Mapping user
[service_mapping_user].
Hide connections returning to
the same configuration item
(CI) that originated them to
reduce map cluttering.
Usually these returning
connections are not
important for analysis or
troubleshooting of service
instances.
Show Traffic Based CIs
This option is available
only for users with
these roles: Service
Mapping administrator
[service_mapping_admin]
and Service Mapping user
[service_mapping_user].
Display configuration items
(CIs) found using trafficbased mapping.

While detecting CIs inbound
and outbound traffic creates
an inclusive map, it may
also result in mapping
many redundant CIs that
do not influence the service
instance operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1787


<!-- page 1788 -->
Option

When Enabled

When Disabled

The service instance map
merges all CIs with identical
errors into one. The number
on the connector line
indicates the number of CIs
with this error.

The service instance map
shows all CIs with identical
errors separately.

For each record type
that is set to display, the
corresponding indicator
and the tab display. For
example, the Incidents tab
appears underneath the map
and the Incidents indicator
shows next to CIs that have
Display additional information incidents associated with
for a CI or service instance
them.
itself by displaying related
records such as alerts,
outages, incidents, and
problems.

The service instance map
shows CIs without related
indicators.

Merge error nodes
This option is available only
for users with the Service
Mapping administrator
[service_mapping_admin]
role.
Merge CIs with errors caused
by the same source CI to
declutter a service instance
map.
A discovery or operational
error in a CI is often
propagated to all its
connections down the
hierarchy crowding your view.
You can remove identical
errors caused by the same
CI by consolidating them in
one object on the map. For
example, if one CI causes
an error in six CIs that are
connected to it, you can show
only one CI with this error on
the map. The connector line
shows the number of actual
connections.
Map indicators

This option is available
only for users with these
roles: Service user
[app_service_user] and
Service Mapping user
[service_mapping_user].

The base system provides
map indicators for the
following record types:
◦ Affected CIs
◦ Open alerts
◦ Current, planned, or recent
change requests
◦ Open incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1788


<!-- page 1789 -->
Option

◦ Current, planned, or recent
outages
◦ Open problems
For more information, see
Event Management Map
Indicators (Video) .

Spanning tree view
Simplify the map by
organizing CIs into a tree
structure and concealing
some connection lines.

When Enabled

When Disabled

If a record is associated with No map indicators appear
the service instance itself, the next to the service instance
indicator shows next to the
name.
service instance name.

The map displays a service
instance as a tree.

The map reflects the actual
structure of a service
instance.

This option is especially
useful for very large maps.

To view actual connections,
point to a CI. For more
information on viewing
connections, see View CI
connection attributes in an
application service map in
classic Service Mapping.
Include ignored errors
This option is available only
for users with the Service
Mapping administrator

The map shows all errors:
both active and ignored.

The map does not show
ignored errors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1789


<!-- page 1790 -->
Option

When Enabled

When Disabled

[service_mapping_admin]
role.
You can display errors which
were previously hidden from
the map.
Application service analysis and maintenance using legacy Agent Workspace
Service Mapping creates maps to help you see the architecture and organization of application
services. These maps are useful for planning change or migration, as well as analyzing the
continuity and availability of services.
Application service maps in legacy Agent Workspace
Maps offer you a visualization of data on configuration items (CIs) comprising application
services, and relations and connections between these CIs.
A new map is created every time you manually create an service instance or map an service
instance using Service Mapping. The system updates the map every time you add CIs to the
service instance or when Service Mapping runs discovery for CIs belonging to this service
instance.

Map window
Aside from the map itself, the Service Map may also display the basic service information like
the severity, status, and application owner of the service. You can also view additional service
information on the Service properties pane. Click the Related items icon to display all alerts or
changes associated with CIs comprising this application service or the application service itself.
The service instance map in the Event Management view reflects the severity status of CIs
belonging to the service instance.
Service Mapping

By default, the entire map is shown in the center of the visible map area of the window. Position
the map and zoom in and out using these controls.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1790


<!-- page 1791 -->
Control zoom and positioning of your map

You can also click anywhere in the map area and drag the required segment of the map into the
visible area.

CI attributes and CI-related messages
When a map is loaded and no elements are selected, the Service properties pane shows the
details of this service instance.
A selected device, application, or connector appears in green and is highlighted. Information
about the selected map element is displayed in the Properties pane on the right of the map.
The Properties pane shows attributes for connections and CIs

The attributes for the server hosting applications and applications themselves are shown
separately inside the Properties pane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1791


<!-- page 1792 -->
The Properties pane shows attributes for hosts and applications separately

Related Items
Click the Related Items icon to display alerts or changes associated with this application service
or its CIs.
If there is any information related to the selected CI or connection, it is highlighted in the Related
Items pane on the right of the window.
Select a CI to display information related to it

When you select information in the Related Items pane on the right of the map window, the
related CI displays in yellow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1792


<!-- page 1793 -->
Selecting message marks the related CI yellow

You can display other related items, such as planned changes or cases, associated with the
application service. For more information, see Modify view for an application service map in
legacy Agent Workspace.
Related topics
View an alert impact on CIs in a service map
View maps for application services in legacy Agent Workspace
Use maps to see the details of application services. Maps show configuration items (CIs) making
up application services, connections between these CIs and other service-related details.

Before you begin

Role required: sm_app_owner, service_mapping_user, evt_mgmt_admin, evt_mgmt_operator, or
evt_mgmt_user

About this task

The service instance map in the Event Management view reflects the severity status of CIs
belonging to the service instance. For more information about viewing service details on maps,
see Application service maps in legacy Agent Workspace.

Procedure
1. In Agent Workspace, click the Lists icon on the left pane.
2. Navigate to All > Services > All Services.
The list of services displays services in Operational status.
3. Click the name of the relevant service instance.
The service tab opens showing service details on the Details tab.
4. Click Service Map.
The Service Map tab opens displaying the map of this application service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1793


<!-- page 1794 -->
5. Click on CIs or their connections to display their details in the Service properties pane on the
right.
6. Display additional information for a CI or application service itself by displaying related records
such as alerts, outages, incidents, and problems.
For more information, see Modify view for an application service map in legacy Agent
Workspace.
7. To access the service map in the standard Event Management UI that provides full map-related
functionality, click Full map.
Related topics
Service Mapping
View the change history of application services in legacy Agent Workspace
View changes made to a service instance and to the individual configuration items (CIs)
comprising the service in Agent Workspace. You can also compare the service status before and
after a certain change or problem. The change history is useful for maintenance, planning, or
troubleshooting procedures.

Before you begin

Role required: admin, service_mapping_admin, service_mapping_user, app_service_admin, or
app_service_user

About this task

Details about changes to a service instance and to its CIs are stored in the CMDB. Typically,
these changes reflect adding or removing CIs from a service instance, upgrading or updating
CIs, or modifying CI configuration files. The system gathers this data by querying CMDB tables
and then creating the change history view. In deployments where Service Mapping is activated,
the type of change information Service Mapping queries depends on discovery patterns that
Service Mapping uses to discover CIs.
Changes to the application service appear on the history timeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1794


<!-- page 1795 -->
The history scale shows changes to the application service

Specify two points in time for which to compare the two versions of an application service. You
can use the change marks on the timeline to specify points in time that are before and after a
change for which you want to see details. For example, if you know that the application service
started to fail at a certain time, you can compare two versions of the application service, one
before and one after the problem started. This comparison lets you see the summary of changes
that possibly led to the problems.
The default timeline range is the recent week. The upper limit of the time range is the moment
when you opened the map in the Change History view. If the application service was created less
than a week ago, the time range starts from the time of service creation.
The time range cannot contain more than 1 thousand changes. If there are more changes within
the selected range, the history scale automatically adjusts to display 1 thousand changes.
To view validation status of changes and changes to related items, like tracked configuration
files, use the classic Service Mapping UI. For more information, see View the change history of
application services in classic Service Mapping and Compare two versions of an application
service in classic Service Mapping.

Procedure
1. In Agent Workspace, click the Lists icon on the left pane.
2. Navigate to All > Services > All Services.
The list of services displays services in Operational status.
3. Click the name of the relevant service instance.
The service tab opens showing service details on the Details tab.
4. Click Service Map.
The Service Map tab opens displaying the map of this application service.
5. Click Change History Map.
The History Map tab displays the map in the history view. By default, the time range is a week.
6. Compare the application service before and after a change, by performing the following steps:
a. Change the time range on the timeline by clicking the Zoom in or Zoom out buttons next to
the timeline.
Alternatively, point at the timeline and scroll.
The map shows changes to CIs. CIs are marked as added, updated, or deleted.
The Properties History pane shows the comparison summary of changes to this application
service. Click Change history

to view change record cards for this application service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1795


<!-- page 1796 -->
b. Focus on changes on the map using one of the following methods:
▪ To highlight the CI responsible for the change record and to show the change record card,
click the change mark on the timeline. You can highlight multiple CIs by clicking the mark
for multiple changes.

▪ To highlight the CI responsible for the change in the map, click the change record card in
the Change history pane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1796


<!-- page 1797 -->
▪ To display the related change record card in the Change history pane, click the CI on the
map.

Modify view for an application service map in legacy Agent Workspace
Customize a map view to display relevant information and increase clarity.

Before you begin

Role required: service_mapping_user, sm_app_owner, evt_mgmt_admin, evt_mgmt_operator, or
evt_mgmt_user

About this task

By default, service maps are concise and contain every detail about all CIs that you added
manually or that Service Mapping mapped. While it provides a complete picture, using such a
map might be difficult. Customizing maps allows you to:
• make it easier to navigate the map.
• hide irrelevant information.
• show essential information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1797


<!-- page 1798 -->
Attributes you show or hide when you customize maps are not removed permanently and can
be displayed or hidden again as you need. The system saves the changes to the map view and
displays the last map view when you reopen a service instance.
The service instance map in the Event Management view reflects the severity status of CIs
belonging to the service instance.

Procedure
1. In Agent Workspace, click the Lists icon on the left pane.
2. Navigate to Services > All Services.
The list of services displays services in Operational status.
3. Click the name of the relevant service instance.
The service tab opens showing service details on the Details tab.
4. Click Service Map.
5. Click the Open Map Display Settings button.

6. Select the relevant option:

Option

Display in Host View
The host view also simplifies
the map especially when
many applications are
running on a few hosts.

When Enabled

When Disabled

The service map shows host
CIs.

The service map shows
application CIs.

The service instance map
shows groups of CIs. The
map is more compact.

The service instance map
shows all CIs separately. The
map is larger.

The Host View is useful
only for service instances
discovered using Service
Mapping. This view does not
offer additional information
for manually created service
instances.
Group CIs on map
Simplify maps by grouping
CIs belonging to the same
type and hosted on servers
sharing a prefix and domain
name.
The map still reflects the
application flow correctly,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1798


<!-- page 1799 -->
Option

When Enabled

When Disabled

because grouped CIs belong
to the same tier.
This option is relevant for
service instances consisting
of more than 10 CIs.
Remove Topology Cycles

The service instance map
Hide connections returning to hides topology cycles.
the same configuration item
(CI) that originated them to
reduce map cluttering.

The service instance map
shows topology cycles.

Usually these returning
connections are not
important for analysis or
troubleshooting of service
instances.
Spanning tree view
Simplify the map by
organizing CIs into a tree
structure and concealing
some connection lines.

The map displays a service
instance as a tree.

The map reflects the actual
structure of a service
instance.

The service instance map
displays CIs and hosts that
Service Mapping discovered
using both patterns and
traffic-based discovery.

The service instance map
shows only CIs and hosts
discovered using patterns.

This option is especially
useful for very large maps.

Show Traffic Based CIs
This option is available
only for users with
these roles: Service
Mapping administrator
[service_mapping_admin]
and Service Mapping user
[service_mapping_user].
Display configuration items
(CIs) found using trafficbased mapping.

While detecting CIs inbound
and outbound traffic creates
an inclusive map, it may
also result in mapping
many redundant CIs that
do not influence the service
instance operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1799


<!-- page 1800 -->
Option

Map indicators
Display additional information
for a CI or service instance
itself by displaying related
records such as alerts,
outages, incidents, and
problems.
The base system provides
map indicators for the
following record types:
◦ Affected CIs
◦ Changes: Current, past, or
planned
◦ Outages: Current, past, or
planned

When Enabled

When Disabled

For each record type
that is set to display, the
corresponding indicator
and the tab display. For
example, the Incidents tab
appears underneath the map
and the Incidents indicator
shows next to CIs that have
incidents associated with
them.

The service instance map
shows CIs without related
indicators.

If a record is associated with No map indicators appear
the application service itself, next to the application
the indicator shows next to
service name.
the application service name.

◦ Problem
For more information, see
Event Management Map
Indicators (Video) .

Service Mapping reference
Reference topics provide additional information about mapping and fine-tuning application
services using Service Mapping lists and forms.
Service Mapping Workspace
The Service Mapping workspace provides a central location to streamline the process of
mapping your application services. Use the visualizations and reports to analyze, monitor, and
update your resources, create application services, and manage your service mapping tasks
efficiently.

Access
Navigate to Workspaces > Service Mapping.

Key features and capabilities
• Machine Learning (ML) readiness - Confirm that your Machine Learning environment is
prepared before you start to map application services.
• Detailed service maps - Drill down for detailed information on service maps across various
categories.
• Automated Service Suggestions - Leverage Automated Service Suggestions to
evaluate suggested application service candidates, using them to create application services
or enhance existing ones.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1800


<!-- page 1801 -->
• Improved resource utilization - Use unmapped servers linked to an application service
candidate to create application services.
• Tag-based service mapping - Use the Tag-based mapping dashboard to map your
organization's configuration items (CIs) into application services.

Important:
Access to tag-based service mapping in the Service Mapping workspace requires the
installation of Service Mapping Plus version 1.16.3.

Key Metrics
Mapped application services
The number of application services previously mapped. Select to view specific
information about these services such as operational status and business criticality.
ML-powered candidates
The number of application service candidates identified using the Automated
Service Suggestions feature.

Note: Starting with Service Mapping Plus version 1.16.3, the filtering process
has been updated to include only the most relevant candidates, excluding any
ignored or irrelevant ones. This enhancement requires the installation of ITOM
Content Service.
Mapped servers
The number of servers currently linked to an application service. Select to view
information such as operational status and owner.

Reports
Select the relevant section of each report to view more detailed information.

Title

Type

Service maps by
operation type

Bar report

Service maps by
creation method

Pie report

Service maps by
criticality

Bar report

Source table

Description

A bar report that
Mapped
presents the mapped
Application Service
application services
[cmdb_ci_service_discovered]
grouped by operation
type.
Mapped
A pie report that
Application Service
presents the mapped
[cmdb_ci_service_discovered]
application services
grouped by creation
method.

Mapped
A bar report that
Application Service
presents the mapped
[cmdb_ci_service_discovered]
application services
grouped by the level
of criticality.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1801


<!-- page 1802 -->
Title

Unmapped servers

Type

Source table

Description

Bar report

Server
[cmdb_ci_server]

A bar report that
presents unmapped
servers that have
been matched to an
application service
candidate as well as
those servers with no
candidate.

Note: This view
is applicable
to users with
Service Mapping
Plus versions
earlier than
1.16.3.

Unmapped servers

Note: This
view is available
starting with
Service Mapping
Plus version
1.16.3.

Service Configuration
Item Association
[svc_ci_assoc]

Application
service candidate
[sa_ml_application_service_candidate]
Select Unmapped
servers with
candidate to view
servers you can use to
create an application
service. For more
information, see
Create an application
service for unmapped
servers.
Bar report

Server
[cmdb_ci_server]
Service Configuration
Item Association
[svc_ci_assoc]

A bar report that
presents the number
of unmapped servers,
divided into two
categories:

• Unmapped servers
without candidate
Application
- servers that have
service candidate
been matched to an
[sa_ml_application_service_candidate]
application service
candidate.
• Unmapped servers
with relevant
candidate - servers
that have no
candidate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1802


<!-- page 1803 -->
Title

Type

Source table

Description

Note: Starting
with Service
Mapping Plus
version 1.16.3,
the filtering
process has
been updated to
include only the
most relevant
candidates,
excluding
any ignored
or irrelevant
ones. This
enhancement
requires the
installation of
ITOM Content
Service.

Additional components
Populate data
You can select this button to refresh the page and update the displayed information
to reflect the most recent data.
Search for server
You can locate a specific server using this field by entering the server name to
see a list of options. Selecting the server you want from the list, and then Search,
takes you to the Mapped Server page. Select the server name for more detailed
information.

Tag-based service mapping
Select the Tag-based service mapping icon
to access the Tag-based service mapping
dashboard. Here you can categorize and map your organizaton's on-prem and cloud resources
into application services. For more information, see Tag-based mapping in the Service Mapping
Workspace.

Application service readiness dashboard
Select the Application service readiness icon
dashboard.

to access the Application service readiness

Use this dashboard to ensure you have enabled Predictive Intelligence, verify Machine Learning
readiness, and confirm that your data has been trained.
For more information about application readiness, see Application service readiness dashboard
in configurable workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1803


<!-- page 1804 -->
Related topics
Automated Service Suggestions
Map application services based on Automated Service Suggestions
Name suggestions for application service candidates
Predefined traversal rules for application services in Service Mapping
Service Mapping uses traversal rules to bring in related configuration items and expand the
application service map. Several predefined rules are provided by default to help find and
correctly map these relationships.

About traversal rules
Predefined traversal rules in Service Mapping are key to identifying the relationships between
configuration items (CIs) and building accurate application service maps. To maintain integrity
and avoid issues, such as incomplete maps or service disruptions, these rules are fixed.
You can't change, customize, or remove them. To create custom traversal rules to meet your
organization's needs, see Traversal Rules for Application Services form completion.

Predefined traversal rules
Priority
Level

Is Reverse

100

false

Parent Type

Relationship

Child Type

cmdb_ci

Runs on::Runs

Hardware
[cmdb_ci_hardware]

cmdb_ci

Hosted on::Hosts

Logical Datacenter
200
[cmdb_ci_logical_datacenter]

false

cmdb_ci_lb_service

Hosted on::Hosts

Cloud Load Balancer 300
[cmdb_ci_cloud_load_balancer]

false

cmdb_ci_cluster_node Hosted on::Hosts

Server
[cmdb_ci_server]

400

true

cmdb_ci

Tracked
500
Configuration File
[cmdb_ci_config_file_tracked]

false

cmdb_ci_cluster_node Cluster of::Cluster

Cluster
[cmdb_ci_cluster]

600

false

cmdb_ci_cluster_node Cluster of::Cluster

Cluster
[cmdb_ci_cluster]

700

true

cmdb_ci_cluster_node Hosted on::Hosts

Server
[cmdb_ci_server]

800

false

Contains::Contained
by

For example, the first row of the table illustrates a traversal rule that identifies and adds the
hardware (cmdb_ci_hardware) supporting a given software application (cmdb_ci). When Is
Reverse is set to false, the discovery process starts with the application and identifies the
hardware it runs on-traversing from the parent CI to the child CI. The relationships are then
added to the application service map.
To learn more about traversal rule components and related terminology, see Traversal rules in
Service Mapping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1804


<!-- page 1805 -->
Traversal Rules for Application Services form completion
To edit an existing CI relationship or add a new CI relationship during the tag-based discovery
process, complete the Traversal Rules for Application Services form.

Field

Rule Definition

Description

To create a new CI relationship:
1. Select New.
2. Select the Lookup using list icon
and to
view the available CI Relationship Type Rule
Definitions.
Continue as follows, depending on your
situation:
◦ If you see a CI relationship that you want
to use:
a. Select that relationship.
b. Select Submit. The new CI
relationship is added to the CI
Relationship Type Rule Definitions
[cmdb_rel_type_rule_definitions_list]
table.
◦ If you don’t see the desired CI
relationship:
a. Select New in the CI Relationship Type
Rule Definitions window.
b. Select the CI Class from the Parent
Type list.
c. Begin entering the relationship in the
Relationship Type field and select the
appropriate relationship type from the
list.
d. Select the CI Class from the Child Type
list.
e. Select Submit.
f. Select Submit on the Traversal Rules for
Application Services - New Record form.
The new CI relationship is added to the
CI Relationship Type Rule Definitions
[cmdb_rel_type_rule_definitions_list]
table.
To edit a preconfigured CI relationship:
1. Select the preconfigured CI relationship in
the Parent Type column.
2. Select the Preview this record icon
select Open Record.

, then

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1805


<!-- page 1806 -->
Field

Description

3. Modify the Parent Type, Relationship Type,
or Child Type as needed.
4. Select Update.
For example, to discover Linux servers hosting
storage devices, select the following values:
• Parent Type: Linux Server
[cmdb_ci_linux_server]
• Relationship Type: Contains::Contained by
• Child Type: Storage Device
[cmdb_ci_storage_device]
Is reverse

Select this check box to traverse a CI
relationship starting from the child CI instead
of the parent CI.
Using the previous example, select this check
box to begin with the storage devices and
find the Linux servers that host these specific
storage devices.

Used By

Select only Service by Tags.

Note: Don’t select Service

Recomputation. This selection helps
prevent editing any existing traversal
rules or adding new ones and produces
an error message.
Active

Select this check box to use this traversal rule
in the tag-based discovery.
Alternatively, clear this check box to exclude
this traversal rule from the tag-based
discovery.

Note: By default, you can have
only five traversal rules participating
in tag-based discovery. To change
the maximum number of traversal
rules, edit the value for the
svc_by_tags.max.traversal.rules.active
property in the System Property
[sys_properties] table.
Order

Enter a number for the order. The system uses
traversal rules for discovery in sequence from
low order to high.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1806


<!-- page 1807 -->
Field

Description

Note: When configuring traversal
rules with dependencies, verify that
prerequisite rules are executed before
dependent ones by assigning them a
lower-order number.
Name suggestions for application service candidates
Automated Service Suggestions provides meaningful name suggestions for service
identification, which you can access on the Application Service Suggestions tab in the Service
Mapping workspace.
Application service candidate name suggestions
Name suggestion

Description

Candidate name suggestion

The primary candidate name suggestion
prioritizes the Service Fingerprints name, then
defers to other name suggestions as needed.

Service Fingerprint

Name suggestions taken from a maximum
of three Service Fingerprints related to the
candidate.

Load balancer

Name suggestions taken from the names
of the top three load balancer services
associated with the candidate.

Process

Name suggestions taken from the process
entry point command lines for the candidate.
An algorithm identifies the most relevant
words and provides the top three name
suggestions.

Entry point

Name suggestions taken from all the entry
point IP addresses associated with the
candidate.
Entry point name suggestions is deprecated
beginning with version 1.12.3. This column is
still displayed but is no longer populated with
data. It will eventually be removed.

AFP (Application fingerprint)

Name suggestions taken from the top three
application fingerprints associated with the
candidate.

Related topics
Automated Service Suggestions
Map application services based on Automated Service Suggestions
Application service readiness dashboard in configurable workspace
Review the information on the dashboard to confirm that you’re ready to discover and map
application services based on machine learning (ML). Service Mapping uses data processed by
Predictive Intelligence to generate suggestions for traffic-based connections.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1807


<!-- page 1808 -->
The Application service readiness dashboard is part of Service Mapping Plus, available on the
ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Predictive Intelligence evaluates connections between application fingerprints, CIs, and
processes, and ranks their relevancy. Service Mapping uses this information to create
connections based on connection rules. It also generates connection suggestions for servers
and load balancers for you to decide which connections to add or remove from the service
instances.
Widgets on the ML Dashboard page show the information about prerequisites and issues related
to service discovery based on Predictive Intelligence. Select links inside the widgets and reports
to navigate to the related list or form.

Required ServiceNow AI Platform roles
service_mapping_admin

Access the Application service readiness dashboard
To open the dashboard, navigate to Workspaces > Service
Mapping. Then select the Application service readiness icon

.

Reports
The dashboard includes the following reports.

Title

Type

Source table

Description

Mapping status of
application service

A bar report

ML-Related
A bar report that
Service Status
provides the summary
[ml_related_service_status]
of ML-related issues in
mapped application
services. For detailed
information, see

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1808


<!-- page 1809 -->
Title

Type

Source table

Description

Mapping status of
application services.
Application
fingerprints training
status

A donut report

AFP Training Status
[afp_training_status]

A donut report that
shows the status of
application fingerprint
training. Predictive
Intelligence trains
predictive models
and machinelearning solutions.
View the training
status for application
fingerprints to
understand if your
deployment is
ready for mapping
using Predictive
Intelligence.

Traffic-based
connection
suggestions for
existing discovered
services

A donut report

Connection
A donut report that
Suggestions
reflects the ratio of
[sa_ml_connection_suggestion]
classified connections
to valid connections
in the Connections
Suggestions table.
This table is only
populated during topdown discovery.

Mapping status of application services
Review the summary of ML-related issues in mapped application services.

Category

Description

Mapped without issues

The number of service instances discovered
without ML-related issues.

Missing source-target AFP

The number of service instances missing
some application fingerprints for a source or
target process. To solve issues, calibrate the
fingerprint-based discovery.

Missing source-target process

The number of service instances missing
some source-target process information. To
solve these issues, rediscover the target hosts
and ensure that the relevant processes are
discovered.

Confidence level unavailable

The confidence level indicates the likelihood
of this connection being part of the service
instances. If the confidence level appears
as N/A, wait until the application fingerprints
training is complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1809


<!-- page 1810 -->
Category

Description

Missing target host

The number of service instances with some CI
connections not fully discovered, because the
horizontal discovery didn't discover host CIs.
To solve these issues, rediscover the target
hosts and ensure that the relevant processes
are discovered.

Prerequisites status
Service instance mapping requires the integration of several modules and applications:
credentials, Predictive Intelligence, enhanced Application Dependency Mapping (ADME)
discovery, and scheduled jobs. Review the list of prerequisites and ensure that the state of all
prerequisites is Ready.

Prerequisite

Description

Install and enable Predictive Intelligence (PI)
plugin

Service Mapping uses Predictive Intelligence
to generate connection suggestions.
1. Ensure that the Predictive Intelligence
plugin appears Installed.
2. Click the Predictive Intelligence tile and
verify that the Status is Active. If the status
is Inactive, select the Activate/Repair link
under Related Links.

Enable ADME property

Service Mapping uses ADME
probes. Ensure that the

glide.discovery.enable_adme
property is set to True.
Enable ADME or ADM probe for each relevant
OS

Allow IP address expansion

There are multiple ADME probes for different
types of operating systems. Enable all probes
necessary to discover configuration items
(CIs) in your environment.
This setting helps manage the expansion
of global addresses (such as '0.0.0.0' or '*')
into individual IP addresses. The limit for this
expansion must be greater than 0.
To verify and set this limit:
1. Navigate to the System Property
[sys_property] table.
2. Locate the

sn.adm.ip_expansion_limit
property.

3. Ensure that this property is set to a positive
number.
Enable application fingerprint (AFP)
scheduled job

Ensure that the Applications

suggestion - ITOM Autodisco

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1810


<!-- page 1811 -->
Prerequisite

Description

scheduled job that controls the fingerprintbased discovery is set to Active.
Enable Connection Suggestion property

Confirm that discovery based on
Predictive Intelligence is enabled.
Navigate to the System Property
[sys_properties] table and verify that the

sa_ml.connection_suggestions.active
property is set to True.
Enable connection suggestion scheduled job

Ensure that the Status of the Service

Mapping - Traffic Process
to Process scheduled job is Active.

This schedule job triggers generation of
connection suggestions.

Service issues
Review the list of service instances most affected by ML-related issues. The list of most affected
services is available if the connection suggestions feature is enabled in your deployment. The
list shows service names and the number of ML-related issues for each of them. It also indicates
if the traffic-based feature is enabled for the services.
Related topics
Learn about ADME probes
Enable and configure discovery using ADME probes
Calibrate fingerprint-based discovery
Ensure that the fingerprint-based discovery generates suggestions
Troubleshooting guide for Service Mapping ML Connection Suggestions [KB0963421]
Components installed with Service Mapping Plus
Several types of components are installed with activation of the Service Mapping Plus plugin,
including tables and scheduled jobs.

Note: The Service Mapping Plus application is available in the ServiceNow Store

.

Scheduled jobs installed
Scheduled job

Description

Update
statistics for
application
service
readiness
dashboard

Refreshes the information displayed on the Application service readiness
dashboard. Runs hourly. In addition, runs when the Check Readiness button
is selected on the Application service readiness dashboard. The system
doesn't trigger this scheduled job sooner than five minutes since the last run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1811


<!-- page 1812 -->
Tables installed
Table

Description

ML-Related Service Status
[ml_related_service_status]

Contains the information about the ML-related
issues in mapped application services.

Top ML Error Services
[top_ml_err_services_list]

Contains the list of up to 10 application services
containing the largest number of ML-related issues.

ML Dashboard Prerequisites
[ml_dashboard_prerequisites]

Contains the links to forms and tables that require
setting up for mapping based on ML and the status
information for these configurations.

AFP Training Status [afp_training_status] Contains the status of application fingerprint
training.
Connection Suggestions Training Status Contains the status of connection suggestions.
[connection_suggestion_training_status]
ML P2P ETA Calculation Constants
[sa_ml_p2p_eta_values_list]

Stores the information on how the system calculates
the time remaining for connection suggestion
training.

Properties Installed
Property

Description

sa.asc.logger_level

Adds messages to the system log for the
application service candidate.
• Type: string
• Default value: error
• Other possible values: debug

Note: Setting the property to debug
displays both debug and error
messages.
sa.topdown.enable_cmdb_based_mapping

This property enables CMDB-based mapping
using the CMDB instead of the MID Server.
• Type: boolean
• Default value: false
• Other possible values: true

sn_sm_scoped_app_app.sa.unified_map.enabled
Enables access to the Unified Map through the
Service Mapping workspace.
• Type: boolean
• Default value: false
• Other possible values: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1812


<!-- page 1813 -->
Property

Description

sn_cmdb_ws_config_property.unifiedmap.map_search.max_nodes
To ensure high performance, this property
limits the number of nodes that can appear on
a map.
• Type: integer
• Default value: 250
Higher values might decrease performance
because Unified Map loads all elements and
related details when opened.

Note: The

unifiedmap.map_search.max_nodes
property in the workspace-specific
[sn_cmdb_ws_config_property]
table replaces the deprecated

sn_cmdb_ws.node.map.max.edge.count
property.
sn_sm_scoped_app.svc_by_tags.max_candidates_per_family
Limits the maximum number of tag-based
service candidates created for a single
family. If the family definition includes more
candidates, the most recently updated CIs
take precedence. This value applies to all tagbased service families.
• Type: integer
• Default value: 200
sn_sm_scoped_app.max_valid_discovery_period_in_days
Sets the maximum number of days a host is
considered valid when generating application
service candidates. Setting this value to any
non-positive integer deactivates this feature.

Warning: If this value is set lower than
or too close to the discovery cycle, it
might result in the removal of all hosts.
Consequently, no new candidates are
created and existing candidates are
deleted.
• Type: integer
• Default value: 0
Components installed with Service Mapping
Several types of components are installed with activation of the Service Mapping plugin,
including tables, user roles, properties, and scheduled jobs.
Demo data is available for this feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1813


<!-- page 1814 -->
Roles installed
Role title [name]

[app_service_admin]

[app_service_user]

[itom_admin]

Description

Creates and modifies service
instances, creates service
groups, views, and edits
service instance maps.
Views maps for operational
service instances and
retrieves service content
using the getContent - GET
REST API. The itil role that
serves as the basic helpdesk
technician role contains the
app_service_user role.

Contains roles

[itil]

[cmdb_read]

Configure IT Operations
[sn_bm_client.benchmark_data_viewer]
Management applications
using the ITOM Guided Setup. [sm_itom_license.reader]

Note: The ITOM
Guided Setup does not
cover Service Mapping.
[sam_core_admin]

An internal role.

[sam_core_user]

[sam_core_user]

An internal role.

[itil]

Sets up the Service Mapping
application. Maps, fixes,
and maintains service
instances. Also performs
advanced configuration and
customization of the product.
Assign this role to application
administrators.

• [app_service_admin]

[service_mapping_admin]

• [app_service_owner]
• [discovery_admin]
• [itil_admin]
• [itom_admin]
• [sam_core_admin]
• [personalize_dictionary]
• [pd_admin]
• [pd_user]
• [service_mapping_user]

[sm_app_owner]

Provides information
necessary for successful
mapping of a service instance.
Once a service is mapped,
this user reviews the results
and either approves it or
suggests changes. Assign the
sm_app_owner role to users

[service_mapping_user]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1814


<!-- page 1815 -->
Role title [name]

Description

Contains roles

who own service instances
and are familiar with the
infrastructure and applications
that make up the services.
[sm_itom_license.reader]

[service_mapping_user]

[sn_svc_err.admin]

[pd_admin]

Views subscription
information and statistics for
IT Operations Management
applications.

[cmdb_read]

Views maps for operational
service instances to plan
change or migration, as well
as analyze the continuity and
availability of services. Assign
this role to application users.

• [sam_core_user.service_mapping_user]

Fixes discovery errors in bulk
using the error framework
feature in Service Mapping
and Discovery.

[itil]

Creates new and modifies
existing patterns, which
Service Mapping and
Discovery use for performing
horizontal and top-down
discovery.

• [itil.service_mapping_user]

[pd_user]

Note: Users with the itil role only can view all service instances.
Scheduled jobs installed
Scheduled job

Description

Deferred Discovery Cleanup
Runs every minute. Detects and cancels
[sysauto_script_ba4bee737f0022008f1c3b19befa9108]
discovery schedules on TCP connections that
are not in the active state anymore (5 minutes
of no activity).
Update Query Based Services
Runs every 10 minutes. Updates views for all
[sysauto_script_08745913f31131002e6bae4716612bf1]
defined technical services.
Update App Service Status
Runs every minute. Updates the discovery
[sysauto_script_5641702ac32102003e76741e81d3ae9e]
status attribute for application services. The
discovery status is calculated as the overall
status over all endpoints that an service
instance contains.
Flow Discovery Scheduler
Runs every 10 minutes. Triggers the network
[sysauto_script_74c676f0dbb0220060ff742eaf9619f2]
flow discovery and writes the data into the
[sa_flow_connector] table. This scheduled job
is disabled by default. Enable this scheduled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1815


<!-- page 1816 -->
Scheduled job

Description

job to discover CIs using Netflow as described
in Data collection and discovery using Netflow.
Generate entry point candidates
Runs daily. Scans the TCP Connection
from netflow and netstat data
[cmdb_tcp] table and uses this data to
[sysauto_script_b0b95067c3d0030039a3553a81d3aeb5]
generate entry points and store them in the
Candidate Entry Points [sa_cand_entry_point]
table. This scheduled job supports generating
entry points necessary for mapping multiple
application services (in bulk). This scheduled
job is enabled by default.
Save thread dumps
Not active by default. When enabled, collects
[sysauto_script_a49cd030c302020039a3553a81d3aefb]
thread dumps and stores the data in the
[sys_thread_dump] table.
Slow steps stats persist
Runs every minute. Collects data on slow
[sysauto_script_dc0de690c302020039a3553a81d3aee0]
execution of pattern steps and writes this data
into the [sys_step_pattern] table.
Calculate number of servers
Runs every Sunday. Updates the licensing
[sys_trigger_db438f407f510200f128134f8dfa91c6]
metric with the overall number of discovered
servers on instance. This information is used
for billing. On domain separated instances, the
number is updated for each domain.
Run DNS Lookup For All Entry Points
and Manual Connection Endpoints
[f178ab457fb213001952baf8befa91d3]

Runs the DNS lookup probe on all entry
points and manual connection endpoints and
updates information on their IP addresses in
the CMDB. This scheduled job is disabled by
default.

[sm dedup tracker for specific discovery
sources]

In some cases, Service Mapping and thirdparty discovery or monitoring tools identify
the same configuration item (CI) differently.
It results in the CMDB application table
containing two records for the same CI. This
scheduled job scans the CMDB application
tables that contain information about CIs
identified as generic applications. If the
scheduled job identifies duplicate records
based on the CI type and the discovery
source, it creates a deduplication task.

[sys_auto_flush_5211e7e1c320220039a3553a81d3aee6]
Cleans the [sa_flow_connection] table from
records not updated for the last seven days.
[sys_auto_flush_956d498b938503006a7031f6357ffbec]
Cleans the [sa_performance_statistics] table
from records containing statistics of overall
event processing time and created earlier than
30 days ago.
[sys_auto_flush_ce1a978193001200e0e931f6357ffb59]
Cleans the [sa_performance_statistics] table
from records created earlier than 2 days ago.
[sys_auto_flush_b24d9c30c302020039a3553a81d3ae53]
Cleans the [sys_thread_dump] table from
records created earlier than 7 days ago.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1816


<!-- page 1817 -->
Scheduled job

Description

[sys_auto_flush_cf129ebe7f223200995cbaf8befa916f]
Cleans the [sa_ml_feature_data] table from
records not updated in the last 7 days, and
have a special state (empty label field).
[sys_auto_flush_d2516be1c320220039a3553a81d3ae21]
Cleans the [sa_flow_service] table from
records not updated in the last 7 days.
[sys_auto_flush_db416be1c320220039a3553a81d3ae1f]
Cleans the [sa_flow_server_comm] table from
records not updated in the last 7 days.
[sys_auto_flush_41d9b007b71310105984eb25de11a96e]
Cleans the Connection Suggestion
[sa_ml_connection_suggestion] table from
the old records that match the following
conditions:
• They weren't updated in the last 7 days.
• The suggestion record has an active
discovered TCP connection (the TCP
connection record is not absent).
• The record doesn't have a user decision
“Add” or “Remove” associated with it.

Tables installed
Table

Description

Pre Service Mapping Task Scripts

Contains scripts that Service Mapping runs on
the instance and collect information that helps
identify the relevant pattern for a CI.

[sa_pre_task_script]
Traffic Based Connection Qualifiers
[cmdb_ci_qualifier_traffic_based_connection]
Dynamic CI Group

Legacy content. Not used in the current
version.
Contains technical services.

[cmdb_ci_query_based_service]
Components
[sa_bs_components]
Candidate Entry Points
[sa_cand_entry_point]
Dashboard View
[sa_dashboard_view]
Service Discovery Messages
[sa_discovery_message]

Contains information on components that are
part of the service instance. Customers enter
this information manually in the Questionnaire
tab of the service instance form.
Contains information on potential entry points
that Service Mapping retrieved from load
balancers or traffic-based connections.
Contains configuration that defines which
services to display in the Service tree.
Contains discovery messages and errors
that Service Mapping generates during the
discovery process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1817


<!-- page 1818 -->
Table

Description

ITOM Error task

Contains information that Service Mapping
and Discovery use for error-handling
functionality.

[sa_error_handler_task]
Error EP AS Manual EP
[sa_errors_as_manual_ep]
Manual connections

Contains data on errors that customers skip
during the following procedure: Skip errors to
continue discovering an application service.

[sa_manual_connections]

Contains information on endpoints that
customers use while adding manual
connections.

ML Feature Data

Internal table.

[sa_ml_feature_data]
ML Model

Internal table

[sa_ml_model]
ML Traffic Validation

Internal table

[sa_ml_traffic_validation]
Performance Statistics
[sa_performance_statistics]
Service Maps
[sa_service_counters]
Simulation entry points

Internal table for storing performance data on
impact calculation in Event Management.
Stores data about number of CIs and
discovery errors per each discovered service.
Internal table.

[sa_simulation_entry_points]
Service Process Tasks
[service_process_task]
Slow Steps
[sys_step_pattern]
Thread dump

Stores data requests and review requests for
application services.
Stores information about slow execution of
pattern steps. This data is used for monitoring
and troubleshooting.

[sys_thread_dump]

Internal table for storing performance
data used for troubleshooting in Event
Management.

Automation Error Category

Stores all supported categories for errors.

[automation_error_category]
Automation Error Categories Statistics
[automation_error_category_stats]
Automation Error Code

Stores the latest error statistics on all error
categories.
Stores all supported error codes for discovery
errors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1818


<!-- page 1819 -->
Table

Description

[automation_error_code]
Automation Error Code Statistics
[automation_error_code_stats]
Automation Error Discovery Categories
Statistics

Stores the latest error statistics on all error
codes.
Deprecated.

[automation_error_discovery_category_stats]
Automation Error Discovery Code Statistics

Deprecated.

[automation_error_discovery_code_stats]
Automation Error Discovery Message

Stores the latest error messages.

[automation_error_discovery_msg]
Automation error instance category statistics
[automation_error_instance_category_stats]
Automation Error Categories Statistics
[automation_error_instance_code_stats]
Automation error instance message
[automation_error_instance_msg]
Automation error instance message
[automation_error_stats_update_time]
Automation Error Suggestion
[automation_error_suggestion]
Automation Source Application
[automation_source_application]
Mapping between suggestion and error code
[suggestion_error_code_m2m]
ITOM Error task
[sa_error_handler_task]
Applicative Credentials
[sa_applicative_credentials]
Service Mapping CI attributes

Stores the latest error statistics on all
categories per instance (discovery status).
Stores the latest error statistics on all error
codes per instance (discovery status).
Stores all latest errors associated with the
instance (discovery status).
Stores the last statistics update time for every
application.
Contains all the configured suggestions that
presented in the UI per different error codes.
Contains the source applications that are
using the Discovery and Service Mapping
error framework.
Contains information on mapping between
error code and suggestion.
Contains the tasks configured per different
groups of errors.
Contains credentials used when running
application-specific commands on servers.
Contains CI attributes relevant only for
discovery process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1819


<!-- page 1820 -->
Table

Description

[sa_ci_attr]
Related CI Types
[sa_ci_to_pattern]
Pattern Debugger Session
[sa_debug_session]
Pattern Debugger Session Status for UI
[sa_debug_session_status]
Sa Deferred Service Discovery
[sa_deferred_service_discovery]
Service Discovery Log
[sa_discovery_log]
Service Discovery Messages
[sa_discovery_message]
Sa Endpoint Status
[sa_endpoint_status]
Find Host Scripts
[sa_find_host_scripts]
nfdump file
[sa_flcon_file_nfdump]
nfdump install
[sa_flcon_local_nfdump]
AWS VPC flow logs
[sa_flcon_vpc_flow_log]
SA Flow Connection
[sa_flow_connection]
Flow Connector
[sa_flow_connector]
Flow Server Communication
[sa_flow_server_comm]

Assigns CI types to patterns (relevant only
for the horizontal discovery performed by
Discovery).
This internal table is used for the Pattern
Designer components.
This internal table is used for the Pattern
Designer components.
This internal table is used for Service Mapping
components.
Contains discovery logs collected by Service
Mapping.
Contains messages created by Service
Mapping during service discovery.
Contains discovery status for endpoints in
Service Mapping.
Contains the names of script includes that find
hosts based on the endpoint glide records.
This internal table contains information used
for Netflow-based discovery.
This internal table contains information used
for Netflow-based discovery.
This internal table contains information used
for Netflow-based discovery.
This internal table contains information used
for Netflow-based discovery.
This internal table contains information used
for Netflow-based discovery.
This internal table contains information used
for Netflow-based discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1820


<!-- page 1821 -->
Table

Description

Flow Services IP/Port and Statistics

This internal table contains information used
for Netflow-based discovery.

[sa_flow_service]
Host Class to Capability
[sa_host_class_to_capability]
Infra Path To Elements
[sa_infra_path_assoc]
Mapping External Discovery Commands
[sa_mapping_ext_commands]
Network Paths
[sa_network_paths]
Horizontal Discovered Paged Payloads
[sa_paged_payload]
Discovery Patterns

Maps server type to capabilities required by
Service Mapping.
Contains data on components which are part
of a network path.
Contains data on customized commands
created by user.
Contains data on network paths discovered by
Service Mapping.
Service Mapping uses data in this table for
splitting payload sent from the MID Server if
the discovery results in a very large payload.

[sa_pattern]

Contains preconfigured and customized
patterns that Service Mapping uses for
discovery.

Service Mapping Draft Pattern

Contains non-activated discovery patterns.

[sa_pattern_draft]
Service Mapping Relation attributes
[sa_rel_attr]
Rel to Infra Path

Contains relation attributes used during
service discovery process.
Maps relations to network or storage paths.

[sa_rel_to_infra_path]
Service Mapping Server Usage
[sa_server_usage]
File System To Storage Path
[sa_storage_paths]
Storage Path Connectivity Map

Contains count of servers used by Service
Mapping.
Contains data on storage paths discovered by
Service Mapping.
Maps file system to storage volume.

[sa_storage_path_connectivity_map]
Traffic Based Discovery Rules
[sa_traffic_based_rules]
Uploaded File

Contains data on configuration of traffic-based
discovery.
Contains data on files uploaded to the MID
Server and used by Service Mapping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1821


<!-- page 1822 -->
Table

Description

[sa_uploaded_file]
Configuration Item
[cmdb_ci]
Application
[cmdb_ci_appl]
IP Service
[cmdb_ip_service]
Application Category
[discovery_category_appl]
Device Classification Category
[discovery_category_device_class]
Device Info Category
[discovery_category_device_info]
Protocol Category

Stores data on all configuration items (CIs) in
the CMDB.
Stores data on all configuration items (CIs) of
application type in the CMDB.
Stores data for credentialless discovery
support for the original table.
Stores data on application categories used
by Pattern Designer for managing pattern
libraries.
Stores information on relationship between
a device classifier and protocol used during
horizontal discovery performed by Discovery.
Stores information on device category used
during horizontal discovery performed by
Discovery.

[discovery_category_protocol]

Stores information on protocol category used
during horizontal discovery performed by
Discovery.

HTTP Classification

Stores the HTTP classification definition.

[discovery_classy_http]
HTTP Classification Match
[discovery_classy_http_match]
Discovery Pattern Launcher
[discovery_pattern_launcher]
Cloud Execution Pattern
[discovery_ptrn_cld_lchr]
Serverless Execution Pattern
[discovery_ptrn_hostless_lchr]
Discovery Pattern Parameters
[discovery_ptrn_lnch_param]
Pattern Input Parameters
[discovery_ptrn_lnch_param_def]

Stores the HTTP classification conditions and
the information about the pattern to launch if
classification condition is matched.
Stores information about the pattern launcher
mechanism.
Stores information about the pattern launcher
mechanism for discovering cloud applications.
Stores information about the pattern launcher
mechanism for serverless discovery.
Stores parameters for serverless/cloud
application execution.
Stores the key parameters collected by
patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1822


<!-- page 1823 -->
Table

Description

Applicative Credentials

Stores the applicative credentials.

[sa_applicative_credentials]
Related CI Types

Stores related CIs within patterns.

[sa_ci_to_pattern]
Custom operation
[sa_custom_operation]
Custom operation parameters
[sa_custom_operation_param]
Custom parsing strategy
[sa_custom_parsing_strategy]
Debug session
[sa_debug_session]
Pattern Debugger Session Status for UI
[sa_debug_session_status]
Sa Deferred Service Discovery

Stores information on discovery pattern
operations defined by users.
Stores custom operation parameters for
discovery patterns.
Stores information on pattern parsing
strategies that are defined by users.
Stores information collected from debug
sessions.
Stores information on status of the debug
session for the UI purposes.

[sa_deferred_service_discovery]

Contains information used for starting the topdown debug session when the relevant host is
still not discovered.

Discovery log

The log of several discoveries.

[sa_discovery_log]
Find Host Scripts
[sa_find_host_scripts]
Host Class to Capability
[sa_host_class_to_capability]
Mapping Discovery Commands
[sa_mapping_ext_commands]
Horizontal Discovered Paged Payloads
[sa_paged_payload]
Discovery Patterns

Contains scripts for finding hosts in the CMDB
based on the entry point information.
Contains information that maps the type of
host to MID Server capabilities. For example,
the Linux OS is mapped to the SSH WMI
capability.
Contains customizable operations for the
Pattern Designer.
Contains the IE output payload if the split
mechanism is deployed.
Stores published patterns.

[sa_pattern]
Service Mapping Draft Pattern

Stores modified version of patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1823


<!-- page 1824 -->
Table

Description

[sa_pattern_draft]
Pattern Extensions

Stores pattern extension sections.

[sa_pattern_extension]
Pattern Pre/Post Script
[sa_pattern_prepost_script]
Horizontal Discovered Payloads Snapshot
[sa_payload_snapshot]
Tracked File Definition
[sa_tracked_file_definition]
Uploaded File
[sa_uploaded_file]

Stores pre/post/pre execution scripts for
patterns.
Stores the IE output payload for the delete per
main CI.
Stores the definitions of the file tracking
feature.
Stores scripts and files that are used by the
pattern engine.

Properties installed

Note: To open the System Property [sys_properties] table, enter
sys_properties.list in the navigation filter.

Property

Description

sa.max_relations_in_service

The maximum number of CI relations for a
service. Exceeding the value automatically
prohibits some services from displaying in the
map view. Very large application services may
cause performance issues. Instead of maps,
users can view CI lists for large application
services.
• Type: integer
• Default value: 5000
• Limit: 10000
• Location: System Property [sys_properties]
table

best_practice.check_connectivity.expand_listening_port
This property controls which PIDs Service
Mapping checks during the hop operation
in the connectivity check. This property is
true, then Service Mapping only checks
connectivity on PIDs whose ports are in the
listening state, not connected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1824


<!-- page 1825 -->
Property

Description

• Type: boolean
• Default value: true
• Other possible values: false
• Location: System Property [sys_properties]
table

com.snc.sw.mapping.reaper.checkpoints_to_keep
The maximum number of change marks
maintained in the history timeline of the
service. Setting the value to zero or any
negative integer overrides the default
setting and maintains all change marks for a
three-month maximum. Using the property
'com.snc.sw.mapping.reaper.ignored_services_from_optimizatio
allows the exclusion of specific services and
returns to the removal of change marks based
upon intervals.
• Type: integer
• Default value: 1000
com.snc.sw.mapping.reaper.ignored_services_from_optimization
This property contains the service
IDs separated by commas. Instead of
the number specified by the property
'com.snc.sw.mapping.reaper.checkpoints_to_keep'
these services retain all change marks for a
three-month maximum.
Type: integer
com.snc.sw.mapping.reaper.max_reap_size

The maximum number of change marks
deleted each time the system removes old and
unused records from the history of changes
to the service. Setting the value to zero or any
negative integer overrides the limit and allows
the removal of all unnecessary change marks.
• Type: integer
• Default value: 100000

glide.service_mapping.computation_depth

This property controls the maximal depth of
the service instance map.
• Type: integer
• Default value: 25
• Other possible values: any number higher
than 1
• Location: System Property [sys_properties]
table

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1825


<!-- page 1826 -->
Property

Description

sa_ml.connection_suggestions.active

Enable generation of the connection
suggestions feature that is based on trafficbased discovery. Service Mapping generates
connection suggestions using data analyzed
by Predictive Intelligence. When this feature is
enabled, you can use connection suggestions
to manage CI connections in application
services.
• Type: boolean
• Default value: true

Note: If traffic-based discovery was
enabled in your deployment prior to
Quebec and you used it to discover
at least one application service, the
default value is false.
• Other possible values: false
• Location: System Property [sys_properties]
table
sa.debugger.max_timeout

Maximum timeout (in seconds) since the last
server activity during a Pattern Debugger run.
• Type: integer
• Default value: 120
• Other possible values: any number higher
than 60
• Location: Service Mapping >
Administration > Properties.
For more information, see KB0854603: Pattern
Debugger Session Timed Out .

sa.discovery_task_timeout_min

Maximum time for a Service Mapping task in
minutes (including waiting for execution in
internal queues and ECC queue).
• Type: string
• Default value: 120
• Other possible values: any number higher
than 30
• Location: System Property [sys_properties]
table

sa.enable_gray_out_on_resume_discovery

Enable sub-tree to be grayed out after Service
Mapping resumes discovery on an edge, or
rerun discovery on the entire topology.
• Type: boolean
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1826


<!-- page 1827 -->
Property

Description

• Other possible values: false
• Location: System Property [sys_properties]
table
sa.excluded_discovery_sources

Add this property to exclude discovery
sources during host detection.
• Default value: EventManagement
• Other possible values: additional discovery
sources, added after EventManagement,
separated by a comma

sa.map.enable_loops_on_service_split

Enable you to connect a service instance to
another, already existing, service instance
even if the CI connection (endpoint) that you
are connecting is part of this other service
instance. This property helps to avoid loops or
cycles in service maps.
• Type: boolean
• Default value: false
• Other possible values: true
• Location: Service Mapping >
Administration > Properties.

sa_ml.connection_suggestions.lb.routing.enabled
State if a target host is a load balancer
member or not in the Connection Suggestions
list.
• Type: true/false
• Default value: true
• Other possible values: false
• Location: System Property [sys_properties]
table.
sa.network_path_calculation.arp_enableadded Controls queries to the ARP table. Data is only
per DOC 1074513 in Vancouver
calculated when the value is set to true.

Note: For more information about
querying the ARP table, see the ARP
property documentation for Service
Mapping [KB1311037]
article in the Now
Support Knowledge Base.
• Type: true/false
• Default value: false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1827


<!-- page 1828 -->
Property

Description

• Other possible values: true
• Location: System Property [sys_properties]
table
sa.network_path_calculation.active

Enable network path calculation.
• Type: true/false
• Default value: true
• Other possible values: false
• Location: Service Mapping >
Administration > Properties.

sa.rediscovery.batch_size

Number of discovery tasks executed in a
single batch.
• Type: integer
• Default value: 100
• Other possible values: any number higher
than 10
• Location: Service Mapping >
Administration > Properties.

sa.service_history.max_allowed_bubbles

Number of changes that the history scale and
the Changes tab display.
• Type: integer
• Default value: 3000
• Other possible values: any number higher
than 3000

Important: Increasing the value for
this property may cause performance
issues with loading service instance
maps.
• Location: Service Mapping >
Administration > Properties.
sa.service.max_ci_service_population

The maximum number of CI connections
added to application services during the
following operations: Converting manual
services created in Event Management into
application services with changes from the
CMDB.
• Type: integer
• Default value: 1000
• Limit: 2000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1828


<!-- page 1829 -->
Property

Description

• Location: Add to System Properties
[sys_properties]
table.
Increasing the default value may cause
performance issues.
sa.storage_path_calculation.active

Enable storage path calculation.
• Type: true/false
• Default value: true
• Other possible values: false
• Location: Service Mapping >
Administration > Properties.

sa.topdown.mapping_with_acc_mode

This property enables top-down discovery and
service mapping using Agent Client Collector
by defining the MID Server selection mode for
top-down discovery.
• Type: integer
• Default value: 0
• Other possible values: 1,2
0: Top-down discovery runs using the MID
Server exclusively.
1: Top-down discovery initially attempts to
run using Agent Client Collector. If no agent
is available, then it defaults to using the MID
Server.
2: Top-down discovery runs using Agent Client
Collector exclusively. If unsuccessful, the
process terminates.

sa.traffic_based_discovery.active

Traffic-based discovery
• Type: true/false
• Default value: false
• Other possible values: true
• Location: Service Mapping >
Administration > Properties.

Note: This property applies only to
legacy traffic-based connections. If
machine-learning (ML) connection
suggestions are enabled, ensure that the
property value remains set to false.
sa.traffic_based_discovery.conn_aging_time

Time period in hours for a Traffic Based
Connection to remain active since last
discovered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1829


<!-- page 1830 -->
Property

Description

• Type: integer
• Default value: 72
• Other possible values: any number higher
than 24
• Location: Service Mapping >
Administration > Properties.
sa.traffic_based_discovery.ignored_ports

Ports to ignore when found by traffic-based
discovery.
This property is available in the System
Property [sys_properties] table.
Change this property to define ports that
Service Mapping ignores while performing
traffic-based discovery. It makes discovery
more efficient since resources are not wasted
on discovering irrelevant connections.
• Type: string
• Default value: 445, 139, 111, 2049, 860,
3260, 135, 53
• Other possible values: any relevant port
numbers
• Location: System Property [sys_properties]
table

sa.traffic_based_discovery.max_connections

Maximum number of traffic-based connections
from a single CI.
This property is available in the System
Property [sys_properties] table.
This property helps to keep the map size
reasonable by limiting the number of possible
CI connections.
• Type: integer
• Default value: 30
• Other possible values: any number higher
than 1
• Location: System Property [sys_properties]
table

sa.update_paths_in_service_model.active

Update network and storage paths in Service
Model.
• Type: true/false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1830


<!-- page 1831 -->
Property

Description

• Other possible values: false
• Location: Service Mapping >
Administration > Properties.
service_watch.implied_match.endpoint.black_listA list of endpoint types for which Service
Mapping does not apply process matching
logic utilized during the top-down pattern
execution.
• Type: string
• Default value:
cmdb_ci_endpoint_ssis_mssql,
cmdb_ci_endpoint_ssas_mssql
• Other possible values: comma-separated
list of endpoints
• Location: Service Mapping >
Administration > Properties.
sm.service.export.blacklist

Excludes these fields from the record in the
service definition export file.
• Type: string
• Default value: [empty]
• Other possible values: comma-separated
list of fields
• Location: Service Mapping >
Administration > Properties.

sm.service.export.blacklist.cmdb_ci_endpoint

Excludes these fields from the entry point
record in the service definition export file.
• Type: string
• Default value: [empty]
• Other possible values: comma-separated
list of fields
• Location: Service Mapping >
Administration > Properties.

sm.service.export.blacklist.cmdb_ci_service_discovered
Excludes these fields from the application
service record in the service definition export
file.
• Type: string

• Default value:
discovery_status,operational_status,process_status,work_not

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1831


<!-- page 1832 -->
Property

Description

• Other possible values: comma-separated
list of fields
• Location: Service Mapping >
Administration > Properties.
sm.service.export.blacklist.cmdb_ci_service_group
Excludes these fields from the service group
record in the service definition export file. Use
comma to separate fields.
• Type: string
• Default value: [empty]
• Other possible values: comma-separated
list of fields
• Location: Service Mapping >
Administration > Properties.
sm.service.export.max_services_limit

Defines the maximum allowed number of
services to export.
• Type: integer
• Default value: 100
• Location: Service Mapping >
Administration > Properties.

sm.service.export.skip_empty_fields

Excludes fields with an empty value from the
record in the service definitions export file.
• Type: boolean
• Default value: true
• Other possible values: false
• Location: Service Mapping >
Administration > Properties.

sm.service.export.skip_reference_fields

Excludes reference fields from the record in
the service definitions export file.
• Type: boolean
• Default value: true
• Other possible values: false
• Location: Service Mapping >
Administration > Properties.

sm.service.export.skip_sys_fields

Excludes fields beginning with “sys_” from the
record in the service definitions export file.
• Type: boolean
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1832


<!-- page 1833 -->
Property

Description

• Other possible values: false
• Location: Service Mapping >
Administration > Properties.
sm.service.import.auto_start_discovery

Enable automatic discovery on all successfully
imported entry points.
• Type: boolean
• Default value: false
• Other possible values: true
• Location: Service Mapping >
Administration > Properties.

sn_cloud_migration.categories.inclusion_list

A comma-separated allow list of categories for
cloud migration. Only resources assigned to
categories that are listed here can participate
in the migration process.
• Type: string
• Default value: Physical,VMware,HyperV,IBM
HMC,OpenStack,Solaris,Nutanix,Amazon
AWS,Microsoft Azure,Google Cloud,IBM
Cloud
• Location: Cloud Migration > Cloud
Migration Workspace > Administration >
Properties

sn_cloud_migration.server_status.inclusion_list A comma-separated allow list of server status
for cloud migration. Only servers with the
listed here install status can participate in the
migration process.
• Type: ?
• Default value: 1
• Other possible value: Installed=1, On
Order=2, In Maintenance=3, Pending
Install=4, Pending Repair=5, In Stock=6,
Retired=7, Stolen=8, Absent=100
• Location: Cloud Migration > Cloud
Migration Workspace > Administration >
Properties
sn_cloud_migration.os.exclusion_list

A comma-separated deny list of operating
systems for cloud migration. The servers
whose operating system is listed here are
excluded from the migration process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1833


<!-- page 1834 -->
Property

Description

• Type: String
• Default value: ESX, Windows
2000,Windows XP.
• Location: Cloud Migration > Cloud
Migration Workspace > Administration >
Properties
sn_cloud_migration.vm_state.inclusion_list

A comma-separated allow list of VM instance
states for cloud migration. Only VMs with
states that are listed here can participate in
the migration process.
• Type: ??
• Default value: on
• Other possible values: on, off, paused,
scheduled, starting, stopping, retired,
terminated, error, cancelled, pausing,
terminating
• Location: Cloud Migration > Cloud
Migration Workspace > Administration >
Properties
The number of CI relations, exceeding
which application service is not displayed
automatically in the map view. Very large
application services may cause performance
issues. Instead of maps, users can view CI
lists for large application services. Setting
a negative value results in not limiting the
number of added CI relations. Setting an
invalid value, like a string, is equivalent to the
default value, 5000.
• Type: Integer
• Default value: 5000
• Location: System Property [sys_properties]
table

svc_by_tags.classes.whitelist

This property contains the list of allowed CI
classes separated by commas. Tag-based
mapping includes the CIs belonging to these
classes. An empty ‘value’ field indicates the
inclusion of all CI classes.

svc_by_tags.install_status.blacklist

This property contains the list of exclusions
based upon the install status separated by
commas. Tag-based mapping excludes any
tagged CIs with the following install statuses:
Default value: 7,100

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1834


<!-- page 1835 -->
Property

Description

Other possible values:
Installed=1, On order=2, In maintenance=3,
Pending install=4, Pending repair=5, In
stock=6, Retired=7, Stolen=8
svc_by_tags.max.categories.per.family

Set the maximum number of categories
allowed per service family.
• Type: integer
• Default value: 3

svc_by_tags.max.traversal.rules.active

Set the maximum allowed number of CI
relationships that can be in the active
state. Service Mapping uses only active CI
relationships for tag-based discovery.
• Type: integer
• Default value: 5
• Location: System Property [sys_properties]
table

svc_by_tags.max_ci_limit

Set the maximum allowed number of CIs that a
tag-based application service can contain.
• Type: integer
• Default value: 1000
• Limit: 2000
• Location: System Property [sys_properties]
table

sm.topdown.reuse_mid_from_hd_schedule

Use the MID Server configured during
horizontal discovery for top-down discovery.
• Type: boolean
• Default value: false
• Other possible values: true
• Location: Service Mapping >
Administration > Properties

sm.network_location.detect_host_by_location Select the subnetwork location to allow for the
identification of the appropriate host and MID
Server.

Important: For best results,
you must enable this property and
sm.topdown.reuse_mid_from_hd_schedule
concurrently.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1835


<!-- page 1836 -->
Property

Description

• Type: boolean
• Default value: false
• Other possible values: true
• Location: Service Mapping >
Administration > Properties

Domain separation and Service Mapping
Domain separation is supported in Service Mapping. Domain separation enables you to separate
data, processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

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

How domain separation works in Service Mapping
In domain-separated environments, switch into relevant leaf domains to access actions related
to mapping performed by Service Mapping. A leaf domain is a child domain of the lowest level,
meaning it does not have any child domains itself.
Domain separation is handled in a slightly different way than simply configuring separate
domains. Notice that you must select or specify the relevant leaf domain to perform the following
mapping actions in domain-separated environments:
• When creating an service instance, the service instance is assigned to the user's domain.
• When manually adding a CI to an service instance, you can choose only CIs that belong to the
service domain.
• When manually adding connections to CIs to an service instance, users must belong to the
same domain as the application service.
• When transferring service definitions between instances, imported service instances and
service groups are assigned to the user's domain.

Domain separation and Automated Service Suggestions
Automated Service Suggestions supports domain separation. This means that:
• The source and target process must reside in the same domain to create a connection.
• The user can view only the data in the current domain.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1836


<!-- page 1837 -->
Note: After installing Service Mapping Plus with domain separation support, verify that all
content is in the appropriate domain. For a detailed explanation of the required steps, see
the Service mapping plus for domain separated instance [KB1303398]
article in the Now
Support Knowledge Base.
Automated Service Suggestions supports domain separation starting with version 1.9.0. No
support is currently offered for on-premise instances. Reach out to product management for
further information.
For more context, refer to Discovery patterns used by ITOM Visibility topic and MID Server
configuration for Service Mapping. The following topics provide operational information on how
to use Service Mapping in deployments with domain separation:
• Enable traffic-based discovery for CI types or specific CIs
• Map application services using tags with classic Service Mapping
• Create or customize patterns
• Create entry point types for Service Mapping
• Enhance patterns without changing their identification sections
Related topics
Domain separation
Domain separation recommended practices for service providers
Service Mapping Recomputation
Keep application services up to date and track changes to services through the recomputation
capability of the Application Service feature of Service Mapping. Recomputation jobs recalculate
mapped application services when changes occur to an associated configuration item (CI) within
the Configuration Management Database (CMDB).
The most common changes that can cause recomputation are:
• Topology changes: The relationship of the associated CI to other CIs changes. These changes
might include the addition of a new relationship or the removal of a previous one.
• CI changes: A field value of the CI changes.
These changes might be caused by horizontal discovery, top-down discovery, service graph
connectors, or manual operations. If the CI change doesn't affect the topology or service
associations, the recomptuation process stops with no changes to the service.
Two types of recomputation jobs are available in the system scheduler: Service Mapping
recomputation and Service Mapping fast recomputation. Fast recomputation selects services
with only CI changes as part of their most recent batch and doesn’t include topology changes.
Recomputation jobs are configured to run every five seconds. After the jobs are initiated, they
begin with the service that has waited the longest. When the job is complete, the effect of
topology changes might be reflected in the topology of the map or a change in the service
associations. You can view CI changes by selecting the map node of the CI. Successful
recomputations appear as a single checkpoint on the application service timeline regardless of
whether it represents one change or a batch of changes.
You can configure the recomputation type, frequency, and other factors as needed. For
more information about Service Mapping, see the Service Mapping Recomputation Jobs:
Configuration and Best Practices [KB1001151]
article in the Now Support Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1837


<!-- page 1838 -->
Connection Suggestions list
Review details of connection suggestions to decide which connections are relevant for
application services.
Connection Suggestions list columns
Column

Description

From

The CI class or fingerprint process of the
CI that is the connection source. This field
appears only when you access connection
suggestions by navigating to Service Mapping
> Administration > Connection Suggestions.

To

The CI class, or fingerprint, or process of the
CI that is the connection target.

Target Host

The host of the CI that is the connection
target.
If the VIP column shows true, the target host
is a load balancer member. When you select
such a target host, the system adds the load
balancer and all its members as CIs in the
application service.

IP

The IP of the CI that is the connection target.

Port

The port of the CI that is the connection target.

Confidence

The confidence level indicates the likelihood
of this connection being part of the service
instances.
• High - Commonly a connection to an
internal component that is only used by this
specific component or application.
• Medium - Commonly a connection to a
middleware component used by multiple
services, such as IBM MQ or Oracle
WebLogic Server.
• Low - Commonly a connection to an
application deployed on numerous servers
in the organization, typically for monitoring
purposes, such as Tivoli Enterprise
Monitoring Agents or MID Server.
• Very low - Commonly a connection to
a central application used by the entire
organization, for example, Microsoft Active
Directory or Okta.
If the confidence level appears as N/A, wait
until the application fingerprints training is
complete.
Confidence level is available only if fingerprint
based discovery is enabled. See Discover

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1838


<!-- page 1839 -->
Connection Suggestions list columns (continued)
Column

Description

applications based on fingerprints for more
information.
Decision

This value indicates the outcome of the
previous action taken on this connection
suggestion:
• Added manually - You added a connection
based on this suggestion.
• Excluded manually - You removed a
connection based on this suggestion.
• Undecided - You reset the previous decision
to add or remove a connection based on
this suggestion.
• Added by rule - Service Mapping added a
connection based on a connection rule.

Rule

The rule that Service Mapping applied to add
a connection.

VIP

The target host is a load balancer member.
The system shows this information only for
load balancers that you previously discovered
using horizontal discovery.
This field appears only when you access
connection suggestions by navigating
to Service Mapping > Administration >
Connection Suggestions.

Decision changed by

The user who changed the decision last time.
If the decision was changed by a rule, this
field shows the MID Server user. For more
information about setting up MID Server user
role, see Create the MID Server user and grant
the role .
This field appears only when you access
connection suggestions by navigating
to Service Mapping > Administration >
Connection Suggestions.

Updated

The timestamp of when this connection last
changed.

Related topics
Discovery based on Predictive Intelligence
Add or remove CIs for single application services using connection suggestions
Add or remove CIs for multiple application services using connection suggestions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1839


<!-- page 1840 -->
Entry point attributes
Service Mapping comes with a wide range of preconfigured entry point types that cover many
commonly used applications. Check attribute definitions to correctly add entry points to your
application services.
An entry point is a point where clients access a service instance. Entry points are stored as
records in the Endpoint [cmdb_ci_endpoint] tables.
There are some general attributes shared by almost all entry point types as described in the
following table:
General attributes
Attribute

Description

Host/Hostname/Host Name

The value of the target server on which the
service is running. This value can contain a
real host name, alias, IP, or VIP.

Important: Do not use a localhost or
loopback address (127.0.0.1) for discovery
and mapping.
Port

The port number of the service that you want
to discover.

Name

The name of the service that you want to
discover.

URL

The URL of the service that you want to
discover in the following format: http(s)://
(address):(port). If you do not provide the port,
the system uses the default port 443.

Network location

The location of the applicable subnetwork.

Note: This field is optional and visible
only if Network location is enabled.
To configure entry points for subnetworks, see Fine-tune Service Mapping with MID affinity and
IP reuse.
There are some attributes which you configure differently depending on what entry point they
relate to, as described in the following table:
Entry point attributes specific for some entry points
Entry point type

Attribute

Description

Active Directory
Domain to Domain
Controllers
Endpoint

Domain
name

The AD domain name.

Forest name

The AD forest name.

Domain
The distinguished name of the AD domain controller.
controller
Usually it is a compilation of the domain controller name
distinguished and the hostname.
name
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1840


<!-- page 1841 -->
Entry point attributes specific for some entry points (continued)
Entry point type

Attribute

Description

Domain
Controller
Name

The AD Domain Controller name.

Active Directory
Forest Endpoint

Forest name

The AD Forest name.

AWS Resource
Name Endpoint

ARN

The Amazon Resource name.

Application to
Storage Endpoint

File in use by The path to the file used by an application. For example,
application
mssql uses c:\applications\mssql\users.db. Service
Mapping populates this attribute using patterns.
File system
name

The file system containing the file used by an application.
For example, if a mssql uses c:\applications\mssql
\users.db, the value is "c:".

Connected
array ids

N/A

Scheme

The name of the Oracle DB table where the Queue is
defined.

Instance

The name of the Oracle instance.

Queue

The name of the queue.

Adapter
address

The connect string to the Biztalk adapter. It can be a path,
URL, host, or port.

Transport
Type

The type of the Biztalk adapter. For example a URL, file
SOAP, or FTP.

CRM Component

Role

The role of the CRM. Leave empty if unknown.

DB2 UDB

Instance

The name of the DB2 instance.

DCTM Connection
to broker

Repository

The name of documentation repository.

DCTM Index Agent
Connection

Instance
Name

The name of the instance of Documentation Index Agent.

Repository

The name of the documentation repository.

DCTM Job
Processor

Repository

The name of documentation repository.

Citrix Delivery
Controller

Farm Type

The type of the Delivery Controller.

Controller
Name

The name of the Citrix Controller.

DocBase
Connection

Repository

The name of the documentation repository.

EJB

JNDI Name

The jndi name of target EJB.

EMS

Queue

The name of Tibco EMS queue.

EMS JNDI

JNDI Name

The jndi name of Tibco EMS connection.

Advanced Queue

BizTalk Connection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1841


<!-- page 1842 -->
Entry point attributes specific for some entry points (continued)
Entry point type

Attribute

Description

F5 Mirror

Origin IP

The IP address of the second pair F5 device.

Origin host

The hostname of the second pair F5 device.

Fast Search

Repository

The name of repository of fast search.

ITAM Asset Center

Folder

The path to configuration folder.

JMS Flow

JMS project

The name of Tibco project.

JMS Flow

Queue Name The name of Tibco EMS queue.

JMS Server

Queue Name The name of the queue defined on JMS server.

HTTP Listener to
WMB Dependency

Directory

The path to the WMB installation directory.

LDAP

Protocol

The protocol name: ldap.

Type

The LDAP query type. This attribute is not supported.
Leave empty.

MQ

Queue Name The name of the IBM MQ Queue.

MQ Flow

Source IP

The IP of the source IP create connection to MQ.

Queue Name The name of IBM MQ Queue.
MQ Cross-memory

Command
line

The command line of MQ.

Queue Name The name of IBM MQ Queue.
MSMQ Flow

Queue Name The name of MS MQ queue.

MS SQL Server

Instance

The name of MSSQL instance.

MySQL Cluster
Data Node

Node ID

The ID of MySQL instance.

Node group

The group of MySQL instance

MySQL Cluster
MGM

Node ID

The ID of MySQL instance.

MySQL Secondary
Server

Config IP

The IP of the MySQL Config server.

Config Port

The port of the MySQL Config server.

Oracle DB

Schema

The name of table on the Oracle instance.

Instance

The name of oracle instance.

Oracle ESB
Connection

Adapter data The content of the adapter.

Oracle RAC DB

Service
Name

The name of the Oracle RAC service.

PostgreSQL DB

Instance

The name of the PostgreSQL DB.

Remote TCP Crossmemory

Source_ IP

The IP of the source host process.

Source Port

The port of source process.

Adapter Type The type of the adapter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1842


<!-- page 1843 -->
Entry point attributes specific for some entry points (continued)
Entry point type

Attribute

Description

SAP APP EP

SID

The SAP instance SID name.

Instance

The instance name.

SAP BO Servers

Server name

The name of the BO server.

Sharepoint
connection

Origin URL

The URL of the IIS.

SSAS

Project

The name of the SSAS project (can be empty).

SSAS for MSSQL

Instance

The name of the MSSQL instance.

Client Type

The type of the client connected.

SSIS

Job

The name of SSIS job can be empty.

SSIS file

Package file
name

The name of the package file.

SSIS for MSSQL

Instance

The name of the MSSQL instance.

Client Type

The type of the client connected.

Front

The parameters of the Citrix application.

Farm

The farm host the Citrix application.

Application
name

The Citrix application name.

StoreParameters
Components

XenApp or
Type
Presentation Server
Farm

The type of the Citrix application.
The farm host the Citrix application.

Icon path

The logic path of the Citrix application.

Argument

The parameters of Citrix application.

Path

The logic path of the Citrix application.

Exec

The EXE name of Citrix application.

IP Address

The IP of host is member of Citrix farm.

Sybase

Instance

The name of Sybase instance.

Tibco Conf File

Configuration The path to Tibco BW project.
File
Process
Name

The name of Tibco BW main process.

Queue Port

The port of the queue used by the Tibco process.

Config IP

The IP of the source of the queue.

Tibco BW

Process
name

The name of Tibco BW main process.

Tibco File Listener

File

The path of the file is used by Tibco BW for integration.

Tibco Hawk

Configuration The path to Tibco Hawk Configuration folder.
directory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1843


<!-- page 1844 -->
Entry point attributes specific for some entry points (continued)
Entry point type

Attribute

Description

WMB Dependency

Command
line

The command line of the WMB.

XenApp or
Farm
Presentation Server
Icon path
Components

The farm host the Citrix application.
The logic path of the Citrix application.

Related topics
Map a single application service using classic Service Mapping
Create entry point types for Service Mapping
MID Server properties used by Service Mapping
Service Mapping uses the MID Server parameters during discovery and mapping. Do not change
default values for these parameters unless you are troubleshooting the discovery process.

General properties
Property

Description

mid.file_tracking.file_path_forbidden_strings

Comma-separated list of strings to search for
in tracked file paths. Once any string in this
list is found in a tracked file path, the file is
removed from further processing.
• Default value: job finished with status
ERROR
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

SSH-related properties
Property

mid.sa.ssh.path

Description

A location at the target system where the MID
Server checks for commands to execute.
• Default value: /usr/local/sbin:/usr/local/
bin:/sbin:/bin:/usr/sbin:/usr/bin
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1844


<!-- page 1845 -->
Property

mid.sa.ssh.truncate_last_line_regex

Description

A regular expression of line that the MID
Server removes from the end of the SSH
command response.
• Default value: Command.*performed by.*
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.remove_first_line_regex

A regular expression of line that the MID
Server removes from the start of every SSH
command response.
• Default value: [empty string]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.privileged_command_message

A prompt the MID Server sends with
commands with sudo-level privileges. For
example, a sudo-level command is sent with
“Password:”.
• Default value: [empty string]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.restricted_shell_regex

A regular expression text included on
opening message of a restricted shell. Using
a restricted shell, the SSH provider does
not run some commands during the session
initialization.
• Default value: restricted shell
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.terminal_cols

The number of columns in the terminal
windows opened with the SSH session.
• Default value: 300
• Type: integer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1845


<!-- page 1846 -->
Property

Description

• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.terminal_rows

The number of rows in the terminal windows
opened with the SSH session.
• Default value: 800
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.time_between_change_shell_and_prompt
The ime to wait between changing a shell
during initialization and the time the shell
prompt appears (in milliseconds).
• Default value: 1000
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.connect_timeout

The SSH initial connection timeout (in
milliseconds).
• Default value: 2000
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.max_chars_single_response

The maximum number of characters allowed in
a single SSH command response.
• Default value: 10000000
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.break_session_chars

The ASCII value of character used to break a
session.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1846


<!-- page 1847 -->
Property

Description

• Default value: 7
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.no_change_shell_regex

The regular expression of text within command
response after sending ‘su’ in order to
change to superuser. If the regular expression
matches, the MID Server does not change the
shell.
• Default value: pfsh
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.permission_denied_regex

The regular expression of command
responses which the MID Server recognizes
as an access problem and generates an
appropriate message.
• Default value: permission denied
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.more_line_command_regex

When the SSH response exceeds the terminal
size, the system sends ‘more’ line which
matches the regular expression. When the
MID Server recognizes the ‘more’ line, it
sends the space character. This is relevant for
proprietary systems sending a non-standard
‘more’ prompt.
• Default value: [empty]
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.become_superuser_command

An SSH command for turning into a superuser.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1847


<!-- page 1848 -->
Property

Description

• Default value: su
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.prompt_changing_command_regex SSH commands that change the shell prompt.
When the command the MID Server sends
matches the regular expression, the MID
Server knows to expect a change in the server
prompt.
• Default value: changeto\\s+[^\\s]+
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.ignore_errors_on_commands_regex A regular expression for the command on
which the MID Server ignores permission
errors.
• Default value: stat.*|istat.*|perl.*
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.prompt_last_char_regex

A regular expression of the last character in
the default prompt of the server.
• Default value: [$ >\\]\\:]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.timeout

The SSH command timeout (in milliseconds).
• Default value: 60000
• Type: integer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1848


<!-- page 1849 -->
Property

Description

• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.port

The SSH port number.
To add more than one port, separate port
numbers with a comma. For example,
22,33,44.
• Default value: 22
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.connect.retry

The SSH connection retry count.
• Default value: 1
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.additional_setup

The command the MID Server sends after it
creates the SSH session.
• Default value: [empty]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.expect_after_su

A regular expression of the last character in
the prompt after sendind ‘su’.
• Default value: [:$ >\\]]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.privileged_command_last_char

A character indicating the last expected
character in a command result String. Once

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1849


<!-- page 1850 -->
Property

Description

this character is found in the result, the MID
Server does not wait for additional output.
• Default value: [empty]
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.ssh.prompt

A string representing the non-standard SSH
prompt. The MID Server uses this string when
parsing results of SSH CLI commands.
• Default value: SERVNOW>
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.proprietary_system_trial_count

Number of additional waiting periods on
proprietary non-UNIX/Linux systems. The
MID Server waits for a response after the
initial waiting period of 5 seconds. After the
initial 5 seconds, the MID Server waits for the
response the number of times as defined by
this parameter. The additional waiting time
starts from 1 second and increases by 1 sec for
every iteration.
• Default value: 10
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.restart_after_unstopped_threads

The number of allowed unstopped threads
before the MID Server is restarted, when it
attempts to close the SSH session.
• Default value: 50
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1850


<!-- page 1851 -->
Property

mid.sa.ssh.stty_command

Description

The stty command for configuring appropriate
settings. The MID Server runs this command
when initializing the SSH terminal.
• Default value: [empty]
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.inocrrect_password_regex

The expected string which the SSH terminal
returns when the MID Server uses an incorrect
password during the login process.
• Default value: Sorry, try again|incorrect
password attempt
• Type:
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.max_unstopped_threads

Same as the
mid.sa.ssh.restart_after_unstopped_threads
parameter.
• Default value: 50
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.ssh.idle_after_sudo

The period of time (in milliseconds) that
the MID Server waits after sending a sudo
command and expects to have no activity on
the line.
• Default value: 3000
• Type:integer
• Location:This property is not available in the
base system. You can add the property as
described in Create a MID Server property .

WMI-related properties

Important: WMI Collector is deprecated in New York patch 10 and later. See the
KB0791835 WMI Collector deprecation details

for more information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1851


<!-- page 1852 -->
Properties

mid.servicewatch.wmi.host

Description

The Host/IP of the server running the
ServiceNow WMI collector.
• Default value: localhost
• Type: string
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.servicewatch.wmi.port

.

The port on which the ServiceNow WMI
collector service listens to requests from the
MID server.
• Default value: 8585
• Type: integer
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.sa.wmi.timeout

.

The timeout on command execution in
milliseconds. This property controls also the
Powershell commands.
• Default value: 60000
• Type: integer
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.sa.wmi.max_bytes_in_response

.

The maximum number of characters allowed in
a response.
• Default value: 20971520
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.servicewatch.wmi.get_file_on_shared_drive_from_collector
The MID Server attempts to access the
requested file on a shared drive directly from
the MID Server.
• Default value: true
• Type: true/false
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1852


<!-- page 1853 -->
Properties

Description

mid.sa.wmi.access_denied_regex

The regular expression of error messages
returned by server that the MID Server
considers as an access problem and triggers
trying other credentials.
• Default value: Access is denied|Access
denied|service installation failed|User
credentials cannot be used for local
connections|System error 1312|generic
failure|Insufficient privilege|user rights|
HRESULT: 0x800706BA
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.wmi.send_retry_count

The number of attempts to commiunicate with
the ServiceNow WMI Collector service on
each requests.
• Default value: 1
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.servicewatch.wmi.mui

The MID Server supports MUI (Multilingual UI)
configuration.
• Default value: false
• Type: true/false
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.powershell_api.winrm.remote_port

.

Set the port used by WinRM to connect to
remote hosts.
• Default value: 5985
• Type: integer
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.windows.management_protocol

.

The management protocol the MID Server
uses to connect to Windows servers. Allowed
values are WMI and WinRM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1853


<!-- page 1854 -->
Properties

Description

• Default value: WMI
• Type: string
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter
mid.servicewatch.wmi.protocol

.

Communication protocol between the MID
Server and the WMI collector. Allowed values:
http/https.
• Default value: http
• Type: string
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.use_powershell

.

Allows using PowerShell for executing
commands on Windows servers.
• Default value: false
• Type: true/false
• Location: This property is available
under specific MID Server parameters as
described in Add a MID Server parameter

mid.sa.prefer_powershell

.

Makes PowerShell the preferred method of
executing commands on Windows servers.

Note: If you set this parameter
to true, you must also set the
mid.sa.use_powershell parameter to true.
• Default value: false
• Type: true/false
• Location: MID Server > Properties
mid.win.baseboard.or.bios.insertion

Makes the Windows OS - Servers
pattern discover the BIOS Serial Number
instead of the Baseboard Serial Number.
• Possible values: false - to populate the
BaseBoard number; true - to populate the
BIOS serial number.
• Type: true/false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1854


<!-- page 1855 -->
Properties

Description

• Default value: false
• Location: MID Server > Properties

SNMP-related properties
Property

Description

mid.snmp.request.timeout

The time (in milliseconds) the MID Server
waits for a response for each OID request.
• Default value: 1500
• Type: Integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.port

The SNMP port.
• Default value: 161
• Type: Integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.retry

The SNMP retry count.
• Default value: 1
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.table_size_limit

Maximum table size to bring in the SNMP table
requests.
• Default value: 20000
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.table_walk_limit

Maximum requests in the SNMP walk session.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1855


<!-- page 1856 -->
Property

Description

• Default value: 10000
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .
mid.sa.snmp.get_table_timeout_sec

Maximum time (in seconds) allowed for load of
a whole SNMP table.
• Default value: 600
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.walk_timeout_sec

Maximum time (in seconds) allowed for the
SNMP walk session.
• Default value: 600
• Type: integer
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.discover_engine

Discovery authoritative engine ID on SNMP V3
sessions.
• Default value: true
• Type: true/false
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

mid.sa.snmp.snmp_v2_disabled

Disable usage of SNMP version 2
• Default value: false
• Type: true/false
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1856


<!-- page 1857 -->
Property

Description

mid.sa.snmp.failed_status_oid

OID indicating the Failed status. If an SNMP
result starts with this OID, the MID Server
considers it a failure.
• Default value: 1.3.6.1.6.3.15.1.1.3
• Type: string
• Location: This property is not available in
the base system. You can add the property
as described in Create a MID Server
property .

Preconfigured CI relationships in tag-based discovery
Several preconfigured CI relationships participate in tag-based discovery, by default. The
Traversal Rules for Application Services [svc_traversal_rules] table stores these relationships.

Important: You cannot delete or modify preconfigured CI relationships used for tagbased discovery from the Traversal Rules for Application Services [svc_traversal_rules]
table.
Preconfigured CI relationships participating in tag-based discovery by default
CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_vm_instance]

Virtualizes::
Virtualized by

Hardware [cmdb_ci_hardware]

Hardware
[cmdb_ci_hardware]

Runs::Runs on

Application [cmdb_ci_appl]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Contains::Contained Operating-system-level Virtualization
by
Container [cmdb_ci_oslv_container]

Additional preconfigured CI relationships for tag-based discovery
CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Kubernetes Service
[cmdb_ci_kubernetes_service]

Contained
By::Contains

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

OpenShift Project
[cmdb_ci_openshift_project]

Contained
by::Contains

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Contained
by::Contains

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Cluster::Cluster of

Kubernetes Service
[cmdb_ci_kubernetes_service]

Kubernetes Namespace
Contains::Contained OpenShift Deployed Config
[cmdb_ci_kubernetes_namespace]​ By
[cmdb_ci_openshift_dep_conf]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1857


<!-- page 1858 -->
Additional preconfigured CI relationships for tag-based discovery (continued)
CI

Relationship

CI

Kubernetes Namespace
Contains::Contained OpenShift Build Config
[cmdb_ci_kubernetes_namespace]​ By
[cmdb_ci_openshift_build_conf]
Kubernetes Namespace
Contains::Contained OpenShift Route
[cmdb_ci_kubernetes_namespace]​ By
[cmdb_ci_openshift_route]
Kubernetes Namespace
Contains::Contained OpenShift Image Stream
[cmdb_ci_kubernetes_namespace]​ By
[cmdb_ci_openshift_images_stream]
Properties related to tag-based discovery
The Service Mapping plugin includes several properties specifically related to tag-based
discovery.

Note: To open the System Property [sys_properties] table, enter
sys_properties.listin the navigation filter.

Property

Description

sn_sm_scoped_app.svc_by_tags.max_candidates_per_family
Limits the maximum number of tag-based
service candidates created for a single
family. If the family definition includes more
candidates, the most recently updated CIs
take precedence. This value applies to all tagbased service families.
• Type: integer
• Default value: 200
svc_by_tags.classes.whitelist

This property contains the list of allowed CI
classes separated by commas. Tag-based
mapping includes the CIs belonging to these
classes. An empty ‘value’ field indicates the
inclusion of all CI classes.

svc_by_tags.install_status.blacklist

This property contains the list of exclusions
based upon the install status separated by
commas. Tag-based mapping excludes any
tagged CIs with the following install statuses:

Note: In this context, CIs brought
by traversal rules are not considered
tagged. This property applies only to
original tagged CIs.
Default value: 7,100
Other possible values:
Installed=1, On order=2, In maintenance=3,
Pending install=4, Pending repair=5, In
stock=6, Retired=7, Stolen=8

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1858


<!-- page 1859 -->
Property

Description

svc_by_tags.max.categories.per.family

Set the maximum number of categories
allowed per service family.
• Type: integer
• Default value: 3

svc_by_tags.max.traversal.rules.active

Set the maximum allowed number of CI
relationships that can be in the active
state. Service Mapping uses only active CI
relationships for tag-based discovery.
• Type: integer
• Default value: 5
• Location: System Property [sys_properties]
table

svc_by_tags.max_ci_limit

Set the maximum allowed number of CIs that a
tag-based application service can contain.
• Type: integer
• Default value: 1000
• Location: System Property [sys_properties]
table

Keyboard shortcuts for operating Service Mapping in accessibility mode
You can access all service instance maps and service forms using a keyboard in the accessibility
mode.
When the whole map is selected, the information message at the top of the window offers
guidelines on how to navigate inside the map.

Action

Keyboard shortcut

Access right-click menus.

Space

Expand clusters.

Enter

Move into the map pane from the Properties
pane.

Escape

In the More Options menu, toggle options on
and off.

Space

Select CIs and connections inside the map.

Arrow

In the timeline, you can edit the time inside the Number (1-9)
current time selection.
Move through UI elements in the service
instance map window.

Tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1859


<!-- page 1860 -->
Example definitions for service families in tag-based mapping
When preparing to map application services based on tags, create tag categories that contain
tags with similar use. Define a tag-based service family and the tags you want to use for mapping.
In addition to tag categories, you can also define tag values to narrow the criteria for the service
candidates created by Service Mapping. Use these examples for guidance.
For detailed information about defining service families in tag-based mapping, see Prepare for
mapping application services based on tags.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Examples of defining tag-based mapping criteria for service families
Definitions for
service family

Category

Key

Value (optional)

Environment

Env

Not defined

Example 2: one
Environment
tag category, one
value

Env

Production

Example 3: one
tag category, two
values

Environment

Env

Staging,Production

Example 4: two
tag categories,
no values

Environment

Env

Not defined

Application

App

Example 1: one
tag category, no
values

Result

Service Mapping
creates a service
candidate for
each tag value
for the Env key.
Each service
candidate
contains only CIs
with the same
value for the Env
key.
Service
Mapping creates
the service
candidate
containing only
CIs that have the
Env tag key with
the Production
tag value.
Service
Mapping creates
two service
candidates: One
containing CIs
that have the
Production tag
value; another
containing CIs
that have the
Staging tag value.
Service Mapping
creates a service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1860


<!-- page 1861 -->
Examples of defining tag-based mapping criteria for service families (continued)
Definitions for
service family

Category

Key

Value (optional)

Result

candidate
for each
combination of
tag values for all
defined tag keys.
Example 5: two
tag categories,
two values for
each category

Environment

Env

Application

App

Production,Staging Service
Mapping creates
HR,Finance
four service
candidates:
production::hr,
production::finance,
staging::hr,
staging::finance.

Traffic-based connections list
Refer to this chart for information about traffic-based connections when you remove CIs from an
application service.
Traffic Based Connections List (when discovery based on Predictive Intelligence is disabled)
Field

Description

IP

The IP address of the application connected to
the selected CI.

Port

The port on the selected CI that is used to
communicate to the other application.

Process

The ID of the process in the selected CI.

Already on map

• Yes — if this connection shows on the map.
• No — if this connection is not part of the
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
System decision setting for a connection is
Keep, and you want to remove this connection,
select Remove.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1861


