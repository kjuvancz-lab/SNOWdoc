# Zurich Telecommunications Network Inventory â€” Import models and templates / Export hierarchy of models and templates

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 192â€“215 of 425

Sections: Import models and templates (p192); Export hierarchy of models and templates (p196); Using Design & Assign Network (p197)

---

<!-- page 192 -->
The default naming patterns of slot, subslot, and port records that are created under the
equipment are as follows:

Naming pattern                        Naming pattern
Inventory record
Slot                                  "slot-"+"chassis_position+"/"+position"
Subslot
                                      "subslot-"+"chassis_position
Port                                  +"/"+equipment_slot_position+"/"+position"

                                      "port-"+chassis_position
                                      +"/"+equipment_slot_position
                                      +"/"+parent_slot_position+"/"+position"

You can edit the Name Pattern field.

What's next

Use a this template to instantiate logical composites and related equipment and rack records
using design and assign. To learn more, see Create an equipment record by using design and
assign.

Related topics
   Define a network model relationship
   Create an equipment record by using design and assign
   Equipment extension classes

Import models and templates

Import models and templates to ensure consistency, reusability and reduce errors. You can
import pre-defined template excels to streamline the tasks using the Telecommunications
Network Inventory application.

Import a model

Create an import model request to import your collection of models, and streamline the workflow
using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.telco_inventory_catalog_manager

About this task
After you create an import template request, a detailed summary is generated that categorizes
the processed records, such as total records, skipped, inserted, ignored, updated, and failed
records.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

          2. Select the list icon ( ), and then go to Import > Imports.                                                                                                         192

          3. Select New.

          4. On the Select an Import File Type window, select Import Models (xls) from the list.

          5. On the Details tab, fill in the general information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 193 -->
The following table lists the fields that are unique to the import model request.

Import model request

Field  Description

Name   Identification of the import model.

Description Short description of the import model.

File   Select Attach File to attach the import model file.

       Note:

        Models import is only for Equipment Model, Equipment Holder Model,
          Card Model, and Interface Model.

        Import doesn't support images.

6. Optional: Download the demo data and model template by selecting Create Excel Template.

   The excel template is created based on the Import model template
      [sn_ni_adv_import_model_template] table. An admin can customize the template and
      update it as required.

   The following relationship types are supported for import models.
      Equipment to slot
      Slot to card
      Equipment to network interface
      Card to network interface
      Rack/cabinet to rack/cabinet slot
      Rack/cabinet slot to equipment

7. Select Import.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    193
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 194 -->
   During the data import procedure:
      Integration Commons for CMDB: The plugin is automatically activated and by default. To
         learn more, see Integration Commons for CMDB .

      Normalization Data Service Client (Optional): If installed and configured, the following
         normalization rules are applied.

         Removes special characters from the Manufacturer name.
         The new value is replaced if it matches with five characters of the existing value.
         Downloads standard and variant company names.
         Replaces company names with their standard equivalents. To learn more, see

            Normalization data services . To customize the normalization rules, see Normalized
            company names table .

   The generation of a record triggers its automatic addition to the Import Results. From this
      tab, you can see the import status and can select the generated model.

   A dedicated inventory template is generated for every rack/cabinet equipment holders,
      equipment models, and card models. Moreover, the related templates are generated based
      on the defined model relationship.

Result
The Import Results tab appears next to the Details tab where you can view, add, update, and
delete the import set row.

What to do next
 · Redirect to the generated model from Import Results tab.
 · Delete a record. To learn more, see Delete a record.

Import templates

Import Template enables you to capture all required inventory details in a prescribed, predefined
Excel format and upload them in bulk to the system. Create an import template request to
import your inventory templates, enforce data formatting, and streamline the process using the
Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.telco_inventory_catalog_manager, and
sn_ni_core.inventory_template_manager

About this task
After you create an import template request, a detailed summary is generated that categorizes
the processed records, such as total records, skipped, inserted, ignored, updated, and failed
records.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Import > Imports.
3. Select New.
4. On the Select an Import File Type window, select Import Templates (xls) from the list.
5. On the Details tab, fill in the general information.

   The following table lists the fields that are unique to the import template request.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    194
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 195 -->
Import template request

Field        Description
Name         Identification of the import template.
Description  Short description of the import template.
File         Select Attach File to attach the import inventory template file.

6. Optional: Download the demo data and the template by selecting Create Excel Template.
   The template is created based on the Import template template
   [sn_ni_adv_import_template_template] table. You can customize the template and update it as
   required.

7. Select Import.
   The generation of a record triggers its automatic addition to the Import Results. From this
      tab, you can see the import status and can select the generated inventory template.
   The related templates are generated only if the model relationship is defined, such as, for
      rack or equipment or card inventory template, related templates of slots are generated.

Result
The Import Results tab appears next to the Details tab where you can view, add, update, and
delete the import set row.

What to do next
 · Redirect to the generated inventory template from the Import Results tab.
 · Delete a record. To learn more, see Delete a record.

Import models and templates in JSON format

Create an import request to import your collection of models and templates in JSON format, and
streamline the workflow using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_admin

About this task
After you create an import template request, a detailed summary is generated that categorizes
the processed records, such as total records, skipped, inserted, ignored, updated, and failed
records.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Import > Imports.
3. Select New.
4. On the Select an Import File Type window, select Import Models and Templates (JSON) from

   the list.
5. On the Details tab, fill in the general information.

   The following table lists the fields that are unique to the import model request.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    195
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 196 -->
Import model request

Field  Description

Name   Identification of the import model or template.

Description Short description of the import models or templates.

File   Select Attach File to attach the import model file in JSON format.

       Note:

        Models import is only for Equipment Model, Equipment Holder Model,
          Card Model, and Interface Model.

        Import doesn't support images.

6. Optional: Download the demo data and model template by selecting Create Excel Template.

7. Select Import.

   During the data import procedure:

      Integration Commons for CMDB: The plugin is automatically activated and by default. To
         learn more, see Integration Commons for CMDB .

      Normalization Data Service Client (Optional): If installed and configured, the following
         normalization rules are applied.

         Removes special characters from the Manufacturer name.

         The new value is replaced if it matches with five characters of the existing value.

         Downloads standard and variant company names.

         Replaces company names with their standard equivalents. To learn more, see
            Normalization data services . To customize the normalization rules, see Normalized
            company names table .

   The generation of a record triggers its automatic addition to the Import Results. From this
      tab, you can see the import status and can select the generated model.

   A dedicated inventory template is generated for every rack/cabinet equipment holders,
      equipment models, and card models. Moreover, the related templates are generated based
      on the defined model relationship.

Export hierarchy of models and templates

Export a hierarchy of models, inventory templates, and all related records efficiently using the
application.

Before you begin
Role required: sn_ni_core.inventory_admin

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to any model or inventory template.
3. Select a desired record.
4. Export all related records of the selected model or inventory template by selecting Export

   Hierarchy.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    196
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 197 -->
   You can also select up to five models or templates and select the Export Hierarchy from the
   list view.
   A list of all related records of the selected model or inventory template is displayed.

5. Select a related record link.

6. Select > Export.

7. On the Export window, select the desired file type to export the data.
   You can export the file in the following formats:

   Excel
   CSV
   JSON
   PDF
8. On the Export window, select the desired delivery type to export the data
   You can select the following formats:

   Download
   Email
9. Select Export.
   When exporting a model or template with parent-child relationships, only the parent and its
   children are included. Siblings aren't be exported.

Result
The selected model or inventory template with all related records is downloaded in the selected
format.

Instantiating inventory using design and assign

By instantiating your network inventory in the Telecommunications Network Inventory
application, you can generate and validate your inventory records at the site level. You can also
generate your individual network instances from your defined inventory templates and models
and then verify that they're properly configured.

Design and assign overview

You can instantiate a network inventory by using the design and assign function by doing the
following tasks:

1. Create a change request by using the change model.

   A change request records the details about the change, such as the reason of the change
   in any network, priority, risk, type of change, and change category. By using a change
   request, you can change any existing network workflow. You can also expand the application
   capabilities, request new services, modify network structures, and much more. To learn more,
   see Create a change request from Network Inventory Workspace.

2. Execute a change task.

The list of tasks are created from a change-triggered workflow or you can create a change
task manually. The change tasks help you to track and manage the various tasks required to
implement the requested changes. By using a list of change tasks, you can assign a task to an
inventory agent who can then execute the actions and create a configuration item. At the same
time, other agents can work on their assigned change tasks. After all tasks are completed and
closed by the agents, the change request can also be closed with comments. To learn more,
see Create and execute a change task.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    197
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 198 -->
Using a record producer in the design and assign function

If a record producer form is assigned to the selected change model, based on the provided
input, a change request is automatically generated. If a record producer form isn't assigned,
you can assign a record producer. To learn more, see Assign record producer form to a change
model.

The record producers capture the data that you must enter to perform the inventory allocation
task. By mapping a record producer form, you can do the following tasks:

 · Pass third-party application parameters to the Telecommunications Network Inventory
   application. The Order Management for Telecommunications and Media (OMT) integration
   is an example. After you assign a record producer form to the change model, the assigned
   form appears when you select that change model. When you complete the form, the details
   are filled in the change request form, and the change tasks are created automatically. To learn
   more, see Assign record producer form to a change model.

 · Change the type of change request. The change task form includes a Request type field that
   describes the type of change request. Based on your selection, a form appears on the Task
   Attributes tab. By assigning a record producer form to the request type field of the change
   task, you can determine which form appears when you select a type. Based on the selected
   Request type field, a form appears under the Task Attributes tab. After filling out the fields in
   the form, the change request form updates. To learn more, see Assign record producer form for
   a request type of a change task.

Create a change request from Network Inventory Workspace

Create, review, update, or close a change request for a change model from the network inventory
workspace of the Telecommunications Network Inventory application. You can also analyze the
instantiation details of the network instance.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
You can create, review, update, or close a change request task in the Telecommunications
Network Inventory application.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.
3. Optional: View the list of your assigned change tasks by selecting Assigned to me.

        Note: The list view of Changes displays the list of all change requests, regardless of the

         domain. Add a filter to see only the telecommunications network inventory (TNI)-related
         change requests.

4. Select New.
5. In the search field, use the filter to select any one of the following change models that you want

   to create a change request for:

   Add card
   Create Inventory Equipment
   Create Logical Connection

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    198
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 199 -->
     Create Physical Connection
     Create Rack/Cabinet
     Add equipment to Rack/Cabinet
     Remove Equipment/Shelf from Rack/Cabinet
     IP Address Allocation
     Phone Number Allocation

         Note: For design assign link aggregation group and GPON broadband service, see

           Create a Link Aggregation Group using design and assign function and Design your
           GPON Broadband Service.

 6. Select Next.
     A record producer or a change request form is displayed depending on the decision table
     entry. To learn more, see Assign record producer form to a change model.

 7. Select Save.
     A change request is created and related tabs appear. To learn more, see Change request
     related tabs.

 8. On the Overview tab, do one or more of the following actions:
     View or update a summary of this change request.
     Add scopes.

        To learn more, see Scopes .

     Assign this change request to a group or a person.

           Note: To assign this change request, select Assign > fill in the assignment group and

              assigned to > Save.

     Set a schedule for this change request. To learn more, see Schedules .
     Calculate the risks for this change request.

        When you select Calculate Risk, it analyzes an update in the Risk field on the Details tab.

     View and create the change tasks by selecting New.

        To learn more, see Create and execute a change task.

 9. On the Details tab, fill in the fields.
     For a description of the field values, see Change request and change task forms.

10. Select Save.
     A change task is created and based on the details provided. The other related tabs are also
     updated, such as the Affected CIs, and the Impacted services/CIs.

11. Optional: Select a tab to see the impact that it has on the change request.

 What to do next
 Create, review, update, or close the change tasks.
 For more information, see Create and execute a change task.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    199
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 200 -->
Create and execute a change task

Create a change task after you create a change request in the Telecommunications Network
Inventory application. By creating a change task, you can complete the requested change.

Before you begin

 · 1. Navigate to Telecom Network Inventory > Inventory Models, create your inventory models,
      and define their relationships.

      To learn more, see Manually create and review your network asset instances.

  2. Navigate to Telecom Network Inventory > Network Inventory Templates, create the
      inventory templates for your equipment, and establish the template relationships.

      To learn more, see Create inventory template for network asset instantiation.

 · Role required: sn_ni_core.inventory_template_manager, sn_ni_core.inventory_admin,
   sn_ni_core.telco_inventory_catalog_manager, sn_ni_core.inventory_agent.

About this task
Based on the details in the change request form, a change task is created automatically. You can
view, create, update, or close the change tasks from the Overview tab or from the Change Tasks
tab of a change request. You can also assign a record producer form to a change task. To learn
more, see Assign record producer form for a request type of a change task.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Open your change request.
 4. On the Overview tab, scroll down and expand the Change task section.
 5. Optional: Select the Change Tasks tab.
 6. After a change request is created, on the Overview tab, scroll down and expand the Change

     task section.
     You can also navigate to the Overview tab and initiate the creation of a change task.
 7. Select New.
 8. Choose a change task type:
     Planning
     Implementation
     Testing
     Review
 9. Select Create.
     A change task form that is based on the selected change model is displayed.
10. Optional: Select the existing change task.
11. On the form, fill in the fields.
     To learn more about the fields, see Change request and change task forms.

Note: For the design assign link aggregation group and GPON broadband service,

see Create a Link Aggregation Group using design and assign function and Design your
GPON Broadband Service.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    200
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 201 -->
12. Select Submit.
     The Details tab is updated with the provided details and required modification to the CI is
     performed. All performed changes are updated in the work notes. To learn more about the
     fields, see Change request and change task forms.

         Note: The removal of equipment or a shelf from a rack also removes all associated CI

           relationships between the equipment/shelf and the rack, along with the selected CI.

13. On the Affected CIs related tab, see all the configuration items that are impacted due to this
     change task.
     After creating a rack, navigate to Configuration item, or Affected CIs to visualize the front view
     and rear view of a rack.

14. Optional: If your change model is a rack, select the Configuration item to visualize the rack.
15. Select Save.

 Create a Link Aggregation Group using design and assign function

  Design and assign a Link Aggregation Group (LAG) with the creation of Ethernet connections in
  the Telecommunications Network Inventory application. By creating a LAG connection, you can
  fulfill an order request from the customer.

 Before you begin
  Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 Procedure
  1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Design assign link aggregation group.
 5. Select Next.
 6. On the Provision LAG form, fill in the fields.

     To learn more about the fields, see Provision LAG form.
  7. Select Submit.

     A new change request is created and the Change TNI LAG Template workflow is triggered.
     Three change tasks have been created.
 8. Expand the change task section on the Overview tab or select the Change Tasks tab.

         Note: To learn more about the Overview tab, see Create a change request from

           Network Inventory Workspace.

     To create change tasks, see Create and execute a change task.
 9. Open a task.
10. On the Details tab, on the change task form, fill in the fields.

     For a description of the field values, see the Change task form in Change request and change
     task forms.
11. Create, review, update, or delete an affected configuration item by selecting the Affected CIs
     related tab.
12. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    201
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 202 -->
What to do next
Add or remove a member to LAG using Add or remove a member to Link Aggregation.

Add or remove a member to Link Aggregation

Create a change request to add or remove a member to the design assign link aggregation
change request by using the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_agent

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.

 3. Select the New button.

 4. Select Add/Remove member to Link Aggregation.

 5. Select Next.

 6. On the Add/Remove member to Link Aggregation form, fill in the fields.
     To learn more about the fields, see Add or Remove member to Link Aggregation form.

 7. Select Submit.

 8. Optional: Select the Affected CIs tab.

 9. Optional: Select the revised CI having V1 as the suffix.
     The revised CI is added under the Affected CIs tab only if the Create revision check box is
     selected.

10. Optional: Modify the fields as required.
     Adding a new member interface automatically creates a new ENET with a corresponding
        logical interface.

     Adding an interface that belongs to an existing ENET connection, the system automatically
        links it to the existing ENET connection instead of creating an ENET.

11. Optional: Create a change task for operationalization.
     To learn more, see Operationalize a configuration item.

Design your GPON Broadband Service

The GPON broadband service change model creates and orchestrates multiple change tasks
required to fulfill a GPON broadband service order.

Before you begin
Before establishing a GPON Broadband Service change request and completing the related
change tasks, inventory catalog managers and template managers must complete the following
network configuration setup.

1. Navigate to Telecom Network Inventory > Inventory Models, create your inventory models,
   and define their relationships.

   To learn more, see Manually create and review your network asset instances.

2. Navigate to Telecom Network Inventory > Network Inventory Templates, create the inventory
   templates for your equipment, and establish the template relationships.

   To learn more, see Create inventory template for network asset instantiation.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    202
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 203 -->
Install the Telecommunications Network Inventory Advanced and Core demo data.
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select GPON Broadband Service > Next.
 5. On the GPON Broadband form select the Customer Site name.

     Other fields are pre-populated but can be updated as needed.. To learn more about the fields,
     see Change request and change task forms.
 6. Select Submit.
     The change request is created based on your input and GPON Broadband service form
     appears with relevant tabs. To learn more, see Change request related tabs
 7. Select an Assignment group.
 8. Select Save.

 The system automatically creates change tasks and displays them in the Change Taskstab.For
 more information see Change request related tabs

 9. Switch to Change Task tab and click on the change task to review it.
     In the change task tab, you will find the change request number, request status and other
     related tabs.

10. Fill in the required fields on the Task Attributesform.
     For field descriptions, see Change request and change task forms The Detailstab is updated.

11. Click on Affected CIs tab, to view the configuration items affected by this change task.
12. Select Save.

 Modify logical connection endpoints model

 Modify logical connection endpoints and its details using design and assign function in
 the Telecommunications Network Inventory application. By making changes in the logical
 connection endpoints, you can fulfill an order request from the customer.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.

3. Select the New button.

4. Select Modify Logical Connection endpoints > Next.

5. On the form, fill in the fields.
   To learn more, see Change request and change task forms.

6. Select Submit.
   A new change request is created. Furthermore, a change task is automatically created and
   other related tabs appear. To learn more, see Change request related tabs

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    203
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 204 -->
 7. Select the Change Tasks tab.
 8. Open and review the change task record.
 9. On the Logical connection modification request form, update the logical connection endpoints

     and details, as required.
     To learn more about the fields, see Logical connection modification request form.
10. Select Submit.
     The Details tab is updated.
11. On the Affected CIs related tab, see all the configuration items that are impacted due to this
     change task.
12. Select Save.

 Modify physical connection endpoints

 Modify physical connection endpoints and it's details using design and assign function in
 the Telecommunications Network Inventory application. By making changes in the physical
 connection endpoints, you can fulfill an order request from the customer.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Modify Physical Connection endpoints > Next.
 5. On the form, fill in the fields.

     To learn more, see Change request and change task forms.
 6. Select Submit.

     A new change request is created. Further, a change task is automatically created and other
     related tabs appear. To learn more, see Change request related tabs
 7. Select Change Tasks tab.
 8. Open and review the change task record.
 9. On the Physical connection modification request form, update the physical connection
     endpoints and details, as required.
     To learn more about the fields, see Physical connection modification request form.
10. Select Submit.
     The Details tab is updated.
11. On the Affected CIs related tab, see all the configuration items that are impacted due to this
     change task.
12. Select Save.

 Create a network topology record by using design and assign

 Create a network topology record using the design and assign function in the
 Telecommunications Network Inventory application. By creating the network topology, you can
 visualize how the network elements are organized and connected to one another.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    204
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 205 -->
Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
When you instantiate a template, it creates a corresponding configuration item (CI) record in
the Network Topology [cmdb_ci_network_topology] table. And the root nodes are stored in
the Topology Root Node [cmdb_network_topology_root_node] table. To learn more about the
topology data model, see Data model.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Design & Assign topology.
 5. Select Next.
 6. On the Details tab, fill in the fields.

     For a description of the field values, see Change request and change task forms.
 7. Select Save.

     A change task is created.
 8. Open the change task.
 9. On the Task Attribute tab, fill in the fields.

     To learn more, see Task attributes in Topology form.
10. Select Submit.

 Result
 The topology and network topology root node records are created.

 What to do next
 You can view the topology in the Network Viewer window. To learn more, see Viewing a network
 topology.

 Related topics
     Create a network topology model

 Add or remove a member to network topology record

 Modify a network topology record using the design and assign function in the
 Telecommunications Network Inventory application. You can add or delete the elements in an
 existing network topology record and visualize how the network elements are organized and
 connected to one another.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.
3. Select the New button.
4. Select Add/Remove member to Topology.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    205
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 206 -->
5. Select Next.
6. In the Select topology field, select the network topology record that you want to modify.

   You can add or delete the following field values:
   Topology nodes
   Topology sites
   Root nodes
   Topology connections
7. Select Submit.

Result
When modifying a network topology record, the following actions occur:
 · When you remove a topology site, all nodes and connections associated with that site within

   the topology are removed from the relationship.
 · When you remove a topology or root node, all connections associated with the node within the

   topology are removed from the relationship.
 · When you remove a topology connection, it's removed from the relationship.
 · When a node is removed from the relationship, if it's part of a root node, that entry will also be

   removed.

Related topics
   Network topology
   Network topology

Create a cable record by using design and assign

Create a cable record using the design and assign function in the Telecommunications Network
Inventory application. By creating the cable and related strand records, you can fulfill an order
request for a fiber optical cable record.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
When you instantiate a cable template, it creates the corresponding configuration item
(CI) records in the Fiber Optical Cable [cmdb_ci_fiber_optical_cable] and Fiber Strand
[cmdb_ci_fiber_strand] tables. To learn more about the cable data model, see Data model.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.
3. Select the New button.
4. Select Add cable.
5. Select Next.
6. On the Details tab, fill in the fields.

   For a description of the field values, see Change request and change task forms.
7. Select Save.

   A change task is created.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    206
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 207 -->
8. Open the change task.
9. On the Task Attributes tab, fill in the fields.

Add cable form - Task attributes tab

Field               Description
A end termination   Network site where this cable is starting from.
Z end termination   Network site where the cable is ending.
Inventory template  Name of the inventory template for the cable model.

10. Select Submit.

 Result
 The cable and related strand records are created.

 Related topics
     Create an inventory template for cable models
     Create a cable model

 Create an equipment record by using design and assign

 Create an equipment record using the design and assign function in the Telecommunications
 Network Inventory application. By creating the equipment and its related inventory records, you
 can fulfill an order request for an equipment record.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 When you instantiate an equipment template, it creates the corresponding configuration item
 (CI) records in the equipment table. To learn more about the equipment tables, see Equipment
 extension classes.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.
 2. Optional: Create a change request to instantiate an equipment record.

a. Select the list icon ( ), and then go to Inventory > All Equipment.

        Note: To create an equipments from the rack record, go to Inventory > Rackand open

         the rack record. And then select Create equipment from more options menu.

b. Select Create equipment.

c. Select the inventory template in the Apply inventory template field.

d. On the Add equipment details section, fill in the fields.
   For a description of the field valuesTo learn more about the fields, see Equipment form.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    207
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 208 -->
    e. Select Next.

     f. Confirm the details and select Create.

     The equipment record is created.

 3. Select the list icon ( ), and then go to Changes > All.
 4. Select the New button.
 5. Select Create Inventory Equipment.
 6. Select Next.

     A change request is created.
 7. On the Details tab, fill in the fields.

     For a description of the field values, see Change request and change task forms.
 8. Select Save.

     A change task is created.
 9. Open the change task.
10. On the Task Attribute tab, fill in the fields.

     For a description of the field values, see Equipment task attribute form.
11. Select Submit.

 Result
 The equipment record is created along with the associated inventory records. These records are
 generated depending on the model relationship attached with the inventory model.

 Related topics
     Create an inventory template for a logical composite
     Add an equipment or rack to logical composite
     Remove an equipment or rack from logical composite

 Add a card to equipment

 Add a card to equipment record using design and assign function in the Telecommunications
 Network Inventory application. By adding a card, you can fulfill an order request for a customer
 requirement.

 Before you begin
   · Make sure that you defined the card record, models, model relationships, templates, and

     template relationships for your design criteria.
   · Role required: sn_ni_core.inventory_agent

 About this task

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Add Card.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    208
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 209 -->
 5. Select Next.
     A change request is created.

 6. On the Details tab, fill in the fields.
     For a description of the field values, see Change request and change task forms.

 7. Select Save.
     A change task is created.

 8. On the Change Task tab, select the change task.
 9. On the Task Attributes tab, fill in the fields.

     To learn more, see Task attributes in Add Card form.
10. Select Submit.

 Related topics
     Define the card details
     Create a card model
     Define a network model relationship

 Add an equipment or rack to logical composite

 Add equipment or rack to a logical composite using design and assign.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 You can add only equipment or rack to a logical composite. The logical composite model must
 have Multi Chassis to Equipment or Multi Chassis to Rack relationship with the equipment or
 rack models.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.
3. Select the New button.
4. Select Add Equipment/Rack to Multi Chassis Equipment.
5. Select Next.

   A change request is created.
6. On the Details tab, fill in the fields.

   For a description of the field values, see Change request and change task forms.
7. Select Save.

   A change task is created.
8. Open the change task.
9. On the Task Attributes tab, fill in the fields.

Add Equipment/Rack to Multi Chassis Equipment form

Field          Description
               Logical composite where you add the equipment or rack.
Multi Chassis
Equipment

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    209
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 210 -->
Field           Description
Entity Type
                Type of equipment or rack that you want to add to the logical composite.
Rack List       Select one from the following:

                   Equipment Rack
                         Select this option to add a rack to the logical composite.

                   Equipment
                         Select this option to add an equipment to the logical
                         composite.

                List of racks that you want to add to the logical composite.

                     Note: This field is available only when you select Equipment Rack

                      as Entity Type.

Equipment List  List of equipment that you want to add to the logical composite.

                     Note: This field is available only when you select Equipment as

                      Entity Type.

10. Select Submit.

 Result
 The equipment or rack record is added to the logical composite record.

 Related topics
     Create an equipment record by using design and assign
     Define a network model relationship

 Remove an equipment or rack from logical composite

 Remove a rack or equipment from a logical composite using design and assign.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

          2. Select the list icon ( ), and then go to Changes > All.                                                                                                            210

          3. Select the New button.

          4. Select Remove Equipment/Rack from Multi Chassis Equipment.

          5. Select Next.
             A change request is created.

          6. On the Details tab, fill in the fields.
             For a description of the field values, see Change request and change task forms.

          7. Select Save.
             A change task is created.

          8. Open the change task.

          9. On the Task Attributes tab, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 211 -->
Strand form

Field             Description

Multi Chassis Equipment Logical composite from where you remove the equipment or rack.

Equipment / Rack  Equipment or rack that you want to remove from logical composite.

Attachments       Select Add to add any attachments.

10. Select Submit.

 Result
 The equipment or rack record is removed from the logical composite record.

 Related topics
     Create an equipment record by using design and assign
     Define a network model relationship

 Add an equipment to rack or cabinet

 Add equipment to a rack or cabinet using design and assign function in the Telecommunications
 Network Inventory application. By adding the equipment to rack, you can fulfill a customer order
 request.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Add Equipment to Rack/Cabinet.
 5. Select Next.

     A change request is created.
 6. On the Details tab, fill in the fields.

     For a description of the field values, see Change request and change task forms.
 7. Select Save.

     A change task is created.
 8. Open the change task.
 9. On the Task Attributes tab, fill in the fields.

     To learn more, see Task attributes in Add Equipment to Rack or Cabinet form.
10. Select Submit.

 Result
 The equipment record is added in the Rack view. You can edit the rack. The relationship or
 affected CIs are also updated with the datacenter or site information.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    211
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 212 -->
Remove an equipment or shelf from a rack or cabinet

Remove an equipment or shelf from a rack or cabinet using design and assign function in the
Telecommunications Network Inventory application. By removing the equipment from rack, you
can fulfill a customer order request.

Before you begin
Role required: sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.
3. Select the New button.
4. Select Remove Equipment/Shelf from Rack/Cabinet.
5. Select Next.

   A change request is created.
6. On the Details tab, fill in the fields.

   For a description of the field values, see Change request and change task forms.
7. Select Save.

   A change task is created.
8. Open the change task.
9. On the Task Attributes tab, fill in the fields.

Remove Equipment or Shelf from Rack/Cabinet form - Task Attributes tab

Field         Description
Network Site
              Network site or data center that contains the equipment or shelf that you
              want to remove.

              Note: The list only displays the sites that have a rack in it.

Rack/Cabinet  Rack or cabinet name for the equipment that you want to remove.

Equipment/    Equipment or shelf that you want to remove from the selected rack or
Shelf         cabinet.

10. Select Submit.

 Create logical connection record using design and assign

 Create a logical connection record using the design and assign function in the
 Telecommunications Network Inventory application. By creating the logical connection and its
 related inventory records, you can fulfill an order request for an equipment record.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 When you instantiate a logical connection template, it creates the corresponding configuration
 item (CI) records in the Logical Connection [cmdb_ci_ni_logical_path] table. To learn more, see
 Data model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    212
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 213 -->
 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Create Logical Connection.
 5. Select Next.

     A change request is created.
 6. On the Details tab, fill in the fields.

     For a description of the field values, see Change request and change task forms.
 7. Select Save.

     A change task is created.
 8. Open the change task.
 9. On the Task Attributes tab, fill in the fields.

     To learn more, see Task attributes in Create logical connection form.
10. Select Submit.

 Create physical connection using design and assign

 Create an physical connection record using the design and assign function in the
 Telecommunications Network Inventory application. By creating the physical connection and its
 related inventory records, you can fulfill an order request for an equipment record.

 Before you begin
 Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

 About this task
 When you create a physical connection, it creates the corresponding configuration item (CI)
 records in the Physical Connection [cmdb_ci_ni_physical_link] table. To learn more, see Data
 model.

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.
 3. Select the New button.
 4. Select Create Physical Connection.
 5. Select Next.

     A change request is created.
 6. On the Details tab, fill in the fields.

     For a description of the field values, see Change request and change task forms.
 7. Select Save.

     A change task is created.
 8. Open the change task.
 9. On the Task Attributes tab, fill in the fields.

     To learn more, see Task attributes in Create physical connection form.
10. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    213
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 214 -->
 Revise a configuration item using design and assign

 Revise a CI (Configuration Item) of the connection to update a CI in the Telecommunications
 Network Inventory application.

 Before you begin
 Role required: sn_ni_core.inventory_admin

 Procedure
 1. Navigate to Workspaces > Network Inventory Workspace.

 2. Select the list icon ( ), and then go to Changes > All.

 3. Select the desired change request.
     To create a change request, see Create a change request from Network Inventory Workspace.

 4. Select the Change Tasks tab.

 5. Select New.

 6. Choose a change task type:

     Planning
     Implementation
     Testing
     Review
 7. Select Create.
     A change task form based on the selected change model is displayed.

 8. Select Revise CI in the Request type field and fill other fields.
     To learn more about other fields, see Change request and change task forms.

 9. Select Save.

10. On the Task Attributes form, select a CI from the list of CI to be revised field.

11. Select Submit.
     A record is created in the Inventory Revision Histories table. The selected CI and related tables
     are cloned and the cloned CI name is populated in the Configuration item field. Also, both the
     original and cloned CIs are added under the Affected CIs tab.

         Note:

           To customize the cloning process and the related tables that must be cloned, see
              #unique_92.

           The revision data is automatically archived to the revision history
              archival rule (Archive Rules  Inventory Revision History Archival
              Rule[sn_ni_core_inventory_revision_history]) table after a period of one year of the
              CI creation. Subsequently, all data within the archival table is permanently deleted
              (ar_sn_ni_core_inventory_revision_history) after an additional year. Customization can
              be achieved by modifying the relevant tables.

           The revision history currently captures only Configuration Item (CI) attributes, related
              data, and CI relationships. To include additional data from other tables, logical
              connection (audit_reference_tableinfo_logical_connection) and physical connection
              (audit_reference_tableinfo_logical_connection) system properties can be updated.
              The format for specifying table and column names within these properties is -
              table1_name:column1_name, table1_name:column2_name.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    214
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 215 -->
12. Optional: Navigate to a change task and select Validate Revision to validate both original and
    revised CI.
     Before operationalization, you can validate to track the changes performed on the cloned
       CIs. If the data isn't matching with the original CI, the validation fails and a message is
       displayed that the cloned CI is updated after the cloning.
     To customize the validation process, update the Validate CI Revision action flow. To learn
       more, see Customize the Validation of Revision CI.
     To skip a field in the validation process, edit
       (sn_ni_core.revision_val_ignore_fields_logical_connection) table for logical connection
       CIs and (sn_ni_core.revision_val_ignore_fields_physical_connection) table for physical
       connection CIs.

 What to do next
 You can update the cloned CI and operationalize the CIs. To learn more about operationalization,
 see Operationalize a configuration item.

 Related topics
    Revision, operationalization, and decommission of a Configuration Item

 Operationalize a configuration item

 Operationalize a Configuration Item so that you can finalize the changes and apply them on the
 original CI.

 Before you begin
  · Ensure to have a revised CI.
  · Role required: sn_ni_core.inventory_admin

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Changes > All.

3. Select the desired change request.
   To create a change request, see Create a change request from Network Inventory Workspace.

4. Select the Change Tasks tab.

5. Select New.

6. Choose a change task type:

 Planning
 Implementation
 Testing
 Review

7. Select Create.
   A change task form based on the selected change model is displayed.

8. Select Operationalize CI in the Request type field and fill other fields.
   To learn more about other fields, see Change request and change task forms.

9. Select Save.

        10. On the Task Attributes form, either select a CI from the list of CI to be operationalized field or                                                                  215
             select a change request from the Change request ID field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

