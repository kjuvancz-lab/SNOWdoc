# Zurich Telecommunications Network Inventory â€” Create inventory models

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 161â€“174 of 425

Sections: Create inventory models (p161)

---

<!-- page 161 -->
Option  Details
Telco
        Network domain for the telecommunications
        equipment in general.

5. Select Apply.

Related topics
   Network Inventory Workspace

Publish an asset to the hardware catalog

Publish an asset to the hardware catalog so that you can procure the asset by using the
Telecommunications Network Inventory application integration with the Hardware Asset
Management application.

Before you begin
Before you can publish an asset to the hardware catalog, make sure that an inventory model
record has already been created for that asset. If there's no record, you can create an inventory
model record. To learn more, see Create inventory models.

Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
You can publish an asset to the hardware catalog to make it available as a catalog item. You can
procure the asset by creating a service request. To learn more about how to create a service
request, see Create a service request to procure assets.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Equipment Models.
   To publish an interface card, select Interface Card Models.

3. From the list of records, select the inventory model record that you want.
4. Select Publish to Hardware Catalog.

   If the inventory model is already added to the hardware catalog, the Publish to Hardware
   Catalog button doesn't appear.
5. In the Category field, select the hardware asset.
6. Select OK.

Result
A catalog item is created for your asset.

Related topics
   Telecommunications Network Inventory integration with Hardware Asset Management

Create inventory models

As an inventory catalog manager, you can use a series of forms to define the metadata for each
network model in the Telecommunications Network Inventory. During this process, you also
specify the relationships between each of these models.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    161
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 162 -->
Inventory models overview

The metadata that you define in an inventory model serves an important purpose when you
create an associated template or instantiate an instance of equipment. It ensures that you
adhere to the validations put in place by the equipment vendor so that you don't create a non-
supported piece of equipment.

 · The metadata that the inventory models contain, such as the name, model number, height, and
   depth, remain consistent across all individual instances of that particular type of equipment.

 · When you generate the equipment instances for an inventory model, they all contain this
   standard manufacturer information.

     Note: To learn more about creating templates and generating network assets from your

      model and template records, see

       · Create inventory template for network asset instantiation

       · Instantiating inventory using design and assign

To create a comprehensive digital model of your telecommunications network, do the following
tasks:

1. In the Equipment Model form, create inventory models for your telecommunications
   equipment.

   Creating an equipment inventory model is the first requirement for setting up the process to
      generate network asset instances when using inventory templates.

   You create an equipment model record every time a vendor or original equipment
      manufacturer (OEM) introduces new equipment for your use. To learn more, see Create an
      equipment model.

2. In the Equipment Holder Model form, create the inventory model records for your equipment
   holders. To learn more, see Create an equipment holder model.

3. In the Network Interface Model form, create the inventory model records for your network
   interfaces. To learn more, see Create a card model.

4. In the Interface Cards Model form, create the inventory model records for your network
   interface cards. To learn more, see Create a network interface model.

5. In the Physical Connection Model form, create the inventory model records for each physical
   or wired connection. To learn more, see Create a physical connection model.

6. In the Logical Connection Model form, create inventory model records for each logical
   connection. To learn more, see Create a logical connection model.

7. In the Network Model Relationship form, define the relationships between each model record
   in your network inventory. To learn more, see Define a network model relationship.

Inventory model related tabs

After you create inventory models, the information in the following table appears on these tabs in
each inventory model record.

Inventory model tabs    Contains
Tab
Bandwidth Capabilities  Relation between the bandwidth and the
                        physical and logical connection models that
                        need to be added.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    162
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 163 -->
Inventory model tabs (continued)  Contains
Tab
                                       Note: The Bandwidth Capabilities

                                        tab is available only on the physical and
                                        logical models.

Assets                            Network asset information.
Configuration Items               Configuration Item (CI) that is associated with
                                  the model.
Model Components                  Components in the model.
Vendor Catalog Items              Available network assets from various
                                  vendors.
Hardware Model Lifecycles         Life cycle information about the network asset.
Network Model Relationships       Related network inventory models.

Related topics
   Network inventory models

Create a facility model

Create a facility model in the Telecommunications Network Inventory application to define the
physical characteristics data of the facility record according to the product manufacturer's
recommendations.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
When you create a facility model, it creates the model record in the facility model
[sn_ent_facility_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Facility Models.
3. Select New.
4. On the Details tab, fill in the fields.

Facility Model form

Field    Description

Display  Name that appears for the facility model. The
name     glide.cmdb_model.display_name.shorten system property
         controls how display names are generated for the equipment holder model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    163
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 164 -->
Field         Description

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Name of the facility model. The ServiceNow AI Platform uses this name to
              identify it in your network inventory.

5. On the Details tab, fill in the General section.

        Note: To learn more about the fields, see Inventory Model form - General.

6. On the Details tab, fill in the Information section.

        Note: To learn more about the fields, see Inventory Model form - Information.

7. Select Save.

Result
The related tabs appear on the form. You can view or modify the tabs information. To learn more
about the related tabs, see Inventory models additional tabs.

Related topics
   Network inventory models

Create an equipment model

Create an equipment model in the Telecommunications Network Inventory application as the
first requirement for setting up the process to generate your network asset instances. You create
an equipment model record every time a vendor or original equipment manufacturer (OEM)
introduces new equipment for your use.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
An equipment model represents the metadata that is provided by a vendor or manufacturer
for the equipment. It defines the consistent characteristics across the various instances
that are created for the equipment. An instance is an individual occurrence of a network
asset at a site or datacenter. With this application, you define the physical characteristics
data of the network equipment per the product manufacturer's recommendations. When
you create an equipment model record, it creates the model record in the Equipment Model
[sn_ent_nw_equipment_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Equipment Models.
3. Select New.
4. On the Details tab, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    164
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 165 -->
Equipment Model

Field         Description

Display       Name that appears for the equipment model. The
name          glide.cmdb_model.display_name.shorten system property
              controls how display names are generated for the equipment model.

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Name of the equipment model. The ServiceNow AI Platform uses this name to
              identify it in your network inventory.

5. On the Details tab, fill in the Information section.

        Note: To learn more about the fields, see Inventory Model form - Information.

6. On the Details tab, fill in the General section.

        Note: To learn more about the fields, see Inventory Model form - General.

7. To add the compatible equipment models, select Add Compatible.
   You can track the network assets that work with the equipment model.

        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute equipment models, select Add Substitutions.
   You can track the equipment models that you can use to substitute another equipment model
   with.

        Note: In the classic environment, this function is available only for administrators.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify information in these tabs. To learn
     more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and select Delete.

 Related topics
     Network inventory models

 Create an equipment holder model

 Create an equipment holder model in the Telecommunications Network Inventory application
 to define the physical characteristics data of the equipment holder according to the product
 manufacturer's recommendations. You create an equipment holder model every time a vendor or
 original equipment manufacturer (OEM) introduces a new equipment holder for your use.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    165
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 166 -->
Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
When you create an equipment holder model, it creates the model record in the equipment
holder model [sn_ent_nw_holder_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Equipment Holder Models.
3. Select New.
4. On the Details tab, fill in the fields.

Equipment Holder Model

Field         Description

Display       Name that appears for the equipment holder model. The
name          glide.cmdb_model.display_name.shorten system property
              controls how display names are generated for the equipment holder model.

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Name of the equipment holder model. The ServiceNow AI Platform uses this
              name to identify it in your network inventory.

5. On the Details tab, fill in the General section.

        Note: To learn more about the fields, see Inventory Model form - General.

6. On the Details tab, fill in the Information section.

        Note: To learn more about the fields, see Inventory Model form - Information.

7. To add the compatible equipment holder models, select Add Compatible.
   You can track the network assets that can work with the equipment model.

        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute equipment holder models, select Add Substitutions.
   You can track the equipment models that you use to substitute another equipment model with.

        Note: In the classic environment, this function is available only for administrators.

 9. To add attachments, such as graphics or documents, select the attachment icon (  ) in the
     right panel.

10. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    166
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 167 -->
    The related tabs appear on the form. You can view or modify the tabs information. To learn
    more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and select Delete.

 Related topics
    Network inventory models

 Create a card model

 Create a card model in the Telecommunications Network Inventory application to define the
 physical characteristics data of the card as per the product manufacturer's recommendations.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

 About this task
 A card model defines the card's metadata, which are the attributes that are consistent across
 the various instantiated cards of that model. When you create a card model, it creates the model
 record in the card model [sn_ent_nw_card_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Card Models.
3. Select New.
4. On the Details tab, fill in the fields.

Card Model

Field         Description

Display       Name that appears for the card model. The
name          glide.cmdb_model.display_name.shorten system property
              controls how display names are generated for the interface card model.

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Name of the card model. The ServiceNow AI Platform uses this name to
              identify it in your network inventory.

5. On the Details tab, fill in the General section.

        Note: To learn more about the fields, see Inventory Model form - General.

6. On the Details tab, fill in the Information section.

        Note: To learn more about the fields, see Inventory Model form - Information.

7. To add the compatible card models, select Add Compatible.
   You can track the network assets that work with the card model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    167
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 168 -->
        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute card models, select Add Substitutions.
   You can track the card models that you use to substitute another card model with.

        Note: In the classic environment, this function is available only for administrators.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the tabs information. To learn
     more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and click Delete.

 Related topics
     Network inventory models

 Create a network interface model

 Create a network interface model in the Telecommunications Network Inventory application
 to define the physical characteristics data of the network interface as per the product
 recommendations of the manufacturer.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

 About this task
 When you create a network interface model, it creates the model record in the Network Interface
 Model [sn_ent_nw_interface_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Interface Models.
3. Select New.
4. On the Details tab, fill in the fields.

Network Interface Model

Field         Description

Display       Name that appears for the network interface model. The
name          glide.cmdb_model.display_name.shorten system property
              controls how display names are generated for the network interface model.

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Name of the network interface model. The ServiceNow AI Platform uses this
              name to identify it in your network inventory.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    168
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 169 -->
5. On the Details tab, fill in the General section.

        Note: To learn more about the fields, see Inventory Model form - General.

6. Under the Details tab, on the form, fill in the fields.

        Note: To learn more about the fields, see Network Interface Model form - Information

         tab.

7. To add the compatible network interface models, select Add Compatible.
   You can track the network assets that work with the network interface model.

        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute network interface models, select Add Substitutions.
   You can track the network interface models that you use to substitute another network
   interface model with.

        Note: In the classic environment, this function is available only for administrators.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the tabs information. To learn
     more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and select Delete.

 Related topics
     Network inventory models

 Create a cable model

 Create a cable model in the Telecommunications Network Inventory application to define the
 physical characteristics data of the cable according to the product recommendations of the
 manufacturer.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

 About this task
 When you create a cable model, it creates the model record in the Cable Model
 [sn_ent_cable_model] table.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Inventory Models > Cable Models.
 3. Select New.
 4. On the Details tab, fill in the fields.

         Note: To learn more about the fields, see Cable model form.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    169
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 170 -->
5. Add the attachments, such as graphics or documents by selecting the attachment icon ( ) in
   the right panel.

6. Select Save.
   The related tabs appear on the form. You can view or modify the tabs information. To learn
   more about the related tabs, see Inventory models additional tabs.

What to do next                               ) next to the Save button, and select Delete.
To delete a model, select the options icon (

Related topics
   Network inventory models

Create a strand model

Create a strand model in the Telecommunications Network Inventory application to define the
physical characteristics data of the strand according to the product recommendations of the
manufacturer.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
When you create a strand model, it creates the model record in the Strand Model
[sn_ent_strand_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Select the list icon ( ), and then go to Inventory Models > Strand Models.
3. Select New.
4. On the Details tab, fill in the fields.

        Note: To learn more about the fields, see Strand model form.

5. Add the attachments, such as graphics or documents by selecting the attachment icon ( ) in
   the right panel.

6. Select Save.
   The related tabs appear on the form. You can view or modify the tabs information. To learn
   more about the related tabs, see Inventory models additional tabs.

What to do next                               ) next to the Save button, and select Delete.
To delete a model, select the options icon (

Related topics
   Network inventory models

Create a physical connection model

Create a physical connection model in the Telecommunications Network Inventory application
to define the metadata for the different physical connections. In the physical connection
model, you can import models, attach a file or an image, add or remove optional fields, and add
compatibilities and substitutions.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    170
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 171 -->
Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
When you create a physical connection model record, it creates a model in the Physical
Connection Models [sn_ent_physical_nw_connection_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Physical Connection Models.
3. Select New.
4. On the Details tab, fill in the common information for the physical connection model.

   The following table lists the fields that are unique to the Physical Connection form.

Physical Connection Model

Field    Description

Display  Name that appears for the physical connection model. The
name     glide.cmdb_model.display_name.shorten system property
         controls how display names are generated for the physical connection model.

Manufacturer Select the manufacturer name of the physical connection model.

Name     Manufacturer-assigned name of the physical connection model that is
         specified by the model manager.

5. On the Details tab, fill in the general section of the form for the physical connection model.

        Note: To learn more about the fields, see Inventory Model form - General.

6. On the Details tab, fill in the information section of the form for the physical connection model.
   To learn more about the fields, see Inventory Model form - Information.

7. To add the compatible models, select Add Compatible.
   You can personalize the list of compatibles by using the gear icon ( ).

        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute physical connection models, select Add Substitution.
   You can track the network interface models that you use to substitute another network
   interface model with.

        Note: In the classic environment, this function is available only for administrators.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the tabs information. To learn
     more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and click Delete.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    171
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 172 -->
Related topics
   Network inventory models

Create a logical connection model

Create a logical connection model in the ServiceNow Telecommunications Network Inventory
application to define the metadata for the different logical connections. In the logical connection
model, you can import models, attach a file or an image, add or remove optional fields, and add
compatibilities and substitutions.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
When you create a logical connection model record, it creates a model in the Logical Connection
Models [sn_ent_logical_nw_connection_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Logical Connection Models.
3. Select New.
4. On the Details tab, fill in the common information for the logical connection model.

   The following table lists the fields that are unique to the logical connection form.

Logical Connection Model

Field         Description

Display       Name that appears for the logical connection model. The
name          glide.cmdb_model.display_name.shorten system property
              controls how display names are generated for the logical connection model.

Manufacturer

              Name of the network asset's manufacturer. Select the search icon ( ) and
              select a manufacturer code. To learn more, see Create manufacturer and
              vendor codes.

Name          Manufacturer-assigned name of the logical connection model that is
              specified by the model manager.

5. On the Details tab, fill in the general section information for the logical connection model.

        Note: To learn more about the fields, see Inventory Model form - General.

6. On the Details tab, fill in the information section for the logical connection model.
   To learn more about the fields, see Inventory Model form - Information.

7. To add the compatible models, select Add Compatible.
   You can personalize the list of compatibles table by using the gear ( ) icon.

        Note: In the classic environment, this function is available only for administrators.

8. To add the substitute logical connection models, select Add Substitution.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    172
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 173 -->
You can track the network interface models that you use to substitute another network
interface model with.

     Note: In the classic environment, this function is available only for administrators.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the tabs information. To learn
     more about the related tabs, see Inventory models additional tabs.

11. To delete a model, select the options icon ( ) next to the Save button, and select Delete.

 Related topics
     Network inventory models

 Create a network topology model

 Create a network topology model in the Telecommunications Network Inventory application
 to define the metadata for the topology according to your recommendations. You can use a
 topology model to create a record by using the design and assign function.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

 About this task
 When you create a network topology model record, it creates a model in the Network Topology
 Models [sn_ent_network_topology_model] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Models > Network Topology Models.
3. Select New.
4. On the Details tab, fill in the fields.

Network Topology Model form

Field     Description
Behavior
          Type of topology structure. Select one from the following options.
             Ring
                   Each node is linked with its neighbor to form a closed network.
             Linear Bus
                   All the nodes are connected one after the other in a sequential
                   chain.
             Mesh
                   The nodes are connected directly, dynamically, and non-
                   hierarchically to as many other nodes as possible and cooperate
                   with one another to route data.
             Star

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    173
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 174 -->
Field       Description
                      All nodes are connected to a central hub using a communication
Number                link.
of allowed
nodes          Tree
Type                  The nodes are arranged in a configuration that resembles a tree's
                      leaves, branches, and trunk.

            Total number of nodes that are allowed in the topology.

            Type of topology. Select one from the following:
             Generic
             Product

   To learn more about common fields, see Inventory Model form - General.

5. Select Save.
   The related tabs appear on the form. You can view or modify the tabs information. To learn
   more about the related tabs, see Inventory models additional tabs.

What to do next
You use the design and assign function to create a topology record. To learn more, see Create a
network topology record by using design and assign.

Related topics
   Network topology
   Network inventory models

Define a network model relationship

Create a network model relationship in the Telecommunications Network Inventory application
that captures the relationships between your network model entities.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager

About this task
A model relationship captures the relationships between the inventory models. By defining the
relationships between the various network model entities, you can also define the compatibility
between these entities.

For example, if you select Equipment to Slot in the Relationship Type field, you can define
the relationship between a specific equipment inventory model and a specific slot inventory
model. In this case, you would see that the number of slots in the specified slot model are
compatible with the specified equipment model. To learn more, see Modeling network inventory
relationships.

When you create a network model relationship, it creates a model in the Network Model
[sn_ni_core_network_model_relationship] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Click the list icon ( ), and then go to Inventory Models > Network Model Relationships.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    174
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

