# Zurich Telecommunications Network Inventory â€” Telecommunications Network Inventory / Data model / Model your workflow

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 6â€“22 of 425

Sections: Telecommunications Network Inventory (p6); Explore (p7); Data model (p10); Model your workflow (p14)

---

<!-- page 6 -->
Telecommunications Network Inventory

With the ServiceNow® Telecommunications Network Inventory application, you can build
a digital representation of your physical and logical networks, and the services that are
provisioned to your customers. This network inventory contains the assets, services, and the
relationships that define the infrastructure of your telecommunications networks.

Watch this short video for an introduction to the Telecommunications Network Inventory
application.
https://player.vimeo.com/video/1017254752?
badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Get started

Explore                    Configure                 Integrate

Learn about how providers  Plan and configure your                Extend
 use Telecommunications      Telecommunications         Telecommunications
                              Network Inventory.
     Network Inventory.                                   Network Inventory
                                                     capabilities by integrating

                                                      with other applications.

Use                        Reference

Use Telecommunications     Get Telecommunications
    Network Inventory          Network Inventory
   to create and review
     a comprehensive         reference information.

network inventory model.

Additional resources

 · Learn more about what's new and changed, see the Telecommunications Network Inventory
   release notes .

 · Log in to your ServiceNow® account and find additional information about implementing and
   deploying Telecommunications Network Inventory features at Now Create .

 · Access real-time courses, self-paced training, and career resources at ServiceNow University

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 6

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 7 -->
           · Find useful resources related to your role and explore best practices at the ServiceNow
             Impact .

           · Connect with other Telecommunications Network Inventory users at Now Community .

      Exploring Telecommunications Network Inventory

          Learn how the Telecommunications Network Inventory application can help your organization
          to create a digital representation of your physical and logical networks in the ServiceNow AI
          Platform.

         Introduction to Telecommunications Network Inventory

          With the Telecommunications Network Inventory application, you can redefine the
          telecommunications service experience with a consolidated, accurate network inventory to
          automate the resource and service life cycle in your organization. The Telecommunications
          Network Inventory application enables you to build a digital representation of your physical
          networks, logical networks, and the services that are provisioned to your customers. This network
          inventory contains the assets, services, and the relationships that define the infrastructure of
          your telecommunications networks.
          The ServiceNow Configuration Management Database (CMDB) stores the network inventory
          details. With this information, you can monitor your network infrastructure so that you can help to
          ensure the integrity, stability, and continuous service operation of your network.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 7

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 8 -->
          The following example shows the common uses of the Telecommunications Network Inventory

          application.
          Key uses of the Telecommunications Network Inventory application include:

             Network asset life-cycle management
                    Help the service providers to understand their spare inventory equipment, currently
                    deployed assets in the network, and free capacity (for example, the available slots
                    or ports) for the new network. Capture store, and maintain accurate resource life-
                    cycle data as a single source of truth. Leverage your platform workflows to manage
                    your resource and service life cycles across the organization.

             Telecommunications circuit design and resource assignment
                    Automate how to create your network services. You can set the design criteria that
                    initiate the change workflows to assign the necessary equipment.

             Telecommunications service assurance based on accurate network inventory
                    Help service providers to understand which circuits, services, and customers
                    are related to the physical equipment. Map your services to the physical network
                    resources so that you can speed up the analysis of the service impacts. Get
                    accurate visibility of your resource utilization through configurable dashboards.

         Benefits

          The Telecommunications Network Inventory provides the following benefits and features:
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 8

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 9 -->
Benefits of Telecommunications Network Inventory features

Benefit                                         Feature

Leverage Configuration Management               Data model
Database (CMDB) classes, which are
telecommunication industry standards aligned
to support the needs of telecommunication
service providers

Quickly model equipment and design complex Model your workflow
templates

                                                Design and assign

Automate network service creation by setting
complex design criteria that initiate change
workflows to assign the necessary equipment

Deepen visibility into network inventory        Network Inventory Workspace
operations with personalized configurable
workspaces and dashboards

Allocate telephone numbers and IP addresses Inventory number allocation

Model your 5G network                           Model 5G network function

Associate customer orders with the required     Telecommunications Network Inventory and
network resources to deliver a seamless         Order Management for Telecommunications
service delivery experience                     and Media

Instantiate Equipment template using an asset   Telecommunications Network Inventory
and to generate a service request to procure    integration with Hardware Asset Management
the assets

Define a pack with user-defined attributes and Attribute packs
update it against a CI record

Provide a visualization of the circuit and its  Visualize circuits
underlying connection elements

Automate the network inventory's design and     Telecommunication Network Inventory
assign process using the function catalog and   workflows in Flow Designer
subflows

Calculate the capacity of physical entities in Capacity management
your network to plan, monitor, and optimize the
resources

Revise and operationalize a Configuration Item Revision, operationalization, and
                                                                    decommission of a Configuration Item

Visualize and manage rack and cabinet           Rack / cabinet visualization

View the geographical location of your network Visualize your network infrastructure
sites, the floor plan in a datacenter, and the
topology of your network.

Get a converged experience for agents to        Service Operations Workspace for TNI
view both incident/alert details and Network
Inventory entities within a single Workspace

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 9

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 10 -->
       Data model

          The data model for Telecommunications Network Inventory displays the relationships between
          your network assets, infrastructure, and services. With this information, you can provision new
          services, modify existing services, maintain the network, and plan the forecast for the network
          growth in your organization.
          The data model contains the details about your network assets, such as the telco equipment
          configuration data, port availability of a framework, and bandwidth allocations between your sites
          and services. This data model enables you to build, manage, maintain, and allocate the network
          infrastructure and services. Further, this data model provides a for the automation of design and
          creation of your network equipment and connections that support the customer service orders
          and internal network orders.
          The assets, services, and the relationships of your network inventory defines the infrastructure
          of your telecommunications networks. With this information, you can plan and forecast your
          network. You can store the data of the asset in a network inventory record.
          The Telecommunications Network Inventory application uses the Network Inventory extension
          classes that extend the Configuration Management Database (CMDB) Configuration Item (CI)
          class hierarchy. These extensions enable the CMDB to store your network inventory information.
          Also, these extension classes provide the standardization and consistency that are aligned with
          the telecommunications industry standards bodies such as TeleManagement (TM) Forum and
          Metro Ethernet Forum (MEF). To learn more about the Network Inventory (NI) extension classes,
          see Telecommunications Network Inventory extension classes.
          The following diagram shows the extension classes in the data model for the network inventory.

                    Network Inventory data model

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 10

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 11 -->
Network site and Network location

Network site records in the Telecommunications Network Inventory application provide
information about the physical location of your network equipment and resources. You can use
network site records to:
 · monitor from where your network connections originate and terminate
 · monitor the network centers, buildings, floors, and rooms where your network assets are

   located
 · track the operational status of your network sites
 · map your network sites in your service topology
 · link your physical locations to your network sites for a better visualization
 · Identify network faults and outages

A network site is a configuration item (CI) in the Telecommunications Network Inventory
application that's derived from the equipment and connections within the network site, while a
location is simply a physical address.

Telecommunications Network Inventory extension classes

The Telecommunications Network Inventory application uses the generic configuration item (CI)
classes that extend the CMDB class hierarchy as shown in the following table. The following
table describes the classes that are used within the application.

Network Inventory (NI) extension classes

Telecommunications Network      Extends generic CI class  Description
Inventory class                 Non-CI class
                                                          Represents a collection of the
TNI CI Attributes [tni_entity]                            common Telecommunications
                                                          Network Inventory attributes.
                                                          Use the TNI CI Attribute
                                                          record to create the relevant
                                                          common attributes relevant
                                                          for Telecommunications
                                                          Network Inventory and makes a
                                                          relationship with the CI record.
                                                          To learn more, see TNI CI
                                                          Attributes form.

Network Site [cmdb_ci_ni_site] Site [cmdb_ci_site]

                                                          Captures and maintains the
                                                          location-specific attributes for
                                                          each network site, including
                                                          the network centers, buildings,
                                                          floors, and rooms where the
                                                          equipment is located.

                                                                                                    The network site records enable
                                                                                                    you to view all the equipment
                                                                                                    at a location. You can filter the
                                                                                                    locations by the assigned type,
                                                                                                    role, or function categories. To
                                                                                                    learn more, see product/tmt-

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 11

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 12 -->
Network Inventory (NI) extension classes (continued)

Telecommunications Network  Extends generic CI class  Description
Inventory class
                                                      telecom-network-inventory/
                                                      task/define-tni-sites.dita.

Equipment Holder            Hardware

[cmdb_ci_equipment_holder] [cmdb_ci_hardware]         Represents the physical
                                                      units that contain the
                                                      telecommunications equipment,
                                                      including the cages, bays,
                                                      cabinets, slots, and relay racks.
                                                      An equipment holder can
                                                      contain the other equipment
                                                      holders. For example, the line-
                                                      ups contain the individual
                                                      relay racks and each relay
                                                      rack contains the equipment
                                                      shelves.

                                                      Use the equipment holder
                                                      records to track and manage
                                                      your network assets. To learn
                                                      more, see product/tmt-telecom-
                                                      network-inventory/task/define-
                                                      tni-equipment-holders.dita.

                                                      To learn more about the
                                                      extension classes of the
                                                      equipment holder, see
                                                      Equipment holder extension
                                                      classes.

Telco Equipment             Network gear

[cmdb_ci_ni_telco_equipment] [cmdb_ci_netgear]        Represents a device that
                                                      provides the technical
                                                      functionality in a network.
                                                      Examples include the routers,
                                                      modems, mobile devices,
                                                      optical cables,relays, and
                                                      switches. The equipment can
                                                      have slots, cards, or ports. The
                                                      equipment can exist within an
                                                      equipment holder or by itself
                                                      because not all equipment is
                                                      rack mounted.

                                                      Use the equipment record to
                                                      track and manage the details of
                                                      your telco equipment. To learn
                                                      more, see

                                                      Create a telecommunications
                                                      equipment instance.

                                                                                                    To learn more about the
                                                                                                    equipment extension classes,

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 12

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 13 -->
Network Inventory (NI) extension classes (continued)

Telecommunications Network   Extends generic CI class      Description
Inventory class
                                                           see Equipment extension
                                                           classes.

Network Interface            Network Port                  Captures and maintains the
[cmdb_ci_ni_interface]       [cmdb_ci_ni_network_port]     equipment-specific attributes
                                                           for the network interfaces. To
                                                           learn more, see Define the
                                                           network interface details.

Interface Card               Network gear                  Represents the interface cards
[cmdb_ci_interface_card]     [cmdb_ci_netgear]             that are stored in a network.
                                                           Cards can occupy more than
                                                           one slot and can contain
                                                           other cards. They can be
                                                           the equipment ports that are
                                                           physical or logical (virtual). Each
                                                           port is assigned a bandwidth
                                                           value. The bandwidths are
                                                           consumed when you use the
                                                           ports in the network design.

                                                           To learn more, see Define the
                                                           card details.

Physical Connection          Network Link                  Represents the physical port
[cmdb_ci_ni_physical_link]   [cmdb_ci_network_link]        connections on the interface
                                                           cards in your network. To learn
                                                           more, see Define the physical
                                                           connection details.

Logical Connection           Network Circuit               Represents the logical or
[cmdb_ci_ni_logical_path]    [cmdb_ci_network_circuit]     virtual port connections on
                                                           the network interface cards.
                                                           A logical connection typically
                                                           represents the multiple physical
                                                           connections on an interface
                                                           card.

                                                           To learn more, see Define the
                                                           logical connection details.

Power Circuit                Configuration Item [cmdb_ci]  Represents the electrical
(cmdb_ci_circuit)                                          pathway that delivers power in a
                                                           data center. To learn more, see
                                                           Define the power circuit details.

Topology [cmdb_ci_topology]  Network Topology
                             [cmdb_ci_network_topology]
                                                           Represents the grouping of
                                                           the network elements such
                                                           as nodes (equipment), edges

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 13

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 14 -->
Network Inventory (NI) extension classes (continued)

Telecommunications Network  Extends generic CI class  Description
Inventory class
                                                      (connections), and termination
Facility Hardware                                     points (interfaces), how they
                                                      are organized and connected to
                                                      each other.

                                                      To learn more, see Network
                                                      topology.

                                                      Represent power, HVAC,
                                                      network, and their connectivity
                                                      in a data center.

                                                      To learn more, see Network
                                                      inventory facility classes.

          Related topics

             Network Inventory (NI) extension classes

       Model your workflow

          Learn how to create a network inventory record in the Telecommunications Network Inventory
          application to store the details about your network assets. As you create the records, you can
          also define the relationship between each inventory record so that you can design a digital
          model of your network.

         Network inventory workflow overview

          By building an accurate digital representation of your network, you can view your physical and
          logical resources, improve how those resources are used, and reduce the operational costs of
          your network.

          You use a series of forms such as telco equipment and network interface, to create and maintain
          your network inventory records. You can access these forms in the Inventory node in the Network
          Inventory Workspace List view.

         Methods for creating a network inventory record

          You can create a network record by either of these two methods in the Telecommunications
          Network Inventory application:

          1. Create network inventory records manually by using inventory forms. With these forms,
             you can create and review the network inventory records and then define the relationships
             between them. You can access the inventory form in the Inventory node in the Network
             Inventory Workspace List view. To learn more, see Manually create and review your network
             asset instances.

          2. Create network inventory records by using the design and assign function. Before you start the
             design and assign function, you set up the inventory model, template, and model relationships
             for your design criteria. By using the design and assign function, you perform inventory tasks
             to set a network design criteria that initiate change workflows. With these workflows, you can
             assign inventory resources and instantiate your network inventory record. To learn more about
             design and assign function, see Design and assign.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 14

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 15 -->
          3. Create network inventory records by using the Resource Inventory Open API. The Resource
             Inventory Open API provides endpoints to create, retrieve, and delete resources in your
             network. If you're integrated with an external system, you can get the inventory records by
             using the Resource Inventory Open API. To learn more about the functions that enable you to
             query and manipulate Network inventory templates inventory records, see Resource Inventory
             Open API .

         Inventory model and template

          Inventory models and templates provide a framework for creating network inventory records in
          the Telecommunications Network Inventory application. A network inventory model contains the
          assets, services, and the relationships that define the infrastructure of your telecommunications
          networks. A template contains the business guidance rules on how the network asset must be
          configured in a network.

          You can create the models, templates, and the relationships between them. You can have
          multiple configurations of the network inventory templates.

           · To learn more about the inventory model, see Network inventory models.
           · To learn more about the inventory template, see Network inventory templates.
           · To learn more about the inventory model relationship, see Modeling network inventory

             relationships.

          Related topics
             Data model

         Network inventory models

          You define an inventory model in the Telecommunications Network Inventory application so that
          you can track the technical information from the manufacturer about a network asset such as the
          telco equipment or a network interface.

         Inventory models overview

          A network inventory model contains the assets, services, and the relationships that define the
          infrastructure of your telecommunications networks. An inventory model contains the metadata
          for the name, number, dimensions, compatible interface cards, and configurations from the
          manufacturer. When you instantiate an inventory record by using the design and assign function,
          your inventory record contains this standard manufacturer information. To learn more about how
          to create an inventory model record, see Create inventory models.

          After you create the inventory models, you can then define the relationships between the various
          network model entities. You can also define the compatibility between these entities. To learn
          more about model relationships, see Network model relationships.

         Types of inventory models

          You can create the following types of inventory models:

             Facility Models
                    A network interface model captures the physical characteristics and data about the
                    behavior of a facility hardware, as designated by the product manufacturer. Facility
                    hardware represents the power, HVAC, network, and their connectivity in a data
                    center.

             Equipment Models

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 15

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 16 -->
                    An equipment model represents the metadata that is provided by a vendor or
                    manufacturer for the equipment. It defines the consistent characteristics across the
                    various instances that are created for the equipment. An instance is an individual
                    occurrence of a network asset at a site or datacenter. To learn more, see Create an
                    equipment model.

             Equipment holder models
                    An equipment holder model represents the metadata for the representation of
                    containers, including the bays, cabinets, cages, line ups, relay racks, and slots.
                    A Container Type field refers to the type of container that the equipment model
                    represents To learn more, see Create an equipment holder model.

                    The modeling guidelines for the slots vary according to the telecommunications
                    service provider. The individual slot models are represented by the types of slots.
                    Examples are a route processor slot, power slot, fan slot, or a generic slot model.. To
                    learn more, see Create an equipment holder model.

             Interface card models
                    A card model defines the card's metadata, which are the attributes that are
                    consistent across the various instantiated cards of that model.. To learn more, see
                    Create a card model.

             Network interface models
                    A network interface model captures the physical characteristics and data about
                    the behavior of a network interface, as designated by the product manufacturer. To
                    learn more, see Create a network interface model.

             Physical connection model
                    A physical connection model captures the metadata for the physical connection. To
                    learn more, see Create a physical connection model.

             Logical connection model
                    A logical connection model captures the metadata for the logical connections. To
                    learn more, see Create a logical connection model.

             Cable model
                    A cable model captures the metadata for the cable. To learn more, see Create a
                    cable model.

             Strand model
                    A strand model captures the metadata for the strand. To learn more, see Create a
                    strand model.

             Network topology model
                    A network topology model captures the metadata for the topology. To learn more,
                    see Create a network topology model.

         Network model relationships

          A model relationship captures the relationships between the inventory models. By defining the
          relationships between the various network model entities, you can also define the compatibility
          between these entities.

          When setting up model relationships, you select one of the following options in the Relationship
          Type field:

             --None--
                    No network model relationship exists.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 16

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 17 -->
             Rack to Slot
                    Relationship between a rack model and a slot model. This relationship indicates
                    that the rack and the slot models are compatible with the equipment model.

             Equipment to Slot
                    Relationship between an equipment model and a slot model. This relationship
                    indicates that the number of slots and the slot models are compatible with the
                    equipment model.

                     Note:

                           · The Parent product model field shows a list of all the equipment models
                             related to the Telecommunications Network Inventory application.

                           · The Child product model field shows only the slot models.

             Equipment to Network interface
                    Relationship between an equipment model and a network interface model. This
                    relationship indicates the interface model and the number of interfaces that are
                    compatible and supported with the equipment model.

                     Note:

                           · The Parent product model field shows a list of all the equipment models
                             related to the Telecommunications Network Inventory application.

                           · The Child product model field shows a list of all the network interface
                             models related to the Telecommunications Network Inventory application.

             Slot to Interface Card
                    Relationship between a slot model and an interface card model. This relationship
                    enforces the Root product model field where an equipment model or a card model
                    should be selected.

                     Note:

                           · The Root product model field shows a list of all the equipment models
                             related to the Telecommunications Network Inventory application.

                           · The Parent product model field shows the models of both the slots and
                             subslots.

                           · The Child product model field shows a list of all the interface card models.

             Interface card to Slot
                    Relationship between an interface card model and a slot model. This relationship
                    indicates that the slot model is compatible with the interface card model.

                     Note:

                           · The Parent product model field shows a list of all the interface card models.
                           · The Child product model field shows only the models of the subslots.

             Interface Card to Network interface
                    Relationship between an interface card model and a network interface model. This
                    relationship indicates that the number of interfaces in the network interface model
                    are compatible with the interface card model.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 17

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 18 -->
                     Note:

                           · The Parent product model field shows a list of all the interface card models.
                           · The Child product model field shows a list of all the network interface

                             models.

             Physical Connection to Logical Connection
                    Relationship between the models of a physical connection to a logical connection.

                     Note:

                           · The Parent product model field shows a list of all the physical connection
                             models.

                           · The Child product model field shows a list of all the logical connection
                             models.

             Logical Connection to Logical Connection
                    Relationship between one logical connection model to another logical connection
                    model.

                     Note:

                           · The Parent product model field shows a list of all the logical connection
                             models.

                           · The Child product model field shows a list of all the logical connection
                             models.

             Physical Connection to Network Interface
                    Relationship between a physical connection to a network interface.

                     Note:

                           · The Parent product model field shows a list of all the physical connection
                             models.

                           · The Child product model field shows a list of all the network interface
                             models.

             Logical Connection to Network Interface
                    Relationship between a logical connection to a network interface.

                     Note:

                           · The Parent product model field shows a list of all the logical connection
                             models.

                           · The Child product model field shows a list of all the network interface
                             models.

             Rack to Equipment
                    Relationship between a rack and the equipment.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 18

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 19 -->
                     Note:

                           · The Parent product model field shows all equipment holders that have
                             Container type as Rack.

                           · The Child product model field shows all equipment models related to the
                             Telecommunications Network Inventory application.

             Cabinet to Equipment
                    Relationship between a cabinet and the equipment.

                     Note:

                           · The Parent product model field shows all equipment holders that have
                             Container type as Cabinet.

                           · The Child product model field shows all equipment models related to the
                             Telecommunications Network Inventory application.

             Logical Connection to Channel
                    Relationship between a logical connection and the channel.

                     Note:

                           · The Parent product model field shows a list of all the logical connection
                             models.

                           · The Child product model field shows a list of all the channel models that
                             have Behaviour as Channel.

          To learn more about how to model your network inventory relationships, see Modeling network
          inventory relationships.

         Accessing Inventory Model forms

          You can access the inventory model forms in the Inventory Models node in the Network
          Inventory Workspace List view.

         Network inventory templates

          You define the network inventory templates that contain the business guidance rules from a
          telecommunications provider in the Telecommunications Network Inventory application.

         Introduction to inventory template

          A template includes the rules on how the equipment configurations should be generated and are
          based on the operating requirements from the manufacturer. It also includes the configuration
          and equipment compatibility information with the other types of hardware. To learn more about
          the network inventory templates and their relationships, see Create inventory template for
          network asset instantiation.

         Types of network inventory templates

             Inventory Template
                    A network inventory template contains a set of detailed business guidance
                    rules from a telecommunications provider. These rules state how the equipment
                    configurations should be generated and are based on certain operating
                    requirements. For example, based on the equipment model that you develop, you
                    can create a template for use in densely populated metropolitan areas and then

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 19

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 20 -->
         you can create another equipment model template for use in sparsely populated
         rural areas. To learn more about how to create an inventory template, see Create an
         inventory template.

         Inventory templates also have an internal attribute that shows if an entry in an
         inventory template list is a singular template or a template relationship. A template
         relationship designates that there's a relationship between this template and
         another template. These associated templates appear in the Related Template tab
         in the Inventory template form. To learn more about the template relationship, see
         Create inventory template relationship.

   Default Template

         Default templates capture the default attribute values for a configuration item (CI)
         class. A template defines the set of attribute values for any resource (equipment,
         card, and so on). When this default template is associated with an inventory
         template, it adds these attribute values to the resource that is instantiated using that
         template.

         You can define multiple default templates for a single CI, such as equipment, when
         there are multiple business requirements for capturing different sets of attribute
         default values. When you create a default template and you select a CI, you can also
         select an associated attribute of that CI and set a value for it.

         To learn more about how to create a default template, see Create a default template.

Accessing the Network Inventory Template node

You can access the inventory template in the Network Inventory Templates node in the Network
Inventory Workspace List view.

Modeling network inventory relationships

You model your network inventory relationships in the Telecommunications Network Inventory
application so that you can use them in the inventory template relationships to create your
network inventory records.

Network model relationship overview

A model relationship captures the relationships between the inventory models. By defining the
relationships between the various network model entities, you can also define the compatibility
between these entities. The inventory template uses the model relationships to create template
relationships. The instantiation process uses the inventory template relationships that you create
when it generates the network inventory records. For example, when you create an equipment or
card template, the associated slots and interface templates are automatically created by using
the data from the model relationship. If the model relationships aren't made, the system doesn't
create the associated templates.

Inventory modeling process

When you create inventory models for your equipment inventory in the Telecommunications
Network Inventory application, you can use either a bottom-to-top or a top-to-bottom approach.
Either sequence is acceptable, and both yield the same result when you finish:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    20
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 21 -->
           · Bottom-to-top approach, where the modeling starts when you navigate to Network interface
             model > Interface Card Model > Slot Model > Equipment Model > Equipment Holder Model
             (Rack).

           · Top-to-bottom approach, where the modeling starts when you navigate to Equipment Holder
             Model (Rack) > Equipment Model > Slot Model > Interface Card model > Network Interface
             model.

          The following diagram shows a top-to-bottom approach for the inventory modeling process.
                    Top-to-bottom inventory modeling

                    The steps for top-to-bottom modeling of an inventory are as follows:
                   1. Check for any available rack models.
                   2. Check for any model relationships if a rack model is available. If not, create an

                       equipment holder model of rack.
                   3. Check for any equipment models.
                   4. Check for any model relationships if an equipment model is available. If not,

                       create an equipment model.
                   5. Check for the interface card model.
                   6. Check for any model relationships if an interface card model is available. If not,

                       create an interface card model.
                   7. Check for the network interface model.
                   8. Check for any model relationships, if the network interface model is available. If

                       not, create a network interface model.
                   9. Check for the model relationships after you create each inventory model. If not,

                       create the model relationships.
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 21

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 22 -->
          This process ensures that all models and model relationships are created according to the
          manufacturer's recommendations.
          Related topics

             Create inventory models
             Define a network model relationship

         Design and assign

          With the design and assign function, you can build a digital representation of your network
          inventories and your network service in the Telecommunications Network Inventory application.

         Design and assign overview

          By using the design and assign function, you perform inventory tasks sequentially or in parallel
          to set a network design criteria that initiate s change workflows. With these workflows, you can
          assign inventory resources and instantiate your network inventory. You can also perform the
          design and assign function with the information that you collected from the customer orders.
          When you perform the design and assign function in the Telecommunications Network Inventory
          application, you use the standard processes from the Change Management and Workflow
          Studio applications. Create a change request enables you to instantiate the network inventory
          resources to support your network service topologies. It helps you efficiently build new network
          capacity with accurate resource allocation. You can also automate workflows to create and
          expand your network service.
          You can design and configure both simple circuits and a complex network infrastructure. You can
          then perform path analysis and computations for your network assignments. You can also apply
          virtual local area network (VLAN) and link aggregation group (LAG) assignment rules for Passive
          Optical Networks (PONs). By using the design and assign function, you enforce technology and
          process restrictions as you design and allocate your network resources.

         Design and assign workflow

          Before you start the design and assign function, you define the models, model relationships,
          templates, and template relationships for your design criteria. Then the ServiceNow AI Platform
          generates an automated workflow that performs all the tasks that are required to instantiate a
          network inventory.
          As an inventory template or catalog manager, you can do the following tasks to instantiate your
          network inventory:

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 22

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

