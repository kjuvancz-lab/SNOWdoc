# Zurich Telecommunications Network Inventory â€” Change request related tabs / Commonly used network asset instance identification fields / Commonly used network asset instance configuration fields +4 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 265â€“274 of 425

Sections: Change request related tabs (p265); Commonly used network asset instance identification fields (p267); Commonly used network asset instance configuration fields (p270); Company form (p271); Connection Element form (p272); Create equipment from rack view (p272); Create Logical Connection form (p274)

---

<!-- page 265 -->
Manage Phone Number - Task Attributes (continued)

Fields                       Description

                             Note: Multiple telephone number

                             allocations are created if the line number
                             isn't in a series of numbers. Also, the
                             status of these numbers gets updated
                             to either assigned or ported-in and the
                             availability is No.

Related topics
   Instantiating inventory using design and assign

Change request related tabs

The related tabs in the Change Request form display related records that dynamically change
based on the context of the change request.

Change Request related tabs  Description
Tab
Details                      This tab displays the change request
                             details, service design inputs, provisioning
Affected CIs                 parameters, and implementation planning
                             details that are required to design, provision,
                             and track the GPON broadband service
                             through its lifecycle.

                             List of configuration items (CI). These items
                             (from the CMDB) are affected by the change
                             request. You can associate multiple, affected
                             CIs with a change.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    265
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 266 -->
Change Request related tabs (continued)  Description
Tab
                                              Note:
Impacted Services/CIs
Approvers                                       · The Affected CIs tab of the Change
Change Tasks                                      Request form lists all CIs that are
                                                  created through the change tasks of
Problems                                          that change request. This tab also lists
Incidents Fixed By Change                         all the affected CIs of the change tasks.
Incidents Caused By Change
Task SLAs                                       · If a CI in the affected CIs list of a
                                                  change task is manually (or through
                                                  an API) changed to another CI, the
                                                  changes are also updated in the
                                                  affected CI list of the corresponding
                                                  change request.

                                                · If a CI in the affected CI list of a change
                                                  task is manually (or through an API)
                                                  deleted, the same CI is deleted in the
                                                  affected CI list of the corresponding
                                                  change request.

                                         List of CIs, such as business services or from
                                         other CI classes. These items are impacted
                                         by the affected CIs in the change request. You
                                         can associate multiple, impacted CIs with a
                                         change.

                                         List of approvers. These items are
                                         automatically generated from the workflow.
                                         You can also view the group of approvers who
                                         are assigned to the task.

                                         List of change tasks. These items are created
                                         from a workflow. The default workflow
                                         generates tasks in the Implementation state.
                                         You can also create a new change task. The
                                         Planned start date and Planned end date in
                                         the task must fall within the planned start and
                                         end dates that are specified in the change
                                         request.

                                         List of problem statements. If the change
                                         was generated from a problem, this list is
                                         generated automatically.

                                         Incidents that require a resolution for the
                                         change.

                                         List of incidents caused by the implementation
                                         of the change.

                                         List of Task SLA records for the SLAs that are
                                         attached to the particular change tasks.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    266
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 267 -->
Change Request related tabs (continued)  Description
Tab
Outages                                  List of CI unavailability or outages. If there is
                                         an actual down time for any of the CI items, the
                                         outage information is listed.

Related topics
   Create a change request from Network Inventory Workspace

Commonly used network asset instance identification fields

Some network asset instance fields are common in the identification sections of the
Telecommunications Network Inventory forms. The ServiceNow AI Platform uses these fields to
identify and categorize your network inventory assets.

Common identification fields

Field         Description

Is Alarmable
                   Option that designates if an alarm system can be assigned to this network asset.

Asset

              Name of the asset that is associated with this record.

Availability  Current status of whether a resource is used or not used. Select one of the
CLEI code     following options:

               · Available
               · Used
               · Reserved
               · Shared

              Assigned Common Language Equipment Identification (CLEI) for this network
              asset. CLEI codes are globally unique, 10-character alphanumeric intelligent
              codes that identify the equipment in a structured naming format. There's a one-
              to-one relationship between a CLEI code and a manufacturer's product code,
              which is a part number that includes the hardware version.

CLLI code

              Assigned equipment Common Location Identifier Code (CLLI) for this network
              asset. The North American telecommunications industry uses the CLLI code to
              specify the location and function of telecommunications equipment.

Function

              Optional user-defined function code that you use to categorize the functions of

              the various network entities or assets. Select the search icon (  ) and select a
              function code.

Life Cycle    Stage of the life cycle that this network asset is in:
Stage            Deploy

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    267
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 268 -->
Common identification fields (continued)

Field       Description
                     Network asset that is deployed in your network.

               Design
                     Network asset that is being used for design purposes.

               End of life
                     Network asset that is at the end of its useful life.

               Inventory
                     Network asset that is an inventory item in use in the network.

               End of life
                     Network asset that is missing and can't be located.

               Operational
                     Network asset that is operational.

               Purchase
                     Network asset that is in the purchase phase of its life.

Life Cycle  Status of the network asset as it relates to the life cycle stage that it is in:
Stage          In Maintenance
Status               Network asset that is currently in maintenance.
               In Use
                     Network asset that is currently in use.
               Pending Retirement
                     Network asset that is currently in maintenance.

Location

            Geographic location of the network site. Select the search icon ( ) and select a
            location from the Location hierarchy. To learn more about the Location hierarchy,
            see product/tmt-telecom-network-inventory/task/define-tni-locations.dita.

Managed by
                   Name of the person who manages this network asset. Select the search icon

                   ( ) and select a user from the listing.

Network     Domain of ownership and responsibility for this network asset or connection.
domain      Select one of the following options:

               Mobility
                     Network asset that is associated with the mobility equipment
                     domain.

               Telco
                     Network asset that is associated with the telco equipment domain.

               Core
                     Network asset that is associated with the core equipment domain.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    268
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 269 -->
Common identification fields (continued)

Field        Description

Product      Product model, if any, that is associated with this network asset. Select the
Model        search icon ( ) and select a product model.

Replaceable
                   Option that designates if this network asset can be replaced if it malfunctions or

                   is affected by a network outage.

Role

             Optional user-defined role code that you use to categorize the roles or purposes

             of the various network entities or assets. Select the search icon (  ) and select
             a role code.

Serial       Assigned serial number for this network asset.
number       Group that supports the network inventory.

Support
group

Type

             Optional user-defined type code that you use to categorize the types of the

             various network entities or assets. Select the search icon (  ) and select a type
             code.

Name         Descriptive name for this IP pool or IP network subnet.
CIDR         Classless Inter-Domain Routing (CIDR) that is associated with the subnet, the IP
             address of the gateway, and the subnet mask. For VMware, the CIDR, gateway,
Managed      and subnet mask fields are mandatory.
Network      Name of the managed network that is associated with this IP pool and IP
Parent Pool  subnetwork.
Description  Name of the IP pool that is the parent of this IP pool or IP network subnet.
DNS          Descriptive information about this IP pool or IP network subnet.
Domain       Name of the IP addresses.
Reported
Addresses    Number of the addresses that are in use for this IP pool or IP subnet.
in Use
Reported     Number of the addresses that are free for this IP pool or IP subnet.
Free
Addresses    Number of the addresses that are reserved for this IP pool or IP subnet.
Reported
Reserved
Addresses

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    269
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 270 -->
Cable parameters form

Field          Description
Cable type     Name of the cable type.

Cable number   Number of the cable that is used in the physical connection.

Stand count    Number of fibers that this cable contains.

Cable length   Length of the cable in millimeters (mm).

Parent cable   Option that designates the top-layer physical connection.

Color code     Color of the cable line.

Spare length A Length of the cable that connects to site A in millimeters (mm).

Spare length Z Length of the cable that connects to site Z in millimeters (mm).

KML Route      Option that designates the fiber route maps in a KML format.

Commonly used network asset instance configuration fields

These fields, listed in alphabetic order, are common to some or most of the Configuration
sections in the Telecommunications Network Inventory forms. The ServiceNow AI Platform uses
them to configure individual network assets when you define your network asset instances.

Field          Description
Comments
               Free form text that is used to comment on a network asset. For example, Duty
               tech is Rahul Dev.

Dimensions

               Physical dimensions of the network asset.

Distinguished

name           Alternate name reference for the network asset that is based on the

               concatenated names and IDs from the other related network assets.

Manufacturer

               Name of the network asset's manufacturer. Select the search icon ( ) and
               select a manufacturer code. To learn more, see Create manufacturer and
               vendor codes.

Model          Manufacturer's model number for this network asset.
number
               Physical orientation of the slots in this network asset:
Orientation       --None--
                        No specific physical slot orientation.
                  Horizontal
                        Horizontal slot orientation.
                  Vertical
                        Vertical slot orientation.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    270
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 271 -->
Field        Description
Network
domain       Domain of ownership and responsibility for this network asset or connection.
             Select one of the following options:
Operation
notes           Mobility
POTS                  Represents wireless devices and connections.
Number
Product         Telco
Model                 Represent the edge or access networks.

Serial          Core
number                Represents the core network infrastructure.

             Free-form operation note text for this network asset. For example, Check
             diesel fuel for generator.

             Plain Old Telephone Service number that you are associating with this network
             site.

             Product model, if any, that is associated with this network asset. Select the
             search icon ( ) and select a product model.

             Assigned serial number for this network asset.

Company form

The Company form enables you to review, create, and modify the company details for a company
code.

Company form

Field         Description
Name          Name of the company.

Phone         Company phone number.

Fax phone     Company fax number.

Customer      Option that indicates a customer of yours.

Stock symbol Three or four-letter stock symbol for the company.

Stock price   Current price at which the company stock is sold.

Street        Mailing street address of the company.

City          City in which the company is located.

State / Province State or province in which the company is located.

Zip/Postal code Zip or postal code for the company.

Notes         Any information about the company that would be helpful for others to know.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    271
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 272 -->
Related topics
   Create manufacturer and vendor codes

Connection Element form

The Connection Element form enables you to define the connection elements for the physical
connections and logical connections in the Telecommunications Network Inventory application.
You can create, review, update, and delete the elements in this form.

Connection Element form   Description
Fields
Logical connection        Name of the logical connection that the
                          connection element is created for.
Physical connection
                          Name of the physical connection that the
Element type              connection element is created for.

                          Types of connection elements that you can
                          select:
                           · Network Interface
                           · Physical connection
                           · Logical connection
                           · Managed network function
                           · Equipment
                           · Topology

Element                   Element of the element type.
Sequence                  Number of sequences.
Route                     Number of routes.
Cable                     Cable for the physical element.
Strand number             Cable number of the physical element.

Create equipment from rack view

The Create new equipment form enables you to create an equipment from the selected rack
using the Telecommunications Network Inventory application.

Create new equipment      Description
Fields                    Select a template for the equipment
Apply inventory template  Name of the equipment
Name                      Stage of the life cycle that this network asset is
Life Cycle Stage          in:

                             Deploy

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    272
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 273 -->
Create new equipment (continued)

Fields                            Description
                                           The network asset is deployed in
                                           your network.

                                     Design
                                           The network asset is being used
                                           for design purposes.

                                     End of life
                                           The network asset is at the end of
                                           its useful life.

                                     Inventory
                                           The network asset is an inventory
                                           item in use in the network.

                                     End of life
                                           The network asset is missing and
                                           can't be located.

                                     Operational
                                           The network asset is operational.

                                     Purchase
                                           The network asset is in the
                                           purchase phase of its life.

Equipment CLLI                    Assigned equipment Common Location
                                  Identifier Code (CLLI) for this network asset.
                                  The North American telecommunications
                                  industry uses the CLLI code to specify the
                                  location and function of telecommunications
                                  equipment.

Network domain                    Domain of ownership and responsibility for
                                  this network asset or connection. Select one
                                  of the following options:

                                     Mobility

                                           The network asset is associated
                                           with the mobility equipment
                                           domain.

                                     Telco

                                           The network asset is associated
                                           with the telco equipment domain.

                                     Core

                                           The network asset is associated
                                           with the core equipment domain.

Managed by                        Name of the person who manages this

                                  network asset. Select the search icon ( )
                                  and select a user from the listing.

Life Cycle Stage Status           Status of the network asset as it relates to the
                                  life cycle stage that it is in:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    273
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 274 -->
Create new equipment (continued)  Description
Fields                               In Maintenance
                                           The network asset is currently in
Support group                              maintenance.
Network site                         In Use
Configuration                              The network asset is currently in
                                           use.
                                     Pending Retirement
                                           The network asset is currently in
                                           maintenance.

                                  Group that supports the network inventory.

                                  Site of this equipment

                                  Under optional templates section, select a
                                  template for the multi slots.

                                       Note: This field is displayed only for

                                        multi slots template.

Create Logical Connection form

The Create Logical Connection form enables you to review, create, and modify the connection
details for a logical connection change request.

Create Logical Connection form    Description
Fields
A end Site                        Starting network site where this logical
                                  connection is configured.
A end Equipment
                                  Starting network equipment where this logical
A end Interface                   connection is configured.

Logical Connection Model          Starting network interface where this logical
                                  connection is configured.

                                  Logical connection model where this logical
                                  connection is configured.

                                       Note: The topology connection models

                                        are not listed if you are creating a logical
                                        connection in a change request.

Z end Site                        Ending network site where this logical
                                  connection is configured.

Z end Equipment                   Ending network equipment where this logical
                                  connection is configured.

Z end Interface                   Ending network interface where this logical
                                  connection is configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    274
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

