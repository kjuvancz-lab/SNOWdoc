# Zurich Telecommunications Network Inventory â€” Naming convention for associated templates / Network inventory change request form / Network inventory facility classes +2 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 342â€“356 of 425

Sections: Naming convention for associated templates (p342); Network inventory change request form (p342); Network inventory facility classes (p346); Network Interface Model form - Information tab (p350); Network Model Relationship fields (p351)

---

<!-- page 342 -->
Naming convention for associated templates

Learn about the details of the naming convention for the associated templates that are
automatically generated when you create an equipment or interface card template.

Supported variables in the naming pattern  Description
Variable name
position                                   Unit position of either the interface or slot/
                                           holder that it is getting applied to.

                                                Note: The unit position always starts

                                                 from 0. The slot/interface start number
                                                 that is configured in the inventory model
                                                 does not apply to the unit position.

parent_slot_name                           Name of the slot that the card is inserted in, if
parent_slot_position                       the slot or interface belongs to a card.
equipment_slot_name
                                           Unit position of the slot that the card is
equipment_slot_position                    inserted in, if the slot or interface belongs to a
                                           card.
bandwidth
                                           Name of the slot on the equipment where the
                                           base card is inserted in, if the slot or interface
                                           belongs to a card. The parent_slot_name and
                                           equipment_slot_name hold the same value if
                                           the current card is a base card.

                                           Unit position of the slot on the equipment
                                           where the base card is inserted in,
                                           if the slot/interface belongs to a
                                           card. The parent_slot_number and
                                           equipment_slot_number hold the same value
                                           if the current card is a base card.

                                           Bandwidth value of the interface.

Network inventory change request form

The Change Request form enables you to create and modify the change activities for the
Telecom Inventory change models in the Design and Assign function.

Change Request form                        Description
Field
Number                                     Change request number.
Requested by
                                           User who has requested the change. This field
Service                                    is available in the Change Requests list view
                                           so that you can see who requested a particular
                                           change.

                                           Business service that you want to make
                                           available for the change request.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    342
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 343 -->
Change Request form (continued)  Description
Field
Service offering                 Service option that consists of one or more
                                 service commitments that uniquely define the
Configuration item               level of service. You can select different levels
Risk                             of performance and features for a service
                                 through service offerings. You must select a
Impact                           service to filter the available service offerings.
Short description
Description                      Configuration item (CI) that the change applies
Model                            to.

                                 Risk level for the change.

                                 Select one of the following options:

                                  · High

                                  · Moderate

                                  · Low

                                 Measure of the effect of a change on business
                                 processes.

                                 Summary of the change.

                                 Description of the change in detail.

                                 Change model that is associated with the
                                 Telecom Network Inventory change request.

                                 After selecting the change model tile, the
                                 associated model appears in this field. You
                                 can also manually select one of the following
                                 options:

                                    Add Interface Card
                                          Change model that is used to add
                                          an interface card in an equipment
                                          slot.

                                    Create Inventory Equipment
                                          Change model that is used to
                                          add equipment when using an
                                          inventory template in a site or
                                          equipment holder.

                                    Create Logical Connection
                                          Change model that is used to
                                          create a logical connection
                                          between two network interfaces.

                                    Create Physical Connection
                                          Change model that is used to
                                          create a physical connection
                                          between two network interfaces.

                                    Emergency

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    343
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 344 -->
Change Request form (continued)    Description
Field                                       Change model that is used for
                                            the Telecom Network Inventory
Assignment group                            emergency changes.
Assigned to
                                      GPON Broadband Service

                                            Change model that is used to
                                            fulfill a GPON broadband order
                                            request.

                                      Normal

                                            Change model that is used for
                                            the Telecom Network Inventory
                                            normal changes.

                                        Note: These change models are

                                         available in the Change > Create New >
                                         Create a change request window.

                                   Group working on the change request.

                                   User that the change is assigned to. If an
                                   assignment rule applies, the change is
                                   automatically assigned to the appropriate user
                                   or group.

Change Request form- Schedule tab

Field                              Description
Planned start date
                                   Projected start date for the implementation.
Planned end date                   The planned start date can be the current date
                                   or a future date. The default value for this field
CAB required                       is the current date. To change the planned
CAB date                           start date, click the calendar icon and select a
Actual start date                  new date.
Actual end date
                                   Projected end date for the implementation.
                                   The planned end date must be after the
                                   planned start date. The default value for this
                                   field is one day after the planned start date.
                                   To change the planned end date, click the
                                   calendar icon and select a new date.

                                   Option that designates if this change request
                                   requires a Change Advisory Board (CAB)
                                   approval before implementation.

                                   CAB approval date for the implementation.

                                   Actual start date for the implementation.
                                   The actual start date can be on or before the
                                   planned start date.

                                   Actual end date for the implementation. The
                                   actual end date can be before the planned
                                   start date but not before the actual start date.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    344
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 345 -->
Change Request form- Schedule tab (continued)

Field                                   Description
CAB delegate
                                        User who attends the Change Advisory Board
CAB recommendation                      (CAB) meeting to describe the change.

                                        Notes or recommendations that are related to
                                        the CAB meeting.

Change Request form- Notes tab          Description
Field
Watch list                              User who gets the notifications about the
                                        change request. Add the names of the users
Additional comments (Customer visible)  who receive notifications and can view the
                                        watch topic.
Work notes
Work notes list                         Option that designates if the work notes need
                                        to be shared with the user who requested the
                                        change.

                                        Work notes for the change request.

                                        Users who can get the notification about the
                                        work notes.

Change Request form- Closure Information tab

Field                                   Description
Close code
                                        Close code that best describes the reason you
                                        are closing this change request. Select one of
                                        the following options:

                                         · Successful
                                         · Unsuccessful with issues
                                         · Unsuccessful

Close notes                             Any additional notes that describe the
                                        outcome of closing this change request.

Change Request form- Change Task form   Description
Fields
Number                                  Change task identification number.
Change request
                                        Change request number under which this
Configuration item                      change task was created.

Request type                            Configuration item (CI) to which the change is
                                        applied.

                                        Type of change request, based on the network
                                        inventory models.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    345
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 346 -->
Change Request form- Change Task form (continued)

Fields                             Description
Short description                  Short description for this order task.

Description                        Description of this order task.

State                              State of this change task. Select one of the
                                   following options:

                                      Pending
                                            Task is waiting for an action from
                                            the user.

                                      Open
                                            No action is taken on this task yet.

                                      In Progress
                                            Task processing is in progress.

                                      Closed
                                            Change task is complete.

                                      Canceled
                                            Change task has been canceled.

Assignment group                   Name of the group name that is responsible

                                   for this task. Click the search icon ( ) to
                                   select a group from the list.

Assigned to                        Depending on the selected group, the users
                                   who are assigned to the list are shown. Click

                                   the search icon ( ) to see the list of users.

Work notes                         Free-form work order note text.

Update                             Option to save changes that you made to the
                                   order task.

Close Task                         Option to change the state of the order task to
Delete                             Closed.

                                   Option to delete this order task.

Network inventory facility classes

The facility classes are used to represent power, HVAC, network, and their connectivity in a data
center. You can define facility hardware records for these classes in the Telecommunications
Network Inventory application.

Equipment Holder extended classes

Class Name         Table Name      Extends from         Description

Transformer        cmdb_ci_transformer Power Equipment  Transformers
                                                        change the voltage
                                                        of alternating
                                                        current (AC) in a
                                                        power distribution

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    346
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 347 -->
Equipment Holder extended classes (continued)

Class Name          Table Name         Extends from                  Description

Switch Gear         cmdb_ci_switch_gear Power Equipment              system. You will
                                                                     find them in data
Power Panel         cmdb_ci_power_panel Power Equipment              centers and other
                                                                     power generation,
Rectifier           cmdb_ci_rectifier  Power Equipment               transmission, and
                                                                     distribution networks.
Maintenance Bypass  cmdb_ci_maintenance_bPyopwaesrsE_qpuainpeml ent  They either increase
Panel                                                                or decrease voltage
                                                                     levels for efficient
                                                                     transmission and safe
                                                                     power distribution.

                                                                     Switchgear helps
                                                                     manage and protect
                                                                     your electrical circuits
                                                                     in a telecom data
                                                                     center. It's key for
                                                                     safe, reliable power
                                                                     distribution.

                                                                     A Power Panel, often
                                                                     referred to as a power
                                                                     distribution panel or
                                                                     electrical panel. Power
                                                                     panels efficiently and
                                                                     safely manage and
                                                                     distribute electrical
                                                                     power to circuits and
                                                                     devices.

                                                                     Rectifiers are
                                                                     essential for
                                                                     converting AC
                                                                     power to DC power.
                                                                     Your telecom and
                                                                     networking equipment
                                                                     rely on stable DC
                                                                     electricity.

                                                                     A maintenance
                                                                     bypass panel (MBP)
                                                                     is an important part of
                                                                     your electrical power
                                                                     system, especially if
                                                                     you work with data
                                                                     centers. It lets you
                                                                     maintain or replace
                                                                     power equipment,
                                                                     like a UPS, without
                                                                     turning off power to
                                                                     other equipment.
                                                                     This is important to
                                                                     keep things running

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    347
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 348 -->
Equipment Holder extended classes (continued)

Class Name        Table Name        Extends from                    Description

Remote Power Panel cmdb_ci_remote_power_PpoawneerlEquipment         smoothly when you
                                                                    make updates.
Inverter          cmdb_ci_inverter  Power Equipment
                                                                    A Remote Power
Circuit Breaker   cmdb_ci_circuit_breakerPower Equipment            Panel (RPP)
                                                                    distributes power
Fuse Alarm Panel  cmdb_ci_fuse_alarm_paPnoewl_efur nEcqtuioipnment  in data centers to
                                                                    devices or other
                                                                    loads from a central
                                                                    source like a UPS or
                                                                    generator. They're
                                                                    useful for managing
                                                                    power in server racks
                                                                    and IT equipment.

                                                                    An inverter takes the
                                                                    DC power from your
                                                                    telecom data center
                                                                    and changes it to AC
                                                                    power. While most
                                                                    telecom equipment
                                                                    uses DC power, you
                                                                    will need AC power
                                                                    for systems like air
                                                                    conditioning, lights,
                                                                    servers, and some
                                                                    monitoring devices.

                                                                    Circuit breakers
                                                                    protect your telecom
                                                                    data center from
                                                                    overloads, short
                                                                    circuits, and
                                                                    equipment failures.
                                                                    They automatically
                                                                    disconnect the
                                                                    power supply when
                                                                    something goes
                                                                    wrong to prevent
                                                                    damage, fire, or
                                                                    downtime.

                                                                    A Fuse Alarm Panel is
                                                                    a critical component
                                                                    in a telecom data
                                                                    center's DC power
                                                                    distribution system.
                                                                    It serves two main
                                                                    purposes: Distributes
                                                                    DC power to various
                                                                    telecom loads (like
                                                                    routers, switches,
                                                                    and other network
                                                                    equipment). Monitors

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    348
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 349 -->
Equipment Holder extended classes (continued)

Class Name    Table Name         Extends from       Description

Rack Rail     cmdb_ci_rack_rail  Hardware           fuse status and
                                                    triggers alarms when
Wire Manager  cmdb_ci_wire_manager Hardware         a fuse blows, enabling
                                                    quick fault detection
Cage          cmdb_ci_cage       Facility Hardware  and response.

Rack PDU      cmdb_ci_rack_pdu PDU                  A rack rail is a
                                                    mounting structure
                                                    inside a telecom
                                                    or server rack that
                                                    allows you to securely
                                                    install, support, and
                                                    slide equipment such
                                                    as servers, switches,
                                                    power supplies, and
                                                    other hardware into
                                                    place.

                                                    A wire manager
                                                    (also called a cable
                                                    manager or cable
                                                    management
                                                    system) is a device
                                                    or accessory used
                                                    to organize, guide,
                                                    protect, and secure
                                                    network and power
                                                    cables within telecom
                                                    racks and data center
                                                    infrastructure.

                                                    A cage in a telecom
                                                    data center is a
                                                    secure, enclosed
                                                    physical space within
                                                    a larger data hall or
                                                    colocation facility,
                                                    built using metal mesh
                                                    panels and lockable
                                                    doors. It is used to
                                                    isolate and protect
                                                    a customer's or
                                                    department's servers,
                                                    telecom gear, and
                                                    networking equipment
                                                    from unauthorized
                                                    access.

                                                    A Rack PDU (Power
                                                    Distribution Unit) is
                                                    a critical component
                                                    used in data centers
                                                    and server rooms to
                                                    distribute electrical

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    349
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 350 -->
Equipment Holder extended classes (continued)

Class Name      Table Name  Extends from        Description

                                                power to multiple
                                                devices housed within
                                                a server rack. It serves
                                                as a centralized
                                                power management
                                                solution, ensuring
                                                reliable and efficient
                                                power delivery to IT
                                                equipment such as
                                                servers, switches,
                                                routers, and storage
                                                systems.

Related topics
   Data model

Network Interface Model form - Information tab

The information section in the model form enables you to create, review, and modify the details
of a model.

Network Interface Model form - Information tab

Field           Description
Power (watts)   Electrical power of the network asset in watts.
Weight (lbs)    Weight of the network asset in pounds (lbs).
Virtual
                Option to verify whether the network interface is physical or virtual.

Connector            Note: If you select Virtual, then the Connector Type field doesn't
Type
                      appear.

                Type of physical cable connector that is used for the connection of the cable to
                the network interface. Select one of the following options:

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

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    350
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 351 -->
Network Interface Model form - Information tab (continued)

Field           Description
                Maximum number of physical connections that is supported by this model.
Max physical
connection      Measured bandwidth for the ports on this network interface. Select the search
support         icon ( ) and select a bandwidth.

Port
bandwidth

Directionality

                Type of the connections between the nodes of a network. Select one of the
                following options:

                · Tx- TX stands for Transmit. It refers to the direction in which data is being
                 sent from a device.

                · Rx- RX signifies the endpoint that receives data. It's the input side for
                 receiving information transmitted from another source, often labeled as TX
                 (Transmit).

                · Tx/Rx

                · Bus- Bus directionality refers to the flow of data on a communication
                 channel.

                · Broadcast- Broadcast directionality refers to the nature of signal
                 transmission and reception in a broadcast system.

Interface Type
                      Type of port on the network interface. Select one of the following options:

                · Ethernet- Physical connection and speed capabilities of a device for
                 connecting to a network. It involves cable type, speed, and standard.

                · Optical- specific design of a connector used in an optical transceiver. There
                 are various types of optical interfaces, each with different shapes and data
                 speed capabilities.

                · Serial- A serial interface transmits data one bit at a time, in contrast to a
                 parallel interface that sends multiple bits simultaneously.

Port position Position of a physical or logical port on an equipment.

Related topics
   Create a network interface model

Network Model Relationship fields

The Network Model Relationship form enables you to create a network model relationship.

Network Model Relationship form

Field           Description

Name            Manufacturer-assigned name of the network model relationship that is specified
                by the model manager.

Relationship Type of relationship. Select one of the following options:

type            --None--

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    351
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 352 -->
Network Model Relationship form (continued)

Field  Description
                No network model relationship exists.

          Rack to Rack Slot

                Relationship between a rack model and a slot model. This
                relationship indicates that the rack and the slot models are
                compatible with the equipment model.

          Equipment to Slot

                Relationship between an equipment model and a slot model. This
                relationship indicates that the number of slots and the slot models
                are compatible with the equipment model.

       Note:

        · The Parent product model field shows a list of all the
          equipment models related to the Telecommunications
          Network Inventory application.

        · The Child product model field shows only the slot models.

       Equipment to Network interface

             Relationship between an equipment model and a network interface
             model. This relationship indicates the interface model and the
             number of interfaces that are compatible and supported with the
             equipment model.

                 Note:

                    · The Parent product model field shows a list of all the
                      equipment models related to the Telecommunications
                      Network Inventory application.

                    · The Child product model field shows a list of all the network
                      interface models related to the Telecommunications
                      Network Inventory application.

       Slot to Card

             Relationship between a slot model and an interface card model.
             This relationship enforces the Root product model field where an
             equipment model or a card model should be selected.

                 Note:

                    · The Root product model field shows a list of all the
                      equipment models related to the Telecommunications
                      Network Inventory application.

                    · The Parent product model field shows the models of both
                      the slots and subslots.

                    · The Child product model field shows a list of all the
                      interface card models.

       Card to Slot

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    352
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 353 -->
Network Model Relationship form (continued)

Field  Description

                Relationship between an interface card model and a slot model.
                This relationship indicates that the slot model is compatible with the
                interface card model.

       Note:

        · The Parent product model field shows a list of all the
          interface card models.

        · The Child product model field shows only the models of the
          subslots.

       Card to Network interface

             Relationship between an interface card model and a network
             interface model. This relationship indicates that the number of
             interfaces in the network interface model are compatible with the
             interface card model.

                 Note:

                    · The Parent product model field shows a list of all the
                      interface card models.

                    · The Child product model field shows a list of all the network
                      interface models.

       Physical Connection to Logical Connection
             Relationship between the models of a physical connection to a
             logical connection.

                 Note:

                    · The Parent product model field shows a list of all the
                      physical connection models.

                    · The Child product model field shows a list of all the logical
                      connection models.

       Logical Connection to Logical Connection
             Relationship between one logical connection model to another
             logical connection model.

                 Note:

                    · The Parent product model field shows a list of all the logical
                      connection models.

                    · The Child product model field shows a list of all the logical
                      connection models.

       Physical Connection to Network Interface
             Relationship between a physical connection to a network interface.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    353
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 354 -->
Network Model Relationship form (continued)

Field  Description

                   Note:

                       · The Parent product model field shows a list of all the
                         physical connection models.

                       · The Child product model field shows a list of all the network
                         interface models.

       Logical Connection to Network Interface
             Relationship between a logical connection to a network interface.

                 Note:

                    · The Parent product model field shows a list of all the logical
                      connection models.

                    · The Child product model field shows a list of all the network
                      interface models.

       Rack/Cabinet to Rack/Cabinet Slot
             Relationship between rack/cabinet and rack/cabinet slot.

                 Note:

                    · The Parent product model field shows a list of all the racks
                      and cabinets.

                    · The Child product model field shows a list of all the slots
                      and sub-slots.

       Rack/Cabinet Slot to Equipment
             Relationship between a rack slot and the equipment.

                 Note:

                    · The Root product model shows all equipment holder
                      models having Model category as Rack.

                    · The Parent product model shows all equipment holder
                      models having Model category as Slot.

                    · The Child product model shows all equipment models
                      related to the Telecommunications Network Inventory
                      application.

       Rack/Cabinet Slot to Container Shelf
             Relationship between a rack slot and the shelf.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    354
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 355 -->
Network Model Relationship form (continued)

Field  Description

                   Note:

                       · The Root product model shows all equipment holder
                         models having Model category as Rack.

                       · The Parent product model shows all equipment holder
                         models having Model category as Slot.

                       · The Child product model shows all equipment holder
                         models that have Model category as Shelf.

       Interface to Interface
             Relationship between two interfaces.

                 Note: The Parent product model and Child product model

                   field shows list of all the network interface models.

       Cabinet to Equipment
             Relationship between a cabinet and the equipment.

                 Note:

                    · The Parent product model field shows all equipment
                      holders that have Container type as Cabinet.

                    · The Child product model field shows all equipment models
                      related to the Telecommunications Network Inventory
                      application.

       Logical Connection to Channel
             Relationship between a logical connection and the channel.

                 Note:

                    · The Parent product model field shows a list of all the logical
                      connection models.

                    · The Child product model field shows a list of all the logical
                      connection models that have Behaviour as Channel.

       Cable to Strand
             Relationship between a cable and the strand.

                 Note:

                    · The Parent product model field shows a list of all the cable
                      models.

                    · The Child product model field shows a list of all the strand
                      models.

       Multi Chassis to Equipment
             Relationship between a logical composite and the equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    355
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 356 -->
Network Model Relationship form (continued)

Field     Description

                      Note:

                          · The Parent product model field shows a list of all the
                            equipment models which are having model category as
                            logical composite.

                          · The Child product model field shows a list of all the
                            equipment models.

Count        Multi Chassis to Rack
                   Relationship between a logical composite and the rack.

                      Note:

                          · The Parent product model field shows a list of all the
                            equipment models which are having model category as
                            logical composite.

                          · The Child product model field shows a list of all the rack
                            models.

          Numbers of child product models that can be created under a parent product
          model when a template is created.

               Note: This attribute is only for Equipment to Slot, Rack to Slot,

                Equipment to Network Interface, Interface card to Slot, Interface card to
                Network Interface, Cable to Strand, and Logical Connection to Channel
                relationship types.

Root      Grandparent model of the interface card for compatibility. Either select the
product
model     equipment model or the interface card model. Then, select the search icon ( )
          and select a model.

               Note: This attribute is only visible for the Slot to Interface card

                relationship type.

Parent    Product model that is the parent to the child product model. Select the search
product   icon ( ) and select a model.
model
               Note: In the Rack-to-Slot relationship, the parent product model is the

                equipment holder model with the model category as Rack.

Child     Product model that is the child to the parent product model. Select the search
product   icon ( ) and select a model.
model
               Note: In the Rack to Slot relationship, the child product model is the

                equipment holder with model category as Slot.

Sequence

          Sequence number of the child entities for a model relationship. If you enter a
          number in the Count field, the Sequence field appears.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    356
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

