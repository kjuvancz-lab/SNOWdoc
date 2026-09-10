# Zurich Telecommunications Network Inventory â€” Inventory number allocation / Modeling 5G network function / Revision, operationalization, and decommission +3 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 33â€“44 of 425

Sections: Inventory number allocation (p33); Modeling 5G network function (p35); Revision, operationalization, and decommission (p36); Capacity management (p38); TNI workflows (p40); Rack / cabinet visualization (p42)

---

<!-- page 33 -->
           · Create a pack table with the attributes that you define. To learn more, see Create attribute pack
             table.

           · Configure the mapping between the pack table and the inventory object that you want to use it
             with. To learn more, see Configure an attribute pack table against a configuration item.

          After you create and configure a pack table, you can use it in a CI record. To learn more, see
          Attribute pack for CI records.

       Inventory number allocation

          You can manage IP addresses, telephone number allocations, virtual local area networks
          (VLANs), or link aggregation groups (LAGs) by using the inventory number allocation of the
          Telecommunications Network Inventory application. By using this feature, you can organize,
          track, and manage the physical and logical numbers.

         Benefits

          The number management tool provides your organization with the following benefits:
          1. Data that is accurate and consistent.
          2. Ability to follow the trends and patterns that lead to more efficient and effective operations.
          3. Reduced costs so that you can optimize or streamline your resources and processes.
          4. Tracking and analyzing how you use your resources.
          5. Tracking your key performance indicators (KPIs), so that your organization can monitor and

             improve its performance.
          6. Presenting data clearly to your stakeholders so that they can understand how your business is

             performing.

         Number management tools

          By using the Telecommunications Network Inventory application, you can manage:
          1. IP addresses. For more information, see IP addresses allocation.
          2. Telephone numbers. For more information, see Telephone allocation.
          3. VLANs and LAGs. For more information, see Define your inventory numbering.

         IP addresses allocation

          By using the IP address allocation of the Telecommunications Network Inventory application,
          you can create, review, and update IP pools, IP network subnets, allocated IP addresses, and
          Classless Inter-Domain Routing (CIDR).

         IP address tables

           · IP pool: An IP pool is a sequential range of IP addresses that are allocated to a large network,
             such as the subnet mask of /16 or /24 IP addresses.

           · IP network subnet: An IP network subnet represents the IP address that is allocated to the
             customer, such as the subnet mask of /28 or /29 addresses.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 33

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 34 -->
 · Allocated IP address: An allocated IP address is a list of all individual IP addresses that are
   part of an IP network subnet and can be assigned to configuration Items (CIs). By using an
   allocated IP address, you can assign an IP address to a host.

 · Managed Network: A managed network is a list of all existing networks or new networks. By
   using a managed network, you can assign a network to an IP pool or to an allocated IP address.
   To learn more, see Create managed network.

To learn more about how to manage IP addresses, see IP address inventory management data
model.

Use case

Let's say a company that is in need of an internet access submits an order request to their
service provider. The order request generates the order line items for allocating a WAN IP
address with a subnet of /30 and order tasks. To assign IP addresses, a change request is
initiated. This change request initiates the following change tasks:
 · Create an IP pool record for the subnet mask of /30 IP addresses according to the design

   guidelines. For more information, see Create an IP pool record.
 · Create an IP network subnet for the subnet mask of /30 IP addresses and four individual IP

   addresses. For more information, see Create an IP network subnet record and IP addresses.
 · Create an application service.
 · Relate an IP network subnet with the change request.

Related topics
   Create IP address allocation

Telephone allocation

Learn about telephone blocks, telephone numbers, and allocating telephone numbers. You can
also learn what the benefits and relationships are between them and how you can manage them
more effectively.

Telephone number infrastructure

 · Telephone block: A telephone block is a pool of telephone numbers that are allocated to a
   telco operator by an administrator.

 · Telephone number: A telephone number is a unique numerical identifier that is assigned to a
   telephone line or device for making and receiving telephone calls. You can add, review, and
   update the list of telephone numbers.

 · Telephone number allocation: A telephone number allocation consists of all the telephone
   numbers that are either allocated or available to allocate to the customer.

To learn more, see Telephone number inventory management data model.

     Note:

       · To perform any activity on telephone numbers, ensure that you're assigned to the
         inventory number manager (sn_inv_num_mgmt.inventory_number_manager) role.

       · To create any telephone block, number, or number allocation, ensure that you create
         the components of the telephone number. To learn more, see Telephone number
         components.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    34
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 35 -->
Use case of a telephone system

Let's say that a network operator has a large series of numbers that include ported in, third party,
owned numbers, and other types of numbers. To manage these numbers, an inventory number
manager can create a telephone block. To learn more, see Create a telephone block.

Now, a customer that has Voice over Internet Protocol (VoIP) or Unified Communication as a
Service (UCaas)-based services submits a request to the operator for a series of numbers. The
requested series of numbers belong to three different areas, countries, or a series of numbers.

To fulfill the earlier scenario, an inventory agent can create a telephone number allocation or
create a telephone number for an area or region in a particular block. To learn more, see Create a
telephone number allocation and Create a telephone number to an area or region. This process
helps an operator to identify the following issues:
 · Availability of a number by using telephone number allocation
 · Ported-in and ported-out numbers
 · Numbers assigned to a country or to an area

Telephone number components
A telephone number is a unique numerical identifier assigned to a telephone line or device for
making and receiving telephone calls. Components of a number are central office code, country
code, area code, and rate center.

Central office code, country code, area code, and rate center

 · Central office code - The central office code, also known as an exchange code. It identifies
   a telephone exchange within a particular area code and helps to route calls within the local
   telephone network. See Create a central office code to learn more.

 · Country code - A country code is also referred to as an international dialing code. It's generally
   a one to three-digit code that is dialed before the area code and telephone number when
   contacting to another country. See Create a country code to learn more.

 · Area code - An area code is a number used to identify a geographic region within a country.
   See Create an area code to learn more.

 · To learn more about telephone numbers, how to manage and assign them, see Create a
   telephone infrastructure

Model 5G network function

You can model your 5G network and manage your any type of network functions by using the
Telecommunications Network Inventory application. By using the model, you can create, review,
update, and delete your networks.

5G network model

You must create a business application, an application service, and network interfaces to model
your 5G network as shown in the following diagram.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    35
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 36 -->
           · Business Application: The business application table stores all network functions. The
             business application records the labels of all classes proposed by 3GPPTM* as a type of
             managed network function. To learn more, see Define network function details.

           · Application Service: The application service stores the instance of the corresponding network
             function, which is associated with the business applications to indicate its type, such as DU
             or CU-CP and so on. Each instance of a function has a record in the application service. You
             can create a relationship with a business application and network interface. To learn more, see
             Define network service instance details.

           · Network Interface: The network interface stores all the logical IP interfaces that are assigned
             to the managed network. The logical interfaces represent a peer-to-peer relationship. If there's
             a connection between a distributed unit (DU) and centralized unit (CU) control plane or user
             plane (UP) functions, a logical connection is created between the logical interfaces. By using
             the relationship editor, you can create a relationship with an application service. To learn
             more, see Define the network interface details and CI relationship editor to create or edit a
             relationship.

          *The 3GPPTM TS28.541 V18.2.2 inspired attributes are provided as the pack tables. To learn more,
          see Pack tables. To learn more about attribute packs, see Attribute packs.

          *3GPP is a trademark of ETSI.

          Related topics

             Manage your network functions

       Revision, operationalization, and decommission of a Configuration
       Item

          Revision of Configuration Item (CI) enables you to update the network attributes of a
          Configuration Item, such as attributes, connection elements, and relations using the
          Telecommunications Network Inventory application. You can make a safe and efficient update to
          your network infrastructure by using the CI revision.

         CI revision overview

          CI revisions enable you to modify network-configured attributes and connection elements of
          an operational Configuration Item. The CI revision is applicable only to logical connection and
          physical connection CIs. So, you can update all configuration items of a connection, as required
          with the help of revise CI and its subflows.

          CI revisions enable you to modify network-configured attributes and connection elements of
          an operational Configuration Item. The CI revision is applicable only to logical connection and

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 36

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 37 -->
          physical connection CIs. So, after a logical connection or a physical connection Configuration
          Item is created, you can update it as required with the help of revise CI and its subflows.

         Operationalization and decommission flow

          The following process guides you through the flow for a Configuration Item (CI) record after a
          request is created.
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 37

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 38 -->
1. Initiate Revision Request: Once you create a revision request, the selected CI is automatically
   cloned. This cloned CI includes all its related tables such as, attributes, connection elements,
   and relations.

2. Customize Cloning Process: You can customize the cloning process and specify which related
   tables are included. To learn more, see #unique_92.

3. Modify cloned CI: After successful cloning, you can perform changes on the cloned
   Configuration Item record, as required.

4. Finalize and apply changes: Using operationalization process merge and finalize the changes.
   This process integrates the revisions into the original CI record. To learn more, see Revise a
   configuration item using design and assign.

5. Decommission: After operationalization, the cloned CI record is automatically
   decommissioned, ensuring an efficient workflow. To learn more, see Decommission an
   inventory record.

.

Use case

Let's say, for a logical connection having two ENETs, you want to add another ENET to increase
the LAG capacity. So, in this scenario, for a safe LAG update, use the CI revision.

With the help of revise CI, the LAG and all of its connections are cloned. Then, in the cloned LAG
Configuration Item, add the desired ENET member and merge it back into the original CI with the
help of operationalize CI. After successful operationalization, all three ENETs are added to the
original CI without disrupting the network. To learn more, see Revise a configuration item using
design and assign, Operationalize a configuration item. Here, the cloned CI is decommissioned
automatically. To learn more, see Decommission an inventory record.

Let's say, you must update the IP address of a router in your network. This router is part of a
complex network, and you aren't sure how changing the IP address affects the rest of the
network. So, in this scenario, for a safe update of the router's IP address, use the CI revision.

With the help of revise CI, you firstly, duplicate the router CI and all of its related data. Then,
you change the IP address of the duplicated router and merge it back into the original CI with
the help of operationalize CI. As a result, the changes are applied to the original router without
disrupting the network. To learn more, see Revise a configuration item using design and assign
and Operationalize a configuration item.

Capacity management

Capacity management in Telecommunications Network Inventory enables you to calculate the
capacity of physical entities in your network. By effectively managing the capacity, you can plan,
monitor, and optimize the resources to make sure that the network can meet your current and
future demands efficiently.

Introduction to capacity management

The capacity management in Telecommunications Network Inventory uses functions and
definitions to calculate and report the capacity of your network assets. The capacity metric
estimates the maximum, occupied, and available network resources such as ports, slots, or racks
in a telecommunication network. You can use this metric result to report the capacity of a network
asset that can be used for future expansion of the network design.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    38
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 39 -->
         Capacity calculation use cases

          When you create a configuration item (CI) using the design and assign function, the system
          automatically calculates the available capacity of the associated CIs. The Telecommunications
          Network Inventory application uses predefined definitions and functions to calculate the
          capacity. So, whenever there's a modification in the current design, the system automatically
          triggers the capacity calculation, and updates the metrics. The metric shows estimated
          maximum, occupied, available, and usage values for an entity. This approach makes sure that
          resource consumption is effectively managed. Also, this calculation improves the accuracy of the
          design and assign function.

          For example, when you add a new piece of equipment to a rack, it's important to determine
          the available racks within the equipment holder. When you create an equipment record, the
          predefined capacity definition runs, and the metric automatically updates the rack availability
          data. The capacity definition includes functions that determine the maximum and occupied
          racks. Subsequently, it calculates the difference between the maximum and occupied racks.
          For instance, if the maximum number of racks is 10 and the occupied racks are 7, there are
          3 available racks. If the maximum number of racks are 10 and the occupied racks are 10, the
          available rack count is 0, which indicates no racks are available. Then the system consolidates
          the result in the capacity metric. This process provides you with the accurate capacity and
          availability information of the racks.

          You can customize the capacity calculation for each type of Configuration Item (CI). This feature
          enables you to create and configure the function, definition, and metric to calculate the capacity.
          To learn more about configuring the capacity function and creating the metric, see Configuring
          capacity management.

         Capacity management workflow

          Capacity management uses function, definition, and metric tables to calculate and report the
          capacity. In the Telecommunications Network Inventory application, the system runs the capacity
          function and aggregates the results into the capacity metric table. It creates an available metric
          for capacity and a usage metric where the percentage value of available capacity is stored.
          Whenever a design change is happened, the system triggers an API to calculate the capacity
          using predefined functions and definitions. You can also manually calculate the capacity by
          selecting the Calculate capacity button in the inventory record.

          To learn more about capacity function, definition, and metric, see Configuring capacity
          management.

         Operational data collection of a datacenter

          A datacenter generates a high volume of operational data for thermal, power, and usage
          readings. The ServiceNow instance can store and process the internal or external data for further
          analysis and reporting. Equinix (an external system) provides this data feed in the form of REST
          APIs. You then store the data in clothoDB through the /api/sn_ni_adv/dcim/feed/
          {vendorname} endpoint. The system runs TNI Aggregate Metric Data scheduled job
          once a day to update any capacity metric records on ClothoDB that haven't been updated in the
          last 24 hours. Also when the trigger condition is met, then the system creates an alert or incident.
          Use the time series metrics to query the operational data and get an overlay on your datacenters
          floor map with this data. So you can view the health of the floor and take the necessary actions.
          To learn more about the time series metrics, see Time series metrics for datacenter.

          You can also manually feed the operational data from your instance to clothoDB. To learn more,
          see Collect operational values for datacenter.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 39

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 40 -->
Telecommunication Network Inventory workflows in Flow
Designer

By using the Telecommunications Network Inventory function catalog and subflows, you can
access the functions that help you to automate the network inventory's design and assign
process.

Telecommunications Network Inventory function catalog

You can use the Telecommunications Network Inventory functions to create, update, and retrieve
a configuration item (CI) while you're performing the Design and Assign process. For example,
you can do the following actions:
 · Create telco equipment
 · Add an interface card

The following table lists the Telecommunications Network Inventory functions that are
categorized by their functionality.

Telecommunications Network Inventory functions

Function Type    Function Name
Create
                  · TNI Create CI From Template
                  · Create Logical Connection
                  · Create Logical Interface
                  · Create Physical Connection
                  · Path Search

Read             · Allocate Free Number
                 · Get Interface Summery
                 · Lookup Next Hub

Update           Cascade Update
Helper function
                  · Split String
                  · Get Index From Array

To learn more about the network inventory functions, see Telecommunications Network Inventory
function catalog.

The following example shows the functions that are available in the Workflow Studio action
library under the Network Inventory Advanced option. You can use these functions to perform
the inventory-related data operations.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    40
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 41 -->
                    Network Inventory Function Catalog Location

          You can also use these functions as Workflow Studio actions in the Telecommunications Network
          Inventory workflow because the Design and Assign is a series of actions. The reusable Workflow
          Studio actions can automate repetitive work, such as creating a logical connection in the
          workflow. To learn more about Workflow Studio actions, see Flow Designer .

         Telecommunications Network Inventory subflows

          In Workflow Studio, you can give the inputs and outputs to pass the data to and from the subflow
          while you're performing the Design and Assign process. If necessary, you can add more fields in
          the subflows. To learn more about working with the subflows, see Building subflows . To learn
          more about the Workflow Studio, see Flow Designer .
          The Telecommunications Network Inventory application has the following subflows:

             Logical Connection Creation
                    Creates a logical connection record in the Telecommunications Network Inventory
                    application based on the input that you receive when you instantiate an inventory.
                    To learn more, see Logical Connection Creation subflow.

             Physical Connection Creation
                    Creates a physical connection record in the Telecommunications Network Inventory
                    application based on the input that you receive when you instantiate an inventory.
                    To learn more, see Physical connection creation subflow.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 41

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 42 -->
The following example shows the subflows that are available in the Workflow Studio action library
under the Network Inventory Advanced option. You can use these functions to perform the
inventory-related data operations.

         Network Inventory Subflow Location

Related topics
   Telecommunications Network Inventory function catalog
   Telecommunications Network Inventory subflows

Rack / cabinet visualization

Using rack or cabinet visualization in the Telecommunications Network Inventory application, you
can visualize a rack or cabinet in the canvas. Here you can observe the loading of equipment
and shelves into the front and rear accessible racks or cabinets, with each item placed in its
designated Rack Units.

Rack visualization overview

Rack or cabinet visualization is a graphical representation of a datacenter rack or cabinet used to
store and organize all equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    42
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 43 -->
The previous screenshot is an example of a rack. From the Overview tab of a rack or cabinet, you
can:
 · See the KPI (Key Performance Indicator) of a rack using rack utilization.

       Note: This KPI is only for racks.

 · See the percentage of allocated power currently utilized by all equipment within the rack. This
   value is derived from the equipment model details. However, the actual power consumption
   might vary.

       Note: This KPI is only for racks.

 · See the percentage of allocated weight currently utilized by all equipment within the rack. This
   value is derived from the equipment model details. However, the actual weight consumption
   might vary.

       Note:

         All rack capacities are calculated based on the capacity definition - rack capacity.
            To change the evaluation of the capacity, you can create a capacity definition and
            function. To learn more, see Configuring capacity management.

         This KPI is only for racks.

 · Explore different equipment types to optimize the placement of routers, shelves, or other
   network infrastructure.

 · See both the front and rear views of the rack or cabinet.
 · See all the reserved units and reserved by which user.
 · See the rack or cabinet and rack or cabinet models.
 · Create equipment from a rack or cabinet view. To learn more, see Create a rack.
 · Edit a rack. To learn more, see Edit rack.
 · Edit a cabinet. To learn more, see Edit a cabinet.
 · Add packs

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    43
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 44 -->
 · Decommission a rack or cabinet. To learn more, see Decommission an inventory record.
 · Delete a rack or cabinet. To learn more, see Delete a record.
 · Navigate to the rack/cabinets/slots form either from the canvas or the menu item.
 · See life-cycle stage of equipment.

 · See all the equipment and shelf details by selecting the info icon ( ).
 · See the number of total and occupied slots available.
 · Switch between the default and dark view using the preferences settings.

Pre-requisites

To instantiate the creation of a rack or cabinet, you must:
1. Create or select a model in the equipment holder model with the Equipment Rack or Cabinet

   Model categories to associate it with a rack or cabinet respectively.
   To learn more, see Create an equipment holder model.

2. Create or select a relationship in the network model relationships with the Rack/Cabinet to
   Rack/Cabinet Slot Relationship type to define the number of rack slots.
   To learn more, see Define a network model relationship.

3. Create or select a template having the rack or cabinet model in the inventory model field.
   To learn more, see Create an inventory template.

Visualize and manage a rack or cabinet

1. Initiate the rack or cabinet creation based on the rack or cabinet model, and rack or cabinet
   slots based on the template. To learn more, see Create a change request from Network
   Inventory Workspace.

        Note:

         You can create a rack using Create a rack.
         You can create a cabinet using Create a cabinet.

2. Add an equipment or shelf to a rack or cabinet. To learn more, see Create a change request
   from Network Inventory Workspace.

        Note: You can also edit, add, move, and remove an equipment using Edit rack and Edit a

         cabinet.

3. Remove an equipment or shelf from a rack or cabinet.
   To learn more, see Create a change request from Network Inventory Workspace.

Related topics
   Create a rack
   Create a cabinet

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    44
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

