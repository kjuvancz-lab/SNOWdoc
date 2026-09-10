# Zurich Telecommunications Network Inventory â€” Assigning user roles / Define a location hierarchy / Create manufacturer and vendor codes +1 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 66â€“99 of 425

Sections: Assigning user roles (p66); Define a location hierarchy (p67); Create manufacturer and vendor codes (p68); Create telephone number components (p69); Configuring decision tables (p72); Configure attributes (p74); Configuring an attribute pack table (p75); Configuring capacity management (p77); Configuring overlays on floor map (p80); Configure Design and Assign function (p83); Integrate (p100)

---

<!-- page 66 -->
   Visit the ServiceNow Store website to view all the available apps and for information about
   submitting requests to the store. For cumulative release notes information for all released
   apps, see the ServiceNow Store version history release notes .

3. In the Application installation dialog box, review the application dependencies.

   Dependent plugins and applications appear if they're yet to be installed, are currently
   installed, or must be installed. If any plugins or applications require installation, you must
   install them before you can install Telecommunications Network Inventory.

4. Optional: If demo data is available and you want to install it, select the Load demo data check
   box.
   Demo data are the sample records that describe application features for common use cases.
   Load the demo data when you first install the application on a development or test instance.

5. Select Install.

Assigning user roles

You can assign roles to control user access to specific features, capabilities, and data in the
Telecommunications Network Inventory application. These assigned roles enable or prevent
access to specific forms and processes by users with the specified roles only.

You assign roles to users and groups by using the ServiceNow AI Platform user administration
feature.
 · To assign a role to a user, see Assign a role to a user .
 · To assign a role to a group, see Assign a role to a group .

The Telecommunications Network Inventory provides the following roles:

Telecom Network Inventory roles

Role                                          Description

Inventory Admin                               Role that enables a user with create,
[sn_ni_core.inventory_template_admin]         read, update, and delete access to all
                                              Telecommunications Network Inventory
                                              application-related functions.

Inventory Catalog Manager                     Role that enables a user with create, read,
[sn_ni_core.telco_inventory_catalog_manager]  edit, and delete access to the metadata for
                                              all network inventory entities. This role also
                                              enables the user to associate the metadata of
                                              the different entities.

Inventory Template Manager                    Role that enables a user with create, read, edit,
[sn_ni_core.inventory_template_manager]       and delete access to the network inventory
                                              templates for the new or existing entities. Also,
                                              this role enables the user to perform a Create,
                                              Read, Update, Delete (CRUD) operation on the
                                              default template.

Inventory Agent [sn_ni_core.inventory_agent]  Role that enables a user with the following
                                              permissions:

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 66

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 67 -->
Telecom Network Inventory roles (continued)

Role                                         Description

                                             · Read access to all inventory models,
                                              capacity metrics, and pack tables.

                                             · Write, update, and delete access to the
                                              inventory tables.

                                             · Read and write access to the template,
                                              change request and change task table.

                                             Note: To modify the model and model

                                             relationships tables, a user assigned with
                                             the Inventory Agent role must also have
                                             either the Asset or Inventory User roles.

Inventory Number Manager                     Role that enables a user with the following

[sn_inv_num_mgmt.inventory_number_managerp] ermissions:

                                             · Read access to all telephone number tables.

                                             · Write, update, and delete access to the
                                              telephone number tables.

Define a location hierarchy

Define a location hierarchy for your Telecommunications Network Inventory forms so that you can
track and manage your network assets. By defining a location hierarchy, you can see where all
your network equipment is located.

Before you begin
 · Role required: admin, sn_ni_core.inventory_admin
 · To establish locations hierarchy, ensure to:

  1. Create the top-level locations that contain the subordinate locations. For example, in the
      locations hierarchy, create Americas first. Leave the Parent field empty.

  2. Create a regional location and in the Parent field, select the top-level location as its
      parent. For example, in the locations hierarchy, create North America and then select
      Americas as its parent.

  3. In the Locations section at the bottom of the form, click New and create the location records
      for each lower-level child location that are subordinate to that regional location.

About this task
A location record must contain at least one of the following properties or sets of properties:
 · Address
 · Country
 · Region
 · Latitude and Longitude

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 67

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 68 -->
By using this form, you can construct a location hierarchy. For example, the following example
shows a typical location hierarchy that appears when you search for a location in the Location
field in the Network Site form.

         Locations hierarchy

Procedure
1. Navigate to All > User Administration > Locations.
2. Select New.
3. On the Location form, fill in the fields, with address and contact information for the location

   record.

        Note: To learn more about the fields on the Locations form, see Location form.

4. Click Submit.

Create manufacturer and vendor codes

Create company codes by using the Telecommunications Network Inventory application. You
can create codes for each manufacturer, vendor, or customer that you do business with. You can
categorize these records to categorize the network assets.

Before you begin
Role required: user_admin or admin

Procedure
1. Navigate to User Administration > Companies.
2. Click New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    68
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 69 -->
Note: To learn more about the fields on the Company form, see Company form.

4. Click Submit.

Create telephone number components

Create a central office code, country code, area code, and rate center for a series of telephone
numbers by using the Telecommunications Network Inventory application.

Create a central office code

Create a central office code to allocate it to an area code of a country by using the
Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin

About this task
You can create, review, update, or delete a central office code. You can also view the details
of an area code or allocate a central office code to an area code of a country by using the
Telecommunications Network Inventory application.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Administration > Central office code.
3. Select New
4. On the Details tab, on the form, fill in the fields as follows.

Create New Central Office Code

Area Code                       Code that identifies a geographic region
Central Office Code             within a country or territory. It's usually the
                                first three digits of a telephone number.
                                The purpose of the area code is to route
                                telephone calls to destinations that are
                                based on the location of the recipient.

                                For example, in the phone number (123)
                                456-7890, "123" represents the area code.

                                Central office code that is also referred to as
                                NXX. The NXX portion of a telephone number
                                provides information about the central office
                                or local exchange that belongs to a particular
                                geographic area. Each central office code is
                                related to a geographic location or service
                                provider within the area code.

                                For example, in the phone number (123)
                                456-7890, "456" represents the central office
                                code.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 69

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 70 -->
          5. Add the attachments, such as the graphics or documents, by selecting the attachment icon
             ( ) in the right panel.

          6. Select Save.
             A central office code and an area code are added in the list view of the central office code.

          7. Optional: If you want to delete a central office code, navigate to that code, select the options
             icon ( ), select Delete, and select OK when you see the confirmation window.

         What to do next
          Create a country code. For information, see Create a country code.

         Create a country code

          Create, review, update, or delete a country code by using the Telecommunications Network
          Inventory application. A country can have multiple phone formats and phone validations.

         Before you begin
          Role required: sn_ni_core.inventory_admin

         About this task
          Create a country code and add conditions to it so that you can manage, review, or update it.

         Procedure
          1. Navigate to Workspaces > Network Inventory Workspace.
          2. Select the list icon ( ), and then go to Administration > Country code.

        3. Note: The list view of the country code includes almost all country codes.

             Select New
          4. On the Details tab, on the form, fill in the fields.

             To learn more about the fields, see configure a territory phone display rule .
          5. Add the attachments, such as the graphics or documents, by selecting the attachment icon

             ( ) in the right panel.
          6. Select Save

             Related tabs appear next to the Details tab. To learn more, see configure a territory phone
             display rule .
          7. Optional: If you want to delete a country code, navigate to that country code, select the
             options icon ( ), select Delete, and select OK when you see the confirmation window.

         What to do next
          Create an area code. For information, see Create an area code.

         Create an area code

          Create, review, update, or delete an area code by using the Telecommunications Network
          Inventory application.

         Before you begin
          Role required: sn_ni_core.inventory_admin

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 70

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 71 -->
About this task
You can create an area code for a country code. You can assign the same area code to different
country code.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Administration > Area code.
3. Select New
4. On the Details tab, on the form, fill in the fields as follows.

Create New Central Office Code

Area Code                       Code that identifies a geographic region
Central Office Code             within a country or territory. It's usually the
                                first three digits of a telephone number.
                                The purpose of the area code is to route
                                telephone calls to destinations that are
                                based on the location of the recipient.

                                For example, in the phone number (123)
                                456-7890, "123" represents the area code.

                                Central office code that is also referred to as
                                NXX. The NXX portion of a telephone number
                                provides information about the central office
                                or local exchange that belongs to a particular
                                geographic area. Each central office code is
                                related to a geographic location or service
                                provider within the area code.

                                For example, in the phone number (123)
                                456-7890, "456" represents the central office
                                code.

5. Add the attachments, such as the graphics or documents, by selecting the attachment icon
   ( ) in the right panel.

6. Select Save.
   The area code is included in the list view of the area code.

7. Optional: If you want to delete an area code, navigate to that area code, select the options
   icon ( ), select Delete, and select OK when you see the confirmation window.

What to do next
Create a telephone block, telephone number allocation, or telephone number. For information,
see Create a telephone infrastructure.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 71

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 72 -->
       Configuring decision tables for Telecommunications Network
       Inventory

          You can configure decision tables to resolve complex tasks in the Telecommunications Network
          Inventory application. For example, you can create, review, or delete an entry for tasks in a
          decision table in Decision Builder.

          By using a decision table, you can add the required conditions to automate your tasks. Decision
          tables in Decision Builder embed business logic into a series of if-then decision rules. Decision
          tables read data from the inputs and evaluate the data according to the specified conditions.
          When all the conditions for a decision rule are met, the decision table returns one or more
          results. To learn more, see Decision Tables .

          You can use the decision tables in the Telecommunications Network Inventory application to do
          the following tasks:
          1. Integrate Telecommunications Network Inventory and Order Management for

             Telecommunications.
          2. Assign a record producer form to a change request.
          3. Assign a record producer to a change task of a change request.

          Related topics
             Exploring Decision Tables

         Order Management for Telecommunications integration

          Use a Telecommunications Network Inventory decision table to integrate the
          Telecommunications Network Inventory and Order Management for Telecommunications
          applications.

         Before you begin
           · Configure the change model and order task variables to enable the Order Management for

             Telecommunications - Telecommunications Network Inventory integration.
           · Role required: sn_ni_core.inventory_admin

         About this task
          You can create, review, update, and remove a decision entry.

         Procedure
          1. Navigate to All > System Definition > Decision Tables
          2. Select the TNI Record Producer and Change model policy decision table.
          3. Create a decision entry in the decision table for an order task.

             For this entry, you must complete the following items:
              Order task.
              Condition for the order task. In the decision table, search and select an Order Task.Request

                Type condition for the order task. The Answer field is filled based on the condition that you
                select.
              Record Producer.
              Change model.
             If all the conditions are met, a change request is created for the order task that needs the
             inventory actions. In this change request, the order task is assigned as its parent. The new

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 72

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 73 -->
             change request is in the related list of the order task. This task redirects you to the change
             request from the OMT task page.
          4. Transfer the order characteristics to the Telecommunications Network Inventory application by
             creating an entry in the TNI Record Producer Variable Policy decision table.
             The change tasks are created for the configuration items.

         Example: TNI Design Assign of Fiber Broadband

          Let's say that you add a service order with the category broadband service. After you make this
          addition, the TNI Design Assign of Fiber Broadband flow of the Service Order Fulfillment Policy
          triggers. As part of this flow, in the TNI Record Producer and Change model policy decision
          table, an allocate and assign Customer Premises Equipment (CPE) order task is created with a
          Gigabyte Passive Optical Network (GPON) broadband record producer for the GPON broadband
          change model.

          To transfer the order characteristics in the TNI Record Producer Variable Policy decision table,
          the order characteristics map with the record producer.

         Assign record producer form to a change model

          Assign a record producer to a change request by using a decision table in the
          Telecommunications Network Inventory application.

         Before you begin
          Role required: sn_ni_core.inventory_admin

         Procedure
          1. Navigate to All > System Definition > Decision Tables.
          2. Select the TNI Change Model To Record Producer Policy decision table.
          3. In the conditions section of the decision table, select the Add new decision row button.
          4. Select a change model from the value field of the Change model column.
          5. Select a record producer to assign to the selected change model from Record Producer

             column.

         Result
          When you select Changes > All and the Next button for the added change model, the assigned
          record form is displayed.

              Note: All record producer form inputs can be seen in the Variables section of the Details

                tab. You can view and update the details as required.

         What to do next
          You can also assign a record producer to a change task of a change request. To learn more, see
          Assign record producer form for a request type of a change task.

         Assign record producer form for a request type of a change task

          Assign a record producer to a change task of a change request with the help of a decision table
          in Telecommunications Network Inventory application.

         Before you begin
          Role required: sn_ni_core.inventory_admin

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 73

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 74 -->
         About this task
              Note: By default, the Telecommunications Network Inventory application added request
                types for create equipment, create physical connection, create logical connection, and add
                interface card in this decision table.

         Procedure
          1. Navigate to All > System Definition > Decision Tables.
          2. Select the TNI Request type to Record Producer Policy decision table.
          3. In the Conditions section of the decision table, select the Add new decision row button.

             On the Change Tasks tab of the added change model, when you select a change task, the
             assigned record producer form is displayed on the Task attributes tab.
          4. Select a change task from the value field of the Request Type column.
          5. Select a record producer to assign to the selected change task from Record Producer column.

         What to do next
          Create a network instance instantiation. For information, see Instantiating inventory using design
          and assign.

         Customize the Validation of Revision CI

          Customize the validation process of a CI (Configuration Item) using the Telecommunications
          Network Inventory application. You can customize the validation process by providing adjustable
          parameters based on the script.

         Before you begin
          Role required: sn_ni_core.inventory_admin

         About this task
          You can specify criteria and rules that fit your requirements, enabling a tailored approach to
          verify data accuracy and integrity.

         Procedure
          1. Navigate to All > Process Automation > Workflow Studio > Flow Designer > Actions.
          2. Select Validate CI Revision.
          3. Select Script Step under Action Outline section.
          4. From the script, you can change the values of the CI relations or related items or both to false.

             The field value having value as False isn't included in the validation process.

       Configure attributes

          Configure the core equipment table to enable the collection of the common Telecommunications
          Network Inventory attributes appear in the CI record. You use these attributes to create a
          Telecommunications Network Inventory CI record.

         Before you begin
          Role required: admin

         About this task
          You update the Equipment generic classes in the core equipment table to display the Set
          Inventory Attributes button in the corresponding CI record (sub classes). Except for the
          Interface card table (cmdb_ci_interface_card), all tables that are subclasses of the equipment
          generic classes are considered as Equipment.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 74

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 75 -->
Procedure
1. Navigate to All > System Properties > All Properties.
2. Select the sn_ni_core.equipment_tables table.
3. In the Value field, enter the equipment generic classes using a comma as separator.

   You can add the following generic classes:
   Computer (cmdb_ci_computer)
   Network Gear (cmdb_ci_netgear)
   Virtual Machine Object (cmdb_ci_vm_object)
   Kubernetes Component (cmdb_ci_kubernetes_component)
   Service Instance (cmdb_ci_service_auto)

Configuring an attribute pack table

After you create an attribute pack table with the attributes that you define in the
Telecommunications Network Inventory application, you can configure the mapping between the
table and the inventory object that you want to use it with.

Create attribute pack table

Create an attribute pack table with the attributes that you define in the Telecommunications
Network Inventory application so that you can use these attributes in the CI record.

Before you begin
 · Make sure that the Attribute Pack plugin is installed with the Telecommunications Network

   Inventory application.
 · Switch the Application scope to Attribute Pack.

Role required: admin, sn_ni_core.inventory_admin

About this task
Create an attribute pack table with attributes by extending the Pack Base
(sn_attribute_pack_base) table. You define and store the attributes in the Pack base table. You
can enable read or write permission for all application scopes.

Procedure
1. Navigate to All > System Definition > Tables.
2. Select New.
3. On the form, fill in the fields.

Attribute Pack Table form

Field    Value
Label    Name of the pack table.
Name     Auto-populated name that is based on the label name that you selected
         (sn_attribute_pack_<label name>).
Extends  Pack (sn_attribute_pack_base)
table

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 75

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 76 -->
4. On the Controls tab, add the roles in the User Role field.
   You add the roles to grant the access to the pack table.

5. Select Save.
6. Add or delete attributes.
7. Select Submit.

Result
The pack table is created with a set of attributes.

What to do next
To use the pack table in inventory forms, you must configure it to map with the inventory objects.
To learn more, see Configure an attribute pack table against a configuration item.

Configure an attribute pack table against a configuration item

Configure an attribute pack table against a configuration item (CI) with filter conditions in the
Telecommunications Network Inventory application. As you configure the pack table, you can use
the packs for creating a CI record.

Before you begin
 · Make sure that the Attribute Pack plugin is installed with the Telecommunications Network

   Inventory application.
 · Create a pack table with a set of attributes. To learn more, see Create attribute pack table.

Role required: admin, sn_ni_core.inventory_admin

About this task
To use a pack table in the inventory forms, you must configure it against a CI with filter conditions.
If the CI is related to another CI, you must set the filter conditions to map the pack table against
the related CI.

Procedure
1. Navigate to All > Administration > Pack Config.
2. Select New.
3. On the Details tab, fill in the fields.

Pack Config form

Field   Description

Name    Name of the pack configuration.

Active  Option to enable the pack table in a CI record.

Configuration CI table that you want to map.
Item

Filter  Filter condition attributes to customize how your pack table is filtered so
        that you can use it in the CI form. Select Set conditions and enter the field
        operator and value for the filter condition.

Pack Table Pack table that you want to map against the CI.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 76

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 77 -->
Field  Description

Has Related Option to add related CI. When you select this check box, the following fields

Configuration appear.

Item   Related Configuration Item

       Related CI table that you want to map.

       Related Filter

             Filter condition attributes to customize how your pack table is
             filtered so that you can use them in the related CI form. Select
             Set conditions and enter the field operator and value for the
             filter condition.

       Note: If the filter condition for the CI isn't met, the system doesn't

       check filter conditions for the related CI. If the filter conditions of CI and
       related CI are met, the system maps the pack table against the related
       CI.

          4. Select Save.

         Result
          The pack table is mapped against the CI and is displayed in the Pack Config list.

         What to do next
          Use the pack tables in the CI record. To learn more, see Attribute pack in CI records.

       Configuring capacity management

          Create and configure the capacity management function, definition, and metric in the
          Telecommunications Network Inventory application. By using capacity management, you can
          calculate the maximum, occupied, and available capacity of your network assets.

          Related topics
             Capacity management
             Revision, operationalization, and decommission of a Configuration Item

         Create capacity function

          Create a capacity function in the Telecommunications Network Inventory application. You can
          use this function to calculate the capacity of your network assets.

         Before you begin
          Make sure that the Capacity Management plugin is installed with the Telecommunications
          Network Inventory application.

          Role required: sn_ni_core.inventory_admin

         About this task
          Create a capacity function to calculate the maximum, occupied, and available capacity of your
          network assets. You can use different strategies to calculate the capacity. When you create a
          capacity function, it stores the record in the Capacity Function [sn_cap_mgmt_function] table.

          The system selects the capacity functions based on their priority to calculate the capacity. The
          following points are considered to set the priority for capacity calculations.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 77

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 78 -->
           · If two capacity functions have same Function type and Measurement type, the one with the
             lowest Order value gets prioritized.

           · If two capacity functions have same Function type, Measurement type, and Order, the one that
             was most recently updated is given priority.

         Procedure
          1. Navigate to All > Capacity Management > Functions.
          2. Select New.
          3. On the form, fill in the fields.

             To learn more about the fields, see Capacity Function form.
          4. Select Submit.

         Result
          The capacity function record is created.

         What to do next
          You can use the function for capacity calculation or use it within the definition record to
          determine the capacity. To learn more about how to create a capacity definition, see Create
          capacity definition.

          Related topics
             Capacity management

         Create capacity definition

          Create a capacity definition in the Telecommunications Network Inventory application. You can
          use multiple functions in the capacity definition to calculate the capacity of your network assets.

         Before you begin
           · Make sure that the Capacity Management plugin is installed with the Telecommunications

             Network Inventory application.
           · You create capacity function records.

          Role required: sn_ni_core.inventory_admin

         About this task
          The capacity definition is an asynchronous way to trigger the capacity functions. You can use
          multiple functions in the capacity definition to calculate the maximum, occupied, and available
          capacity of your network assets. When you create a capacity definition, it stores the record in the
          Capacity Definition [sn_cap_mgmt_definition] table.

         Procedure
          1. Navigate to All > Capacity Management > Definitions.
          2. Select New.
          3. On the form, fill in the fields.

             To learn more about the fields, see Capacity Definition form.
          4. Select Submit.

         Result
          The capacity definition record is created.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 78

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 79 -->
What to do next
You can use the definition for capacity calculation. When you run the capacity definition,
it creates the metric and the results aggregate to it. You can navigate to All > Capacity
Management > Metrics and open the capacity metric record, which you want to see the details.

Related topics
   Capacity management

View a capacity metric

View a capacity metric record in the Telecommunications Network Inventory application. You can
use the capacity metric to get the consolidated information of the capacity calculations.

Before you begin
 · Make sure that the Capacity Management plugin is installed with the Telecommunications

   Network Inventory application.
 · You run the capacity function or definition records and create capacity metric records.

Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to All > Capacity Management > Metrics.

2. Select the info icon ( ) beside a capacity metric record to view the details.
   You see the following details:

Capacity Definition form

Field                     Value
Capacity definition       Name of the capacity definition record.
Function                  Type of capacity function.
Value                     Capacity calculated value.
Measurement type          Measurement Type used to calculate the capacity.
Capacity function         Name of the capacity function record.

          Related topics

             Capacity management

         Collect operational values for datacenter

          Record and update operational values manually for datacenters performance tracking in the
          Telecommunications Network Inventory application. You can use this data for further analysis
          and reporting.

         Before you begin
          Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
          sn_ni_core.dc_ops_agent

         About this task
          Enter the operational data for power and temperature manually and store it in the ClothoDB. You
          can use this data to display the operational details in a floor map. You can enter data for your
          datacenter, cabinet, rack, and cage.
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 79

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 80 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.k

2. Select the list icon ( ), and then go to Inventory > Racks.
3. Select the rack that you want to update operational data.
4. Select the more options icon ( ) and then select Collect Operational Data.
5. On the form, fill in the fields.

Collect Operational Data form

Field                          Description
Timestamp                      Select a data and time for the data to be collected.
Real Power (kW)                Active power of your network asset.
Contractual Power (kVA)        Maximum apparent power of your network asset.
Apparent Power (kVA)           Apparent Power of your network asset.
Temperature (C)                Temperature of your network asset.

6. Select Submit.

Result
The instance stores the operational data in the clothoDB.

Configuring overlays on floor map

Update the decision table to configure the operational data overlay on the floor map. You can
view the operational data of the datacenters for a selected time range as colored layer on the
floor map in the Telecommunications Network Inventory application.

Related topics
   Floor map
   Capacity management
   Upload and manage floor map for your datacenter

Customize overlays on the floor map

Update the decision table to configure the overlays appearing on the floor map. You can view
the operational data of the datacenters as overlay on the floor map in the Telecommunications
Network Inventory application.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
When you select an overlay and time duration on the floor map, the system uses TNI Data
Center Overlay Configuration decision table to determine the corresponding operational data.
The decision table pulls the average metric value for each Configuration Item (CI) over that
duration from ClothoDB. Based on the value, the system assigns the predetermined color code.
The floor map updates with these colors, so you can quickly see the status of operational status
of each CI.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    80
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 81 -->
For example, when you select Temperature overlay and time duration as Past 3 hours, the
system automatically collects the data from ClothoBD. If the current time is 9:00 PM, the system
queries data from 6:00 PM to 9:00 PM. Clotho returns the average metric value for each CI
over that duration. This average is then evaluated against the decision table to determine the
corresponding range and associated color code. Finally, each CI is visually updated on the floor
map using that color, enabling you to understand the health of the datacenters.

You can edit the overlay option in the floor map by configuring the decision table. You can add or
delete an overlay option and also set up the color options.

     Note: Decision table inputs should remain unedited. You can add or update decision table

      rows to customize colors or overlay ranges as needed.

Procedure
1. Navigate to All > System Definition > Decision Tables.
2. Select the TNI Data Center Overlay Configuration decision table.
3. Select Create Draft.
4. Do one of the following.

Action                    Details

Add a new overlay         a. Select the Type field.

                          b. Select Choice list source as Create new
                             choice list.

                          c. Type new overlay name in the Choices
                             field.

                          d. Select Add.

                          e. Select Done.

                          f. In the Condition section, add the metric val­
                             ues and color code.

Edit an existing overlay  a. Select the Type field.

                          b. Edit the overlay name that you want to up­
                             date in the Choices field.

                          c. Select Done.

                          d. In the Condition section, edit the metric val­
                             ues and color code.

                          a. Select the Type field.

Delete an overlay         b. Select the delete icon (                ) to delete an
                             overlay.

                          c. In the Condition section, delete the corre­
                             sponding overlay rows.

          5. Select Publish.

         Result
          Customized overlay options are displayed on the floor map, and the color legend updates
          accordingly.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 81

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 82 -->
What to do next
Set up time duration for the operational data. To learn more, see Customize overlay time series
on the floor map.

Related topics
   Capacity management

   Time series metrics for datacenter

Customize overlay time series on the floor map

Update the decision table to configure the time duration option on the floor map. You can view
the operational data of the datacenters for a selected time range as overlay on the floor map in
the Telecommunications Network Inventory application.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
You can modify the time duration option on the floor map by configuring the TNI Data Center
Time Duration Configuration decision table. The operational data for the time series you
selected appears as a colored layer on the floor map.

For the time duration configuration, if the time value is set to one second, the latest metric value
is retrieved from the ClothoDB. For all other time durations, the system returns the average metric
value over the specified duration.

Procedure
1. Navigate to All > System Definition > Decision Tables.
2. Select the TNI Data Center Time Duration Configuration decision table.
3. Select Create Draft.
4. Do one of the following.

Action                                      Details

Add time duration for a new overlay         a. Select the Type field.
Edit time duration for an existing overlay
                                            b. Select Choice list source as Create new
                                               choice list.

                                            c. Type new overlay name in the Choices
                                               field.

                                            d. Select Add.

                                            e. Select Done.

                                            f. In the Condition section, add the time dura­
                                               tion values for the new overlay.

                                            In the Time Duration Value section, edit the
                                            time duration for the overlay that you want to
                                            customize.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 82

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 83 -->
Action                               Details
Delete time duration for an overlay
                                     a. Select the Menu Type field.

                                     b. Select the delete icon (  ) to delete an
                                        overlay.

                                     c. In the Condition section, delete the corre­
                                        sponding time duration rows.

5. Select Publish.

Result
Customized time duration options are available on the floor map.

Configuring Design and Assign function for your network services

Create and configure a Design and Assign function in the Telecommunications Network
Inventory application. You can use it to design your network service and assign the network
resources.

The Design and Assign function is created and configured in the Workflow Studio using the
playbook experience. Some of the configuration is performed in ServiceNow AI Platform. These
settings include creating record producers, Change model, and request definitions. You can fully
automate your Design and Assign function by linking flows, actions, and subflows together in a
playbook.

Follow the steps to create and configure a Design and Assign function.
1. Create a Change Model.
2. Create record producers.
3. Add input variables to the record producer.
4. Add variable set to the record producer.
5. Create subflows.
6. Create request definitions.
7. Create a playbook for design and assign function.
8. Update the system property to configure the Design and Assign home page.

On completing these activities, a UI action displays on the Design and Assign home page to
launch the function. Select the UI action to launch your new Design and Assign function.

Configuring a Design and Assign function example

Watch this video to learn how to create and configure a Design and Assign function for a network
service through an example.
https://player.vimeo.com/video/1093821482?
h=f50e2973ae&badge=0&autopause=0&player_id=0&app_id=58479

To learn more, see Configure a Design and Assign function example.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    83
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 84 -->
Related topics
   Design and assign your network services
   Telecommunications Network Inventory subflows
   Building playbooks

Create a Change Model for Design and Assign function

Create a Change model and add the model states and model state transitions. You can use this
Change model to configure a Design and Assign function.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
You create a change model to configure a Design and Assign function for a network service. You
must add model states to the change model to move and track change requests through several
states.

Procedure
1. Navigate to All > Change > Administration > Change Models.
2. Select New.
3. On the form, fill in the fields.

Change Model form  Description
Field
Name               Unique name for the Change model.
Active
                   Option for enabling that this model is
                   available for selection when creating a
                   change request.

4. Select Save.
   The Model States context menu appears. You can select the states for your Change model.

5. On the Model States tab, select New.

6. On the form, fill in the fields.

Model State form

Field              Description

State              State that you want to include in your Change
                   model. You can add the following state
                   models.

                      Design in progress

                            The activities are in progress.

                      Design in review

                            The activities are completed and
                            the change request is in review
                            for approval.

                      Design complete

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    84
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 85 -->
Field                        Description
Initial State                         The change request is
                                      approved.

                                Closed

                                      The change request is closed.

                             You can also add a new model state to the
                             Change model based on the requirements
                             of your Design and Assign function. To learn
                             more, see add multi-layer model states .

                             Option to enable this state as the initial state
                             for your model. This field is automatically
                             selected when you add the first state to your
                             model. For Design and Assign function, you
                             can set Design in progress state as initial
                             state.

 7. To save the state and return to the Change Model form, select Submit.

 8. To add a transition between the states, select the display/hide hierarchical lists icon ( ) for
     the model state that you want to apply the transition to.
     The Model State Transitions context menu appears.

 9. Select New.
10. On the Model State Transition form, fill in the fields.

Model State transition form  Description
Field
From                         State that the change request is moving from.
To
Automatic Transition         State that the change request is moving to.

                             Option for enabling automatic transition
                             to the change request when the defined
                             conditions are met. Selecting this option also
                             helps prevent you from manually selecting
                             the State field on the Change request form.

11. To save the state and return to the Change Model form, select Submit.
12. Select Submit.

 Result
 A Change model is created with the model states and model state transitions.

 What to do next
 Create a record producer to configure an activity in the playbook. To learn more, see Create a
 record producer for the Design and Assign function.

 Related topics
    Create a Change model
    State model and transitions

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    85
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 86 -->
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Create a record producer for the Design and Assign function

Create a record producer in the Telecommunications Network Inventory application. You can use
this record producer to configure an activity in the playbook for the Design and Assign function.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Select New.
3. On the Record Producer form, fill in the fields.

Record Producer form  Description
Field
Name                  The descriptive name for the record
                      producer.
Table name
                      The table in which the record producer
                      creates records.

4. Select Submit.

Result
A record producer is created.

What to do next
 · Add variables to the record producer. To learn more, see Create variables for Design and

   Assign function.
 · Add variable set to the record producer. To learn more, see Add variable set to the record

   producer for Design and Assign function.

Related topics
   Record Producer
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Create variables for Design and Assign function

Create the variables for a record producer in the Telecommunications Network Inventory
application. You can use these variables as input fields in an activity card in the playbook for the
Design and Assign function.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    86
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 87 -->
About this task
Create and add input variables to the record producer. The variables are displayed on the activity
card in the playbook as input fields.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Select a record producer that you want to create variables for.
3. On the Variables tab, select New.
4. On the Variable form, fill in the fields.

Record Producer form  Description
Field
Type                  Select the variable type.
Catalog item
                      By default, the record producer name is
Question              displayed.

Name                  Question that you can ask users who are
                      using the catalog item to obtain related
                      information.

                      Name to identify the question.

                           Note: If this field is empty, its value is

                            auto-populated based on the Question
                            field.

Type Specification    Values specific to the type of variables.

5. Select Submit.

   Repeat the preceding steps to create additional variables for the record producer.

6. Select Submit.

Result
The input variables are created and added to the record producer.

What to do next
Add variables set to the record producer. To learn more, see Add variable set to the record
producer for Design and Assign function.

Related topics
   Record Producer
   Service catalog variables
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 87

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 88 -->
Add variable set to the record producer for Design and Assign function

Add a variable set to a record producer in the Telecommunications Network Inventory
application. You can use the variable set as input fields in an activity card for the Design and
Assign function.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
The variable set has common attributes which are retrieved during the change task creation.
You can use an existing variable set or create a variable set depending on your requirement. To
configure an activity in the Design and Assign playbook, use the DA common variables variable
set.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Select a record producer that you want to create variables for.
3. On the Variable Sets tab, select Edit.
4. Select DA common variables.

   The DA common variables set provides the common variables for the design and assign
   function.
5. Select Submit.

Result
The variable set is added to the record producer.

What to do next
Create a subflow for the activity. Create subflow for Design and Assign function.

Related topics
   Service catalog variable sets
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Create subflow for Design and Assign function

Create a subflow in the Workflow Studio. You can use this subflow to configure an activity in the
playbook for the Design and Assign function.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
You create a subflow by defining the input data that the subflow uses and the output data it
generates. Then you link the subflow to a request definition. You can use this request definition to
configure an activity to automate the design and assign function using a playbook. The subflows
associated with request definitions are triggered by the TNI Design Assign process flow after you
submit them.

Procedure

1. Navigate to All > Process Automation > Flow Designer.

2. Select New and then select Subflow from the option list.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    88
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 89 -->
3. Fill in the following fields:

Field                             Description
Subflow name                      Name of the subflow.
Description                       Description of the subflow.
Application                       Application scope to create the subflow in. You can select
                                  Network Inventory Advanced.

4. Create the subflow input and assign an appropriate value to the subflow output according to
   your requirement.
   To learn more, see Create a subflow in Workflow Studio .

        Note: The subflows are triggered by the TNI Design Assign process flow on submission,

         and the following inputs are required.
         Ignore validation error
         Change task

What to do next
 · Test the subflow, and publish it when it's ready to be added to the record producer.
 · Create a request definition and associate the subflow. To learn more, see Create a request

   definition for Design and Assign function.

Related topics
   Building subflows
   Telecommunications Network Inventory subflows
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Create a request definition for Design and Assign function

Create a request definition and use it to configure the Design and Assign playbook. You can use
this request definition to configure an activity for the Design and Assign playbook.

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
You create a request definition and attach the subflow to it. You can use the request definition to
configure the activity in the playbook for the Design and Assign function.

Procedure
1. Navigate to All > Telecom Network Inventory > Administration > Request Definitions.
2. Select New.
3. On the Request Definition form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    89
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 90 -->
Request Definition form  Description
Field                    Unique identifier for the request definition.
ID
                              Note: You can't modify an ID after the
Name
Task type                      request definition is created.

Flow                     Name to identify the request definition.
                         Task table that is associated with the change
                         request. Set the Task type field as Change
                         Task.
                         Subflow that is associated with the request
                         definition.

4. Select Submit.

Result
A request definition is created.

What to do next
Create and configure the playbook for Design and Assign function. To learn more, see Create a
playbook for the Design and Assign function.

Related topics
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Create a playbook for the Design and Assign function

Create a playbook for the Design and Assign function in the Workflow Studio. You can use the
playbook to design and assign a network service in the Telecommunications Network Inventory
application.

Before you begin
 · Create a Change Model.
 · Create record producers.
 · Add input variables to the record producer.
 · Add variable set to the record producer.
 · Create subflows.
 · Create request definitions.

You create and configure the playbook in the Workflow Studio to fulfill a service request from the
customer. Following are the configuration steps.
1. Create a playbook.
2. Add a stage.
3. Set up the trigger.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    90
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 91 -->
4. Add and configure activities.
5. Activate the playbook.

Role required: admin, playbook.admin

Procedure
1. Navigate to All > Workflow Studio > Playbooks.
2. Select New and then select Playbook from the option list.
3. Fill in the following fields.

Playbook                    Description
Field
Playbook name               Enter a unique, user-facing name for your playbook. This
                            name appears to agents and fulfillers during runtime of your
Description                 playbook.
Application
                            Optionally, enter some descriptive details about your
                            playbook.

                            Choose an application scope that you want your playbook
                            to run in. You can select Network Inventory Advanced.

   The builder displays in Diagram view by default, but you can select Board view to switch
   views.

4. Add and configure your trigger.
   To learn more, see Add and configure a trigger in a playbook .

a. Select the more options icon ( and select Properties.

b. On the Schedule tab, fill in the fields.

Schedule tab                Description
Field
Define your own conditions  Select the trigger type from the list. You can select Record
for when your process runs  Create.
Table
                            Select a table to trigger your playbook to run. For Design
Trigger condition           and Assign function, select Change Request. When you
                            create a change request, the playbook gets triggered.
Run my trigger
                            The conditions that cause your playbook to run. Select your
                            Change model as Trigger condition.

                            Select an option to run your trigger. You can select Once
                            so that only one playbook process instance is created for
                            design and assign.

             c. Select Done.

          5. Select Add Stage to add a stage.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 91

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 92 -->
   You must add only one stage for the Design and Assign function. To learn more about the
   playbook stage, see Add and configure a stage in a playbook .

6. Add and configure the activity.

a. Select Add activity.

b. Select the activity that you want to add in the playbook.
   You can select an existing activity that is associated with the Network Inventory Advanced
   application and update them according to your requirement. You can also create and add
   new activity. To learn more about creating an activity, see Add and configure an activity in a
   playbook .

Default Activities for Design and Assign playbook

Activity                                    Description
Auto Create Change Task
                                            This activity is used to invoke a record producer to
                                            create change task record and then display the change
                                            task form view. This activity does the following.

                                             Automatically creates change task.

                                             Invokes the associated record producer.

                                             Creates change task record with record producer
                                               variables.

                                             Displays change task form view in the activity card.

Display Form                                This activity displays the form view according to the
                                            selected table and view.

Review and submit design assign This activity is used to review and submit a design and
                                                 assign request. It automatically creates a change task.

You can also create an activity. To learn more, see Add and configure an activity in a
playbook .

Your new activity appears in the stage, and the Activity properties panel appears.

c. On the Details tab, fill in the fields.

Details tab              Description
Field
Label                    Enter a unique, user-facing name for your activity. This name
                         appears to agents and fulfillers during runtime of your playbook.
Description
                         Optionally, enter some descriptive details about your activity.

             d. Open the Automation tab.
                Automation, Inputs, and Outputs sections appear.

             e. Select Show additional options to view all fields.
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 92

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 93 -->
              f. Under the Inputs section, define the values of the activity's inputs.
                Configure inputs with a hard-coded value, or by selecting the data pill picker icon ( ) to
                use data from previous activities or the playbook trigger.

             g. Open the UI Layout tab and fill in the fields.
                Depending on the UI Layout associated with the activity, different sections and fields appear
                on this tab. These sections and fields let you set up the activity data that renders during the
                runtime Playbook Experience.

             h. Select Save and close.

          7. Keep adding activities according to your design requirement.
          8. After you have added all appropriate activities to your playbook, select Activate in the header.

             Activating your playbook publishes it so that it runs when triggered.

         Result
          When your playbook's trigger conditions are met, your playbook runs.

         What to do next
          Update the system property to add the playbook in the Design and Assign home page. To learn
          more, see Update system property to configure the Design and Assign home page.

          Related topics
             Playbooks in Workflow Studio
             Configuring Design and Assign function for your network services
             Configure a Design and Assign function example

         Update system property to configure the Design and Assign home page

          Update the system property to add a playbook to the Design and Assign home page in the
          Telecommunications Network Inventory application. You can launch the Design and Assign
          function from the home page and execute the steps to achieve your goal.

         Before you begin
          Role required: admin, sn_ni_core.inventory_admin

         About this task
          Add the change model in the system property to use the playbook for the Design and Assign
          function. As you add, the Design and Assign home page lists a UI action to launch the playbook.

         Procedure
          1. Navigate to All > System Properties > All.
          2. Open the sn_ni_ws.tni_design_assign_chg_models record.
          3. In the Value field, add the sys_id of the change model.

                Note: The default value is the sys_id of the logical connection model that is available in

                    the Design and Assign home page.

          4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 93

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 94 -->
Result
The Change model name appears as a UI action in the Design and Assign home page. Selecting
the UI action launches the playbook.

What to do next
Use the playbook to design and assign a service request. To learn more, see Design and Assign
function.

Related topics
   Configuring Design and Assign function for your network services
   Configure a Design and Assign function example

Modify the Design and Assign function layout

Modify the Design and Assign function layout in the Telecommunications Network Inventory
application by configuring the endpoint. You can create the layout according to your network
service requirement

Before you begin
Role required: admin, sn_ni_core.inventory_admin

About this task
By default, the Design and assign function layout shows three sections such as activity picker,
activity viewer, and network diagram. Currently the network diagram shows the circuit map for
logical connection. You can customize the network diagram according to your requirement by
configuring the sn_ni_ws.TNIDesignAssignConfiguration endpoint. You can also
remove the network diagram from the layout by deleting the associated script.

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. Open the sn_ni_ws.TNIDesignAssignConfiguration record.
3. Edit the script according to your requirement.
4. Select Update.

Configure a Design and Assign function example

This example demonstrates how you can create and configure a playbook to design and assign a
network service in the Telecommunications Network Inventory application.

Example overview

Consider you have an order requests from a customer to fulfill a network service that must create
Optical Network Terminals (ONT) for a specified location. To design and assign this network
service, you must capture the ONT details such as an ONT site and equipment template details.
By creating and configuring a playbook for the Design and Assign function, you can automate
these tasks by following step-by-step guidance for designing the network service.

As a playbook admin, you create and configure the playbook to design and assign your inventory
for the network service. The playbook contains the following activities to create the ONT device.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    94
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 95 -->
1. Setup Network Service - Collects service details of your design request.
2. Capture ONT Details - Capture the ONT site and inventory template details to instantiate the

   equipment.
3. Review and Submit - You review the activity details and creates the ONT devices for the

   specific location according to the template.

As a part of this playbook workflow, you automate the following.
 · Creates a change request for the ONT design.
 · Creates change tasks for the activities such as capturing ONT details.
 · Execute the change tasks to instantiate the equipment using an inventory template.

As a playbook agent, you can fulfill your customer orders and requests for the network service by
using this Design and Assign function.

Prerequisites

Prior to creating a playbook, as an inventory core admin, you create and configure the following.
1. Create a Change model and add model states.

Change model details     Description
Item                     Set name as Network Service Automated Flow.
Change model name        Add the following model states and set the model state transitions.
Model state
                            Design in progress
                                  Set model state transition to Design complete.

                            Design complete
                                  Set model state transition to Closed.

                            Closed
                                  Don't set any model state transition for this state.

                              Note: You must add Allow CI Modification attribute to the

                               Design in progress and Design complete model states.

   To learn more about the detailed steps, see Create a Change Model for Design and Assign
   function.

2. Create a record producer to capture the ONT input details such as ONT site and inventory
   template. This record producer is used in the second activity in the playbook.

Record producer details

Item                     Description
Record producer
                          Set the record producer name as Capture ONT Details.
                          Set the Table field as Change Task.

To learn more about the detailed steps, see Create a record producer for the Design and
Assign function.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    95
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 96 -->
3. Add variables to the record producer.

Variable details  Description
Item
Variable 1        Set the following details for Variable 1.
                   Set the Type field as Reference.
Variable 2         On the Question tab, set the Question field as ONT site.
                   On the Specification tab, set Reference field as Network Site

                     [cmdb_ci_ni_site].

                  Set the following details for Variable 1.
                   Set the Type field as Reference.
                   On the Question tab, set the ONT Template field as ONT site.
                   On the Specification tab, set Reference field as Inventory

                     Template [sn_ni_core_inventory_template].

   To learn more about the detailed steps, see Create variables for Design and Assign function.

4. Select DA common variables as a variable set to the record producer.

   To learn more about the detailed steps, see Add variable set to the record producer for Design
   and Assign function.

5. Create a subflow for the request definition that you use to configure the second activity in the
   playbook.

Subflow details   Description
Item
Subflow name      Set the subflow name as Capture ONT Details.
Input fields
                  Add the following input fields for the subflow.
Actions
                   Set Label as Ignore Validation Error and the Type as true/false
                     for input 1.

                   Set Label as Change task and the Type as Reference.Change
                     Task for input 2.

                  Add the following actions to the subflow.

                   Add the Get Catalog Variable action to read the details from
                     the record producer.

                   Add the TNI Create CI from Template action to create the
                     equipment from the inventory template.

                   Add the Update Record action to update the equipment to the
                     affected Configuration Items (CI)

   To learn more about the detailed steps, see Create subflow for Design and Assign function.
6. Create a request definition that you use to configure the second activity in the playbook.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 96

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 97 -->
Request definition details

Item                   Description

Request definition name Set the following details for the request definition.

                        Set the request definition name as Capture ONT Details.
                        Set the Task type field as Change Task.

To learn more about the detailed steps, see Create subflow for Design and Assign function.

Creating and configuring a playbook

As a playbook admin, you create and configure the playbook for the Design and Assign function
in the Workflow Studio. For the detailed information about the following steps, see Create a
playbook for the Design and Assign function.
1. Create a playbook and set the name as Design Network Service.
2. Add and configure your trigger.

Trigger details        Description

Item                   On the Schedule tab, set the following details for the trigger.
Additional properties
window                  Set the Define your own conditions for when your process
                          runs as Create Record.

                        Set trigger condition as Network Service Automated Flow
                          Change model.

                       You configure additional property to trigger the playbook when a
                       change request is created using the Network Service Automated
                       Flow Change model.

3. Create a stage and add activities such as Setup Network Service, Capture ONT Details, and
   Review and Submit.

   a. Create and configure the Setup Network Service activity.

Setup Network Service activity details

Item                        Description
Add activity
Details tab                 Select the Display Form default activity.
UI Layout tab
                            Rename the activity as Setup Network Service.

                            Set the following details in the UI Layout tab.
                             Set the Associated table field as Chang Request.
                             Set the Associated record field as Flow DataTrigger -

                               change_request > change_request Record
                             Set the Experience Status Table field as Flow Data.
                             Set the Experience Status Record field as Automation plan >

                               Create Flow Data > Outputs > Flow Data Record.
                             Set the Form View field as Playbook.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 97

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 98 -->
b. Create and configure the Capture ONT Details activity.

Capture ONT Details activity details

Item            Description
Add activity
Details tab     Select the Auto Create Change Task default activity.
Automation tab
                Rename the activity as Capture ONT Details.
UI Layout tab
                Set the following details in the Automation tab.
                 Set the Request Type field as Capture ONT Details. The

                   Capture ONT Details is the request definition that you
                   created.

                 Set the Record Producer field as Capture ONT Details.
                 Set the Change Request field as Flow DataTrigger -

                   change_request > change_request Record

                Set the following details in the UI Layout tab.
                 Set the Associated table field as Chang Task.
                 Set the Associated record field as Automation plan > Create

                   Change Task Data > Outputs > Change Tasks.
                 Set the Experience Status Table field as Flow Data.
                 Set the Experience Status Record field as Automation plan >

                   Create Flow Data > Outputs > Flow Data Record.
                 Set the Form View field as Playbook.

c. Create and configure the Review and Submit activity.

Review and Submit activity details

Item            Description
Add activity
Details tab     Select the Display Form default activity.
UI Layout tab
                Rename the activity as Review and Submit.

                Set the following details in the UI Layout tab.
                 Set the Associated table field as Chang Task.
                 Set the Associated record field as Automation plan > Create

                   Change Task Data > Outputs > Change Tasks.
                 Set the Experience Status Table field as Flow Data.
                 Set the Experience Status Record field as Automation plan >

                   Create Flow Data > Outputs > Flow Data Record.
                 Set the Form View field as Playbook.

   d. Select Save and close.
4. Select Activate.

The following example shows the playbook that you created and configured in the Workflow
Studio.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    98
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 99 -->
                    Example of the playbook in Workflow Studio

         Adding playbook to home page

          You add the sys_id of the Network Service Automated Flow Change model in the
          sn_ni_ws.tni_design_assign_chg_models record. To learn more about the detailed
          steps, see Update system property to configure the Design and Assign home page.

         Using a Design and Assign function

          As an agent, you use the playbook for the Design and Assign function to fulfill the requirement of
          the network service by following the steps.
          1. Navigate to Workspaces > Network Inventory Workspace.
          2. Select the design and assign icon ( ) to open the Design and Assign home page.
          3. On the Design Assign home page, select New > Network Service Automated Flow.
          4. Complete the activities on the playbook to design and assign your network service.
          This process creates an ONT device based on the template and site that you selected in the
          playbook activity.
          The following example is the Design and Assign function that you created.

                    Example of playbook

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 99

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

