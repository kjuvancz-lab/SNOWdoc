# Zurich Telecommunications Network Inventory â€” Create Physical Connection form / Data center place types / Default Template forms +3 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 275â€“285 of 425

Sections: Create Physical Connection form (p275); Data center place types (p275); Default Template forms (p276); Design and assigning a GPON broadband service (p278); Domain separation (p280); Equipment form (p281); Equipment Holder form (p282)

---

<!-- page 275 -->
Create Logical Connection form (continued)

Fields                                      Description
Bandwidth                                   Bandwidth of this logical connection.

Related topics
   Design and assigning a GPON broadband service

Create Physical Connection form

The Create Physical Connection form enables you to review, create, and modify the connection
details for a physical connection change request.

Create Physical Connection form             Description
Fields
A end Site                                  Starting network site where this physical
A end Equipment                             connection is configured.
A end Interface
Physical Connection Model                   Starting network equipment where this
Z end Site                                  physical connection is configured.
Z end Equipment
Z end Interface                             Starting network interface where this physical
Bandwidth                                   connection is configured.

                                            Logical connection model where this physical
                                            connection is configured.

                                            Ending network site where this physical
                                            connection is configured.

                                            Ending network equipment where this physical
                                            connection is configured.

                                            Ending network interface where this physical
                                            connection is configured.

                                            Bandwidth of this physical connection.

Related topics
   Design and assigning a GPON broadband service

Data center place types

Place types are used to categorize the different places on your map. You can use place type to
categorize your network assets and facilities on your map in the Telecommunications Network
Inventory application.

Place types                                 Description
Name
Aisle                                       Corridor or walkway between rows of server
                                            racks.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    275
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 276 -->
Place types (continued)                 Description
Name
Cage                                    Physically enclosed area within the data
Floor PDU                               center that is dedicated to a single customer
                                        or tenant.
HVAC
HVAC zone                               Floor-mounted Power Distribution Unit. It is
Monitoring room                         a large electrical device used to distribute
Power room                              electrical power from the main power source
                                        to individual racks or equipment throughout
Rack                                    the data center
Rack row
Server room                             A system responsible for maintaining heating,
                                        ventilation, and air conditioning.

                                        A specific area that is independently
                                        controlled for heating, ventilation, and air
                                        conditioning.

                                        A dedicated space where personnel monitor,
                                        manage, and control the operation of the
                                        entire data center.

                                        A dedicated area that houses the main
                                        electrical infrastructure needed to supply,
                                        condition, and manage power for the entire
                                        facility

                                        Standardized metal frame or enclosure used
                                        to house network assets such as servers,
                                        storage devices, and switches.

                                        A linear arrangement of multiple server racks
                                        positioned side by side.

                                        Secure space where IT equipment such as
                                        servers, storage systems, and network gear is
                                        installed and operated.

Related topics
   Upload and manage floor map for your datacenter

Default Template forms

The Default Template form enables you to create, review and modify a default template and
schedule generation of a template.

Default Template form

The Default Template form enables you to create, review, and modify the details for a default
template.

Default Template form

Field  Description
Name   Name for this default template.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    276
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 277 -->
Default Template form (continued)

Field     Description

Table     Name of the table that contains the configuration item (CI) class date that you are

          basing this default template on. Click the search icon ( ) and select a table.

Active    Option that designates if this default template is active.

Short
description Short overview of this network asset.

Application Name of the application that the default template is associated with. Network
                  Inventory Core or Network Inventory Advanced appears, based on the license that
                  your company purchased.

Domain System domain in which the template is created.

User      Name of the user that is associated with this default template. Click the search

          icon ( ) and select a user.

Groups    Name of the user group that is associated with this default template. Click the

          search icon ( ) and select a user group.

Global    Option that indicates that the default template is in the global scope. If not, its
          assigned scope appears.

Template  Name of the table attribute and its value. You can use this field to select attributes
          from the table that you selected in the Table field and set specific values for each
          attribute. When you create a Create Equipment Inventory change request to
          generate the net asset instances by using this template, it enables you to pass
          specific values to the configuration that it generates.

Related topics
   Create a default template

Scheduled Entity Generation form

The Scheduled Entity Generation form enables you to create, review and modify the schedule
generation details for a default template.

Scheduled Entity Generation form       Description
Field
Name                                   Name that identifies this scheduled job. The
                                       default value is the template name. If required,
Active                                 you can update this field.

Application                            Option that indicates that the scheduled job is
                                       active and should be executed at a specified
                                       date and time.

                                       Name of the application that contains the
                                       entity. Global appears if the entity is in the
                                       global scope.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    277
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 278 -->
Scheduled Entity Generation form (continued)

Field                                         Description
Run
                                              Time interval to use for running the scheduled
                                              job. To learn more, see Automatically generate
                                              something from a template .

Time zone                                     An area that follows a specific standard time
Time                                          for official purposes.

Conditional                                   Time of day at which the scheduled job should
Condition                                     run, expressed in hours, minutes, and seconds
                                              on a 24-hour clock. The selection that you
Generate this                                 make in the Time zone field determines the
                                              time zone for this entry.

                                              Option for enabling the running of the
                                              scheduled job if certain conditions are met in
                                              the associated script.

                                              Conditional script that determines if a
                                              scheduled job should run. The last expression
                                              of the script should evaluate to a Boolean (true
                                              or false) value. This text box appears only if
                                              you select Condition.

                                              Reference to the template record from which
                                              you are generating a scheduled job.

Related topics
   Create a default template

Design and assigning a GPON broadband service

With the Gigabyte Passive Optical Network (GPON) Broadband Service change model, you can
create an automated set of tasks to fulfill a GPON broadband order request.

GPON Broadband Service overview

As a product manager, you can use the GPON Broadband Service change model to design
and allocate your inventory for GPON broadband services. With this model, you can fulfill your
customer orders and requests for your network expansion.

Change execution process for GPON Broadband Service request

The change request execution process includes the task stages that you need to complete for
the GPON Broadband Service request. You must do these task stages in the following sequence
to successfully complete the request.

   Create the change request
         Create the change request by using the GPON Broadband Service change model.
         To learn more, see Create and execute a change task. .

   Path compute and create logical connection

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    278
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 279 -->
         Identify the possible paths between the network sites and create a logical
         connection between each site. To learn more, see the next section in this topic
         called "Path computation for the GPON Broadband Service change model."

   Create a logical connection

         Add similar sets of site selection fields for the physical and logical connections
         between your start (A) and end (Z) locations. You can only select those interfaces
         that are associated with the designated equipment model for the A- and Z-end
         interfaces. To learn more, see Change request and change task forms .

   Create a physical connection

         Add similar sets of site selection fields for the physical and logical connections
         between your start (A) and end (Z) locations to configure your inventory equipment.
         You can only select those interfaces that are associated with the designated
         equipment model for the A- and Z-end interfaces. To learn more, see the next
         section in this topic called "Path computation for the GPON Broadband Service
         change model."

   Add an interface card

         Select a site and equipment model when you add interface cards. Use the Slot field
         to select the slot that you want to add to the equipment model. To learn more, see
         Change request and change task forms.

   Create equipment

         Select a network site and equipment model for your equipment instantiation. The
         instantiation process is when you generate and validate the equipment records
         at the site level. To learn more, see Change request and change task forms and
         Change request and change task forms.

After you complete this sequence, you can complete the design and assign procedure for the
GPON broadband services.

To execute this process successfully, you need to consider a set of conditions as well as
scenarios. To learn more, see the next section in this topic called "Path computation for the
GPON Broadband Service change model.".

Path computation for the GPON Broadband Service change model

An internal path computation function is part of the GPON Broadband Service change model. Its
purpose is to identify the possible paths between your network sites. This computation is based
on the parameters that you enter when you complete each change task that is associated with
the GPON Broadband Service change model.

When you create the change request with the GPON Broadband Service change model and
save the request, five default change tasks are created. To learn more, see Design your GPON
Broadband Service.

The following scenarios are handled in the path computation when you execute the process to
complete the GPON broadband service request:

· When all physical connections are available, the Passive Optical Network (PON) access path is
 created.

· If the physical connection between the splitter and PFP is used, the PON access path fails.

· If all physical connections are available, the PON network path is created.

· If a physical connection between OLT and FDP is used, the PON network path creation fails.

· If all logical connections are shared, the VLAN path search can create the connection.

           · If a link aggregation group (LAG) path is used, the VLAN path search fails.                                                                                        279

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 280 -->
The path computation uses record producers in each change task that is associated with the
GPON Broadband Service change model to collect the required data. It collects most of its
connection data when you complete the Compute and Create logical connection change task
that you created from a GPON Broadband Service change model.

1. The path search is between the equipment model that you specified for the A connection end
   of the connection and the equipment model that you specified in the Z end connection.

2. The path search is between the equipment model that you specified for the A connection end
   of the connection and the equipment type that you specified in the Z end connection.

   The logical connection model indicates what model of logical connection must be created
      after the path computation.

   The bandwidth refers to the bandwidth table.
   The allowed physical connection model captures the physical connection CI model, which

      can be used to find a path and is added in the path element.

The path computation works on the following conditions:

1. The equipment hierarchy up to the interface has a Contains:: Contained By
   relationship that is updated when you instantiate the piece of equipment by using the Create
   Inventory Equipment change model.

2. The equipment is related to the network site. This condition is also enforced when you
   instantiate the piece of equipment by using the Create Inventory Equipment change model.

3. The physical connection that you create between the interfaces is associated with valid
   models.

4. When you create a physical connection by using the Create Physical Connection change
   model, a CI relationship is created between the sites.

5. The logical connection that you create between the interfaces is associated with valid models.

6. When you create a logical connection by using the Create Physical Connection change model,
   a CI relationship is created between those sites.

7. Connection elements are added for the logical connections. These elements should be valid
   physical connections between the sites when the computation performs the path search.

8. Port A and Port Z must be populated for the physical and logical connections.

9. The Availability field for the physical and logical connections must be available to qualify
   those connections as possible underlying paths for routing. This validation ensures that a
   resource is not used multiple times.

To learn more about errors occur in the path computation, see Path computation error messages.

Related topics

   Design your GPON Broadband Service

Domain separation

Domain separation in Telecommunications Network Inventory provides a structured and efficient
way to manage complex, multilevel organizational environments. It enables secure, tailored
access and control, ensuring that users view data relevant to their domain.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    280
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 281 -->
Support level: Basic

 · Business logic: Ensure that data goes into the proper domain for the application's service
   provider use cases.

 · The application supports domain separation at run time. The domain separation includes
   separation from the user interface, cache keys, reporting, roll-ups, and aggregations.

 · The owner of the instance must set up the application to function across multiple tenants.

For more information on support levels, see Application support for domain separation

Equipment form

The Create new equipment form enables you to describe the details for an equipment record.

Create new equipment form

Field       Description

Name        Name of the equipment record.

Managed

by          Name of the person who manages this network asset. Select the search icon ( )

            and select a user from the listing.

Life Cycle  Stage of the life cycle that this network asset is in:
Stage          Deploy
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

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    281
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 282 -->
Create new equipment form (continued)

Field    Description

Equipment Assigned equipment Common Location Identifier Code (CLLI) for this network

CLLI     asset. The North American telecommunications industry uses the CLLI code to

         specify the location and function of telecommunications equipment.

Support  Group that supports the network inventory.
group

Network  Domain of ownership and responsibility for this network asset or connection.
domain   Select one of the following options:

            Mobility
                  Network asset that is associated with the mobility equipment domain.

            Telco
                  Network asset that is associated with the telco equipment domain.

            Core
                  Network asset that is associated with the core equipment domain.

Site     Name of the network site or data center in which the process is instantiating the

         equipment.

Related topics
   Create an equipment record by using design and assign

Equipment Holder form

The Equipment Holder form enables you to create, review, and modify the network asset details
for an equipment holder.

Equipment Holder form - General

Field          Description
Name
               Physical orientation of the slots in this network asset:
Serial number     --None--
                        No specific physical slot orientation.
                  Horizontal
                        Horizontal slot orientation.
                  Vertical
                        Vertical slot orientation.

               Total number of equipment holder units, both occupied and available, in this
               network asset.

Asset

               Number of equipment holder units that are in use in this network asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    282
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 283 -->
Equipment Holder form - General (continued)

Field          Description
Support group
               Number of equipment holder units that are available for use in this network
               asset.

Life Cycle     Stage of the life cycle that this network asset is in:
Stage             Deploy
                        Network asset that is deployed in your network.
Managed by        Design
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

               Name of the person who manages this network asset. Select the search icon
               ( ) and select a user from the listing.

Life Cycle     Status of the network asset as it relates to the life cycle stage that it is in:
Stage Status      In Maintenance
                        Network asset that is currently in maintenance.
Model ID          In Use
                        Network asset that is currently in use.
                  Pending Retirement
                        Network asset that is currently in maintenance.

               Manufacturer's model identification number for this network asset.

Alarmable

               Option that designates if an alarm system can be assigned to this network
               asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    283
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 284 -->
Equipment Holder form - Configuration

Field          Description

Manufacturer

               Name of the network asset's manufacturer. Select the search icon ( ) and
               select a manufacturer code. To learn more, see Create manufacturer and vendor
               codes.

Model          Manufacturer's model number for this network asset.
number

Orientation    Physical orientation of the slots in this network asset:
Unit position     --None--
                        No specific physical slot orientation.
                  Horizontal
                        Horizontal slot orientation.
                  Vertical
                        Vertical slot orientation.

               Unit position of this network asset.

Network        Domain of ownership and responsibility for this network asset or connection.
Domain         Select one of the following options:

Units             Mobility
occupied                Network asset that is associated with the mobility equipment
                        domain.

                  Telco
                        Network asset that is associated with the Telco equipment domain.

                  Core
                        Network asset that is associated with the core equipment domain.

               Total number of equipment holder units, both occupied and available, in this
               network asset.

Units in use

               Number of equipment holder units that are in use in this network asset.

Units          Number of equipment holder units that are available for use in this network
available      asset.

Comments

               Free form text that is used to comment on a network asset. For example, Duty
               tech is Rahul Dev.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    284
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 285 -->
Equipment Holder form - Configuration (continued)

Field       Description

Allotted    Maximum power allotted to the asset.
Electric
Power            Note:

                   · To maintain the power capacity of the rack/cabinet, it's essential to
                     incorporate a minimum value of 10 Watts.

                   · By default, the value is converted to Kilowatts (KW), in the capacity
                     metric and following is the conversion formula
                     Watts (W) - <power-in-watts> / 1000
                     Megawatts (MW) - 1000 * <power-in-mega-watts>
                     Horsepower (HP) - 0.746 * <power-in-horsepower>

Allotted    Units in which the allotted electric power of the asset is measured. Select any
Electric    one of the following units.
Power unit   · Watts (W)
             · Kilowatts (KW)
             · Megawatts (MW)
             · Horsepower (HP)

Unit of     Measurement type based on which the Max weight capacity unit is fetched.
Measure     Select any one of the following measurement types.
System
             · Metric

             · US Imperial

Max weight  Maximum capacity of assets.
capacity
                 Note: By default, the value is converted to Pounds (lbs), in the capacity

                  metric and following is the conversion formula
                   · Ounces: <weight-in-ounces> / 16
                   · Grams: <weight-in-grams> / 453.59
                   · Kilograms: 2.204 * <weight-in-kilograms>

Max weight Unit in which weight of the asset is measured. Select any one of the following.
capacity unit · Grams (g)

                         Note: This field is only accessible when the Metric system is used for

                              unit of measurement.

            · Kilograms (kg)

                  Note: This field is only accessible when the Metric system is used for

                    unit of measurement.

                                  · Ounces (oz)                                                                                                                                 285

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

