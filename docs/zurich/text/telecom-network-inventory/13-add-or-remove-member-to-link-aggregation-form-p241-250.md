# Zurich Telecommunications Network Inventory â€” Add or Remove member to Link Aggregation form / Assign connection element form / Attribute form +4 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 241â€“250 of 425

Sections: Add or Remove member to Link Aggregation form (p241); Assign connection element form (p242); Attribute form (p243); Cable form (p244); Cable model form (p247); Capacity Definition form (p249); Capacity function additional fields (p250)

---

<!-- page 241 -->
Related topics
   Network topology

Viewing a network topology
View the details of a network topology and visualize how the network elements are organized
and connected to one another. You can understand the detailed overview of the network
infrastructure of the topology in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon .
   The Network viewer window is displayed.

3. Select the Topology tab.
4. Visualize a topology by typing the topology name in the search box and selecting it.

   You can select multiple topologies of your choice. You can also use the advanced filter options
   to find the topology by selecting the filter icon ( ).
5. Select the node that you want see the details, and view the related information in the details
   pane.
6. In the details pane, select View Details to redirect to the CI record (optional).

Telecommunications Network Inventory reference

Reference topics provide additional information about Telecommunications Network Inventory.

Add or Remove member to Link Aggregation form

The Add/Remove member to Link Aggregation form enables you to create, review, and
modify the network asset details for Link Aggregation Group (LAG) connection in the
Telecommunications Network Inventory application.

Add/Remove member to Link Aggregation form

Fields               Description
LAG                  Select a LAG from the list
Bandwidth            Modify or select a bandwidth from the list for
                     the selected LAG
Site A               Starting site.
Site Z               Ending site.
Equipment A          Equipment where the connection starts.
Equipment Z          Equipment where the connection ends.
Logical Interface A  Logical interface where the connection starts.
Logical Interface Z  Logical interface where the connection ends.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    241
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 242 -->
Add/Remove member to Link Aggregation form (continued)

Fields                          Description
Create revision
                                Option to create a revision of the selected
                                LAG.

                                Note: Revision of a LAG is not possible

                                while it is already undergoing an active
                                revision process.

Member interface A              Interface A of the selected LAG. Add or
                                remove to modify the member interface A of
                                the selected LAG.

                                     Note: The list displays only child model

                                      interfaces that are set as either Port A or
                                      Port Z of a physical connection.

Member interface Z              Interface Z of the selected LAG. Add or remove
                                to modify the member interface Z of the
                                selected LAG.

                                     Note: The list displays only child model

                                      interfaces that are set as either Port A or
                                      Port Z of a physical connection.

Related topics
   Add or remove a member to Link Aggregation

Assign connection element form

The Assign Connection Element form lets you define the connection element for an event by
selecting its type, model, sites, equipment, and routing details.

Assign connection element form

Field    Description
         Type of connection element. Select one from the list.
Element   · Network Interface
type      · Physical Connection
          · Logical Connection
          · Equipment
          · Topology

Element  Connection element based on the event type that you're selected. By selecting the
name     connection element, the Available capacity and Used capacity fields displays the
         capacity information of the connection element.

Model    Model where this connection element is configured. Only compatible models
         based on the model relationship are displayed.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    242
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 243 -->
Assign connection element form (continued)

Field       Description
Start Site  Originating network site for this connection element.

                  Note: This field is available for Physical Connection and Logical Connection

                  element types.

End Site    Destination network site for this connection element.

                 Note: This field is available only for Physical Connection and Logical

                  Connection element types.

Start       Originating equipment for this connection element.
equipment
                 Note: This field is available only for Physical Connection and Logical

                  Connection element types.

End         Destination equipment for this connection element.
equipment
                 Note: This field is available only for Physical Connection and Logical

                  Connection element types.

Route       Number of routes.

Sequence Number of sequences.

Attribute form

The Attribute Form allows you to define key details for a logical connection, including its name,
life cycle stage, and current status.

Set attributes card

Field                Description

Connection name Name of the logical connection record. Add a connection name, otherwise
                             a default name is added

Life cycle stage

                     Stage of the life cycle that this network asset is in:
                        Deploy
                              Network asset that is deployed in your network.
                        Design
                              Network asset that is being used for design purposes.
                        End of life
                              Network asset that is at the end of its useful life.
                        Inventory
                              Network asset that is an inventory item in use in the network.
                        End of life
                              Network asset that is missing and can't be located.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    243
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 244 -->
Set attributes card (continued)

Field               Description
                       Operational
                             Network asset that is operational.
                       Purchase
                             Network asset that is in the purchase phase of its life.

Life cycle stage    Status of the network asset as it relates to the life cycle stage that it is in:
status                 In Maintenance
                             Network asset that is currently in maintenance.
                       In Use
                             Network asset that is currently in use.
                       Pending Retirement
                             Network asset that is currently in maintenance.

Supported by        Name of the person who supports this network asset.

Supported by        Group that supports the network inventory.
group

Comments            Any comments.

(Customer visible)

Operational notes

                    Free-form operation note text for this network asset. For example, Check
                    diesel fuel for generator.

Cable form

The Cable form enables you to describe the details for an optical fiber cable record.

Cable form

Field         Description
Name          Name of this cable record. The ServiceNow AI Platform uses this name to identify
              it in your network inventory.
Support       Group that supports the network inventory.
group
Asset         Name of the asset that is associated with this record.

Managed by

              Name of the person who manages this network asset. Select the search icon
              ( ) and select a user from the listing.

Life Cycle    Stage of the life cycle that this network asset is in:
Stage            Deploy
                       Network asset that is deployed in your network.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    244
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 245 -->
Cable form (continued)

Field         Description
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

Life Cycle    Status of the network asset as it relates to the life cycle stage that it is in:
Stage Status     In Maintenance
                       Network asset that is currently in maintenance.
                 In Use
                       Network asset that is currently in use.
                 Pending Retirement
                       Network asset that is currently in maintenance.

Model ID      Model ID of the asset.

Domain        A unique name or address assigned to the device within the domain.

A end         Starting point such as an interface or slot where this cable is connected with.
termination

Z end         Ending point such as an interface or slot where this cable is connected with.
termination

A end         Type of physical cable connector that is used for the starting point of the cable.
connector     Select one of the following options:

                 BNC
                       BNC connector is used for video and RF applications and found in
                       the coaxial cable networks.

                 SC
                       A square-shaped snap-in connector.

                 LC
                       Small and a push-and-pull design with a latch mechanism.

                 ST
                       A bayonet-style twist lock and a long, cylindrical ferrule.

                 Wire Wrap

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    245
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 246 -->
Cable form (continued)

Field        Description
                      Wrapping a thin, stripped wire around a post or pin to establish a
                      connection.

                RJ45

                      Connectors have eight pins and are used on the ends of twisted-
                      pair cables.

Z end        Type of physical cable connector that is used for the ending point of the cable.
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

Length       Total length of the cable.

Length unit  Unit of measure in which you're expressing the route length of the cable. Select
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

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    246
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 247 -->
Cable form (continued)

Field          Description
Comments
               Free form text that is used to comment on a network asset. For example, Duty
               tech is Rahul Dev.

Operational Operational status of the network inventory asset.
status

Related topics
   Define the cable details

Cable model form

The Cable Model form enables you to describe the details for an optical fiber cable model
record.

Cable Model form

Field          Description

Manufacturer

               Name of the network asset's manufacturer. Select the search icon ( ) and
               select a manufacturer code. To learn more, see Create manufacturer and
               vendor codes.

Name           Name of the cable model. The ServiceNow AI Platform uses this name to
               identify it in your network inventory.
Short          Description of the cable model that you're defining.
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

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    247
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 248 -->
Cable Model form (continued)

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

Depreciation Depreciation schedule of the cable model.

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

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    248
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 249 -->
Cable Model form (continued)

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

Characteristic Type of the cable. Select one from the following.
                        Optical
                               Transmits signals using light pulses.
                        Electrical
                               Transmits signals using electrical currents.

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

Related topics
   Create a cable model

Capacity Definition form

The Capacity Definition form enables you to describe the details for a capacity definition record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    249
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 250 -->
Capacity Definition form

Field        Value
Name         Name of the capacity definition record.

Application Application name for which the capacity functions are created.

Active       Option to enable the definition for capacity calculation.

Functions    Capacity function records that you want to use for calculating the capacity. You
             can select multiple functions.

Description A brief description about the capacity definition.

Entity table Entity table where you're querying. The sys class name must either be the entity
                  table or a subclass derived from the entity table.

Conditions Any additional query condition. The query condition must be valid to run the
                  capacity definition.

Related topics
   Create capacity definition
   Capacity management

Capacity function additional fields

Depending on the option that you selected in the Strategy field, the following fields appear in the
capacity function form.

Static value - Additional fields           Description
Field                                      Number of counts for capacity calculation.
Static value

Aggregate query count - Additional fields  Description
Field
Entity table                               Entity table within the database where you're
                                           querying.
Query table
Query condition                            Name of the table you're querying.
Related field
                                           Any additional query conditions.

                                           Field in the query table that you're querying.
                                           Select one from the list.

Value field - Additional fields

Field                                      Description

Query table                                Name of the table you're querying.

Query condition                            Any additional query conditions.

Value field                                Field in the record that you're querying. Select
                                           one from the list.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    250
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

