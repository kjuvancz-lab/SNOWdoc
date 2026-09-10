# Zurich Telecommunications Network Inventory â€” Inventory models additional tabs / Inventory number allocation fields / Inventory Numbers form +4 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 327â€“341 of 425

Sections: Inventory models additional tabs (p327); Inventory number allocation fields (p327); Inventory Numbers form (p330); IP address inventory management data model (p331); Location forms (p333); Logical Connection form (p334); Logical connection modification request form (p336); Managed Network form (p338)

---

<!-- page 327 -->
Related topics
   Create inventory models

Inventory models additional tabs

The additional tabs of the inventory models appear after a model is created. These tabs display
all the related information of a model. You can always view, update, save, and delete the
information as required.

Additional tabs of inventory models  Description
Name
Assets                               List of assets related to the model.
Configuration items
Model components                     List of all the Configuration Items (CIs) created
Model life cycles                    for the model.
Vendor catalog items
Hardware model lifecycles            List of components that constitutes the model.
Network model relationships
                                     List of life cycles of the models.
Model images
                                     List of vendor catalog items associated to the
Bandwidth compatibilities            product model.

                                     List of life cycle phases and life cycle type of a
                                     hardware model.

                                     List of all network model relationships of the
                                     model.

                                          Note: This field is not applicable to the

                                           connection models.

                                     Images of the model. The images uploaded
                                     here are shown in the Configuration Items
                                     created for this model.

                                          Note: This field is applicable only to

                                           Equipment models.

                                     List of bandwidths that are compatible to the
                                     respective connection. Further, you can create
                                     and update the associated connection model
                                     and bandwidth group.

                                          Note: Bandwidth compatibilities field

                                           is applicable only to the connection
                                           models.

Related topics
   Create inventory models

Inventory number allocation fields

          The inventory number allocation fields enables you to describe the details for LAG, VLAN, IP                                                                          327
          address, and telephone number records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 328 -->
Inventory Number Allocation fields  Description
Fields
Telephone number                    Telephone number that conforms with
                                    the e164 naming convention. For more
Telephone number allocation         information, see E.164 phone number field
Country Code                        configuration .
Area code
                                    Telephone number allocation record.
Central office code
                                    Select the country where you create the
                                    telephone number.

                                    Code that identifies a geographic region within
                                    a country or territory. It's usually the first three
                                    digits of a telephone number. The purpose of
                                    the area code is to route telephone calls to
                                    destinations that are based on the location
                                    of the recipient. For example, in the phone
                                    number (123) 456-7890, "123" represents the
                                    area code.

                                    Central office code that is also referred to as
                                    NXX. The NXX portion of a telephone number
                                    provides information about the central office
                                    or local exchange that belongs to a particular
                                    geographic area. Each central office code is
                                    related to a geographic location or service
                                    provider within the area code.

                                    For example, in the phone number (123)
                                    456-7890, "456" represents the central office
                                    code.

Line number digits                  Set of digits following the area code and
                                    central office code. These digits identifies an
                                    individual line within the area served by the
                                    central office code.

                                    For example, in the phone number (123)
                                    456-7890,the set of "7890" represents the line
                                    number digits which is 4 digits long.

Status                              Status of the telephone number:

                                     · New: Indicates that this number is new.

                                     · Reserved: Indicates that the number is
                                       reserved for a service but isn't assigned yet.

                                     · Unassigned: Indicates that the number isn't
                                       assigned to anyone yet or the number has
                                       been in a quarantined status for a few days.

                                     · Assigned: Indicates that the number is
                                       assigned.

                                     · Quarantined: Indicates that the number
                                       hasn't been in use for a long time.
                                       Depending on the network operator, this

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    328
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 329 -->
Inventory Number Allocation fields (continued)

Fields           Description

                    number changes to a quarantined status
                    after a few days. After a while, the status
                    changes to unassigned.

                  · Ported in: Indicates that the number used to
                    belong to some other network and has now
                    moved to this network.

                  · Ported out: Indicates that the number has
                    moved out to some other network.

Number category  Categories:

                  · Owned: Indicates that these numbers are
                    owned by your organization.

                  · Third party: Indicates that these numbers
                    are provided by a third-party organization.

                  · Ported in: Indicates that these numbers are
                    moved from another network.

Carrier          Name of the telecommunications company
                 or service provider that owns and manages a
Parent Block     range of telephone numbers within a block.
Model ID         They allocate the numbers to the customers
Number           and handle the routing of calls that are related
                 to those numbers.
Element type
                 Parent block if there's any.

                 Model ID of the asset.

                 Name of the parent inventory that you're
                 associating the child inventory with. The
                 ServiceNow AI Platform automatically assigns
                 this name.

                      Note: This field is available only for

                       the number elements of the inventory
                       numbers.

                 Type of network inventory that you want to
                 associate your VLAN or LAG number with.
                 Select one of the following options:

                  · Network Interface

                  · Physical Connection

                  · Logical Connection

                        Note: This field is available only for

                          the number elements of the inventory
                          numbers.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    329
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 330 -->
Inventory Number Allocation fields (continued)

Fields                          Description
Element
                                Network asset under an element type that you
                                want to configure with.

                                                Note: This field is available only for

                                                the number elements of the inventory
                                                numbers.

Sequence                        Sequence number of the network connection.

                                     Note: This field is available only for

                                      the number elements of the inventory
                                      numbers.

 CIDR                           Classless Inter-Domain Routing (CIDR) that
                                is associated with the subnet, the IP address
 Managed Network                of the gateway, and the subnet mask. For
                                VMware, the CIDR, gateway, and subnet mask
 Parent Pool                    fields are mandatory.
 DNS Domain
 Reported Free Addresses        Name of the managed network that
 Reported Addresses In Use      is associated with this IP pool and IP
 Reported Reserved Addresses    subnetwork.
 Service
Related topics                  Name of the IP pool that is the parent of this IP
                                pool or IP network subnet.
   Inventory number allocation
                                Name of the IP addresses.

                                Number of the addresses that are free for this
                                IP pool or IP subnet.

                                Number of the addresses that are in use for
                                this IP pool or IP subnet.

                                Number of the addresses that are reserved for
                                this IP pool or IP subnet.

                                Type of service.

Inventory Numbers form

The Inventory Numbers form enables you to create, review, and modify the inventory details for a
network inventory.

Inventory Numbers form

Field     Description
Name
          Name of the inventory that you want to configure. Use the Type field to select
          one from the list.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    330
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 331 -->
Inventory Numbers form (continued)

Field        Description
Number
             Lowest value of the network inventory as specified by the technology
             standards.

End Number Highest value of the network inventory.

Type         Type of inventory that this network asset belongs to. Select one of the following
             options:

                VLAN Range
                      Range of VLAN numbers in which the network asset belongs.

                VLAN Subrange
                      Subrange of VLAN numbers in which the network asset belongs.

                VLAN
                      VLAN number for the network asset.

                LAG Range
                      Range of LAG numbers in which the network asset belongs.

                LAG
                      LAG number for the network asset.

Parent       Parent inventory number for the network asset:

              · If it's a parent item, leave the field blank.

              · If it's a child inventory number, the ServiceNow AI Platform automatically
                assigns the value.

Short        Short description for the network inventory number.
description

Related topics
   Define your inventory numbering

IP address inventory management data model

By using the IP address inventory management data model, you can understand how the tables
that are used for the IP pools, IP subnetworks, allocated IP addresses, and IP addresses all relate
to each other.

Data model

The following diagram shows the IP address inventory management data model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    331
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 332 -->
With this data model, you can store the related tables of your IP pool, IP subnetwork addresses,
or allocated IP addresses. You can also create an IP pool table or IP subnet table to allocate
services. To do this task, you create an IP pool or IP subnet. Each IP address in the subnet is
created in an allocated IP address table. You can then relate IP addresses from the allocated IP
address table to the IP address table for discovery and configuration item (CI) mapping.

An IP address is allocated this way:
1. A telco operator gets an IP subnet that has been allocated from the external system for their

   customers. This IP subnet is stored in an IP network subnet table.

2. A telco operator can create an IP address of the subnet so that they can track the IP address
   allocation. In this case, each IP address of this subnet gets stored in the allocated IP address
   table.

3. The IP addresses that are ready to use in the allocated IP address table are then related to a
   record in the IP address table.

Related topics
   Create IP address allocation
   IP addresses allocation

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    332
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 333 -->
Location forms

The Location forms enable you to create locations hierarchy to track and manage your network
assets.

Location form

The Location form enables you to create, review and modify the location details for a network
asset.

Location form

Field     Description
Name      Descriptive name to identify the location.
Street    Street address that this location describes.
City      Name of the city that this location is in.
State /   Name of the state or province that this location is in.
Province
Zip /     Zip or postal code that this location is in.
Postal
Code      Name of the country that this location is in.
Country   Name of the contact, if any, at this location. To select a contact, click the search
Contact   icon ( ).
          Phone number of the contact, if any, at this location.
Phone     Fax number of the contact, if any, at this location.
Fax
phone     Parent location, if any, for this location. Click the search icon ( ) and select a
Parent    location number that you already created. Using this field enables you to create a
          hierarchy of locations.
Latitude  Latitude of the location in decimal degrees. Positive numbers describe latitudes
          north of the equator, and negative numbers describe latitudes south of the equator.

          The value of this property must be from -90.0 through 90.0.

Longitude Longitude of the location in decimal degrees.

Related topics
   product/tmt-telecom-network-inventory/task/define-tni-locations.dita

Location form - Parent

The Location form (parent) enables you to create, review and modify the parent location details
for a network asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    333
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 334 -->
Locations form

Field      Description
Parent
           Parent location, if any, for this location. Click the search icon ( ) and select a
Latitude   location number that you already created. Using this field enables you to create a
           hierarchy of locations.

           Latitude of the location in decimal degrees. Positive numbers describe latitudes
           north of the equator, and negative numbers describe latitudes south of the
           equator.

           The value of this property must be from -90.0 through 90.0.

Location   Type of location that this record represents:
type        · Country
            · State/ Region / Province
            · City
            · Building / Campus
            · Site
            · Ocean
            · Orbit

Code       Geographic code that is assigned to this location. If none, leave the field empty.

Alternate  Alternate geographic code that is assigned to this location. If none, leave the
code       field empty.

Alternate  Alternate geographic name that is assigned to this location. If none, leave the
name       field empty.

Region     Name of the region that this location is in.

Sub-region Name of the sub-region, if any, that this location is in.

Intermediate Name of the intermediate region, if any, that this location is in.
Region

Logical Connection form

The Logical Connection form enables you to define a logical connection by describing its
configuration and connection details.

Logical Connection form

The Logical Connection form enables you to describe the details for a logical connection.

Logical Connection form

Field      Description
Name
           Name of this logical connection The ServiceNow AI Platform uses this name to
           identify it in your network inventory.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    334
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 335 -->
Logical Connection form (continued)

Field         Description

Max percent Percent of subscription allowed for a logical connection with respect to the

over          bandwidth.

subscription

Site A

              Originating network site for this connection. Select the search icon ( ) and
              select a network site. To learn more, see product/tmt-telecom-network-inventory/
              task/define-tni-sites.dita.

Site Z

              Destination network site for this connection. Select the search icon ( ) and
              select a network site. To learn more, see product/tmt-telecom-network-inventory/
              task/define-tni-sites.dita.

Related topics
   Define the logical connection details

Logical Connection form - Configuration

The Configuration section in the Logical Connection form enables you to create a logical
connection.

Logical Connection form - Configuration

Field      Description
Port A
           Network interface that is used in the Port A connection. Select the search icon (
               ) and select a network interface. To learn more, see Define the network interface

           details.

Bandwidth

AtoZ       Total bandwidth capacity from Site A to Site Z for this network connection.

Planned    Projected date for the implementation.
date
           Type of frame used in the connection. Select one of the following:
Framing
type        · None
            · AMI (Alternate Mark Inversion) - A line coding scheme where zeros are

              represented by no voltage, and ones are represented by alternating positive and
              negative voltages.

            · B4ZS (Bipolar with Four-Zero Substitution) - A technique that replaces
              sequences of four consecutive zeros in a digital signal with a special pattern to
              maintain synchronization.

            · B8ZS (Bipolar with Eight-Zero Substitution) - Similar to B4ZS, but it replaces
              sequences of eight consecutive zeros with a special pattern to maintain
              synchronization in high-speed digital signals.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    335
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 336 -->
Logical Connection form - Configuration (continued)

Field      Description
           Protocol version number.
Protocol
version

Endpoint   Endpoint role that is associated with the service endpoint for this network asset.
role       An endpoint role is the function that is served by the endpoint of the service that
           you're providing. Select one of the following options:
Port Z      · ROOT or LEAF endpoint role, as defined by the Metro Ethernet Forum (MEF).
            · --None-- for no assigned endpoint role.

           Network interface that is used in the Port Z connection. Select the search icon ( )
           and select a network interface. To learn more, see Define the network interface
           details.

Bandwidth

ZtoA       Total bandwidth capacity from Site Z to Site A for this network connection.

Cost

           Cost of this network asset.

Distance

           Route length of this connection, expressed in the unit of measure that you select in
           the Unit field.

Unit
                 Unit of measure in which you're expressing the route length of the connection in
                 the Distance field. Select one of the following options:
                    --None--
                          No distance measurement expressed for the connection route length.
                    Miles
                          Distance is expressed in miles.
                    Kilometers
                          Distance is expressed in kilometers.
                    Feet
                          Distance is expressed in feet.
                    Meters
                          Distance is expressed in meters.

     Note: To learn about the remaining configuration fields that are common to most of the

      Inventory menu forms, see Commonly used network asset instance configuration fields.

Related topics
   Define the logical connection details

Logical connection modification request form

          The Logical connection modification request form enables you to modify endpoints of a logical                                                                         336
          connection record in the Telecommunications Network Inventory application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 337 -->
Logical connection modification request form

Fields                                        Description
A end Site
                                              Starting network (Site A field) site where this
                                              selected logical or physical connection is
                                              configured.

                                              Note: This field is auto populated

                                              based on the selected site or equipment
                                              or interface or connection.

Z end Site                                    Ending network site (Site Z field) where this
                                              selected logical or physical connection is
                                              configured.

                                                   Note: This field is auto populated

                                                    based on the selected site or equipment
                                                    or interface or connection.

A end Equipment                               Starting network (Site A field) equipment
                                              where this logical or physical connection is
                                              configured.

                                                   Note: This field is auto populated

                                                    based on the selected site or equipment
                                                    or interface or connection.

Z end Equipment                               Ending network (Site Z field) equipment
                                              where this logical or physical connection is
                                              configured.

                                                   Note: This field is auto populated

                                                    based on the selected site or equipment
                                                    or interface or connection.

A end interface                               Starting interface (Site A field) point where this
                                              logical or physical connection is configured.

                                                   Note: This field is auto populated

                                                    based on the selected site or equipment
                                                    or interface or connection.

Z end interface                               Ending interface (Site Z field) point where this
                                              logical or physical connection is configured.

                                                   Note: This field is auto populated

                                                    based on the selected site or equipment
                                                    or interface or connection.

Logical Connection                            Select a logical connection from the list that
                                              needs modification.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    337
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 338 -->
Logical connection modification request form (continued)

Fields           Description

                 Note:

                  · The list includes both logical
                    connection and their revisions. On
                    selecting the revision of a logical
                    connection, the Create Revision check
                    box disappears.

                  · This field is auto populated based
                    on the selected site or equipment or
                    interface.

Create Revision  Option to enable or disable revision process.

                      Note:

                       1. On selecting this check box, the
                          following occurs:

                         a. The revision process is
                             initiated. To learn more, see
                             Revision, operationalization, and
                             decommission of a Configuration
                             Item.

                         b. Two change tasks for modification
                             and revision are created with the
                             open and closed status respectively.

                      2. Open the Modify Logical or
                          Physical connection change task
                          to start modifying the duplicated
                          logical or physical connection and
                          operationalize further. To learn more,
                          see Operationalize a configuration
                          item.

                      3. In the process of revision of physical
                          connection modification, the logical
                          connections associated with physical
                          connection ports are updated during
                          the operationalization process.

Related topics
   Modify logical connection endpoints model

Managed Network form

The Managed network form enables you to manage a network in the Telecommunications
Network Inventory application.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    338
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 339 -->
Managed Network form         Description
Fields
OT asset details             Asset criticality, Operational Technology (OT)
                             asset type, Purdue level, and OT discovery
PO number                    source name for this OT asset.
Managed by
Vendor                       Purchase order number of this network.
Environment
                             Engineer who handles this network.
Cost
Monitor                      Vendor name of this network.
Discovery source
Installed                    Environment on which this network is
Attributes                   available, such as development, production, or
Most recent discovery        test.

Model ID                     Total cost of this network.
Checked in
Order received               Option to monitor the details of this network.
MAC address
Ordered                      Discovery source name that updates the
Contained by CI              configuration item (CI).
Due in
Serial number                Installation date and time of this network.
Assigned to
Fully qualified domain name  List of attributes of this network.

                             Most recent discovery (last_discovered).
                             When the most recent discovery is provided,
                             the CI is updated with the provided value only
                             if the entered time value is newer than the
                             time value in the Configuration Management
                             Database (CMDB). If the last_discovered isn't
                             provided, the last_discovered attribute is
                             updated with the current timestamp.

                             Model ID of this network inventory asset.

                             Checked-in date and time of this network.

                             Date and time when the order is received.

                             MAC address of the device.

                             Date and time that the order was placed for
                             this network.

                             Configuration Item (CI) in which this network
                             resides.

                             Duration limit of this network.

                             Serial number of this network.

                             Name of the engineer to whom this network is
                             assigned to.

                             Domain name that specifies its exact location
                             in the tree hierarchy of the Domain Name
                             System (DNS).

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    339
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 340 -->
Managed Network form (continued)  Description
Fields
Supported by                      Name of the person who supports this network
                                  asset.
Attested by
IP Address                        Name of the person who attests this network
Category                          inventory asset.
Life Cycle Stage Status           IP address of this network
First discovered                  Model category of this network.
Attestation score                 Status of the life-cycle stage.
Comments                          Date and time instance was initially
Managed by group                  discovered.
Cost currency                     Attestation score of this managed network
Warranty expiration               asset.
Name                              Comments that you provide for this network.
DNS Domain                        Name of the group who manages this network.
                                  Currency of the cost of this network.
Purchased                         Expiration date of the warranty for this
Business unit                     network.
Asset tag                         Name of this managed network.
                                  Unique name or address assigned to the
Lease contract                    device within the Domain Name System (DNS)
Fault count                       infrastructure.
Checked out                       Purchase date of this network.
Start date                        Department of the organization that this
Maintenance schedule              network belongs to.
Attestation status                Asset tag for the item.
Install status
                                       Note: If you enter an asset tag, only the

                                        stockrooms that contain the asset are
                                        displayed.

                                  Contractor of this network.
                                  Number of faults.
                                  Date and time when this network is checked
                                  out.
                                  Start date of this network.
                                  Schedule that was assigned to the server for
                                  the maintenance of this network.
                                  Status of the attestation.
                                  Status of the installation.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    340
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 341 -->
 Managed Network form (continued)  Description
 Fields                            Correlation ID that identifies the remote record
 Correlation ID                    whose data values should be used to update
                                   the local record. Provide separate Correlation
 Model number                      ID values for the local and remote systems.
 Department                        Model number of the device.
                                   Department where this network inventory
 Duplicate of                      asset belongs.
                                   Configuration item (CI) to which this network
 Owned by                          belongs to.
 Description                       Name of the person who owns this network.
 Change group                      Description of this network.
                                   Group name that you want to assign this group
 Support group                     to.

 GL account                        Group that supports this network asset.

 Attested date                     Account from the General Ledger Account
 Justification                     [itfm_gl_accounts] table.
 Domain                            Date when this network was attested.
 Assigned                          Justification for this network.
 Approval group                    Domain name of this network.
                                   Date when this network was assigned.
 Location                          Name of the group that you see when you
 Subcategory                       submit an approval request.
 Company                           Location of this network.
 Manufacturer                      Model subcategory of this network.
 Invoice number                    Company who owns this network
 Cost center                       Name of the manufacturer of this network
 Can print                         Invoice number of this network.
 Operational status                Cost center of this network.
 Life cycle stage                  Option to print the details of this network.
 TNI CI attributes                 Status of this network's operation.
                                   Life-cycle stage of the network.
Related topics                     Configuration (CI) that you can select to create
   Create managed network          the Telecommunications Network Inventory
                                   attribute details for this network.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    341
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

