# Zurich Telecommunications Network Inventory â€” Hardware Asset Management / Order Management / Defining inventory records

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 100â€“160 of 425

Sections: Hardware Asset Management (p100); Order Management (p101); Use (p104); Defining inventory records (p105)

---

<!-- page 100 -->
Related topics
   Configuring Design and Assign function for your network services

Integrating Telecommunications Network Inventory with
other applications

You can extend the capabilities of the Telecommunications Network Inventory application and
connect with other departments to assist with problem resolution by integrating with other
applications.

Telecommunications Network Inventory integration with Hardware
Asset Management

By integrating the Telecommunications Network Inventory application with the Hardware Asset
Management (HAM) application, you can use an inventory template to create a service request.
You can also associate the assets that are available in a stock room to instantiate the equipment.

HAM integration overview

With this integration, you can enable the Telecommunications Network Inventory application
to create the bill of materials for your assets by using a record producer. Then, you can create
a service request to get those assets. To learn more about record producers, see Record
Producer .

Before creating the service request, you must publish the asset to the hardware catalog by
adding it to the Catalog Definition table. To learn more, see Publish an asset to the hardware
catalog.

The Hardware Asset Management fulfills the service request and executes the workflow to
procure the assets in the Hardware Asset Management Workspace. To learn more about the
Hardware Asset Management workflow, see Procurement .

After the assets are acquired or available in a stockroom, the procurement managers can use the
ServiceNow® Procurement application to create the configuration items (CIs) for these assets.
You can use these CIs for equipment instantiation by tagging them.

When you instantiate equipment at a network site with an inventory template, the system picks
the assets that match with the interface card models if they're in the same network site location.
Otherwise, the application creates a CI for the interface card. The system makes a relationship
with the other assets that are available in a stockroom. These relationships are made only if the
related assets are available in a stockroom.

Hardware Asset Management integration workflow

This integration enables you to do the following tasks:
1. Create a service request for the bill of materials. To learn more, see Create a service request to

   procure assets.
2. Associate the assets from an available stock room. You can associate the asset when you

   create equipment by using the change model. To learn more, see Create a change request
   from Network Inventory Workspace.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    100
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 101 -->
Create a service request to procure assets

Create a bill of materials for assets by using a record producer, and then create a service request
to procure those assets. You can do both these actions by using the Telecommunications
Network Inventory application integrations with the Hardware Asset Management application.

Before you begin
Make sure to add the asset that you want to procure in the hardware catalog. To learn more, see
Publish an asset to the hardware catalog.

Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
To procure the assets, you can create a service request for a bill of materials by using the
Material Request using Inventory Template record producer. To learn more about record
producers, see Record Producer .

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Procurement > Requests.
3. Select New.
4. In the Material Request using Inventory Template record producer, fill in the fields.

Material Request using Inventory Template record producer

Field      Description

Inventory  Inventory template that includes the assets that you want to procure. When you
Template   select the template, the related assets list is displayed in the Material Count
           section.

Quantity Quantity of the assets. Enter the required quantity of each asset in the Quantity
               field.

5. Select Submit.

Result
A service request is created to procure the assets.

Telecommunications Network Inventory and Order Management
for Telecommunications and Media

With the Order Management for Telecommunications and Media (OMT) application, you can
manage all your product and service orders from one place. These product orders are divided
into service orders that are further divided into resource orders.

Introduction to OMT integration

The order workflow generates the order tasks that fulfill the customer-facing service order
(CFS) and resource-facing service order (RFS). Network-related tasks that involve the inventory
configuration items (CIs), models, and templates, may interact with the Telecommunications
Network Inventory application to create network CIs. For all network-related order tasks, you must
create a change request in the Telecommunications Network Inventory application.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    101
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 102 -->
The following diagram shows the high-level process of managing a service request and
detailed workflow of the Telecommunications Network Inventory and Order Management for
Telecommunications applications.

Following are the stages of the workflow:

1. Orchestration: In this stage, the Order Management for Telecommunications application fulfills
   the function of order orchestration. It generates resource orders to execute a variety of order-
   related tasks, encompassing network planning. These resource orders can be initiated by
   either a service agent or through the TMF 641.

2. Plan: In this stage, the SPM leverages pre-defined SPM project template to initiate project
   creation. Subsequently, the SPM utilizes the established integration with the Order
   Management for Telecommunications to facilitate further project processing.

3. Procure: In this stage, instantiation of procurement activity for hardware assets to fulfill the
   request is obtained.

4. Design Assign: In this stage, the Telecommunications Network Inventory application initiates
   the following process:

   a. creates change request that triggers the respective change model based on the analyzed
      change characteristics.

   b. creates change tasks based on the change characteristics.

   c. completes all the tasks through the inventory task flow that includes template sub flow, read
      flow action, and create flow action. After which required CIs or resources are read or created.

5. Build: In this stage, the service is physically built or implemented through FSM.

6. Activate: The service is deployed using activation procedure.

To create a network CI, the Telecommunications Network Inventory and Order Management for
Telecommunications applications are integrated to perform service or product tasks, such as
design and assign. A change request is initiated for the tasks that need a network inventory-
related action.

You must ensure that these conditions are met:

1. You must have the license of both the Telecommunications Network Inventory and Order
   Management for Telecommunications applications in the same instance.

2. In this integration, only the ADD action service order request from Order Management for
   Telecommunications and Media is provided.

For admins

          To create a change request, an admin must perform the following tasks for an order task that                                                                          102
          needs the network inventory actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 103 -->
1. Create a record producer. To learn more, see Create a record producer .
2. Create a change model. To learn more, see Create a change model .

   By default, the Telecommunications Network Inventory application provides the change
   models that are described in the following table.

Default Change Models               Description
Change Models
Provision LAG                       Creates Ethernet links across ports, and a
                                    LAG circuit over those Ethernet links. LAG
GPON broadband Service (Automated)  has virtual interfaces. The VLAN ranges are
Fiber-wise Mobility Infrastructure  also created and associated with LAG.
Design and Assign Telco Equipment
                                    Provisions a GPON service over the existing
                                    network.

                                    Provisions a mobility infrastructure over the
                                    existing network.

                                    Creates equipment according to the
                                    predefined template at a particular network
                                    site.

The states are New, Implement, Review, and Closed for the earlier change models. By default,
all new change model states are set as New.

3. Create a decision entry in the decision table provided by the Telecommunications Network
   Inventory application. See Order Management for Telecommunications integration to learn
   how to create an entry.

The workflow for creating a change task using TNI-OMT integration is as follows:

1. The OMT subflow creates an order task.

2. When the Order Task Created trigger is received, the TNI flow launches the Create Change
   Request and later creates a Change Request action.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    103
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 104 -->
3. The OMT action and Service Specification are mapped to the Change Model, Record Producer
   in the TNI Order Task Submit Script Include and Decision Tables. Then the OMT characteristic
   is mapped to the Record Producer variables.

4. The Producer is then submitted to the Record Producer via the sn_sc.CatItem API.

5. It creates a Change Request with respect to the Order Task, Change Model, and Variables.
   Also, it uses the sn sc.CatItem API to return the result to the TNI flow.

6. When this action is completed, it adds work notes to the Order task.

7. After the Change Request is closed, it adds work notes to the Order task.

For inventory agents

An inventory agent can open, verify, implement, and close the assigned change tasks. After
implemented, the created CIs are added under the Affected CIs tab. The work notes of the order
task are updated when the order task is closed.

As a result, the Order Management for Telecommunications and Media application fetches the
list of the affected CIs and creates an install base item to relate the product order to the CI. To
learn more, see Configuring order fulfillment in Order Management for Telecommunications,
Media, and Technology .

     Note:

       · A change request for an order task is created automatically only if a decision entry is
         created.

       · A number of change requests is created based on the need for inventory action of an
         order task.

       · As a demo data:

         In the Order Management for Telecommunications and Media application, the SD-
            WAN product has an Allocate and Install CPE task that triggers an equipment creation
            change request to the Telecommunications Network Inventory application.

         The Telecommunications Network Inventory application has demo data that you
            can use to create equipment, provision a link aggregation group (LAG), automate a
            Gigabyte Passive Optical Network (GPON) broadband, and fiber wise mobility infra as
            Telecommunications Network Inventory workflows.

Using Telecommunications Network Inventory

With the Telecommunications Network Inventory application, you can build a digital
representation of your physical and logical networks. This network inventory contains the
assets, services, and the relationships that define the infrastructure of your telecommunications
networks.

Multiple methods are available for creating the network asset records that comprise
a comprehensive digital model of your telecommunications network inventory in the
Telecommunications Network Inventory application.

Generation of network assets using inventory models and templates

Inventory models and templates provide a framework for creating representations of the telco
equipment in the Telecommunications Network Inventory application. By using the inventory
templates and models that you define, you can generate the individual network asset instances
that make up the digital model of your network. When you create the model and template
relationships, the generation function also creates the formal relationships between each

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    104
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 105 -->
individual network asset. Performing this task in this manner is often a less labor-intensive
method of creating the digital model of your network inventory than doing it manually.

To learn about how to use the Change form in Design and Assign to perform equipment
instantiation, see:
 · Data model
 · Manually create and review your network asset instances
 · Create inventory models
 · Create inventory template for network asset instantiation
 · Instantiating inventory using design and assign

Manual creation of individual network asset instances in your network
inventory

Instead of defining the inventory models and templates for automated generation of network
asset instances, you can manually create your network assets and a digital model of your
network. You use a series of forms that you access from the Network Inventory Workspace to
manually create and review individual network asset instances, and then define the relationships
between each individual asset.. To learn more, see:
 · Reviewing and updating your network inventory with the Network Inventory Workspace
 · Manually create and review your network asset instances

Related topics
   Exploring Telecommunications Network Inventory

Reviewing and updating your network inventory with the Network
Inventory Workspace

You use the Network Inventory Workspace to manage your inventory and perform the tasks in the
Telecommunications Network Inventory application.

Related topics
   Model your workflow
   Data model

Manually create and review your network asset instances

A key function that you can perform in the network inventory workspace is to manually create
your network assets and a digital model of your network in the Telecommunications Network
Inventory application. With this information, you can provision new services, modify existing
services, maintain the network, and plan the forecast for your network growth.

To manually create and to review your individual network inventory records, and define the
relationships between each asset, you can easily access the appropriate forms from the
workspace landing page. For example, you can select the Interface cards count in the Network
entities by categories widget on the Network Inventory Workspace landing page to create an
interface card instance.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    105
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 106 -->
Note: As an alternative to manually creating individual network asset instances, you can

instead use a more automated, and potentially less labor-intensive method to do so. To
learn more, see the following:

 · Data model
 · Manually create and review your network asset instances
 · Create inventory models
 · Create inventory template for network asset instantiation
 · Instantiating inventory using design and assign

Process

To manually create a comprehensive digital model of your telecommunications network, access
the following forms from the Network Inventory Workspace landing page and the Lists view.
To learn more, see Reviewing and updating your network inventory with the Network Inventory
Workspace.

1. In the Network Site or Data Center form, create the site records for the individual locations that
   house your network equipment. To learn more about network site, see product/tmt-telecom-
   network-inventory/task/define-tni-sites.dita. To learn more about data centers, see Define the
   datacenter details.

2. In the Telco Equipment form, create the individual network asset instances for your
   telecommunications equipment. To learn more, see product/tmt-telecom-network-inventory/
   task/define-tni-equipment.dita.

3. In the Equipment Holder form, create the individual network asset instances for your
   equipment holders. To learn more, see product/tmt-telecom-network-inventory/task/define-tni-
   equipment-holders.dita.

4. In the Interface Cards form, create the individual network asset instances for your interface
   cards. To learn more, see Define the card details.

5. In the Network Interface form, create the individual network asset instances for your network
   interfaces. To learn more, see Define the network interface details.

6. In the Physical connection form, create the individual network asset instances for each
   physical or wired connection. To learn more, see Define the physical connection details.

7. In the Logical connection form, create the individual network asset instances for each logical
   connection. To learn more, see Define the logical connection details.

8. Create the logical and physical relationships between each asset in your network inventory.

9. Define the numbering for your virtual local-area network (VLAN) or link aggregation group
   (LAG) connections in the Telecommunications Network Inventory application. To learn more,
   see Define your inventory numbering.

Related topics
   Model your workflow

Define the network site details

Review, update, or create your network site records in the Telecommunications Network
Inventory application. These records enable you to view the location-specific attributes for each
network site, including the network centers, buildings, floors, and rooms where your equipment is
located.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    106
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 107 -->
About this task
Your network sites are those physical locations where you keep your network equipment.
Network site records enable you to view all your equipment at a specific location. You can filter
the locations by their assigned type, role, and function categories. To learn more, see Viewing
your network inventory configuration items with CMDB Workspace.

When you create a network site record, it creates a corresponding configuration item (CI) record
in the Network Site [cmdb_ci_ni_site] table. To learn more, see Data model.

The Telecommunications Network Inventory application stores the physical network
connections, the logical network connections, and the resources that contain the overall network
and the services provisioned on the network. The TNI data model adheres to a hierarchical
structure. The foundation is the Network Site (referred to here as a network site).

The Network Site class represents the physical locations on the network where the equipment
and resources are stored and maintained, and where the network connections originate and
terminate. The network site has a reference to a physical location and derives the key attributes
like the address, latitude, and longitude from it.

Although the network sites and locations are similar, their differences are important within
the context of the TNI data model. A network site is a configuration item (CI) in TNI. It has an
operational status, which is derived from the equipment and connections within the network
site. As a CI, a network site can also be mapped as an inherent aspect of your service topology.
The network site and location complement one another, which provides more value to your
organization.

You can relate your physical locations to your network sites in TNI so that you can visualize these
network sites on a map. Your organization can maximize the value of the network site and all
the underlying inventory components that reside at the site. With the TNI data model, you can
identify incidents, correlate events, and analyze the root cause of your network faults or outages.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Click the list icon ( ) and then go to Sites > Network Sites.

   You can view the sites that you manage by going to Sites > My Sites.

        Note: You can also access the Total Sites list by clicking the Total sites or In

         maintenance sites counts in the Network sites overview widget in the Network Inventory
         Workspace landing page. To learn more, see Reviewing and updating your network
         inventory with the Network Inventory Workspace.

3. Click New.

4. On the Details tab, in the Network Site section, fill in the fields.
   To learn more about the fields that are unique to the Network Site form, see Network site form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

5. On the Details tab, in the Site Details section, fill in the site detail information.
   The following table lists the fields that are unique to the Site Details section.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    107
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 108 -->
Network Site form - Site Details

Field Description

Serving
wire Common Location Identifier Code (CLLI) code that represents the telephony
center company central office that is serving this network site with telephone service.

LATA

          Assigned Local Access and Transport Area (LATA) code for the network asset. It
          represents the geographical area in the United States in which the network site is
          located.

Data      Identifier for this datacenter.
center
code

Altitude

          Altitude of the network site that you select as feet or meters in the Altitude units
          field. The altitude measurement enables your enterprise to comply with Federal
          Aviation Administration (FAA) regulations.

Altitude
units Unit of measurement in which you're expressing the altitude of the network site in

             the Altitude field. Select one of the following options:

                Feet

                      Altitude of the network site that is measured in feet. This is the default
                      value.

                Meters

                      Altitude of the network site that is measured in meters.

 6. To create the Telecommunications Network Inventory attributes for the Network Site form, click
     Set Inventory Attributes.
     When you click the Set Inventory Attributes button, it creates a reference in the CI table.

         Note:

           If you click Save without clicking Set Inventory Attributes, it creates a CI record but not a
           Telecommunications Network Inventory CI record.

 7. On the TNI CI Attributes form, fill in the fields.

     To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
     Attributes form.

 8. Click Save.

     The Telecommunications Network Inventory attribute fields are displayed on the Network Site
     form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear
     when you reopen the CI record.

 9. Optional: To add the attachments, such as graphics or documents, click the attachment icon
     ( ) in the right panel.

10. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    108
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 109 -->
    The related tabs appear on the form. You can view or modify the related tab information. To
    learn more about the related tabs, see Related tabs in the network inventory forms.

11. Optional: View the visual representation of the selected record by selecting Open Map.

12. Optional: Select the more options icon ( ) and then select Add Packs to capture the
    attributes for a configuration item (CI) record.
    To learn more, see Attribute pack for CI records.

13. Optional: To view the Dependency views map, select the more options icon (  ) and then
    select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

14. Optional: To view the associated network inventories, click the brick icon ( ).

     (Optional) The Infrastructure Relationships section shows all the associated network
     inventories grouped by the individual network asset instances.

15. Optional: Select the more options icon ( ) and then select Decommission to decommission
    a CI record.
    To learn more, see Decommission an inventory record.

 What to do next

 · If you want to establish relationships with the other network assets, enter the details in the
   related tabs. To learn more, see Related tabs in the network inventory forms.

 · To delete an inventory record, see Delete a record.

Related topics
   Model your workflow

Define the datacenter details
Define your datacenter record in the Telecommunications Network Inventory application. These
records enable you to view the location-specific attributes for each datacenter, including the
network centers, buildings, floors, and rooms where your network assets are located.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
Your datacenter is a secure facility that houses critical IT and network infrastructure needed to
support the telecommunications network. Datacenter records enable you to view all network
assets at a specific location. A datacenter has details about the location, building, floor, and all
network assets placed at that location.

When you create a datacenter record, it creates a corresponding configuration item (CI) record in
the data center [cmdb_ci_datacenter] table. Datacenter is a subcategory of a network site.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Select the list icon ( ) and then go to Sites > Data Centers.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    109
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 110 -->
   You can view the datacenters that you manage by going to Sites > My Sites.

3. Select New.
4. On the Details tab, fill in the fields.

   To learn more about the fields that are unique to the Data Center form, see Network site form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

5. On the Details tab, in the Site Details section, fill in the site detail information.
   The following table lists the fields that are unique to the Site Details section.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

Network Site form - Site Details

Field Description

Serving
wire Common Location Identifier Code (CLLI) code that represents the telephony
center company central office that is serving this network site with telephone service.

LATA

          Assigned Local Access and Transport Area (LATA) code for the network asset. It
          represents the geographical area in the United States in which the network site is
          located.

Data      Identifier for this datacenter.
center
code

Altitude

          Altitude of the network site that you select as feet or meters in the Altitude units
          field. The altitude measurement enables your enterprise to comply with Federal
          Aviation Administration (FAA) regulations.

Altitude
units Unit of measurement in which you're expressing the altitude of the network site in

             the Altitude field. Select one of the following options:

                Feet

                      Altitude of the network site that is measured in feet. This is the default
                      value.

                Meters

                      Altitude of the network site that is measured in meters.

6. To create the Telecommunications Network Inventory attributes for the Network Site form,
   select Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates a reference in the CI table.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record but
         not a Telecommunications Network Inventory CI record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    110
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 111 -->
7. On the TNI CI Attributes form, fill in the fields.

To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
Attributes form.

8. Select Save.

The Telecommunications Network Inventory attribute fields are displayed on the Network Site
form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear
when you reopen the CI record.

 9. Optional: To add the attachments, such as graphics or documents, select the attachment icon

     ( ).

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

11. Optional: View the visual representation of the selected record by selecting Open Map.

12. Optional: Select the more options icon ( ) and then select Add Packs to capture the
    attributes for a configuration item (CI) record.
    To learn more, see Attribute pack for CI records.

13. Optional: To view the Dependency views map, select the more options icon (  ) and then
    select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

14. Optional: To view the associated network inventories, select the brick icon ( ).

     (Optional) The infrastructure Relationships section shows all the associated network
     inventories grouped by the individual network asset instances.

15. Optional: Select the more options icon ( ) and then select Decommission to decommission
    a CI record.
    To learn more, see Decommission an inventory record.

 What to do next

 · If you want to establish relationships with the other network assets, enter the details in the
   related tabs. To learn more, see Related tabs in the network inventory forms.

 · To delete an inventory record, see Delete a record.

Define the facility hardware details
Define the facility hardware record to represent power, thermal, network components and their
connectivity in a datacenter. By defining the facility records, you can track and manage your
network assets in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    111
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 112 -->
 About this task
 When you create a facility hardware record, it creates a corresponding configuration item (CI)
 record in the facility extension class table. To learn more about the Equipment Holder extension
 class table, see Network inventory facility classes.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Inventory > All Facilities.
 3. Select New and then select the facility type from the list.

     To learn more about the facility types, see Network inventory facility classes.
 4. Select Submit.

     The Facility form is displayed for the selected facility type.
 5. On the Details tab, fill in the form.

     To learn more about the field information, see Equipment Holder form
 6. Create the Telecommunications Network Inventory attributes for the Facility record by

     selecting Set Inventory Attributes.
     When you select the Set Inventory Attributes button, it creates a reference in the CI table.

         Note:

           If you select Save without selecting Set Inventory Attributes, it creates a CI record but
           not a Telecommunications Network Inventory CI record.

 7. On the TNI CI Attributes form, fill in the fields.

     To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
     Attributes form.

 8. Select Save.

     The Telecommunications Network Inventory attribute fields are displayed on the Facility form
     after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear when
     you reopen the CI record.

 9. Add the attachments, such as the graphics or documents, by selecting the attachment icon
     ( ).

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Telecommunications Network Inventory.

11. View the associated network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

 What to do next
 If you want to establish relationships with the other network assets, enter the details in the
 related tabs. To learn more, see Related tabs in the network inventory forms.

 Related topics
     Data model

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    112
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 113 -->
Create a telecommunications equipment instance

Create a telecommunications equipment instance in your network. You define the equipment
instances so that you can track and manage your network assets in the Telecommunications
Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
You can create the equipment instances that have the inventory category set as Equipment.
When you create an equipment record, it creates a configuration item (CI) record in the
corresponding equipment table. To learn more about the equipment extended classes, see Data
model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Select the list icon ( ), and then go to Inventory > All Equipment.

   You can create the following equipment types by selecting the options from the List menu.

Option                         Description

IP Routers, IP Switches, IP    Creates a record that you've selected. To learn more
Firewalls, IP Load Balancers,  about the fields in the form, see Router, Switch, Firewall,
Servers, or Virtual Machines   Virtual Machine, Load Balancer, and Server forms.

Kubernetes Clusters            Creates a Kubernetes cluster instance. To learn more
                               about the fields in the form, see Kubernetes discovery

                                                 .

Kubernetes Pods                Creates a Kubernetes pod machine instance. To learn
                               more about the fields in the form, see Kubernetes discov­

                                                 .

3. Select New and then select the equipment type from the list.
   To learn more about the equipment extended classes, see Equipment extension classes.

4. In the Equipment form, fill in the fields.

   To learn more about the fields in the Equipment form, see product/tmt-telecom-network-
   inventory/task/define-tni-equipment.dita.

5. Create the Telecommunications Network Inventory attributes for the Telco Equipment form by
   selecting Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates a reference in the CI table.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record but
         not a Telecommunications Network Inventory CI record.

6. On the TNI CI Attributes form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    113
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 114 -->
   To learn more about the Telecommunications Network Inventory attribute fields, see the TNI CI
   Attributes form.

7. Select Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Telco
   Equipment form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't
   appear when you reopen the CI record.

8. Optional: To view the Dependency views map, select the more options icon (  ) and then
   select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

 9. Optional: Select the more options icon ( ) and then select Add Packs to capture the
     attributes for a configuration item (CI) record.
     To learn more, see Attribute pack for CI records.

10. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

11. Select Submit.
     The inventory record is created for the equipment type that you've selected.

 What to do next

 · If you want to establish relationships with the other network assets, enter the details in the
   related tabs. To learn more, see Related tabs in the network inventory forms.

 · To delete an inventory record, see Delete a record.

Related topics
   Model your workflow

Review and update the telecommunications equipment details
Review and update a network asset instance for your telecommunications equipment. You
define the equipment instances so that you can track and manage your network assets in the
Telecommunications Network Inventory application.

Before you begin
You create the equipment form. To learn more, see Create a telecommunications equipment
instance.

Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > All Equipment.
   The All Equipment window lists the configuration item (CI) records, which have an inventory
   category set as Equipment.

3. Select the CI record that you want to update.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    114
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 115 -->
4. On the Details tab, fill in the fields.
   The following table lists the fields that are unique to the Telco Equipment form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

Telco Equipment form

Field Description

Name  Name of this telecommunications equipment. The ServiceNow AI Platform uses this
      name to identify it in your network inventory.

Product Name of the product model that this telco equipment belongs to. Select the search
model icon ( ) and select a model. To learn more, see Create an equipment model.

5. On the Details tab, in the Configuration section, fill in the configuration information for the telco
   equipment.
   To learn more about the fields that are unique to the Configuration section in the Telco
   Equipment form, see Telco Equipment form.

To learn about the remaining configuration fields that are common to most of the Inventory
menu forms, see Commonly used network asset instance configuration fields.

6. Select Save.

The Telecommunications Network Inventory attribute fields are displayed on the Telco
Equipment form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't
appear when you reopen the CI record.

7. Add the attachments, such as the graphics or documents by selecting the attachment icon

   ( ) in the right panel.

8. Select Save.
   The related tabs appear on the form. You can view or modify the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

9. To view the Dependency Views map, select the more options icon (  ) and then select
   Dependency View.

The Dependency Views map graphically displays the CIs that support the network asset and
the relationships between the CIs.

10. View the visual representation of the selected record by selecting the Open Map button.

Note: Install CMDB Workspace 3.5.0 or a later version to get this button in your

instance. To learn more, see CMDB Workspace .

11. View the associated network inventories by selecting the brick icon ( ).

    The Infrastructure Relationships section shows all the associated network inventories grouped
    by the individual network asset instances.

What to do next
If you want to establish relationships with the other network assets, enter the details in the
related tabs. To learn more, see Related tabs in the network inventory forms.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    115
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 116 -->
Related topics

   Model your workflow

Define the equipment holders
Define the equipment holder that contains your telecommunications equipment, including
the cabinets, racks, shelves, and slots. By defining the equipment holders, you can track and
manage your network assets in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
When you create an equipment holder record, it creates a corresponding configuration item (CI)
record in the Equipment Holder extension class table. To learn more about the Equipment Holder
extension class table, see Equipment holder extension classes.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Equipment Holders.
3. Select New and then select the equipment holder type from the list.

   To learn more about the equipment holder types, see Equipment holder extension classes.

4. Select Submit.
   The inventory form is displayed for the selected equipment holder type.

5. On the Details tab, fill in the form.
   To learn more about the field information, see Equipment Holder form

6. Create the Telecommunications Network Inventory attributes for the Equipment Holder form by
   selecting Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates a reference in the CI table.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record but
         not a Telecommunications Network Inventory CI record.

 7. On the TNI CI Attributes form, fill in the fields.

     To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
     Attributes form.

 8. Select Save.

     The Telecommunications Network Inventory attribute fields are displayed on the Equipment
     Holder form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't
     appear when you reopen the CI record.

 9. Add the attachments, such as the graphics or documents, by selecting the attachment icon
     ( ) in the right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Telecommunications Network Inventory.

11. View the associated network inventories by selecting the brick icon ( ).

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    116
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 117 -->
    The Infrastructure Relationships section shows all the associated network inventories grouped
    by the individual network asset instances.

12. View the visual representation of the selected record by selecting Open Map.

         Note: Install CMDB Workspace 3.5.0 or a later version to get this button in your

          instance. To learn more, see CMDB Workspace .

13. Optional: To view the Dependency views map, select the more options icon (  ) and then
    select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

14. Optional: Select the more options icon ( ) and then select Add Packs to capture the
     attributes for a configuration item (CI) record.
     To learn more, see Attribute pack for CI records.

15. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

 What to do next

 · If you want to establish relationships with the other network assets, enter the details in the
   related tabs. To learn more, see Related tabs in the network inventory forms.

 · To delete an inventory record, see Delete a record.

Related topics
   Model your workflow

Create and maintain racks and cabinets
Create and perform subsequent actions on the racks and cabinets using the
Telecommunications Network Inventory application.

Create a rack
Create a rack to add, organize equipment, rack units, and manage all assets. You can also edit a
rack using the Telecommunications Network Inventory application.

Before you begin
 · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,

   sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager
 · You must create slots as Rack Units and create a relationship with the rack to represent the

   rack with rack units.

About this task
A rack contains rack units represented as slots having shelves, and equipment in it. When
you create a rack record, it creates a corresponding configuration item (CI) record in the Rack
[cmdb_ci_container_rack] table.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    117
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 118 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Rack.
3. Select New.
4. On the Equipment Holder form, fill in the fields.

   To learn more, see Equipment Holder form.
5. Select Set Inventory Attributes.
6. On the TNI CI Attributes form, fill in the fields.

   To learn more about the fields, see TNI CI Attributes form.
7. Select Save.

Result
A rack record is created and related tabs are created. To learn more, see Related tabs in the
network inventory forms.

What to do next
See Optimizing rack and cabinet usage to learn about the next steps.

Edit rack
Edit a rack to remove, add, or move the equipment from the selected rack. Organize and upgrade
the components within the rack using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
By editing a rack, you can see all the equipment added to the rack along with its details.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Rack.
3. Select a rack from the displayed list.

   After selecting a KPI (Key Performance Indicator), a list of the equipment contributing to that
   respective metric is displayed.
   A dashboard displays the KPIs (occupied units, weight capacity, power usage, and equipment
   types) along with the front and rear views of the rack.
4. Select Edit Rack.
   A list of all equipment, and the front view of both the edited configuration and the current
   configuration is displayed.
5. From the displayed list of equipment, search for the equipment to add in the rack by using
   either the filters or the search box.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    118
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 119 -->
        Note:

         The existing filters automatically clear on entering a search. And, applying a filter clears
            your search terms.

         The equipment list can also be sorted based on latest creation date, highest number of
            Rack Units and weight.

         The list shows all the equipment records included in the sn_ni_core.equipment system
            property, and the equipment that aren't in the rack. However, the equipment installed
            within the rack is visible in the list, but remains inactive.

         The info ( ) expands and displays the equipment details on selecting an equipment
            or the info button.

6. Perform any of the following while editing a rack.

Actions  Steps
Add
         a. Select ( ) > Add to Rack.
Move     b. Fill in the fields and select Add.

Remove      To learn more about the fields, see add
            equipment to rack table of Change request
            and change task forms.

              Note: You can drag the equipment

               from the corner to the desired rack unit.
               For non-TNI, a TNI entity with category
               as equipment is created. Changes can
               be undone or redone.

         a. Select ( ) > Move.
         b. Fill in the fields and select Move. To learn

            more about the fields, see add equipment
            to rack table of Change request and
            change task forms.

              Note:

               You can also drag the equipment from
                  the corner to the desired rack unit.

               You can undo or redo the changes

         Select ( ) > Remove.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    119
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 120 -->
Actions              Steps
Reserve a rack unit
                          Note:

                           You can undo or redo the changes
                           Multiple change tasks are created

                              on multiple removals of equipment.
                              Additionally, both removed
                              equipment and racks are added
                              under Affected CIs.

                     Select Options ( ) of the rack unit that you
                     want to reserve and select Reserve.

                          Note:

                           You can undo or redo the changes
                           On reserving a rack unit, its life-cycle

                              stage is set to Deployed and its life-
                              cycle stage status is set to Reserved.

7. Select Save.
   A change request is created with the implemented modifications under the Change Tasks
   tab.The short description of each change task is updated based on the modifications. Once
   the changes are applied, work notes of the tasks are updated and are marked as closed.

       Note:

         Select the displayed change request to see change tasks and more.

         The short description is updated as Initiated to add Equipment
            equipment_name to Rack rack_name. if the equipment is added to the
            rack. Initiated to remove Equipment equipment_name from
            Rack rack_name., if it's removed from the rack. Initiated to move the
            Equipment equipment_name within the Rack rack_name, if it's moved
            within the rack. Initiated to reserve a unit of Rack rack_name
            for Equipment equipment_name, if a rack slot is reserved.

         A change request is created only if the rack is modified.

         A change request isn't created in the following situations.

            if the same equipment is added and then removed.

            if the equipment is removed and added it back to the rack in the same slot.

            if the equipment is added and then moved it to another position in the rack, only one
               add is created with the latest rack slot details.

            if any technical error occurs. However, work notes are updated with the error details.

         A change request can contain different change tasks.

Create a cabinet
Create a cabinet to add, organize equipment, and manage all assets. You can also edit a cabinet
using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    120
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 121 -->
About this task
When you create a cabinet record, it creates a corresponding configuration item (CI) record in
the Cabinet [cmdb_ci_container_cabinet] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Cabinet.
3. Select New to create a cabinet.
4. In the displayed form, fill in the fields.

   To learn more, see Equipment Holder form.
5. Select Set Inventory Attributes.
6. In the displayed form, fill in the fields.

   To learn more about the fields, see TNI CI Attributes form.
7. Select Save.

   A cabinet record is created and related tabs are created. To learn more, see Related tabs in the
   network inventory forms

Related topics
   Edit a cabinet

Edit a cabinet
Edit a cabinet to remove, add, or move the equipment from the selected cabinet. Organize and
upgrade the components within the cabinet using the Telecommunications Network Inventory
application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure

1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Cabinet.

3. Select a cabinet from the displayed list.
   A dashboard displays all equipment types added under the cabinet along with the cabinet
   view and information of the selected equipment.

4. Select Edit Cabinet.
   Instead of the equipment types and cabinet view, a list of all equipment, and the front view of
   both edit configuration and current configuration is displayed.

5. From the displayed list of equipment, search for the equipment to add in a cabinet by using
   either the filters or the search box.

   The existing filters automatically clear on entering a search. And, applying a filter clears your
      search terms.

   The equipment list can also be sorted based on latest creation date, highest number of Rack
      Units, and weight.

   The list shows all the equipment records included in the sn_ni_core.equipment system
      property, and the equipment that aren't in the cabinet.

 The info ( ) expands and displays the equipment details on selecting an equipment or the
   info button.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    121
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 122 -->
6. Perform any of the following actions while editing a cabinet.

Actions              Steps
Add
                     a. Select ( ) > Add to Cabinet.
Move                 b. Fill in the fields and select Add.

Remove                  To learn more about the fields, see add
Reserve a rack unit     equipment to rack/cabinet table of Change
                        request and change task forms.

                        You can also drag the equipment from the
                        corner to the desired rack unit.

                     a. Select ( ) > Move.
                     b. Fill in the fields and select Move.

                        To learn more about the fields, see add
                        equipment to rack/cabinet table of Change
                        request and change task forms.

                        You can also drag the equipment from the
                        corner to the desired rack unit.

                     Select ( ) > Remove.

                     Select Options ( ) of the rack unit that you
                     want to reserve and select Reserve.

7. Select Save.
   A change request is created with the implemented modifications under the Change Tasks tab.
   Once the changes are applied, work notes of the tasks are updated and are marked as closed.

   Select the displayed change request to see change tasks and more.

       Note: A change request is created only if the cabinet is modified.

What to do next
To perform further actions, see Optimizing rack and cabinet usage.

Optimizing rack and cabinet usage
Optimize your rack's capacity by following these guidelines for adding, configuring, and
calculating other components using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Rack.
3. Select a rack from the displayed list.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    122
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 123 -->
4. From the rack or cabinet view, perform one of the following actions.

Action on a rack        Steps
Actions
Edit rack               To learn more, see Edit rack.
Edit cabinet
Refresh rack equipment  To learn more, see Edit a cabinet.

Create equipment        Select refresh ( ) icon to see updated
                        equipment of the rack if any changes are
Save                    performed.
Add packs
                        Select ( ) > Create equipment. In the
Calculate Capacity      displayed form, fill in the fields. To learn more,
Decommission            see Create equipment from rack view.

Delete                  Save the rack or cabinet.

                        Select the more options icon ( ) and then
                        select Add Packs to capture the attributes
                        for a configuration item (CI) record. To learn
                        more, see Attribute pack for CI records.

                        Select and redirect to Capacity Metrics tab
                        to see the updated capacity metrics.

                        Select ( ) > Decommission to
                        decommission this rack. To learn more, see
                        Decommission an inventory record.

                        Select ( ) > Delete to delete this rack or
                        cabinet. On deleting this rack or cabinet, all
                        related records are deleted.

Related topics

   Edit rack

Create a slot for equipment
Create a slot to provide a designated space for the equipment to maintain, update and access
all types of equipment. You can route cables using the Telecommunications Network Inventory
application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
Slots help a rack to distribute the weight of the equipment across the rack evenly. On creating a
slot, a record is created in the Slot [cmdb_ci_container_slot] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Select the list icon ( ), and then go to Inventory > Slot.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    123
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 124 -->
3. Create a slot by selecting New.

4. On the Equipment Holder form, fill in the fields.
   To learn more, see Equipment Holder form.

5. Select Set Inventory Attributes.

6. On the TNI CI Attributes form, fill in the fields.
   To learn more about the fields, see TNI CI Attributes form.

7. Select Save.

Define the card details
Review, update, or create a network asset instance for a card that you use in your
telecommunications equipment. You define these attributes so that you can track and manage
your network assets in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
The equipment ports can be physical or logical (virtual). The network interface data includes the
port availability, bandwidths, slots, software version, MAC address, firmware manufacturer, and
version. When you create a card record, it creates a corresponding configuration item (CI) record
in the Card [cmdb_ci_ni_interface_card] table. To learn more, see Data model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Cards.
3. Select New.
4. On the Details tab, in the Card section, fill in the general information for the card.

   Card form describes fields that are unique to the Card form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

5. On the Details tab, in the Configuration section, fill in the configuration information for the card.
   The following table lists the fields that are unique to the Configuration section.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

Card form - Configuration

Field     Description
          Version of the firmware that is used in this network asset.
Software
Version

MAC       Assigned Media Access Control (MAC) address for the network asset. It's the
Address   network address that is used in communications within a network segment.

Firmware
manufacturer Manufacturer of the firmware.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    124
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 125 -->
Field     Description
          Version of the firmware that is used in this network asset.
Firmware
version

6. To create the Telecommunications Network Inventory attributes for the Card form, click Set
   Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates a reference in the CI table.

        Note:

         If you click Save without clicking Set Inventory Attributes, it creates a CI record but not a
         Telecommunications Network Inventory CI record.

7. On the TNI CI Attributes form, fill in the fields.

   To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
   Attributes form.

8. Click Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Card form
   after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear when
   you reopen the CI record.

 9. To add the attachments, such as graphics or documents, click the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

11. Optional: To view the Dependency views map, select the more options icon (  ) and then
    select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

12. To view the visual representation of the selected record, select Open Map button.

Note: Install CMDB Workspace 3.5.0 or greater version to get this button in your

instance. To learn more, see CMDB Workspace .

13. Optional: Select the more options icon ( ) and then select Add Packs to capture the
     attributes for a configuration item (CI) record.
     To learn more, see Attribute pack for CI records.

14. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

15. To view the associated network inventories, select the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    125
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 126 -->
What to do next

 · If you want to establish relationships with the other network assets, enter the details in the
   related tabs. To learn more, see Related tabs in the network inventory forms.

 · To delete an inventory record, see Delete a record.

Define the network interface details
Review, update, or create a network instance for a network interface that controls the signaling
and management functions between your networks. You define these attributes so that you
can track and manage your network instances in the Telecommunications Network Inventory
application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
Network interfaces are used for the interconnection of signaling, or for the Internet Protocol
(IP) or ATM networks. When you create a network interface record, it creates a corresponding
configuration item (CI) record in the Network Interface [cmdb_ci_interface] table. To learn more,
see Data model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. From the list icon ( , go to Inventory > Network Interfaces.
3. Select New.
4. On the Details tab, in the Network Interface section, fill in the general information for the

   network interface.
   The fields in the following table are unique to the Network Interface form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

     Network Interface form

     Field Description
     Name Name of the network interface. The ServiceNow AI Platform uses this name to identify

               it in your network inventory.

5. On the Details tab, in the Configuration section, fill in the configuration information for the
   network interface.
   The following table lists the fields that are unique to the Configuration section.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

Network Interface form - Configuration

Field      Description
Equipment  Device that provides the technical functionality to a network.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    126
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 127 -->
Field       Description

Management

option      Attribute that indicates who or what is responsible for managing this endpoint.

Connector   Type of physical cable connector that is used for the connection of the cable
type        to the network interface. Select one of the following options:

             BNC (Bayonet Neill-Concelman) - Type of miniature radio frequency
               connector used for coaxial cables.

             SC (Square Connector)- Square, common type of Fiber optic connector
               used as push-pull latch, to align the optical fibers for efficient light

               transmission.

             LC (Lucent Connector)- Another version of the SC connector designed for
               high-density applications.

             ST (Straight Trip)- a type of fiber optic connector commonly used for
               connecting optical fibers in telecommunications and data communication

               applications.

             Wire Wrap -A technique for creating electrical connections on circuit
               boards.

             RJ45 - Also known as 8P8C (8 Position 8 Contact) connector, is widely used
               type of connector for wired Ethernet networks.

Port Type

            Types of port on the network interface. Select one of the following options:

             Ethernet- Physical connection and speed capabilities of a device for
               connecting to a network. It involves cable type, speed, and standard.

             Optical- specific design of a connector used in an optical transceiver. There
               are various types of optical interfaces, each with different shapes and data

               speed capabilities.

             Serial- A serial interface transmits data one bit at a time, in contrast to a
               parallel interface that sends multiple bits simultaneously.

Directionality
                    Type of the connections between the nodes of a network. Select one of the

                    following options:

             Tx- TX stands for Transmit. It refers to the direction in which data is being
               sent from a device.

             Rx- RX signifies the endpoint that receives data. It's the input side for
               receiving information transmitted from another source, often labeled as TX

               (Transmit).

             Tx/Rx

             Bus- Bus directionality refers to the flow of data on a communication
               channel.

             Broadcast- Broadcast directionality refers to the nature of signal
               transmission and reception in a broadcast system.

Port        Measured bandwidth for the ports on this network interface. Select the search
Bandwidth   icon ( ) and select a bandwidth.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    127
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 128 -->
Field       Description
Endpoint
role        Endpoint role that is associated with the service endpoint for this network
            asset. An endpoint role is the function that is served by the endpoint of the
Virtual     service that you're providing. Select one of the following options:
             ROOT or LEAF endpoint role, as defined by the Metro Ethernet Forum

               (MEF).
             --None-- for no assigned endpoint role.

            Option to verify whether the network interface is physical or virtual.

Cabled           Note: If you select Virtual, then the Connector Type field doesn't
Wavelength
                  appear.

            Option to verify if the interface is pre-cabled or not.

            Optical wavelength of a port.

6. To create the Telecommunications Network Inventory attributes for the Network Interface form,
   click Set Inventory Attributes.
   When you click the Set Inventory Attributes button, it creates the TNI CI Attributes record in
   the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
   makes a relationship with the CI record.

        Note:

         If you click Save without clicking Set Inventory Attributes, it creates a CI record but
         not a Telecommunications Network Inventory CI record. In the network inventory
         workspace, the Set Inventory Attributes is visible only for the Telecommunications
         Network Inventory roles.

7. On the TNI CI Attributes form, fill in the fields.

   To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
   Attributes form.

8. Click Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Network
   Interface form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't
   appear when you reopen the CI record.

9. To add the attachments, such as graphics or documents, click the attachment icon ( ) in the
   right panel.

10. Optional: To view the Dependency views map, select the more options icon (  ) and then
     select Dependency View.

(Optional) The Dependency Views map graphically displays the CIs that support the specific
network asset and the relationships between the CIs.

11. Optional: Select the more options icon ( ) and then select Add Packs to capture the
    attributes for a configuration item (CI) record.
    To learn more, see Attribute pack for CI records.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    128
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 129 -->
12. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

13. Click Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

14. To view the associated network inventories, click the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network instances.

 What to do next

   · If you want to establish relationships with the other network assets, enter the details in the
     related tabs. To learn more, see Related tabs in the network inventory forms.

   · To delete an inventory record, see Delete a record.

  Related topics
     Model your workflow

  Define the cable details
  Review, update, or create a network asset instance for the cable connecting the various sites
  within your network. You define these attributes so that you can track and manage your network
  assets in the Telecommunications Network Inventory application.

 Before you begin
  Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
  Optical fiber cables are installed between sites with open endpoints, indicating that the cables
  don't terminate directly on equipment. The cables are pulled through utility holes and spliced
  together to extend the connection between sites, depending on the distance requirements.
  When you create a cable record, it creates a corresponding configuration item (CI) record in the
  Fiber Optical Cable [cmdb_ci_fiber_optical_cable] table. To learn more, see Data model.

 Procedure
  1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Inventory > Cables.
 3. Select New and then select the Optical Fiber Cable from the list.
 4. On the Details tab, fill in the fields.

     To learn more about the fields in the Cable form, see Cable form.
 5. To create the Telecommunications Network Inventory attributes for the Cable form, select Set

     Inventory Attributes.
     When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
     in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
     makes a relationship with the CI record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    129
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 130 -->
Note:

If you select Save without selecting Set Inventory Attributes, it creates a CI record
but not a Telecommunications Network Inventory CI record. In the network inventory
workspace, the Set Inventory Attributes is visible only for the Telecommunications
Network Inventory roles.

6. On the TNI CI Attributes form, fill in the fields.

   To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
   Attributes form.

7. Select Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Cable form
   after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear when
   you reopen the CI record.

8. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
   right panel.

9. Select Save.
   The related tabs appear on the form. You can view or modify the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

10. To view the visual representation of the selected record, select the more options icon (  ) and
     then select Open Map.

Note: Install CMDB Workspace 3.5.0 or greater version to get this button in your

instance. To learn more, see CMDB Workspace .

11. Optional: Capture the attributes for a configuration item (CI) record by selecting Add Packs.
    To learn more, see Attribute pack for CI records.

12. To view the associated network inventories, select the brick icon ( ).

    The Infrastructure Relationships section shows all the associated network inventories grouped
    by the individual network asset instances.

 Related topics
    Model your workflow

 Define the strand details
 Review, update, or create a network asset instance for a strand in the cable. You define these
 attributes so that you can track and manage your network assets in the Telecommunications
 Network Inventory application.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 A strand refers to an individual conductor or wire within the cable. Cables are composed of
 multiple strands twisted or grouped. When you create a strand record, it creates a corresponding
 configuration item (CI) record in the Fiber Strand [cmdb_ci_fiber_strand] table. To learn more, see
 Data model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    130
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 131 -->
 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Inventory > Strands.
 3. Select New and then select the Optical Fiber Strand from the list.
 4. On the Details tab, fill in the fields.

     To learn more about the fields, see Strand form.
 5. Create the Telecommunications Network Inventory attributes for the Strand form by selecting

     Set Inventory Attributes.
     When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
     in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
     makes a relationship with the CI record.

         Note:

           If you select Save without selecting Set Inventory Attributes, it creates a CI record
           but not a Telecommunications Network Inventory CI record. In the network inventory
           workspace, the Set Inventory Attributes is visible only for the Telecommunications
           Network Inventory roles.

 6. On the TNI CI Attributes form, fill in the fields.

     To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
     Attributes form.

 7. Select Save.

     The Telecommunications Network Inventory attribute fields are displayed on the Strand form
     after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear when
     you reopen the CI record.

 8. Add the attachments, such as graphics or documents, by selecting the attachment icon ( ) in
     the right panel.

 9. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

10. View the visual representation of the selected record by selecting the Open Map button.

         Note: Install CMDB Workspace 3.5.0 or greater version to get this button in your

           instance. To learn more, see CMDB Workspace .

11. Optional: Capture the attributes for a configuration item (CI) record by selecting Add Packs.
     To learn more, see Attribute pack for CI records.

12. View the associated network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

 Related topics
     Model your workflow

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    131
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 132 -->
Define the physical connection details
Review update, or create a network asset instance for the physical port connection on the
interface cards in your networks. You define these attributes so that you can track and manage
your network assets in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
The physical connection data includes the link types, bandwidths, ports, sites, and topologies.
When you create a physical connection record, it creates a corresponding configuration item
(CI) record in the Physical Connection [cmdb_ci_ni_physical_link] table. To learn more, see Data
model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > Physical Connections.

3. Select New.

4. On the Details tab, in the Physical connection section, fill in the general information for the
   physical connection.
   To learn more about the fields that are unique to the Physical Connection form, see Physical
   Connection form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

   If you selected Optical Fiber Cable in the Product Model field, the Cable parameters form
   appears so that you can enter some information about the cable parameters. To learn more
   about the fields, see Cable Parameters form.

5. On the Details tab, in the Configuration section, fill in the configuration information for the
   physical connection.
   To learn more about the fields that are unique to the Configuration section, see Physical
   Connection form - Configuration.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

6. To create the Telecommunications Network Inventory attributes for the Physical Connection
   form, select Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
   in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
   makes a relationship with the CI record.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record
         but not a Telecommunications Network Inventory CI record. In the network inventory
         workspace, the Set Inventory Attributes is visible only for the Telecommunications
         Network Inventory roles.

7. On the TNI CI Attributes form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    132
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 133 -->
   To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
   Attributes form.

8. Select Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Physical
   Connection form after you save the TNI CI Attributes form. The Set Inventory Attributes
   doesn't appear when you reopen the CI record.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

11. To view the visual representation of the selected record, select the more options icon (  ) and
    then select Open Map.

Note: Install CMDB Workspace 3.5.0 or greater version to get this button in your

instance. To learn more, see CMDB Workspace .

12. Optional: Select the more options icon ( ) and then select Add Packs to capture the
     attributes for a configuration item (CI) record.
     To learn more, see Attribute pack for CI records.

13. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

14. To view the associated network inventories, select the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

What to do next

· If you want to establish relationships with the other network assets, enter the details in the
 related tabs. To learn more, see Related tabs in the network inventory forms.

· To delete an inventory record, see Delete a record.

Related topics
   Model your workflow

Define the logical connection details
Review, update, or create a network asset instance for a logical or virtual port connection on
your network interface cards. You define these attributes so that you can track and manage your
network assets in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
A logical connection typically represents the multiple physical connections on an interface card.
The logical connection data includes the link types, bandwidths, port, and site.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    133
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 134 -->
When you create a logical connection record, it creates a corresponding configuration item (CI)
record in the Logical Connection [cmdb_ci_ni_logical_path] table. To learn more, see Data model.

The Overview tab in the logical connection record displays a consolidated detail of the
logical connection, its connection elements, and A and Z ends. You can customize the
connection elements table by creating a custom implementation for the extension point
sn_ni_adv.TNIConnectionOverview. Also, you can decide the number of rows in this
table by setting the system property sn_ni_adv.clr_max_rows. The default value for this
property is 500.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then select Inventory > Logical Connections.

        Note: You can also access the logical connection list by selecting the Logical

         connection count in the Network entities. Logical connection count is under the
         categories widget of the Network Inventory Workspace landing page. To learn more, see
         Reviewing and updating your network inventory with the Network Inventory Workspace.

3. Select New.

4. On the Details tab, in the Logical Connection section, fill in the general information for the
   logical connection.
   To learn more about the fields that are unique to the Logical Connection form, see Logical
   Connection form.

   To learn about the remaining identification fields that are common to most of the Inventory
   and Inventory number allocation menu forms, see Commonly used network asset instance
   identification fields.

5. On the Details tab, in the Configuration section, fill in the configuration information for the
   logical connection.
   To learn more about the fields that are unique to the Configuration section, see Logical
   Connection form - Configuration.

   To learn about the remaining configuration fields that are common to most of the Inventory
   menu forms, see Commonly used network asset instance configuration fields.

6. To create the Telecommunications Network Inventory attributes for the Logical Connection
   form, select Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
   in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
   makes a relationship with the CI record.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record
         but not a Telecommunications Network Inventory CI record. In the network inventory
         workspace, the Set Inventory Attributes is visible only for the Telecommunications
         Network Inventory roles.

7. On the TNI CI Attributes form, fill in the fields.

To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
Attributes form.

          8. Select Save.                                                                                                                                                       134

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 135 -->
The Telecommunications Network Inventory attribute fields are displayed on the Logical
Connection form after you save the TNI CI Attributes form. The Set Inventory Attributes
doesn't appear when you reopen the CI record.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
     right panel.

10. Select Save.
     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

11. To view the visual representation of the selected record, select the more options icon (  ) and
    then select Open Map.

Note: Install CMDB Workspace 3.5.0 or greater version to get this button in your

instance. To learn more, see CMDB Workspace .

12. Optional: Select the more options icon ( ) and then select Add Packs to capture the
     attributes for a configuration item (CI) record.
     To learn more, see Attribute pack for CI records.

13. Optional: Select the more options icon ( ) and then select Decommission to decommission
     a CI record.
     To learn more, see Decommission an inventory record.

14. To view the associated network inventories, select the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

 What to do next

   · If you want to establish relationships with the other network assets, enter the details in the
     related tabs. To learn more, see Related tabs in the network inventory forms.

   · To delete an inventory record, see Delete a record.

  Related topics
     Model your workflow

  Define the power circuit details
  Define the power circuit record to represent the electrical pathway that delivers power in a
  datacenter. By defining the power circuit records, you can track and manage your network assets
  in the Telecommunications Network Inventory application.

 Before you begin
  Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
  When you create a power circuit connection record, it creates a corresponding configuration item
  (CI) record in the circuit [cmdb_ci_circuit] table. To learn more, see Data model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    135
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 136 -->
 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then select Inventory > Power Circuits.
 3. Select New.
 4. On the Details tab, in the Circuit section, fill in the fields.

     To learn more about the fields, see Power circuit form.
 5. On the Details tab, in the Configuration section, fill in the configuration information for the

     power circuit.
     To learn about the configuration fields, see Commonly used network asset instance
     configuration fields.
 6. To create the Telecommunications Network Inventory attributes for the Power Circuit form,
     select Set Inventory Attributes.
     When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
     in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
     makes a relationship with the CI record.

         Note:

           If you select Save without selecting Set Inventory Attributes, it creates a CI record
           but not a Telecommunications Network Inventory CI record. In the network inventory
           workspace, the Set Inventory Attributes is visible only for the Telecommunications
           Network Inventory roles.

 7. On the TNI CI Attributes form, fill in the fields.

     To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
     Attributes form.

 8. Select Save.

     The Telecommunications Network Inventory attribute fields are displayed on the Power Circuit
     form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't appear
     when you reopen the CI record.

 9. To add the attachments, such as graphics or documents, select the attachment icon ( ).
10. Select Save.

     The related tabs appear on the form. You can view or modify the related tab information. To
     learn more about the related tabs, see Related tabs in the network inventory forms.

11. To view the associated network inventories, select the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories grouped
     by the individual network asset instances.

 What to do next
 If you want to establish relationships with the other network assets, enter the details in the
 related tabs. To learn more, see Related tabs in the network inventory forms.

 Related topics
     Data model

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    136
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 137 -->
Manually create a network topology

Create a topology record for the network that you want to visualize in the organization of its
network elements. By creating the network topology, you can visualize how the network elements
are organized and connected to one another in the Telecommunications Network Inventory
application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
When you create a network topology record, it creates a corresponding configuration item (CI)
record in the Network Topology [cmdb_ci_network_topology] table. And the root nodes are
stored in the Topology Root Node [cmdb_network_topology_root_node] table. To learn more
about the topology data model, see Data model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. From the list icon ( ), go to Inventory > Network Topology.
3. Select New.
4. On the Details tab, fill in the form.

   To learn about the fields in the Network Topology form, see Network topology form.

5. On the Network Topology Root Nodes tab, select New and fill in the fields to add the root
   node.

Network Topology Root Nodes form

Field             Description
Root Node         Root node for the topology.
Network Topology  Network Topology that you have created.

6. Select Save.
7. On the Details tab, select Submit.

What to do next
You can view the topology in the Network Viewer window. To learn more, see Viewing a network
topology.

Related topics
   Network topology

Define your inventory groups
An inventory group is a collection of CIs that lets you apply CI actions collectively to all the CIs in
Telecommunications Network Inventory application. By defining inventory groups, you can group
different CIs, and apply actions to all CIs.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

     Note: An inventory agent and inventory admin only can review, create, and update an

      inventory group. Also, only an inventory admin can delete a group.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    137
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 138 -->
About this task
An inventory group represents a group of configuration items(CIs). In a group, you can add any CI
but you cannot be duplicate a CI.

When you create an inventory group, it creates a group in the inventory group[cmdb_group]
table. To learn more, see Data model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Click the list icon ( ), and then click Inventory > Inventory Groups
3. Click New.
4. On the Details tab, in the CMDB Group section, fill the form.

CMDB Group   Description
Field        Name of the inventory group
Group Name   Select one of the following group type
Group type    CMDB Workspace
              Default
Description   Health
Category      Network Inventory Group
             Describe your inventory group
             Select one of the following category
              Segment
              Section
              Route
              Others

5. To add the attachments, such as graphics or documents, click the attachment icon ( ) in the
   right panel.

6. Click Save.
   The related tabs appear on the form. You can view or modify the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

        Note: To see the last modified or updated information, see the list view of the Inventory

         Groups.

What to do next
If you want to establish relationships with the other network assets, enter the details in the
related tabs. To learn more, see Related tabs in the network inventory forms.

Decommission an inventory record
Decommission an inventory record that you want to remove from Telecommunications Network
Inventory.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    138
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 139 -->
Before you begin
Role required: sn_ni_core.inventory_admin, and sn_ni_core.inventory_template_manager

About this task
When you decommission a CI record, all the related tables of the CI are removed and the Life
Cycle Stage, Life Cycle Stage Status of this CI changes.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory.
3. Open the inventory list and select an inventory CI record that you want to decommission.

4. Select the more options icon ( ) and then select Decommission.
   All the related tables are removed. Also, the Life Cycle Stage field is set to End of Life and the
   Life Cycle Stage Status field is set to Retired if the Asset is not used by the CI. Otherwise,
   the Life Cycle Stage field is set to Inventory and the Life Cycle Stage Status field is set to
   Available.

        Note: Decommission fails if the selected CI has any child CIs as follows.

Inventory name               Relationship that fails decommission
Network site
Interface card               Site, equipment, or equipment holder
Network interface
Physical/Logical connection  Interface used by any physical or logical
Equipment holder             connection

Equipment                    Interface linked with physical or logical
                             connection

                             Any connection that is used by another
                             connection as a connection element.

                             Rack linked with an equipment or shelf,
                             a shelf linked to an equipment, slot, or
                             subslot linked to a card.

                             Physical or logical interface linked to a
                             connection or to a physical interface that
                             has a logical connection.

Delete a record

Delete an inventory record that is no longer relevant or needed in the Telecommunications
Network Inventory application.

Before you begin
Role required: admin

About this task
When you delete a configuration item (CI) record, the child elements associated with the CI won't
be deleted. You must manually delete them.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    139
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 140 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Click the list icon ( )
3. Select a category from the displayed list.
4. Select the CI record that you want to delete.

5. Click the more options icon ( ) and then select Delete.
6. Select Yes to confirm the deletion

Result
The CI record is deleted and no longer available in the Telecommunications Network Inventory
application.

Inventory number allocation

The inventory number allocation in the Telecommunications Network Inventory application
enables you to manage LAG, VLAN, IP addresses, and telephone numbers. You can review,
create, update, or delete the different LAG, VLAN, IP address, and telephone number records.

To learn more, see Create IP address allocation and Create a telephone infrastructure.

Define your inventory numbering
Define the numbering for your virtual local area network (VLAN) or link aggregation group (LAG)
connections in the Telecommunications Network Inventory application. By defining these
inventory numbers, you can configure your network assets to activate a network connection.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
The numbering that you define in this process creates VLAN and LAG number ranges, allowing
for the assignment of numbers from those ranges to network connections and equipment ports.
When you provision a network connection over an Ethernet network interface to fulfill a customer
order, you create a VLAN interface to support your network topology. You must assign a VLAN
number from 1 through 4096 for this interface. You use this VLAN number to create an interface
name so that you can activate the interface on the network.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Number Allocation > Inventory Numbers.
3. Select New.
4. On the Details tab, fill in the general information for inventory numbering.

   To learn more about the fields that are unique to the Inventory Numbers form, see Inventory
   Numbers form.

5. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
   right panel.

6. Select Save.
   The related tabs appear on the form. You can view or modify the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    140
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 141 -->
What to do next
To update or delete an inventory number record, see Update or delete a record of an inventory
number allocation.

Create IP address allocation
Create IP address allocation by creating, reviewing, updating, and deleting an IP pool, IP network
subnet, allocated IP address, and IP address records. You can manage all your IP addresses by
using the Telecommunications Network Inventory application.

Create an IP pool record
Create an IP pool record so that you can organize and categorize all your sequential IP
addresses within a network. You can create an IP pool record by using the Telecommunications
Network Inventory application.

Before you begin
 · Get access to the IP subnetwork by ensuring that you've installed all advanced plugins.
 · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
You can review, create, or delete an IP pool in your network.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Number Allocation > IP Pools.
3. Select New
4. On the Details tab, in the IP address section, fill in the fields.

IP Network Subnet form  Description
Field                   User-friendly name for this IP pool.
Name

   To learn about the other fields, see Inventory number allocation fields.

5. Create the Telecommunications Network Inventory attributes for this IP pool form by selecting
   the Set Inventory Attributes button.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record in
   the CI table and in the Telecommunications Network Inventory CI Attributes tables and makes
   a relationship with the CI record.

        Note:

 If you select Save without selecting Set Inventory Attributes, it creates a CI record
   but not a Telecommunications Network Inventory CI record. In the network inventory
   workspace, the Set Inventory Attributes is visible only for the Telecommunications
   Network Inventory roles.

 In the TNI CI attributes form, by default, the name is fetched from the Name field and
   the Inventory Category is set as IP Address.

6. Add packs to this service by selecting Add Packs.

             To learn more about the packs, see Attribute packs.                                                                                                                141

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 142 -->
 7. Add the attachments, such as the graphics or documents, by selecting the attachment icon
     ( ) in the right panel.

 8. Select Save.
     The related tabs appear on the form. To learn more, see Related tabs in the network inventory
     forms.

 9. View the hierarchy or flow chart of the created IP pool by selecting the Dependency View
     button.

10. View the related network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the related network inventories that are
     grouped by the individual network instance.

 What to do next
 You can review and update the fields, create a related tab record, or delete a record. To learn
 more, see Update or delete a record of an inventory number allocation.

 Create an IP network subnet record
 Define an IP network subnet so that you can categorize and manage all the child IP network
 subnets in your network by using the Telecommunications Network Inventory application. You
 can also review, create, or delete an IP subnetwork.

 Before you begin
   · Get access to the IP subnetwork by ensuring that you've installed all advanced plugins.
   · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 When you create a IP network subnet record, it creates a corresponding configuration item (CI)
 record in the IP Network Subnet [cmdb_ci_ip_network_subnet] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > IP Network Subnets.
3. Select New
4. On the Details tab, in the IP Network Subnet section, fill in the fields.

IP Network Subnet form  Description
Field                   User-friendly name for this IP network subnet.
Name

   To learn about the other fields, see Inventory number allocation fields.

5. Create the Telecommunications Network Inventory attributes for this IP network subnet form by
   selecting Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record in
   the CI table and in the Telecommunications Network Inventory CI Attributes tables and makes
   a relationship with the CI record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    142
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 143 -->
         Note:

           If you select Save without selecting Set Inventory Attributes, it creates a CI record
              but not a Telecommunications Network Inventory CI record. In the network inventory
              workspace, the Set Inventory Attributes is visible only for the Telecommunications
              Network Inventory roles.

           In the TNI CI attributes form, by default, the name is fetched from the Name field and
              the Inventory Category is set as IP Address.

 6. Add packs to this service by selecting Add Packs.

     To learn more about the packs, see Attribute packs.

 7. Add the attachments, such as the graphics or documents, by selecting the attachment icon
     ( ) in the right panel.

 8. Select Save.
 9. View the hierarchy or flow chart of the created IP pool by selecting the Dependency View

     button.

10. View the associated network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories that are
     grouped by the individual network instances.

 What to do next
 You can review and update the fields, create a related tab record, or delete a record. To learn
 more, see Update or delete a record of an inventory number allocation.

 Create an allocated IP address record
 Define and categorize all IP addresses that are ready for allocation by using the
 Telecommunications Network Inventory application. You can review, create, update, or delete an
 allocated IP address in your network.

 Before you begin
   · Get access to an IP subnetwork by ensuring that you install all advanced plugins.
   · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 To understand how the IP pools, IP subnetworks, and allocated IP addresses are related to each
 other, see IP address inventory management data model.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Inventory > Allocated IP Addresses.
 3. Select New.
 4. On the Details tab, in the IP address section, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    143
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 144 -->
Allocated IP Address form  Description
Field
Name                       User-friendly name for this IP address.
IP Address
Is Broadcast               IPv4 or IPv6 IP address.

Is DHCP                    Value that you set to true if this IP address is a
                           broadcast type IP address.
Is DNS
                           Value that you set to true to override the Grid
                           Level DHCP option with this option at the
                           network level.

                           Value that you set to true if a Domain Name
                           System (DNS) name is provided for this IP
                           address.

5. Create the Telecommunications Network Inventory attributes for this IP pool form by selecting
   the Set Inventory Attributes button.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record in
   the CI table and the Telecommunications Network Inventory CI Attributes tables and makes a
   relationship with the CI record.

        Note:

 If you select Save without selecting the Set Inventory Attributes button, it creates
   a CI record but not a Telecommunications Network Inventory CI record. In the
   network inventory workspace, the Set Inventory Attributes is visible only for the
   Telecommunications Network Inventory roles.

 In the TNI CI attributes form, by default, the name is fetched from the Name field and
   the Inventory Category is set as IP Address.

 6. Add packs to this service by selecting Add Packs.
     To learn more about the packs, see Attribute packs.

 7. Add the attachments, such as the graphics or documents, by selecting the attachment icon
     ( ) in the right panel.

 8. Select Save.
 9. View the hierarchy or flow chart of the created IP pool by selecting the Dependency View

     button.

10. View the associated network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the associated network inventories that are
     grouped by the individual network instances.

 What to do next
 You can review and update the fields, create a related tab record, or delete a record. To learn
 more, see Update or delete a record of an inventory number allocation.

 Create IP addresses
 Define the attributes for IP addresses so that you can track and manage them in the
 Telecommunications Network Inventory application. You can also review, update, or create IP
 addresses.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    144
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 145 -->
Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
     Note: An inventory agent can create, review, update, and delete an IP address.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory > IP Addresses.
3. Select New
4. On the Details tab, in the IP address section, fill in the general information.

IP Address form              Description
Field
IP Address                   Name of this network function that you use
                             in the ServiceNow AI Platform to identify it in
IP Version                   your network inventory.

Netmask                      Name of the database. Select one from the
Owned by Configuration item  following:

                              IPv4 - Fourth version of the Internet
                                Protocol,

                              IPv6 - Sixth version of the Internet Protocol

                             Unique ID of the network instance.

                             Type of network function, Virtual Network
                             Function (VNF), or Cloud Native Function
                             (CNF).

5. To create the Telecommunications Network Inventory attributes for this IP pool form, select the
   Set Inventory Attributes button.
   When you select the Set Inventory Attributes button, it creates the TNI CI Attributes record
   in the CI table as well as the Telecommunications Network Inventory CI Attributes tables and
   makes a relationship with the CI record.

        Note:

 If you select Save without selecting Set Inventory Attributes, it creates a CI record
   but not a Telecommunications Network Inventory CI record. In the network inventory
   workspace, the Set Inventory Attributes is visible only for the Telecommunications
   Network Inventory roles.

 In the TNI CI attributes form, by default, the name is fetched from the Name field and
   the Inventory Category is set as IP Address.

6. Select Add Packs to add packs to this service.
   To learn more about packs, see Attribute packs.

7. To add the attachments, such as graphics or documents, select the attachment icon ( ) in the
   right panel.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    145
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 146 -->
8. Select Save.
   The related tabs appear on the form. You can view or modify the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

9. To view the associated network inventories, select the brick icon ( ).

   The Infrastructure Relationships section shows all the associated network inventories that are
   grouped by the individual network instances.

What to do next
You can review, or update the fields, create a related tab record, or can delete a record. To learn
more, see Update or delete a record of an inventory number allocation.

Create a telephone infrastructure
Create telephone blocks and number allocations, and assign telephone numbers by using the
telephone infrastructure provided by the Telecommunications Network Inventory application.

Create a telephone block
Create a telephone block to organize and categorize all sequential telephone numbers that are
within an area by using the Telecommunications Network Inventory application.

Before you begin
 · Ensure that the Telecommunications Network Inventory application includes all the required

   components of your telephone number. To learn more, see Create telephone number
   components.
 · Role required: sn_inv_num_mgmt.inventory_number_manager

About this task
You can create multiple telephone number allocations and telephone numbers for one
telephone block. Also, you can also review, create, update, or delete a telephone block.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon (  ), and then go to Inventory Number Allocation > Telephone Blocks.
3. Select New.

Note: You can create and allocate telephone numbers without using a block for the

port-in numbers or for the numbers that don't want a block.

4. On the form, fill in the fields.

Telephone Number Block                   Description
Fields
Create telephone allocation and numbers  By default, the field is set as true. The result
                                         is that the individual telephone numbers
                                         and telephone number allocations are
                                         created using the provided from and to
                                         number. When you clear this check box, only
                                         a telephone block is created.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    146
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 147 -->
Fields                       Description

From number                       Note:
To number
                                  a. The created number of allocations
                                      and the telephone numbers are
                                      shown as available to allocate.

                                  b. By default, the status of the created
                                      numbers is set as new.

                             Starting number of the series from where you
                             want to start adding numbers to this block.

                             Last number of the series where you want to
                             stop adding numbers to this block.

                                  Note: The same or overlapping series

                                   of numbers aren't enabled to include in
                                   a block. For example, if a block 100-200
                                   exists, then the new block of 150-200 or
                                   100-200 can't be enabled.

   To learn about the other fields, see Inventory number allocation fields.

5. Add the attachments, such as the graphics or documents, by selecting the attachment icon
   ( ) in the right panel.

6. Select Submit.
   Depending on the details that you provided, a telephone block is created.

7. On the Details tab, under telephone block form, fill in the additional fields.

Telephone number block form  Description
Field
Quantity                     Number of telephone numbers that are in the
                             selected telephone number blocks.

                                  Note: This field is auto-populated after

                                   creating a telephone block. However,
                                   you can always update this field as
                                   required.

Available quantity           Number of telephone numbers that aren't
                             assigned or available.

                                  Note: This field is auto-populated after

                                   creating a telephone block. However,
                                   you can always update this field as
                                   required.

To learn about the remaining identification fields that are common to most of the Inventory
and Inventory number allocation menu forms, see Commonly used network asset instance
identification fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    147
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 148 -->
 8. Select Save.
 9. On the related tabs, view or update the related tab information.

     To learn more about the related tabs, see Related tabs in the network inventory forms.

10. View the related network inventories by selecting the brick icon ( ).

     The Infrastructure Relationships section shows all the related network inventories that are
     grouped by the network instances.

 What to do next
 You can review and update the fields, create a related tab record, or delete a record. To learn
 more, see Update or delete a record of an inventory number allocation.

 Create a telephone number allocation
 Create a telephone number allocation so that you can group a set of telephone numbers
 and apply the required conditions to it by using the Telecommunications Network Inventory
 application. You can also review, create, update, or delete a telephone number allocation.

 Before you begin
   · Ensure that the Telecommunications Network Inventory application includes all the

     required components of your telephone number. Otherwise, see Create telephone number
     components.

   · Role required: sn_inv_num_mgmt.inventory_number_manager

 About this task
 Setting the Create telephone allocations and numbers checkbox as true, while creating a
 telephone block, creates individual numbers and telephone allocation. You can assign multiple
 telephone numbers to a telephone allocation. When you assign a single telephone number
 allocation to a telephone number block, you can assign a series of numbers to that block.

 On completing this task, assigning a single telephone number allocation to a telephone number
 block results in assigning a series of numbers to that block.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Number Allocation > Telephone Number.
3. Select New.
4. On the Details tab, on the IP address section form, fill in the fields.

Telephone Number Allocation form  Description
Fields
Name                              Name for this allocation.
Telephone number block
                                  Telephone number block that you want to
                                  add the numbers to.

                                       Note: For the port-in numbers or the

                                        numbers that you don't want to assign a
                                        block to, you can create the telephone
                                        numbers and telephone allocation
                                        without referring to a block.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    148
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 149 -->
Fields        Description
Availability
              Availability of this block. If this block is
Start number  available, set the availability as true. Also, you
End number    can specify how many numbers are under the
              unassigned status and are available.

              Starting phone number of the series from
              where you can assign this block to.

              Ending phone number of the series that you
              can assign to this block to.

   To learn about the other fields, see Inventory number allocation fields.

5. Add the attachments, such as the graphics or documents, by selecting the attachment icon

   ( ) in the right panel.

6. Select Save.
   The related tabs appear on the form. You can view or change the related tab information. To
   learn more about the related tabs, see Related tabs in the network inventory forms.

        Note: Based on the assigned or allocated telephone numbers, the existing allocation

         divides into separate allocations. For example, in a series of 1-100, if 1-10 and 90-100 are
         assigned, then the 1-100 allocation divides into three allocations. The three allocations,
         1-10 and 90-100 with availability as No and 11-89 as Yes are created.

Create a telephone number to an area or region

Create a telephone number to add that number to an area or to a region by using the
Telecommunications Network Inventory application. You can review, create, update, or delete a
telephone number.

Before you begin
 · Ensure that the Telecommunications Network Inventory application includes all the

   required components of your telephone number. Otherwise, see Create telephone number
   components.

 · Role required: sn_inv_num_mgmt.inventory_number_manager

About this task
Setting the Create telephone allocations and numbers checkbox as true, while creating a
telephone block, creates individual numbers and telephone allocation. You can also add a
telephone number to a telephone number allocation.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Number Allocation > Telephone Numbers.
3. Select New
4. On the Details tab, in the telephone number section, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    149
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 150 -->
Telephone Number form  Description
Field name
Switch CLLI            A reference to any Configuration Item but is
                       ideally recommended to telco equipment.
Line number
                       Portion of a telephone number that uniquely
                       identifies an individual telephone line
                       within an area. You can provide a series or
                       individual line numbers in an xxxx-xxxx or
                       xxxx, xxxx-xxxx format.

                            Note: If the provided line number isn't

                             in a series of numbers, multiple number
                             allocations are created.

   To learn about the other fields, see Inventory number allocation fields.

5. Add the attachments, such as the graphics or documents, by selecting the attachment icon
   ( ) in the right panel.

6. Select Save.
   A telephone number is created with an area code, central office code, status of the number,
   switch CLLI, line number, and telephone number.

What to do next
You can review and update the fields, create a related tab record, or delete a record. To learn
more, see Update or delete a record of an inventory number allocation.

Create managed network
Create a managed network to manage all your networks and IP addresses using the
Telecommunications Network Inventory application. You can create, review, update, and delete a
network.

Before you begin

 · Install network discovery plugins. To learn more, see Network discovery .

 · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
   sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager.

About this task
Managed network enables you to add IP pool and IP network subnet in your network. Also, a
network can't have a duplicated IP address.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory Number Allocation > Managed Network.
3. Select New.
4. Under the Details tab, on the form, fill in the fields.

   To learn more, see Managed Network form.
5. Add packs to this service by selecting Add Packs.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    150
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 151 -->
   To learn more about the packs, see Attribute packs.

6. Add the attachments, such as the graphics or documents, by selecting the attachment icon
   ( ) in the right panel.

7. Select Save.
   CMDB 360 data and packs related tabs appear on the form. To learn more, see Related tabs in
   the network inventory forms.

8. View the related network inventories by selecting the brick icon ( ).

   The Infrastructure Relationships section shows all the related network inventories that are
   grouped by the individual network asset instances.

What to do next
You can review, or update the fields, create a related tab record, or can delete a record. To learn
more, see Update or delete a record of an inventory number allocation.

Update or delete a record of an inventory number allocation
Review, update, and delete a record of an IP address space element using the
Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
This task enables you to update, and delete a record of an item of any inventory number
allocation.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory number allocation.
3. Select any one of the following items of inventory number allocation.

   Telephone block
   Telephone allocation
   Telephone number
   Inventory numbers
   IP pool
   IP network subnet
   Allocated IP address
   IP address
   Managed network
4. Select a record that you want to update from the displayed list of the respective item.
   To delete a record, after selecting a record, follow the following steps.

a. Select options (  ) icon.
b. Select Delete.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    151
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 152 -->
Note: The warning window shows the list of the topics that are affected due to this

deletion.

   c. Select Delete to delete the record or select Cancel to cancel the deletion.
5. To update the general information, access the Details tab.

   Further, to update the related tabs associated with this item, choose the corresponding tab
   designated for that purpose. Let's say, if Telephone number allocation is a related tab for the
   business application, navigate to that tab to make the necessary updates.

6. Change the value of the field that you wanted to update in the detail tab form.
7. Select any one related tab of the opened item.
8. In the related tabs, you can:

   View the existing related tab record details.
   Select the existing record and update the fields.
   Select New to create another record of the related tab.
   On selecting the New in the related tab, a corresponding form in the related tab appears. On

      the form, fill in the fields and select Save.
   The newly created record is automatically associated with the currently opened item of

      inventory number allocation.

9. Select Save.
   Fields and the records list are updated.

Manage your network functions

Create application services, business applications, and network interfaces to manage all type
of network functions. Here you can create, review, update, and delete application services, and
business applications using the Telecommunications Network Inventory application.

To model your 5G network, perform the following:

 · Create a network function record. To learn more, see Define network function details.
 · Create network service instances. To learn more, see Define network service instance details.
 · Create a network interface and create relationship with an application service. To learn more,

   see Define the network interface details.

Define network service instance details
Create an application service instance using the Telecommunications Network Inventory
application. You can create service instances to model different types of network functions.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.telco_inventory_catalog_manager.

About this task
When you create a network service instance record, it creates a corresponding configuration
item (CI) record in the Network Service Instance [cmdb_ci_network_service_instance] table.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.
2. Select the list icon ( ), and then select Services > Service Instance.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    152
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 153 -->
3. Select New.
4. On the Service Instance form, fill in the fields.

   To learn more about fields, see Service Instance form.
5. To create the Telecommunications Network Inventory attributes for the Service Instance form,

   select Set Inventory Attributes.
   When you select the Set Inventory Attributes button, it creates a reference in the CI table.

        Note:

         If you select Save without selecting Set Inventory Attributes, it creates a CI record but
         not a Telecommunications Network Inventory CI record.

6. On the TNI CI Attributes form, fill in the fields.

   To learn more about the Telecommunications Network Inventory attribute fields, see TNI CI
   Attributes form.

7. Select Save.

   The Telecommunications Network Inventory attribute fields are displayed on the Service
   Instance form after you save the TNI CI Attributes form. The Set Inventory Attributes doesn't
   appear when you reopen the CI record.

Define network function details
Create a network function record in the Telecommunications Network Inventory application. You
can manage the network functions such as 5Physical Network Function (PNF), Virtual Network
Function (VNF) and so on.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.telco_inventory_catalog_manager

About this task
When you create a network function record, it creates a corresponding configuration item (CI)
record in the Network Function [cmdb_ci_network_function_application] table. By default, 19
functions are included and each record is a function.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then select Inventory > Network Function.
3. Select New
4. On the form, fill in the fields.

   To see a description of the fields, see Design & Planning domain in the CSDM model .
5. Select Submit.

Update or delete service record
Review, update, or delete a service record by using the Telecommunications Network Inventory
application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    153
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 154 -->
About this task
This task enables you to review, update, or delete a record of any business, application, technical
service, or business application.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Inventory number allocation.
3. Select one of the following items of the inventory number allocation:

   Business services
   Application services
   Technical services
   Business applications
4. Select a record that you want to update from the displayed list of the item.
   To delete a record, do the following actions:

a. Select the options icon (  ) icon.
b. Select Delete.

Note: The warning window shows the list of the topics that are affected due to this

deletion.

   c. Select Delete to delete the record or select Cancel to cancel the deletion.

5. On the Details tab, update the general information.
   To update the related tabs that are associated with this item, select the tab that is designated
   for that purpose. For example, if CMDB 360 Data is a related tab for the business application,
   navigate to that tab to make the updates.

6. Change the value of the field that you want to update in the Detail Tab form.

7. Select any related tab of the opened item.

8. In the related tabs, you can do the following tasks:

   View the existing related tab record details.

   Select the existing record and update the fields.

   Create another record of the related tab by selecting New. When selecting the New button
      in the related tab, a form in the related tab appears. On the form, fill in the fields and select
      Save The new record is automatically associated with the opened item of the inventory
      number allocation.

9. Select Save.
   The fields and the records list are updated.

Data collection and refresh for the Network Inventory Workspace widgets

Learn how the Telecommunications Network Inventory data that appears on the Network
Inventory Workspace landing page is collected and refreshed.

To increase the responsiveness and speed of the Network Inventory Workspace, a scheduled
job runs once a day to collect the count data that appears on the landing page. This job collects
this data from the Configuration Management Database (CMDB) Groups [cmdb_group] table.

          Each landing page section, or widget, has a Configuration Management Database (CMDB) group                                                                            154
          that is assigned to it, and it provides the count data that you see. For example, the Network sites

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 155 -->
overview widget contains the counts for the total number of your sites, and for your sites that
are currently in maintenance. The Network entities by category widget contains the counts for
each category of network equipment that your organization has, such as the interface cards and
connections.

CMDB Groups table

The CMDB Groups table contains the Component Item (CI) records on which the count totals
in each landing page widget are based. When the scheduled job runs on the CMDB Group
database, it performs the following actions:
1. Evaluates the query condition that is stated in the CMDB group and then collects the count

   data. Administrative users with certain assigned roles can define and apply the specific
   conditions that it uses for these queries to collect the count data for the landing page. To learn
   more, see Customizing the content in your Network Inventory Workspace widgets.
2. Generates records in the CMDB Group Metadata [sn_cmdb_ws_group_metadata] table.
3. By using the collected data in the CMDB Group Metadata table, it refreshes each count that
   appears on the landing page.

Related topics
   Network Inventory Workspace

Customizing the content in your Network Inventory Workspace widgets

The Network Inventory Workspace is delivered in the base system with a standard set of
information in each landing page widget. You can easily customize this content to include other
Telecommunications Network Inventory data.

Standard CMDB groups and naming conventions for Network Inventory
Workspace widget data

The data collection process for the Network Inventory Workspace landing page uses a standard
CMDB group structure to retrieve data that appears in its widgets, including:
 · Network sites overview
 · Network entities by category
 · Network equipment by manufacturer
 · Network equipment by states

For example, the following shows a listing of some of the CMDB groups that are used for the
Network Inventory Workspace data collection:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    155
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 156 -->
Standard CMDB groups for the Network Inventory Workspace

     Note: To learn how the data collection process operates, see Data collection and refresh

      for the Network Inventory Workspace widgets.

These CMDB groups follow the following standard naming convention:
1. The first segment represents the assigned domain for the network sites and entities. You use

   the Network domain selector in the Network Inventory Workspace to filter the data that appears
   by selecting one of the following types of network domains:

      Core
            Network domain for the core telecom equipment.

      Mobility
            Network domain for the mobile telecom equipment.

      Telco
            Network domain for the telecom equipment in general.

      All
            All equipment network domains that are combined into a single one for reporting
            purposes.

2. The remaining segments represent a specific type of field data. For example:
      Available Status Equipment
            Reports the Available status for the equipment.
      Pending Repair Status Equipment
            Reports the Pending Repair status for the equipment.
      Ericsson Manufacturer Equipment
            Reports the percentage of the total equipment that is supplied by Ericsson.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    156
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 157 -->
      Nokia Manufacturer Equipment
            Reports the percentage of the total equipment that is supplied by Nokia.

The following examples show how the name segments are combined in the CMDB groups to
report the data that appears in the widgets in the Network Inventory Workspace:

   All Available Status Equipment
         CMDB group data that is used in the Network equipment by states widget to report
         the percentage of equipment that is in the Available status in all network domains.

   Core Available Status Equipment
         CMDB group data used in the Network equipment by states widget to report the
         percentage of equipment that is in an Available status in the Core network domain.

   Mobility Pending Repair Status Equipment
         CMDB group data used in the Network equipment by states widget to report the
         percentage of equipment that is in a Pending Repair status in the Mobility network
         domain.

   All Ericsson Manufacturer Equipment
         CMDB group data that is used in the Network equipment by manufacturer widget
         to report the total piece count for the equipment that is supplied by Ericsson in all
         network domains.

   Telecom Nokia Manufacturer Equipment
         CMDB group data that is used in the Network equipment by manufacturer widget
         to report the total piece count for the equipment that is supplied by Nokia in the
         Telecom network domain.

Modifying the Network equipment by manufacturer widget

This widget contains a pie chart with a standard set of the five most recognizable
telecommunications equipment manufacturers.

         Network equipment by manufacturer widget

A pre-defined CMDB group structure supports retrieval of the data that appears in the widget
pie chart. The following example shows the standard CMDB groups that are used to retrieve the
manufacturer data for the Network Inventory Workspace.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    157
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 158 -->
Standard CMDB groups used for the Network equipment by manufacturer widget

To add or change the data in a widget, use the CMDB Groups function to create CMDB group
codes or modify the accompanying query conditions for existing ones. To update any of the
existing CMDB groups, you must follow the standard CMDB group naming convention used for
the Network Inventory Workspace widgets.

     Note: To learn more about creating, updating, or naming CMDB groups, see CMDB

      groups .

For example, let's say that you want to add another equipment manufacturer to the widget.
To accomplish this task, you can use existing CMDB groups for a manufacturer, for each of
the network domains, as the base for the new manufacturer. In this example, you use the
existing CMDB groups for Ericsson as the base for the CMDB groups that you create for the new
manufacturer.

This table shows what the existing CMDB group codes look like for Ericsson, and what they look
like when you create the CMDB group codes for Dell.

 CMDB group example                        Existing CMDB Group
 Existing CMDB Group                       All Dell Manufacturer Equipment
 All Ericsson Manufacturer Equipment       Core Dell Manufacturer Equipment
 Core Ericsson Manufacturer Equipment      Mobility Dell Manufacturer Equipment
 Mobility Ericsson Manufacturer Equipment  Telco Dell Manufacturer Equipment
 Telco Ericsson Manufacturer Equipment

Related topics
   Network Inventory Workspace

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    158
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 159 -->
Update CMDB groups for use in the data collection process

Add or change the data that you see in a Network Inventory Workspace widget by using
the CMDB Groups function. You create CMDB group codes as needed or modify the query
conditions for existing ones. By changing the CMDB groups, you affect what data the collection
process retrieves for the widgets on the Network Inventory Workspace landing page.

Before you begin
Role required: admin, cmdb_query_builder, itil, sn_cmdb_editor

About this task
You must follow the standard CMDB group naming convention that is used for the Network
Inventory Workspace widgets. To learn more, see the section called Standard CMDB groups
and naming conventions for the Network Inventory Workspace widget data. To learn more about
creating, updating, or naming CMDB groups, see CMDB groups .

Procedure
1. Navigate to All > Configuration > CMDB Groups.

2. To view the listings of the CMDB groups that are associated with the Network Inventory
   Workspace widgets, see the following table.

Type of CMDB Group                       Description
                                         In the Description field, enter *tni.
All CMDB groups created for Network In­
ventory Workspace widgets

Only CMDB groups created for the Network In the Group Name field, enter *manufact.
equipment by manufacturer widget

3. In the Group Naming listing, select a CMDB group for an existing manufacturer in the All
   domain.
   For example, select All Ericsson Manufacturer Equipment. The CMDB Group form appears.

4. In the Name field, overwrite Ericsson with the name of the manufacturer that you want to add.
   For example, change All Ericsson Manufacturer Equipment to All Dell Manufacturer
   Equipment.

5. Click the CMDB Group Contains Encoded Queries (n) tab, where (n) represents the number of
   encoded queries for the CMDB group.

6. In the CMDB Group Contains Encoded Queries (n) tab, in the Class field, select
   cmdb_ci_ni_telco_equipment.
   After you select the CMDB group, the encoded query detail for the selected CMDB group class
   appears.

7. In the Condition field, overwrite Ericsson with the name of the manufacturer that you want to
   add.
   For example, overwrite Ericsson with Dell.

8. Click Update.

9. Repeat these steps for each of the remaining network domains for the new manufacturer.
   In the following table, you would create the following CMDB groups for the remaining network
   domains. These groups are based on the CMDB codes for Ericsson.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    159
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 160 -->
CMDB group example                        Existing CMDB Group
Existing CMDB Group                       Core Dell Manufacturer Equipment
Core Ericsson Manufacturer Equipment      Mobility Dell Manufacturer Equipment
Mobility Ericsson Manufacturer Equipment  Telco Dell Manufacturer Equipment
Telco Ericsson Manufacturer Equipment

Result
After the data collection process runs for the Network Inventory Workspace, the new network
manufacturer appears in the pie chart in the Network Equipment by manufacturer widget.
The new CMDB group includes the network equipment records that are assigned to your new
manufacturer.

Related topics

   Network Inventory Workspace

Access Network Inventory Workspace

You set the network domain in the Network Inventory Workspace to view your inventory data and
your assignments based on the domain that you select.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
You set the network domain to view your inventory and assignments.

 · The information that appears in each of the landing page widgets then refreshes, depending
   on the selected domain.

 · The landing page continues to show the data for the selected domain until you change the
   domain filtering.

Procedure

1. Navigate to Workspaces > Network Inventory Workspace.

2. To filter the data that appears in the Network Inventory Workspace, select Network Domain
   By default, the data that appears on the Network Inventory Workspace landing page is for all
   network domains.

3. Select Network Domain.
   The network domain that you select appears in the Applied field.

4. In the Available field, search for a network domain or select a name when it appears in the box
   below it.
   You can select one of the following domains:

Option                                    Details
Core
Mobility                                  Network domain for the core telecommunica­
                                          tions equipment.

                                          Network domain for the mobile telecommuni­
                                          cations equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    160
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

