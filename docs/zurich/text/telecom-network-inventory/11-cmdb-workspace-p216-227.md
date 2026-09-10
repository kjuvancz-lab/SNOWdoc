# Zurich Telecommunications Network Inventory â€” CMDB Workspace / Network diagram / Attribute pack for CI records +1 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 216â€“227 of 425

Sections: CMDB Workspace (p216); Network diagram (p219); Attribute pack for CI records (p222); Design and Assign function (p223)

---

<!-- page 216 -->
11. Select Submit.
    The State of the change task changes to Closed. The work notes are updated with the details
    of operationalized CIs.

        Note: On selecting a change request, all the revised Configuration Items (CIs) listed

          under the Affected CIs tab are operationalized and the work notes are updated
          accordingly.

 Viewing your network inventory configuration items with CMDB
 Workspace

 You can use CMDB Workspace to search and explore the CMDB, examine its health and recent
 activity, and access various dashboards and tools to support the tasks in your organization.

 Prerequisites for the CMDB Workspace

  · Plugins: You must activate the following plugins before you can use CMDB Workspace:
    CMDB CSDM Support (com.snc.cmdb.csdm)
    CMDB Activation (com.snc.cmdb.csdm.activation)
  · Roles: To access CMDB Workspace, you must, at a minimum, have one of the following roles:
    sn_cmdb_admin
    sn_cmdb_editor
    sn_cmdb_user

        Note: In CMDB Workspace, some dashboards and list views require specific roles in

          addition to the key admin, editor, or user roles. Depending on which role is assigned to
          you, you might only have access to some of the features that are available in the CMDB
          Workspace

    .
  · Features: CMDB Workspace provides access to a wide range of applications and features.

    However, to provide meaningful reports, overviews, and trends, you must set up and configure
    some of those features so that CMDB Workspace can use the data that is generated.

 Accessing CMDB Workspace

 After you install the app from the ServiceNow Store, navigate to Network Inventory > CMDB
 Workspace.

 CI searches

 Specify up to five conditions to search for the configuration items (network asset CI) of a class.
 These conditions are based on the attributes for a selected class. In the results list, click a
 network asset CI to see the details about the network asset CI, including a time line, health
 overview, and attributes for the network asset CI.

 For more information, see the CI Details page section.

 CI overview

 Get an overview of the network asset CIs in CMDB that are grouped by common class categories
 as Applications, Cloud, and Server.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    216
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 217 -->
Select a class group to see all the classes that are included in the group, and then select the
class whose network asset CIs you want to see.

In the Results list, you can click a network asset CI to see an overview page with a time line,
health overview, and attributes for the network asset CI. For more information, see the CI Details
page section.

CMDB health

Get the metrics for the network asset CIs and see the health of the relationships. Click
the percentage numbers to navigate to the CMDB Health and CMDB Relationship Health
dashboards where you can see the following information:
 · The overall percentage number represents the health of all network asset CIs as an

   aggregation of all three key performance indicators (KPIs), which are correctness, compliance,
   and completeness. Each network asset CI contains submetrics.
 · The relationship percentage number represents the overall health of the relationships as an
   aggregation of the orphan, duplicate, and stale relationship KPIs.

7-day activity trends

CMDB Workspace includes the following charts that provide an overview of the activity in the
CMDB for the last seven days:

   CI Activity in Last 7 Days

         See a chart that shows the metrics that are related to the network asset CIs. For
         example, you can see the metrics for the number of new network asset CIs, updated
         network asset CIs, and duplicate network asset CIs.
   Application Service Activity in 7 Days

         See a chart that shows the metrics that are related to the application services. For
         example, you can see the total number of Application Services, new Application
         Services, updated Application Services, and the number of Application Services
         with outages.

CIs managed by me

See a list of network asset CIs that you manage, grouped by the network asset CI class. Network
asset CIs appear in this list if you are a member of the group that is assigned to the network asset
CI's Managed by Group attribute.

Quick links

See a list of the links to the CMDB dashboards and tools:

     Note: Links are conditionally available based on the installation of applications, active

      plugins, and your assigned role. If a link doesn't appear, make sure that all the requirements
      for the link are met.

 · CI Class Manager: You can view, create, or edit the basic class definitions and class settings
   for Identification and Reconciliation (IRE) and CMDB Health.

 · CMDB Health Dashboard: You can view the health reports and configure the health KPIs and
   metrics that the network asset CIs are evaluated by in the CMDB Health dashboards.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    217
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 218 -->
CI details page

When you drill down to a network asset CI record, you can see the following details for the
network asset CI:
 · CI Timeline - Last 14 days: A time line of the network asset CI activities, such as change

   requests.
 · CI Health: A summary of the health of the network asset CI that shows the related items such

   as critical incidents, incomplete attributes, and stale relationships for the network asset CI.
 · Details: Network asset CI attributes, grouped into categories such as Key attributes, Asset

   attributes, Discovery attributes, Operational attributes, and More attributes.

       Note: You can configure the appearance of the attributes by using the CMDB -

        Workspace form view for a network asset CI class.

 · Activity: An activity stream to track what's changed in the network asset CI record.
 · Infrastructure Relationships: A list of the infrastructure network asset CIs that are related to the

   network asset CI.
 · Service Relationships: A list of business applications, service offerings, and application

   services that the network asset CI may be related to.

On the CI details page, you can do the following actions:
 · To open Dependency Views and to get a graphic infrastructure view of the network asset CI

   record, click Open Dependency View.
 · To open the Multisource Data Report Builder and track how the CMDB is populated by the

   various discovery sources at the network asset CI attribute level of the network asset CI
   record, click View Multisource Data.

 · To save your changes to the attributes for the network asset CI record, click Save.

CI error message

The following table helps you to understand the CI error message that appears during the CI
deletion and the solution that you can use to resolve the error:

Error message

Error                                          Resolution

The current operation ended in state:          Delete the child or related CI (Configuration

ERROR. Detail: Operation(Delete All TNI        Item) to delete the parent CI.

CI Hierarchy./end) failed with error: Error:   1. Click the related or the child CI under
The CI "XXXX/XXXX/Copper Link/000118"             Related Templates.
cannot be deleted since there is a related CI

"XXXX/XXXX/PON Access Path/100Mbps/ 2. Click Delete.

000030" (sys_script_include.989afcd1cb330110202b2c52f8076d7e.script;

line 52)                                       However, an Admin can always customize

                                               the deletion action. To learn more, see

                                               Customizing deletion action.

Customizing deletion action

Customizing deletion action enables you to create your own process of the deletion.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    218
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 219 -->
Before you begin
Role required: Admin

Procedure
1. Navigate to All > Process Automation > Flow Designer > New > Action.
2. Fill the Action Properties form to create an Action.
3. Click Submit.
4. Navigate to Decision Management Decision Builder to apply the new action.
5. Select TNI CI Deletion Policy.
6. Under Decision table, update the Action Type against the appropriate CI Type.

Network diagram

Use the network diagram in the Telecommunications Network Inventory application to view a
hierarchical map of the circuit and its underlying connection elements.

Related topics
   Visualize circuits

View the details of a network diagram

View the details of a connection node and visualize the underlying connection elements of a
logical connection by using the network diagram in the Telecommunications Network Inventory.
You can understand the detailed overview of the logical connection and how the connection
elements are connected to each other.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
With the use of a network diagram, you can do the following:
 · Drill down into the network diagram to view the underlying elements.
 · View the details of a connection node that makes up the network diagram.
 · View the details of the revision of a logical connection.
 · View the protection paths for a logical connection.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ).
3. Go to Inventory > Logical Connections.
4. Open a record and then select View connection.
5. View the underlying elements or the details of the connection node.

   On the network diagram you can do the following actions:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    219
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 220 -->
Option                                       Details

Expand the network diagram and view the      a. Expand the hierarchy level by selecting the
underlying elements
                                                add icon ( ) on the connection node.

                                             b. Expand further by selecting the add icon

                                                ( ) of the underlying connection nodes.

                                                  Note: When there are underlying con­

                                                   nection elements in a logical connec­
                                                   tion, the connection node appears as
                                                   a stacked pill shape. After expansion, it
                                                   transforms into a box shape.

                                             a. Select the clock icon ( ). The revision of
                                                the logical connection is displayed on the
                                                Revision view tab

View the revision of the logical connection           Note: The clock icon ( ) is dis­

                                                      played on the map only when the logi­
                                                      cal connection record has a revision.

                                             b. Select Current view to view the original logi­
                                                cal connection.

                                             You can toggle the view between the original
                                             logical connection and revision of the logical
                                             connection to compare the differences.

View the protection path                     Select the protection path icon ( ) to view
                                             the protection paths for the logical connec­
                                             tion.

                                                  Note: The protection path icon ( ) is

                                                   displayed on the map only when the log­
                                                   ical connection record has a protection
                                                   path.

                                             You can't expand the underlying connection
                                             elements of a protection path. To view the de­
                                             tails of the protection path, select the protec­
                                             tion path node, and then select View Details
                                             in the details pane.

                                             To learn more about to create a protection
                                             path, see Create a protection path.

View the details of a connection node        a. Select the connection node and view the re­
                                                lated information in the details pane.

                                             b. Redirect to the CI record by selecting View
                                                Details in the details pane.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    220
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 221 -->
Related topics
   Visualize circuits

Download a network diagram

Download the entire canvas of the network diagram based on your map selection in the
Telecommunications Network Inventory application. You can use it as a reference to visualize the
circuit.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

About this task
You can download the entire canvas of a network diagram in the PNG format and save the entire
diagram to your local system.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ).
3. Go to Inventory > Logical Connections.
4. Open a record, and then select View connection.

5. Select the add icon ( ) to expand the node and get the desired view.

6. On the map pane, select the download icon ( ).

Result
The image is downloaded in PNG format.

Related topics
   Visualize circuits

Create a protection path

Create a protection path for the logical connection in the Telecommunications Network Inventory
application. You can use this protection path as an alternative route in case the primary path
(logical connection) fails or experiences significant issues.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ).
3. Go to Inventory > Logical Connections.
4. Open a record and then select View connection.
5. Select the Protection path tab and then select New.
6. On the form, fill the following fields.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    221
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 222 -->
CI Relationship form

Field Description

Parent Parent CI where you want to add the protection path.

Type  CI Relationship type. For protection path, the CI relationship type is Redundancy
      Provided by::Redundancy provided for.

Child Logical connection record that you want to add as a protection path.

What to do next
You can view the protection path in the network diagram. To learn more, see View the details of a
network diagram.

Attribute pack for CI records

Use an attribute pack to capture the attributes that you define for a configuration item (CI) record
in the Telecommunications Network Inventory application and update the attribute values.

Attribute pack in CI records

Use an attribute pack to capture the attributes that you define for a configuration item (CI) record
in the Telecommunications Network Inventory application.

Before you begin
Role required: sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon (  ), and then open a new inventory class.
3. Select New.
4. Select Add Packs.
5. Select Submit.

Result
The attribute pack tables are added on the Packs tab.

What to do next
You can update the fields in the pack table that you've added. To learn more, see Update a pack
for a CI record.

Update a pack for a CI record

Review and update the attributes that you've defined in the pack table for a configuration item
(CI) record in the Telecommunications Network Inventory application.

Before you begin
Add the pack table for the CI record. To learn more, see Attribute pack in CI records.

Role required: sn_ni_core.inventory_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    222
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 223 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then open the inventory record where you want to update the
   pack table attributes.

3. On the Pack tab, select the pack table that you want to update.
4. Fill in the fields.
5. Select Save.

Design and Assign function

Use the Design and Assign function for a network service in the Telecommunications Network
Inventory application. The inventory agents can use the playbook to complete the guided tasks
to design and assign a network inventory record and its associated Configuration Items (CI)
records.

A Design and Assign function includes multiple activities for an agent to fulfill the requirement of
a design request. When using a Design and Assign function, agents can:

 · View the activities in the playbook.
 · Select an activity and perform the work necessary to complete that activity.
 · Mark an activity as complete and move to the next activity.
 · Complete the activities necessary to design and assign an inventory record.

Related topics
   Design and assign your network services

Create a logical connection record using the Design and Assign function

Use the Design and Assign function to create a logical connection in the Telecommunications
Network Inventory application. By creating a logical connection, you can fulfill the design request
for a network service.

Before you begin
Define the inventory records, models, model relationships, templates, and template relationships
for your design criteria.

Role required: sn_ni_core.inventory_agent, sn_ni_core.network_planning_manager

About this task
The Design and Assign home page lists the change requests that are in the Design in progress
state. You can either select a change request from the list or create a change request to design a
logical connection depending on your requirement. Completion of each activity in the playbook
for the Design and Assign function creates a change task for the next activity.

After you complete each activity, the network diagram updates and displays the data. You can
review the network diagram for any incompleteness and update the activities accordingly.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    223
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 224 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

a. Select the design and assign icon ( ).
   The Design and Assign home page is displayed.

b. Select New > Create Logical Connection
   A change request is created in Design in progress state. The Design and Assign window is
   displayed.

c. On the form, fill in the fields.

Setup request details form                                    Description
Field
Number                                                        The change request number that is automatically
                                                              generated to instantiate a logical connection with
Category                                                      the Design in progress state.

Priority                                                      Category of this change request. Select Other if
Short description                                             your category isn't in the list.
Description
                                                              Priority of this change request.

                                                              Summary of the design.

                                                              Description of the design in detail.

d. Select Mark complete.

2. Set up the logical connection card.

a. On the Setup logical connection card, fill in the fields.

Setup logical connection form           Description
Field
Logical connection model                Logical connection model where this logical
                                        connection is configured.
Bandwidth
                                        Bandwidth for this logical connection. Only
                                        bandwidths compatible with the logical
                                        connection model are listed here.

                                             Note: This field lists all bandwidths if

                                              no compatible bandwidth is available.

Network domain                          Domain of ownership and responsibility for
                                        this network asset or connection. Select one
                                        of the following options:

                                           Mobility

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    224
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 225 -->
Field                                                  Description
Logical connection template                                     Network asset that is
                                                                associated with the mobility
                                                                equipment domain.

                                                          Telco

                                                                Network asset that is
                                                                associated with the telco
                                                                equipment domain.

                                                          Core

                                                                Network asset that is
                                                                associated with the core
                                                                equipment domain.

                                                       List of all templates based on the selected
                                                       logical connection model.

b. Select Mark complete.

3. Define the end points.

a. On the Define end points card, fill in the fields.

Define end points form

Field                      Description
Start site                 Originating network site for this connection.
Start equipment            Originating equipment for this connection.
Start interface            Originating network interface for this connection.
End site                   Destination network site for this connection.
End equipment              Destination equipment for this connection.
End interface              Destination network interface for this connection.

b. Select Mark complete.

4. Optional: Assign the connection element.

        Note: To skip this activity, select Skip.

a. On the Assign connection element card, select Add.

b. On the Assign connection element form, fill in the fields.
   To learn more about fields, see Assign connection element form.

c. Select Mark complete

5. Optional: Assign a protection element.

        Note: To skip this step, select Skip.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    225
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 226 -->
a. On the Assign protection element card, select Add.

b. On the form, fill in the fields.

Assign protection element form

Field        Description
Start Site   Originating network site for this protection path.

Start        Originating equipment for this protection path.
equipment

Model        Model where this protection logical connection is configured. Only
             compatible models based on the model relationship are displayed.

End Site     Destination network site for this protection path.

End equipment Destination equipment for this protection path.

Protecting   Logical connection that acts as redundancy path.
logical
connection

c. Select Mark complete.

6. Optional: Define the number element.

        Note: To skip this step, select Skip.

a. On the Define number element card, select Add.

b. On the form, fill in the fields.

Define number element form

Field                     Description

Owned by                  Configuration item (CI) that is related to the Inventory number
configuration item        record.

Parent number type        Type of inventory number parent record belongs to. Select one from
                          the following.

                           LAG
                           LAG Range
                           VLAN
                           VLAN range

Parent number range Range of parent number.

Number Type               Type of inventory number this network inventory belongs to. Select
                          one from the following.

                           LAG
                           LAG Range

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    226
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 227 -->
Field                     Description
Number
                           VLAN
                           VLAN range
                          Unassigned numbers are displayed here, and you can select
                          multiple ones.

c. Select Mark complete.

7. Optional: Define the IP address.

       Note: To skip this step, select Skip.

a. On the Define IP address card, select Add.

b. On the form, fill in the fields.

Define IP address card               Description
Field                                Parent pool of this IP address allocation.
IP pool                              IP network subnet of this IP address allocation.
IP sub network                       Select the allocated IP addresses.
Allocated IP address

c. Select Mark complete.

8. Optional: Set the attributes.

        Note: If you want to skip this step, select Skip.

a. On the Set attributes card, select Add.

b. On the attribute form, fill in the fields.
   To learn more about fields, see Attribute form

9. On the Review and submit card, fill in the fields.

Review and submit form

Field   Description
Notes   Any additional notes.

10. Select Submit.

 Result
 The change tasks are created and executed for each activity. The logical connection record
 is created. The created logical connection automatically associates the interface with its
 corresponding card or equipment.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    227
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

