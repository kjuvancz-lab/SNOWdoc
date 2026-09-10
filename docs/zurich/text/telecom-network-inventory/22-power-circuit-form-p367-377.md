# Zurich Telecommunications Network Inventory â€” Power circuit form / Provision LAG form / Related tabs in the network inventory forms +2 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 367â€“377 of 425

Sections: Power circuit form (p367); Provision LAG form (p368); Related tabs in the network inventory forms (p369); Related templates form (p375); Network and Device Forms (p376)

---

<!-- page 367 -->
Logical/Physical connection modification request form (continued)

Fields                   Description

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
   Modify physical connection endpoints

Power circuit form

The Power Circuit form enables you to describe the details for an power circuit record.

Power Circuit form

Field       Description

Name        Name of this power circuit record. The ServiceNow AI Platform uses this name
            to identify it in your network inventory.

Support group Group that supports the network inventory.

Asset

            Name of the asset that is associated with this record.

Managed by

            Name of the person who manages this network asset. Select the search icon
            ( ) and select a user from the listing.

Life Cycle  Stage of the life cycle that this network asset is in:
Stage

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    367
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 368 -->
Power Circuit form (continued)

Field         Description
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

Related topics
   Define the power circuit details

Provision LAG form

The Provision LAG form enables you to create, review, and modify the network asset details
for Link Aggregation Group (LAG) connection in the Telecommunications Network Inventory
application.

Provision LAG form                    Description
Fields                                Planned end date for this request.
Due date                              Text field where you can select a source site.
Site A                                Text field where you can select the source
Equipment A                           equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    368
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 369 -->
Provision LAG form (continued)               Description
Fields
                                                  Note: The list is dependent on the site
Interface A
                                                   A that you've selected.
Bandwidth
Start date                                   Text field where you can select a source
Site Z                                       interface.
Equipment Z
Interface Z                                       Note:

                                                    · The list is dependent on the
                                                      equipment that you selected.

                                                    · The list doesn't display the interfaces
                                                      that are marked as virtual.

                                             Text field where you can select a total
                                             bandwidth that transmits between the source
                                             and destination interfaces.

                                             Planned start date for this request.

                                             Text field where you can select a destination
                                             site.

                                             Text field where you can select the destination
                                             equipment.

                                             Text field where you can select a destination
                                             interface.

                                                  Note: The interface Z list doesn't

                                                   display the interfaces that are marked as
                                                   virtual.

Related topics
   Create a Link Aggregation Group using design and assign function

Related tabs in the network inventory forms

The related tabs in the Network Inventory forms display the related records that dynamically
change based on the connection and relationships with the other network assets. You can
selectively view, modify, or update these records.

Related tabs in the Network inventory forms

Tab                                          Description
Overview
                                             Snapshot of some of the information about the
                                             telco equipment. The Overview tab displays
                                             the following sections:

                                                Usage

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    369
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 370 -->
Related tabs in the Network inventory forms (continued)

Tab                       Description

                          Number of slots, interface cards,
                          and interfaces that are open in
                          the telco equipment.

                          Images

                          Image of the telco equipment.
                          You can select the image to see a
                          preview in a separate page.

                          Relations

                          Relationship with the associated
                          network inventories. The
                          Relations section shows all
                          the child hierarchies that are
                          associated with the telco
                          equipment. You can only view the
                          relations in the workspace.

                          Note: This tab is available only for the

                          Telco Equipment form.

Rack Equipment Placement  Details of the rack slot where this equipment is
                          positioned. You can always update the details
                          by selecting the text link displayed under the
                          Exclusively Used column.

                               Note: This field is applicable only for

                                all equipment, IP routers, IP switches, IP
                                firewalls, and cards.

Child Site                List of the child inventory sites that are
                          associated with the parent site.

                               Note: This tab is available only for the

                                Network Site form.

Telco equipment           List of the telco equipment that is associated
                          with the network inventory.

                               Note: This tab is available only for the

                                Network Site form.

Incidents                 List of the incident records that are related to
                          the network inventory.

                               Note: This tab is available only for the

                                Network Site form.

Change Requests           List of the Change Request records. To learn
                          more about the change requests, see Create

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    370
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 371 -->
Related tabs in the Network inventory forms (continued)

Tab                           Description

                              a change request from Network Inventory
                              Workspace.

                              Note: This tab is available only for

                              the Network Site, Telco Equipment, and
                              Physical Connections forms.

Teams                         List of the teams that are associated with the
Physical Connections          network inventory.

                              List of the physical connections that are
                              associated with the network inventory.

                                   Note: This tab is available only for the

                                    Telco Equipment form.

Logical Connections           List of the logical connections that are
                              associated with the network inventory.

                                   Note: This tab is available only for the

                                    Telco Equipment form.

Order information             List of the order information that is related to
                              the network inventory instance.

                                   Note: This tab is available only for the

                                    Network Interface, Physical Connections,
                                    and Logical Connections forms.

Number Elements               List of the number elements that are
                              associated with your virtual local area network
                              (VLAN) or link aggregation group (LAG). To
                              learn more about the number elements fields,
                              see Commonly used network asset instance
                              identification fields.

                                   Note: This tab is available only

                                    for the Telco Equipment, Network
                                    Interface, Physical Connections, Logical
                                    Connections, and Inventory Number
                                    forms.

Physical connection elements  List of the connection elements that are added
                              for the physical connections.

                                   Note: This tab is available only for the

                                    Physical Connections form.

Connection elements           List of the connection elements that are added
                              for the logical connections. These elements
                              should be the valid logical connections

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    371
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 372 -->
Related tabs in the Network inventory forms (continued)

Tab                Description

                   between the sites when the computation
                   performs the path search.

                   After creating a connection element, a
                   relationship is created between the logical
                   or physical connection and the next element
                   under its default relationship type. To learn
                   more about the connection element fields, see
                   Connection Element form.

                   Note:

                    · This tab is available only for the logical
                      connections.

                    · The relationship gets updated if its
                      connection element is modified or
                      deleted. For example, the relationship
                      gets deleted if you delete its
                      connection element. To change the
                      default relationship type, navigate to
                      System Definition > Decision tables >
                      TNI CI Relationship Definition Policy,
                      and under Decision table, update the
                      CI Relationship Type against the CI
                      class.

Inventory Numbers  List of the inventory numbers that are
                   associated with your network inventory. To
Channels           learn more about the number elements, see
IP Address         Define your inventory numbering.
Inventory Groups
                        Note: This tab is available only for the

                         Inventory Number form.

                   List of logical connections with the Behaviour
                   field set to Channel.

                   List of the IP addresses that are associated
                   with your network inventory.

                        Note: This additional tab is available for

                         the equipment, interface card, network
                         interface, and logical connection.

                   List and details of all the inventory groups.

                        Note: This tab is available for the

                         network site, equipment holder,
                         equipment, interface card, network
                         interface, physical connection, and
                         logical connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    372
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 373 -->
Related tabs in the Network inventory forms (continued)

Tab                                      Description
DNS Name                                 List of all the DNS names of the IP addresses.

                                         Note: This listing is available only for IP

                                         addresses.

CMDB Group Contains Configuration Items  List of all the configuration items (CIs) that you
                                         want to add to this inventory group. You can't
                                         duplicate a CI but you can add a CI in different
                                         inventory groups. To prioritize a CI, select one
                                         of the following values in the Member Role
                                         field when you're creating the CI:

                                          · Main

                                          · Primary

                                          · Secondary

                                          · Tertiary

                                          · Load Balancing

                                          · Active

                                          · Passive

                                              Note: Only the inventory agent and

                                               the inventory administrator can review,
                                               create, update, or delete the CI items.

Parent Inventory Groups                  List of all the parent inventory groups.
Child Inventory Groups
IP Pools                                 List of all the child inventory groups.
IP Subnetwork
Telephone Numbers                        List of all the child IP pools of this parent pool.
Telephone Number Allocations
                                         List of all the child IP subnetworks of this IP
CMDB 360 Data                            pool.

Inventory Revision Histories             List of all the telephone numbers that you want
                                         to assign to this telephone block.

                                         List of the telephone number allocations that
                                         you want to assign to this telephone block.
                                         This list is auto-generated. By default, the
                                         availability is true and the status is New.

                                         List of all discovery sources at the CI attribute
                                         level. To learn more, see CMDB 360/
                                         Multisource CMDB .

                                         List of all revised CIs of the selected
                                         connection.

                                              Note: This tab is available only for

                                               physical and logical connection.

Asset                                    List of all assets of the inventory.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    373
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 374 -->
Related tabs in the Network inventory forms (continued)

Tab                          Description
Model Component
                             List of the model components of this inventory.
Vendor Catalog Items         You can mark the component as mandatory or
Hardware Model Lifecycles    optional.
Network Model Relationships
Packs                        List of all vendor catalogs of this inventory. To
Capacity Metrics             learn more, see Vendor Catalog Items .

                             Hardware model lifecycle details of this
                             inventory

                             List of all model relationships associated with
                             this inventory

                             List of all added packs. To learn more, see
                             Attribute packs.

                             List of capacity metric records that are
                             associated with the network inventory record.
                             To learn more see, View a capacity metric.

                             Note: This tab is available only for

                             equipment, rack, slot, cabinet, card and
                             interface records.

Strands                      List of strand records that are associated with
                             the cable record.

                                  Note: This tab is available only for card

                                   records.

Protection paths             List of protection paths that are associated
                             with logical connection record.

                                  Note: This tab is available only for

                                   physical and logical connection records.

Network Topology Root Nodes  List of root node records that are associated
                             with network topology record.

                                  Note: This tab is available only for

                                   network topology records.

Media                        List of media records that are associated with
Places                       the network inventory records.

                             List of place records.

Related topics
   Reviewing and updating your network inventory with the Network Inventory Workspace

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    374
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 375 -->
Related templates form

The Related templates form enables you to understand all fields of the related templates tab for
slots, equipment, and shelves.

Inventory Template    Description
Fields
Name                  Name of the shelf or equipment
Inventory model
                      List of all child product models based on
Relationship type     the selected rack unit of the rack. The child
Inventory template    product models are defined in the network
Parent                model relationships for each inventory model
Available templates   of a rack unit.
Default field values
                      Select the search icon ( ) and select a
Slot Span             model. To learn more, see Create inventory
                      models.

                           Note: A list of all product models is

                            displayed if the inventory model is not
                            defined in the model relationship.

                      Type of CI relationship. By default, the
                      relationship is set to Contains::Contained By.

                      Template of the selected inventory model.

                      Select the search icon (  ) and select a
                      template.

                      Parent of the shelf or equipment. It's
                      populated automatically with the name of the
                      slot under which this shelf or equipment is
                      created.

                      Templates that are available for the shelf or
                      equipment

                      Default template where the default CI attribute
                      values can be defined. The values in the list
                      depend on the selected inventory model.

                      Select the search icon ( ) and select a type
                      code. To learn more, see Create a default
                      template.

                           Note: This field is applicable only for

                            equipment.

                      Select slots required for the equipment or
                      shelf to occupy

                           Note: This field is applicable only for

                            equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    375
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 376 -->
Inventory Template (continued)   Description
Fields                           Name pattern of the shelf or slot or equipment
Name pattern

Router, Switch, Firewall, Virtual Machine, Load Balancer, and
Server forms

The equipment form enables you to create, review, and modify the network asset details in
the Telecommunications Network Inventory application for the router, switch, firewall, virtual
machine, load balancer, or server.

Common fields     Description
Field             Name of the network inventory asset.
Name              Location of the network inventory asset.
Location          Description about network inventory asset.
Description
Support group     Group that supports this network asset.

Supported by

                  Name of the person who supports this network asset.

Managed By Group Name of the group who manages this network inventory asset.

Environment       Current state of the network asset. Select one of the following options:

                  · Development

                  · Production

                  · Test

Company           Company who owns this network inventory asset.
Model ID          Model ID of this network inventory asset.
Manufacturer      Name of the manufacturer.
Model number      Manufacturer original model number.
Category          Model category of this network inventory asset.
Subcategory       Model subcategory of this network inventory asset.
Discovery source  Name of primary (most trusted) discovery source.
First discovered  Date and time instance was first discovered.
Most recent       Date and time instance was last discovered.
discovery
Correlation ID    ID of the instance from another data source.
Department        Department where this network inventory asset belongs to.
Life Cycle Stage  Life-cycle stage of the network inventory asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    376
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 377 -->
Common fields (continued)

Field             Description
                  Status of the life-cycle stage.
Life cycle Stage
Status

Attested By       Name of the person who attests this network inventory asset.

Attested Date     Date of attestation.

Attestation Status Status of attestation.

Install Status    Status of the network inventory asset installation.

Operational status Operational status of the network inventory asset.

Fault count       Number of faults.

Maintenance       Type of inspection that is performed on the network inventory asset.
schedule

Schedule          Type of maintenance schedule.

Fully qualified   Domain name that specifies its exact location in the tree hierarchy of the
domain name       Domain Name System (DNS).

IP Address        Unique address that identifies a network inventory asset on the network.

MAC Address       MAC address of the device.

Serial number     Serial number of the network inventory asset.

DNS Domain        Unique name or address assigned to the device within the Domain Name
                  System (DNS) infrastructure.

Attributes        Any additional attributes.

Comments

                  Free form text that is used to comment on a network asset. For example,
                  Duty tech is Rahul Dev.

Monitor           Option to print the details of this network inventory asset.
Can Print         Option to print the details of this network inventory asset.

Server fields

The following fields are available only in the Server form in the Configuration Attributes section.

Server fields     Description
Field             Operating system domain of the configuration item (CI).
OS Domain         Amount of RAM on the computer, in megabytes (MB).
RAM (MB)          Operating system running on the CI.
Operating System  Name of the CPU manufacturer.
CPU manufacturer  Version of the operating system running on the CI.
OS Version        Type of CPU.
CPU type

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    377
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

