# Zurich Telecommunications Network Inventory â€” Service Instance form / Strand form / Strand model form +4 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 378â€“387 of 425

Sections: Service Instance form (p378); Strand form (p379); Strand model form (p382); Task attributes in Add Card form (p385); Task attributes in Add Equipment to Rack or Cabinet form (p385); Task attributes in Create logical connection form (p386); Task attributes in Create physical connection form (p387)

---

<!-- page 378 -->
Server fields (continued)

Field                  Description
OS Service Pack        Service pack that is installed on the operating system.
CPU speed (MHz)        Speed of the CPU, in Megahertz (MHz).
CPU count              Number of CPUs.
Disk space (GB)        Amount of disk space, in gigabytes (GB).
CPU core count         Number of cores per CPU.

To learn about the Asset attribute fields, see Asset and CI management .

To learn about the remaining configuration fields that are common to most of the Inventory menu
forms, see Commonly used network asset instance configuration fields.

To learn about the remaining configuration fields that are common to most of the Inventory menu
forms, see Commonly used network asset instance configuration fields.

Related topics
   Create a telecommunications equipment instance

Service Instance form

The Service Instance form enables you to create, review, and modify the details of an application
service.

Service Instance form

Field           Description
Name
                Unique application service name, which isn't in use by any other type of
Model ID        application service. Use self-explanatory names such as mailing service
                or printing service.

                A product model such as a software model where end of life data is stored.

Owned by

                User who is familiar with the infrastructure and applications making up the
                service. This user is the application service Subject Matter Expert (SME) who
                provides information necessary for a successful creation of an application
                service.

Business        Priority of the business service.
criticality

Version         The application service configuration version.

Used for        Type of deployment environment.

Operational Operational status of the application service, such as Ready or Retired.
status

Service         Type of service. Select one of the following.

classification

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    378
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 379 -->
Service Instance form (continued)

Field        Description

             · Business Service
             · Technical Service
             · Application Service

Approval
group

Support      Used by Incident Management as the group managing the contract covering the
group        asset.

Change       Used by ITSM for routing of change and change-related tasks.
Group

Managed by Group that approves this service instance request.

SLA          Service Level Agreement.

Location.    Location where you manage the service.

Vendor       Vendor name.

Comments Any additional comments.

Strand form

The Strand form enables you to describe the details for a strand in the cable.

Strand form

Field        Description
Name         Name of this strand record. The ServiceNow AI Platform uses this name to
             identify it in your network inventory.
Support      Group that supports the network inventory.
group
Asset        Name of the asset that is associated with this record.

Managed by

             Name of the person who manages this network asset. Select the search icon
             ( ) and select a user from the listing.

Life Cycle   Stage of the life cycle that this network asset is in:
Stage           Deploy
                      Network asset that is deployed in your network.
                Design
                      Network asset that is being used for design purposes.
                End of life
                      Network asset that is at the end of its useful life.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    379
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 380 -->
Strand form (continued)

Field         Description
                 Inventory
                       Network asset that is an inventory item in use in the network.
                 End of life
                       Network asset that is missing and can't be located.
                 Operational
                       Network asset that is operational.
                 Purchase
                       Network asset that is in the purchase phase of its life.

Life Cycle    Status of the network asset as it relates to the life cycle stage that it is in:
Stage Status     In Maintenance
                       Network asset that is currently in maintenance.
                 In Use
                       Network asset that is currently in use.
                 Pending Retirement
                       Network asset that is currently in maintenance.

Model ID      Model ID of the asset.

Domain        A unique name or address assigned to the device within the domain.

A end         Starting point such as an interface or slot where this strand is connected with.
termination

Z end         Ending point such as an interface or slot where this strand is connected with.
termination

A end         Type of physical cable connector that is used for the starting point of the strand.
connector     Select one of the following options:

                 BNC
                       The Bayonet Neill Concelman (BNC) connector is used for video
                       and RF applications and found in the coaxial cable networks.

                 SC
                       A square-shaped snap-in connector.

                 LC
                       Small and a push-and-pull design with a latch mechanism.

                 ST
                       A bayonet-style twist lock and a long, cylindrical ferrule.

                 Wire Wrap
                       Wrapping a thin, stripped wire around a post or pin to establish a
                       connection.

                 RJ45
                       Connectors have eight pins and are used on the ends of twisted-
                       pair cables.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    380
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 381 -->
Strand form (continued)

Field        Description

Z end        Type of physical cable connector that is used for the ending point of the strand.
connector    Select one of the following options:

                BNC
                      The Bayonet Neill Concelman (BNC) connector is used for video
                      and RF applications and found in the coaxial cable networks.

                SC
                      A square-shaped snap-in connector.

                LC
                      Small and a push-and-pull design with a latch mechanism.

                ST
                      A bayonet-style twist lock and a long, cylindrical ferrule.

                Wire Wrap
                      Wrapping a thin, stripped wire around a post or pin to establish a
                      connection.

                RJ45
                      Connectors have eight pins and are used on the ends of twisted-
                      pair cables.

Length       Total length of the strand.

Length unit  Unit of measure in which you're expressing the route length of the strand. Select
             one of the following options:

                --None--
                      No distance measurement is expressed for the connection route
                      length.

                Inches
                      Distance is expressed in inch.

                Feet
                      Distance is expressed in feet.

                Miles
                      Distance is expressed in miles.

                Meters
                      Distance is expressed in meters.

                Centimeters
                      Distance is expressed in centimeters.

                Kilometers
                      Distance is expressed in kilometers.

Strand       The number that is assigned to the strand by the manufacturer.
number

Cable        Cable record that is associated with the strand.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    381
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 382 -->
Strand form (continued)

Field          Description
Comments
               Free form text that is used to comment on a network asset. For example, Duty
               tech is Rahul Dev.

Operational Operational status of the network inventory asset.
status

Related topics
   Define the strand details

Strand model form

The Strand Model form enables you to describe the details for a strand model record.

Strand model form

Field          Description

Manufacturer

               Name of the network asset's manufacturer. Select the search icon ( ) and
               select a manufacturer code. To learn more, see Create manufacturer and
               vendor codes.

Name           Name of the strand model. The ServiceNow AI Platform uses this name to
               identify it in your network inventory.
Short          Description of the strand model that you're defining.
description
               List of model categories that maps to a CI class. The model categories are part
Model          of the Product Catalog application.
categories     The model number that is assigned to the model by the manufacturer.

Model          Number of equipment holder units that are available for use in this network
number         asset.
               A bar code number that is assigned to the model by the manufacturer.
Asset          Number of months that the model can be used for.
tracking
strategy       Number of equipment holder units that are available for use in this network
               asset.
Barcode

Useful life
(months)

Asset
tracking unit

Owner          The person responsible for the model.

Acquisition    Acquisition method for the model:
method            Buy
                        The model was purchased.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    382
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 383 -->
Strand model form (continued)

Field        Description
                Leased
                      The model was leased.
                Both
                      The model was bought and leased.

Status

             Production status of the model:
                Build
                      The model must be built.
                In Production
                      The model is in production.
                Sold
                      The model was sold.
                Retired
                      The model has been retired.

Cost         Cost of a single unit of the model.

Expenditure  Type of expenditure. Select one of the following options:
type
                Capex
                      Capital expenditure is a one-time expenditure, where the value is
                      realized over the years. For example, a photocopier.

                Opex
                      Operational expenditure is an ongoing expenditure. For example,
                      toners for the photocopier.

Depreciation Depreciation schedule of the strand model.

Certified    Option that designates if this network asset is certified.

Salvage value The estimated value that an asset realizes when sold at the end of its useful life.
                     This value must be less than or equal to the cost of the asset.

Comments Any additional information on the model that would be useful.

Power (watts) Electrical power of the network asset in watts.

Dimensions   Unit of measure in which you're expressing dimensions. Select one of the
Unit         following options:

                --None--
                      No distance measurement is expressed for the connection route
                      length.

                Inches
                      Distance is expressed in inch.

                Feet
                      Distance is expressed in feet.

                Miles

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    383
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 384 -->
Strand model form (continued)

Field   Description
                 Distance is expressed in miles.

Sound Power The rate at which the energy of the network asset is emitted in bels.
(bels)

Length

        Length of the network asset, expressed in the unit of measure that you
        designate in the Units field.

        · For example, enter 12 if the asset is one foot, or enter 60 if the asset is 60
         inches and you've selected Inches as the unit of measure in the Units field.

        · The ServiceNow AI Platform uses this information to calculate the cubic
         dimensions of the asset to determine its physical placement within the
         designated network site.

Characteristic Type of the strand. Select one from the following.
                        Single Mode
                               A single Mode fiber strand transmits only one signal.
                        Multi Mode
                               A multi-mode fiber strand transmits multiple signals.
                        POF
                               Plastic Optical Fiber (POF) strand transmits light.
                        Twisted Pair
                               Twisted-pair cable consists of pairs of insulated copper wires
                               twisted together.

Width

        Length of the network asset, expressed in the unit of measure that you
        designate in the Units field.

        · For example, enter 12 if the asset is one foot, or enter 60 if the asset is 60
         inches and you've selected Inches as the unit of measure in the Units field.

        · The ServiceNow AI Platform uses this information to calculate the cubic
         dimensions of the asset to determine its physical placement within the
         designated network site.

Height

        Height of the network asset, expressed in the unit of measure that you
        designate in the Units field.

        · For example, enter 60 if the height of the asset is 60 inches and you've
         selected Inches as the unit of measure in the Units field.

        · The ServiceNow AI Platform uses this information to calculate the cubic
         dimensions of the asset to determine its physical placement within its
         designated network site.

Depth   Depth of the network asset that is expressed in the unit of measure that you
        designate in the Units field.

        Note: This field is applicable for the equipment models and equipment

        holder models.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    384
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 385 -->
Related topics
   Create a strand model

Task attributes in Add Card form

The Task attributes in Add Card form enables you to add a card to an equipment record in the
Telecommunications Network Inventory application.

Task Attributes form

Field      Description

Site       Site where you want to install this card.

Stockroom  Name of the stockroom location where the asset is located. To learn more,
Location   see Telecommunications Network Inventory integration with Hardware Asset
           Management.

Equipment Equipment to install this card in.

Asset

           Name of the asset that is associated with this record. To learn more, see
           Telecommunications Network Inventory integration with Hardware Asset
           Management.

Slot       Slot to insert this card in.
Slot span
           Multiple slot selector to select multiple slots if it's required for the selected card.
           This field is displayed based on the selected template.

           Note: The list only shows the list of slots and sub-slots that doesn't have

           any card in it.

Related topics
   Add a card to equipment

Task attributes in Add Equipment to Rack or Cabinet form

The Task attributes in Add Equipment to Rack/Cabinet form enables you to add a card to an
equipment record in the Telecommunications Network Inventory application.

Add Equipment to Rack/Cabinet form - Task Attributes tab

Field      Description
Site
           Network site or data center that contains the equipment or shelf that you want to
           add.

           Note: The list only displays the sites that have a rack in it.

Rack/      Rack or cabinet name for the equipment that you want to add.
Cabinet

Equipment Equipment or shelf to add from the selected rack or cabinet.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    385
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 386 -->
Add Equipment to Rack/Cabinet form - Task Attributes tab (continued)

Field       Description

Available   List of available rack units to place the selected equipment.
Rack Units
                 Note: The list is also based on the selected equipment's RUs.

Front View Front view for the selected rack or cabinet. By default, this is selected as Yes.

                   Note:

                        · Selecting No the equipment is placed in rear view.
                        · Equipment can be mounted in a rack unit, taking up either the entire front

                          unit or half of it.

Exclusively By default, it is selected as Yes. Select No if you want to use the rack unit for

Used        multiple pieces of equipment. Also, on not selecting this field, you can place

            equipments in both the front and rear sides of the rack.

            Note:

             · On selecting yes, the selected equipment occupies both front and rear of
               rack units.

             · You can place multiple pieces of equipment only on a Shelf equipment
               holder type. To learn more, see product/tmt-telecom-network-inventory/
               task/define-tni-equipment-holders.dita.

Related topics
   Add an equipment to rack or cabinet

Task attributes in Create logical connection form

The Task attributes in Create logical connection form enables you to create a logical connection
between network interfaces in the Telecommunications Network Inventory application.

Task Attributes tab

Field       Description

Logical     Logical connection model where this logical connection is configured.
Connection
Model            Note: The topology connection models are not listed if you are creating a

                  logical connection in a change request.

Logical     List of all templates based on the selected logical connection model.

Connection

Template

Bandwidth Total bandwidth capacity from Site A to Site Z for this network connection.
AtoZ

Bandwidth Total bandwidth capacity from Site A to Site Z for this network connection.
ZtoA

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    386
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 387 -->
Task Attributes tab (continued)

Field      Description

A end Site Starting network site where this logical connection is configured.

Z end Site Ending network site where this logical connection is configured.

A end      Starting network equipment where this logical connection is configured.

Equipment

Z end      Ending network equipment where this logical connection is configured.

Equipment

Parent Port Network interface on which the new logical interface is representing the Port A of

A          the connection.

           Note: A new logical interface is created by default based on the selected

           logical/physical connection model and is populated in the port A field under
           Configuration section of the logical or physical connection. The logical
           interface indicates the port name and number of child ports plus one of the
           selected port.

Parent Port Network interface on which new logical interface is representing the Port Z of the

Z          connection.

           Note: A new logical interface is created by default based on the selected

           logical/physical connection model and is populated in the port Z field under
           Configuration section logical or physical connection. The logical interface
           indicates the port name and number of child ports plus one of the selected
           ports.

Related topics
   Create logical connection record using design and assign

Task attributes in Create physical connection form

The Task attributes in Create physical connection form enables you to create a logical
connection between network interfaces in the Telecommunications Network Inventory
application.

Task Attributes tab  Description
Field
A end Site           Starting network site where this physical connection is configured.
Z end Site
A end Equipment      Ending network site where this physical connection is configured.

Z end Equipment      Starting network equipment where this physical connection is
                     configured.
A end Interface
                     Ending network equipment where this physical connection is
                     configured.

                     Starting network interface where this physical connection is
                     configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    387
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

