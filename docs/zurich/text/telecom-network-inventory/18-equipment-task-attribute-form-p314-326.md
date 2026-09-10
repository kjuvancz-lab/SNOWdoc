# Zurich Telecommunications Network Inventory â€” Equipment task attribute form / GPON Broadband Change model forms / Inventory Model forms

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 314â€“326 of 425

Sections: Equipment task attribute form (p314); GPON Broadband Change model forms (p315); Inventory Model forms (p317)

---

<!-- page 314 -->
Equipment extended classes (continued)

Class Name         Table Name           Extends generic CI class Description
Logical Composite
                                                                          communication
Splice Closure                                                            devices.

                   cmdb_ci_logical_compoAsitgerouping or
                                                     combination of
                                                     logical elements,
                                                     components, or
                                                     entities within a
                                                     telecommunications
                                                     network. These logical
                                                     composites are often
                                                     designed to work
                                                     together to fulfill
                                                     specific functions or
                                                     services.

                   cmdb_ci_splice_closure A protective enclosure
                                                     used to cover
                                                     and protect the
                                                     spliced portions of
                                                     optical fibers. Splice
                                                     closures are essential
                                                     components in fiber
                                                     optic networks,
                                                     providing physical
                                                     protection for the
                                                     spliced fibers from
                                                     environmental factors
                                                     such as moisture,
                                                     dust, and temperature
                                                     fluctuations.

*LTE is a trademark of ETSI.
Related topics

   Create a telecommunications equipment instance

Equipment task attribute form

The equipment task attribute form enables you to describe the details for an equipment record.

Create Equipment - Task Attribute form

Field      Description

Inventory  Inventory template for the equipment model. The instantiation process uses it to
template   generate a network asset instance in the designated network site.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    314
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 315 -->
Create Equipment - Task Attribute form (continued)

Field       Description

                 Note:

                  · Depending on the selected inventory template, a list of the optional
                    templates appears at the bottom of the form.

                  · When you select an optional template, the current template values are
                    overwritten.

                  · This field is applicable only for Create inventory equipment.

Stockroom   Name of the stockroom location where the asset is located.
Location    To learn more, see Telecommunications Network Inventory integration with
            Hardware Asset Management.
Site        Name of the network site or data center in which the process is instantiating the
            equipment.
Equipment   Rack or cabinet name for the equipment.
Rack/
Cabinet     Name of the asset that is associated with this record.
Asset       To learn more, see Telecommunications Network Inventory integration with
            Hardware Asset Management.

Related topics
   Create an equipment record by using design and assign

GPON Broadband Change model forms

The GPON Broadband Change model forms enables you to create, review, and modify the
connection details of the physical connection, and the compute and create logical connection.

Related topics
   Design and assigning a GPON broadband service

Create Physical Connection form

The Create Physical Connection form enables you to create, review, and modify the network
details for a physical connection.

Create Physical Connection form

Fields                           Description

A end Site                       Starting network site where this physical
                                 connection is configured.

A end Equipment                  Starting network equipment where this
                                 physical connection is configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    315
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 316 -->
Create Physical Connection form (continued)

Fields                                       Description
A end Interface
                                             Starting network interface where this physical
                                             connection is configured.

Physical Connection Model                    Physical connection model where this
                                             physical connection is configured.

Z end Site                                   Ending network site where this physical
                                             connection is configured.

Z end Equipment                              Ending network equipment where this physical
                                             connection is configured.

Z end Interface                              Ending network interface where this physical
                                             connection is configured.

Bandwidth                                    Bandwidth of this physical connection.

Compute and Create Logical Connection form

The Compute and Create Logical Connection form enables you to create, review, and modify the
connection details for a logical connection.

Compute and Create Logical Connection form

Fields                                       Description
Start site
Start equipment                              Starting network site where this connection is
Start interface                              configured.

                                             Starting network equipment where this
                                             connection is configured.

                                             Starting network interface where this
                                             connection is configured.

                                             Note: If this field is left empty, it's

                                             automatically set by using the path
                                             computation and created logical
                                             connection.

Logical connection Model                     Logical connection model where this
                                             connection is configured.

                                                  Note: The topology connection models

                                                   are not listed.

End site                                     Ending network site where this connection is
End equipment                                configured.
End Interface
                                             Ending network equipment where this
                                             connection is configured.

                                             Ending network interface where this
                                             connection is configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    316
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 317 -->
Compute and Create Logical Connection form (continued)

Fields                                  Description

                                        Note: If this field is left empty, it's

                                        automatically set by using the path
                                        computation and created logical
                                        connection.

End equipment type                      Ending network equipment type where this
End equipment role                      connection is configured.
End equipment function
Bandwidth                               Ending network equipment role where this
Allowed logical connection model        connection is configured.

                                        Ending network equipment function where this
                                        connection is configured.

                                        Bandwidth of this physical connection.

                                        Filter that captures all the supported models
                                        for the logical connection.

                                             Note: The list of available logical

                                              connection model changes when the
                                              Logical connection model is selected
                                              from the Model relationship field.

Allowed physical connection model       Filter that captures all the supported models
                                        for the physical connection.

                                             Note: The list of available physical

                                              connection model changes when the
                                              Logical connection model is selected
                                              from the Model relationship field.

Inventory Model forms

The Inventory Model forms enable you to create, review, and modify the model details for
equipment holders, equipment, interface cards, logical connections, physical connections,
network interfaces, and network model relationships.

Inventory Model form - General

The General section in the Inventory Model form enables you to create, review, and modify the
details of a model.

General section - Inventory Model form

Field        Description
             Description of the equipment holder model that you're defining.
Short
description  List of model categories that maps to a CI class. The model categories are part of
             the Product Catalog application.
Model
categories

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    317
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 318 -->
General section - Inventory Model form (continued)

Field          Description

                    Note:

                      · The instance is created in the mapped CI class of the selected model
                        category.

                      · To achieve the Telecommunications Network Inventory functionalities,
                        choose one of the following options:

                        Equipment rack
                        Cabinet
                        Slot
                        Subslot
                      · On selecting the Equipment rack as the category, the RU naming
                        pattern and Post Type fields appear under the information section.

Asset          Process to track the model. Select one of the following options:
tracking
strategy        · Leave to Category: The model is transparent and the category defines the
                  asset class.

               · Create Consumable Asset: The model forces the asset class to be
                consumable, regardless of what the category defines as the asset class.

               · Don't create assets: The model blocks the asset instantiation, regardless of
                what the category defines as the asset class.

Useful life    Number of months that the model can be used for.
(months)

Asset          Number of equipment holder units that are available for use in this network
tracking unit  asset.

Acquisition    Acquisition method for the model:
method            Buy
                        The model was purchased.
                  Leased
                        The model was leased.
                  Both
                        The model was bought and leased.

Cost           Cost of a single unit of the model.

Depreciation Depreciation schedule of the equipment model.

Salvage        The estimated value that an asset realizes when sold at the end of its useful life.
value          This value must be less than or equal to the cost of the asset.

Comments Any additional information on the model that would be useful.

Model          The model number that is assigned to the model by the manufacturer.
number

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    318
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 319 -->
General section - Inventory Model form (continued)

Field        Description
Barcode      Bar code number that is assigned to the model by the manufacturer.

Owner        The person responsible for the model.

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

Expenditure  Type of expenditure. Select one of the following options:
type
                Capex
                      Capital expenditure is a one-time expenditure, where the value is
                      realized over the years. For example, a photocopier.

                Opex
                      Operational expenditure is an ongoing expenditure. For example,
                      toners for the photocopier.

Certified    Option that designates if this network asset is certified.

Related topics
   Create inventory models

Inventory Model form - Information

The Information section of the Inventory Model form enables you to create, review, and modify
the network asset details of a model.

Information section - Inventory Model form

Field        Description
Height (U)   Number of rack units required for the model.

             Note: This field is only applicable to the equipment models.

Power        Electrical power, in watts.

Sound power Noise measurement, in bels (1 bel=10 decibels).

Connection   Type of connection:
type            Cable

                                           Multi-colored cable connection.                                                                                                      319

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 320 -->
Information section - Inventory Model form (continued)

Field        Description

             Connection

                   Standard connection that you establish with a piece of equipment.
                   For example, the connection between a monitor and a computer.

             Strand
                   Multi-strand fiber connection.

Power unit      Wireless
                      3G, 4G, or 5G wireless connection.

             Units in which the power of the asset is measured. Select any one of the
             following unit.
              · Watts (W)
              · Kilowatts (KW)
              · Megawatts (MW)
              · Horsepower (HP)

Rated Power Maximum power allotted to the asset.

Unit of      Measurement type based on which the Max weight capacity unit is fetched.

Measurement Select any one of the following measurement type.

System       · Metric

             · US Imperial

Weight unit  Unit in which weight of the asset is measured. Select any one of the following.
              · Grams (g)

                    Note: This field is only accessible when the Metric system is used for

                      unit of measurement.

              · Kilograms (kg)

                    Note: This field is only accessible when the Metric system is used for

                      unit of measurement.

              · Ounces (oz)

                    Note: This field is only accessible when the US Imperial system is

                      used for unit of measurement.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    320
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 321 -->
Information section - Inventory Model form (continued)

Field        Description

             · Pounds (lbs)

             Note: This field is only accessible when the US Imperial system is

             used for unit of measurement.

Weight       Maximum weight of the rack or cabinet or slot or subslot.

Slot naming  Name patterns that are used to define the names that are generated for the
pattern      slots and interfaces that are on the equipment or card. Because these name
             patterns are at the model level, they're applied by default to every template
             of that model. These name patterns are editable for the different instances
             of the same model. To learn more about the naming convention, see Naming
             convention for associated templates.

             Although the names are generated automatically, you can manually edit the
             names of the templates.

                  Note:

                   1. This field is applicable for the equipment models and the interface card
                      models.

                  2. The generated name remains empty if the following occurs:
                      The variable names are misspelled.
                      You use the parent_slot or equipment_slot information for the
                         interfaces or slots that are in the equipment.

                  3. If this field is left empty, then the default naming pattern is considered.
                      Here, the default naming is Slot-001, where 001 is the slot start number.

                   This field is applicable for the equipment models and the interface card
                   models.

Interface    Name patterns that are used to define the names that are generated for the
naming       slot and Interfaces on the equipment or card. Because these name patterns
pattern      are at the model level, they're applied by default to every template of that
             model. These name patterns are editable for the different instances of the same
             model. To learn more about the naming convention, see Naming convention for
             associated templates.

             Although the names are generated automatically, you can manually edit the
             names of the templates.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    321
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 322 -->
Information section - Inventory Model form (continued)

Field       Description

                 Note:

                   · This field is available only for Equipment models and Interface card
                     models.

                   · The generated name remains empty if the following occurs:

                     The variable names are misspelled.
                     You use the parent_slot or equipment_slot information for the

                        interfaces or slots that are in the equipment.

                   · If this field is left empty, then the default naming pattern is considered.
                     Here, the default naming is Port-001, where 001 is the interface start
                     number.

            This field is available only for the equipment models and interface card
            models.

Dimensions  Unit in which the physical dimensions of the asset are measured. Select one
unit        from the following:
             · Inches (in)
             · Feet (ft)
             · Miles (mi)

                 Note: This field is applicable for the equipment models, the equipment

                  holder models, and the physical connection models.

Height

            Height of the network asset, expressed in the unit of measure that you
            designate in the Units field.

             · For example, enter 60 if the height of the asset is 60 inches and you've
               selected Inches as the unit of measure in the Units field.

             · The ServiceNow AI Platform uses this information to calculate the cubic
               dimensions of the asset to determine its physical placement within its
               designated network site.

                 Note: This field is applicable for the equipment models and the

                  equipment holder models.

Width

            Length of the network asset, expressed in the unit of measure that you
            designate in the Units field.

             · For example, enter 12 if the asset is one foot, or enter 60 if the asset is 60
               inches and you've selected Inches as the unit of measure in the Units field.

             · The ServiceNow AI Platform uses this information to calculate the cubic
               dimensions of the asset to determine its physical placement within the
               designated network site.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    322
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 323 -->
Information section - Inventory Model form (continued)

Field       Description

                 Note: This field is applicable for the equipment models and the

                  equipment holder models.

Depth       Depth of the network asset that is expressed in the unit of measure that you
            designate in the Units field.

                 Note: This field is applicable for the equipment models and equipment

                  holder models.

RU          Numbering sequence of rack units in the Rack view. Select one of the following.
numbering    · Top to bottom - Numbering sequence that starts at the top of a list.
direction    · Bottom to top - Numbering sequence that starts at the bottom of a list.

Slot start  The first number to assign to the slots in this model. The slot names are
number      generated automatically depending on the starting number.

                 Note:

                   · The entered value doesn't affect the unit position. The unit position
                     always starts from 1 and is used in the slot naming pattern.

                   · This field is applicable for the equipment models and the interface card
                     models.

Interface start Starting number that you assign to the interfaces of the equipment or the card.

number      For example, if the starting number is 10 for 20 interfaces, then the interface

            numbers start from 10, such as Port-010, Port-011, and so on to Port-029.

            Note:

             · The interface numbers are generated automatically based on the
               entered value. The unit position isn't affected. The unit position always
               starts from 1 and is used in the interface naming pattern.

             · This field is applicable for Equipment models and Interface card
               models.

CLEI code

            Assigned Common Language Equipment Identification (CLEI) for this network
            asset. CLEI codes are globally unique, 10-character alphanumeric intelligent
            codes that identify the equipment in a structured naming format. There's a one-
            to-one relationship between a CLEI code and a manufacturer's product code,
            which is a part number that includes the hardware version.

                 Note: This field is applicable for all types of models except the physical

                  connection models, the logical connection models, and the network
                  interface models.

Connector   Type of physical cable connector that is used for the connection of the cable to
type        the network interface. Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    323
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 324 -->
Information section - Inventory Model form (continued)

Field         Description

              · BNC (Bayonet Neill-Concelman) - Type of miniature radio frequency
               connector used for coaxial cables.

              · SC (Square Connector)- Square, common type of Fiber optic connector used
               as push-pull latch, to align the optical fibers for efficient light transmission.

              · LC (Lucent Connector)- Another version of the SC connector designed for
               high-density applications.

              · ST (Straight Trip)- a type of fiber optic connector commonly used for
               connecting optical fibers in telecommunications and data communication
               applications.

              · Wire Wrap -A technique for creating electrical connections on circuit boards.

              · RJ45 - Also known as 8P8C (8 Position 8 Contact) connector, is widely used
               type of connector for wired Ethernet networks.

              Note: This field is only applicable to Network interface models.

Slots         Number of slots that are occupied in the card.
occupied
                   Note: This field is only applicable to the interface card models.

Length        Length of the network asset, expressed in the unit of measure that you
              designate in the Units field.
Enable
Interconnect   · For example, enter 12 if the asset is one foot, or enter 60 if the asset is 60
                 inches and you've selected Inches as the unit of measure in the Units field.

               · The ServiceNow AI Platform uses this information to calculate the cubic
                 dimensions of the asset to determine its physical placement within the
                 designated network site.

              Option that you can select so that all the interfaces on the equipment are
              interconnected to each other.

              Note:

               · The default algorithm for the interconnection is (N/2) +1, where N
                 is the total number of interfaces on the equipment, is applied. For the
                 odd port numbers, the system takes N as the previous number (N-1)
                 and creates the interconnections. For example, let's say that you have a
                 piece of equipment that has 10 interfaces. If you select this option, the
                 first interface is interconnected with the sixth interface, 2-7, 3-8, 4-9, and
                 5-10.

               · This field is only applicable to the equipment models.

              All the created interconnections are listed as a configuration item (CI)
              relationship.

Orientation

              Physical orientation of the slots in this network asset:

              --None--

                                           No specific physical slot orientation.                                                                                               324

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 325 -->
Information section - Inventory Model form (continued)

Field           Description
                   Horizontal
                         Horizontal slot orientation.
                   Vertical
                         Vertical slot orientation.

                Note: This field is only applicable to the equipment holder models.

Virtual

                Option to verify whether the network interface is physical or virtual.

                Note: If you select Virtual, then the Connector Type field doesn't

                appear.

Max physical    This field is applicable only for Network interface models.
connection      Maximum connections that can be connected to this interface model. By
support         default, it's considered as 1.

                     Note: This field is only applicable to the network interface models.

Port            Measured bandwidth for the ports on this network interface. Select the search
bandwidth       icon ( ) and select a bandwidth.

                     Note: This field is only applicable to the network interface models.

Directionality

                Type of the connections between the nodes of a network. Select one of the
                following options:

                 · Tx- TX stands for Transmit. It refers to the direction in which data is being sent
                   from a device.

                 · Rx- RX signifies the endpoint that receives data. It's the input side for
                   receiving information transmitted from another source, often labeled as TX
                   (Transmit).

                 · Tx/Rx

                 · Bus- Bus directionality refers to the flow of data on a communication channel.

                 · Broadcast- Broadcast directionality refers to the nature of signal transmission
                   and reception in a broadcast system.

                Note: This field is only applicable to the network interface models.

Interface type
                     Type of port on the network interface. Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    325
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 326 -->
Information section - Inventory Model form (continued)

Field      Description

           · Ethernet- Physical connection and speed capabilities of a device for
            connecting to a network. It involves cable type, speed, and standard.

           · Optical- specific design of a connector used in an optical transceiver. There
            are various types of optical interfaces, each with different shapes and data
            speed capabilities.

           · Serial- A serial interface transmits data one bit at a time, in contrast to a
            parallel interface that sends multiple bits simultaneously.

           Note: This field is only applicable to the network interface models.

Behavior

           Option to choose the mode of connection. Select one of the following options:
            · Channel
            · Connection

                Note: This field is only applicable to the logical connection models.

Routing    Routing behavior attribute that controls routing enforcement.
behavior    · Select No route if no route is required for this connection type, or
            · Select Parallel sequential to enable multi-route connection resources that

              are used to route a connection. Here, path elements are required for the
              routed connections.

                Note: This field is only applicable to the logical connection models.

Logical    List of all the logical interface models for the selected logical connection model.
Interface
Model           Note: During the creation of a logical connection, the logical interfaces

                 for port A and port Z are created based on the selected logical interface
                 model.

RU naming  Naming pattern for the rack templates.
pattern
                Note:
Post type
                  · By default the naming pattern is "RU-"+position.
                  · This field is visible only for Equipment rack model category.

           Select any one of the following type
            · 2 Post: Select if your rack has two vertical supports.
            · 4 Post: Select if your rack has four vertical supports.

                Note: This field is applicable only if the selected Model categories is

                 Equipment rack.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    326
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

