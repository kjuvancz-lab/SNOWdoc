# Zurich Telecommunications Network Inventory â€” Network Inventory Workspace / Visualize circuits / Attribute packs

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 23â€“32 of 425

Sections: Network Inventory Workspace (p23); Visualize circuits (p30); Attribute packs (p32)

---

<!-- page 23 -->
          1. Create the inventory models. You create an inventory model to track the technical information
             from the manufacturer about a network asset. When you instantiate an inventory record, your
             inventory record contains this standard manufacturer information. To learn more, see Create
             inventory models.

          2. Create the model relationship. The model relationship captures the relationships between the
             inventory models. To learn more, see Modeling network inventory relationships.

          3. Create the inventory template. You create the network inventory template that contains the
             business guidance rules from a telecommunications provider. To learn more, see Create
             inventory template for network asset instantiation.

          You can then instantiate a new network inventory record by using the change management
          workflow to fulfill the network designs. As an inventory agent, you perform the following tasks:
          1. Create the change request with the change model. To learn more, see Create a change

             request from Network Inventory Workspace.
          2. Create the change tasks from the change request. The network asset instantiation takes place

             using an Application programming interface (API) or change task that you create from the
             change request. To learn more, see Create and execute a change task.

          When you complete the task, the following processing takes place:
           · A network inventory record is generated. The record is based on the same structural

             relationships that you defined for the inventory templates and associated inventory models.
             The configured item consists of your inventory model and all the related inventory models.
           · If you integrate with other operational and business support systems, the process triggers
             an internal workflow. This workflow completes the purchase, installation, shipment, and
             instantiation of your network asset at the designated site. This internal workflow is based on
             the individual tasks or lists of tasks that are associated with the inventory model in Workflow
             Studio.

         Instantiation example

          You can create a set of network inventory records to fulfill an order request for Gigabyte Passive
          Optical Networks (GPON) broadband by using the design and assign function. To learn more, see
          Design and assigning a GPON broadband service.

          Related topics
             Flow Designer
             Change Management
             Network inventory models
             Network inventory templates
             Modeling network inventory relationships

       Network Inventory Workspace

          The Network Inventory Workspace is the intuitive and streamlined user interface of the
          Telecommunications Network Inventory application to manage your network inventory. You can
          use Network Inventory Workspace to view your inventory details, respond to all task types, and
          perform the network functions such as designing the network.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 23

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 24 -->
Introduction to Network Inventory Workspace

The Network Inventory Workspace is built on the Next Experience UI. It's a suite of tools that
enables your personnel to view and update your network inventory.

With the Network Inventory Workspace, you can do the following tasks:
 · Quickly determine the overall operational status of equipment entities that reside in the sites.
 · Access, view, and update the detailed information about your network assets, and quickly

   create the network inventory when needed.
 · Manage the open issues that require immediate responses.
 · Perform the daily tasks from the List view.

Depending on your assigned roles and persona, the Network Inventory Workspace provides you
with the information required for the access to the functions that you use daily.

Dashboards

The views in the Network Inventory Workspace provide visibility into all the important aspects
of your network inventory and your daily tasks. The Network Inventory Workspace contains the
following views:
 · Landing page: View active tasks and quick access links to them.
 · Management view: View details of the network inventory.
 · Lists view: Access the filtered list of the inventory classes and functions to perform the network

   inventory tasks, for example, design and assign.

Related topics
   Working in the Next Experience UI

Landing page

Get real-time visibility into your network inventory and to perform the daily tasks through the
Network Inventory Workspace landing page.

The landing page in the Network Inventory Workspace displays the list of your and your team's
assignments. For example, you can look at the landing page to see the number of open change
requests and change tasks that are assigned to you. You can use this page to get the real-time
data of your work and of your team's work.

The following image shows an example of the Network Inventory Workspace landing page.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    24
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 25 -->
Landing page of Telecommunications Network Inventory Workspace

Landing page widgets

The widgets on the landing page help you and your team to monitor your workload, focus on
high-priority items, and easily navigate across your responsibilities. Select any widget to view the
list of issues that needs your action.

Workspace landing page widgets    Description
Widget or chart
Overdue change requests           Donut chart grouping of change requests that
Change request pending approvals  are overdue. The widget contains a total count
                                  of change requests grouped by their risk.
Overdue change tasks
Open change requests              Donut chart grouping of change requests
Open change tasks                 that are pending due to approval. The widget
                                  contains a total count of change requests
                                  grouped by their risk.

                                  Donut chart grouping of change tasks that are
                                  overdue. The widget contains a total count of
                                  change tasks grouped by their priority.

                                  List of all open network change requests. You
                                  can only view the existing change requests in
                                  this widget.

                                  List of all open network change tasks. You can
                                  only view the existing change tasks in this
                                  widget.

Viewing the assigned tasks

On the landing page, do the following to view the change requests and change tasks that are
assigned to you and your team.
 · Select Your work to view your assignments.
 · Select Your team's work to view your team's assignments.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 25

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 26 -->
         Management view

          Use the Inventory management view in the Telecommunications Network Inventory Workspace to
          get a detailed view of your network inventory.
          The Inventory management view displays the network inventory details such as equipment,
          equipment holders, network sites, and connections. Use the following tabs to view the inventory
          details and take appropriate actions:

             Overview
                    View various inventory data, such as total number of equipment grouped by the
                    model, manufacturer, and life-cycle state, and availability of racks, ports, and slots
                    within a site that you're selected.

             Inventory List
                    View a list of network sites or network assets such as equipment and connections
                    based on the option that you're selected in the side panel.

         Overview tab

          Use the Overview tab for a consolidated view of various network inventory data within a network
          site that you're selected.

                    Inventory management view

          Select any widget or chart to view the list of items that needs your action.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 26

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 27 -->
Inventory management widgets                Description
Widget or chart
Equipment by model                          Number of the individual pieces of equipment
                                            grouped by model. The widget contains
Equipment by manufacturers                  a standard set of the five most used
                                            telecommunications equipment models. For
Equipment by life-cycle state               each equipment model, you can view a total
                                            count of the equipment.

                                            Donut chart grouping of equipment by
                                            the manufacturers who supply them. The
                                            widget contains a standard set of the five
                                            most used telecommunications equipment
                                            manufacturers. For each manufacturer, you
                                            can view a total count of equipment.

                                            Donut chart grouping of equipment by the
                                            current life-cycle state. The widget contains
                                            the number of equipment in the network sites
                                            that you're selected, grouped by the following
                                            life-cycle states.

                                             · In Use

                                             · Empty

                                             · Reserved

                                             · Available

                                             · In Maintenance

                                             · Other

Racks at capacity threshold                 Number of racks that are occupied more than
Racks with available RUs                    threshold capacity.
Rack availability by maximum contiguous RU
Slot availability                           Number of racks with available rack units.
Port availability
                                            Bar chart representation of available racks
                                            with maximum contiguous rack units.

                                            Number of available slots across the
                                            equipment models.

                                            Number of available ports across the
                                            equipment models.

Note: To learn more about how the count data is collected and refreshed in the

workspace landing page, see Data collection and refresh for the Network Inventory
Workspace widgets. To learn how to customize the content that appears in each widget, see
Customizing the content in your Network Inventory Workspace widgets.

Inventory list tab

Use the Inventory list tab to view a list of network sites or network assets based on the item that
you selected in the side panel and take appropriate actions. The side panel lists the following:

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 27

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 28 -->
· All the locations that are available in the global location.
· All the network sites that are available in the global location.
· Network assets such as equipment and connections that are associated with each network

 site.

        Inventory list tab

You can perform the following actions in the Inventory list tab.
 · In the side panel, expand the location to view the associated network sites.
 · Select a location to view the associated network site records in the list view.
 · In the side panel, expand each network site to view any associated connections or equipment.
 · SelectEquipment to view the list of associated connections or equipment records.
 · Select Connection to view the list of associated physical and logical connection records within

   the network site.
 · Select a record in the list view to redirect to its form view.

Accessing the Inventory management view

To open the Inventory management view, select the database search icon (  ) on the side
panel.

Lists view

You use the Lists view to access the inventory classes and functions to perform the Network
Inventory tasks.

From the Lists view, on the left side of the Network Inventory Workspace, you can access most
of the Telecommunications Network Inventory classes and functions. To access the Lists view,
select the list icon ( ).

From the My Lists tab, you can create a separate list or a different version of the existing list.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 28

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 29 -->
List view

In the lists pane, you can quickly access classes and tasks by using the filtered lists under
different categories.

You can access the following classes:

Network Inventory classes    Details
Class
Sites                        View listings of network sites and data centers.
                             Update or create site details. To learn more
Inventory                    about network site, see product/tmt-telecom-
                             network-inventory/task/define-tni-sites.dita. To
Inventory Number Allocation  learn more about data centers, see Define the
                             datacenter details.
Services
Inventory Models             Manually create the individual instances
                             of your network assets and define their
                             relationships to each other. To learn more,
                             see Manually create and review your network
                             asset instances.

                             Manage your virtual local area networks
                             (VLANs) or link aggregation groups (LAG) by
                             using the inventory number allocation feature
                             in the Telecommunications Network Inventory
                             application. To learn more, see Inventory
                             number allocation.

                             Manage and model your networks using
                             services in the Telecommunications Network
                             Inventory application. To learn more, see

                             Create the metadata for the inventory models
                             and then define their relationships to each
                             other for network asset instantiation. To learn
                             more, see:

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 29

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 30 -->
Network Inventory classes (continued)  Details
Class                                   · Network inventory models
                                        · Create inventory models

Network Inventory Templates            Create the inventory and default templates
                                       and then define their relationships to each
                                       other for network asset instantiation. To learn
                                       more, see:

                                        · Network inventory templates

                                        · Create inventory template for network asset
                                          instantiation

Inventory Capacity                     Calculate the capacity of physical entities in
Import                                 your network. To learn more, see Capacity
Administration                         management.

Changes                                Import your models an templates using Import
Procurement                            in the Telecommunications Network Inventory
                                       application. To learn more, see Import models
                                       and templates.

                                       Configure the Telecommunications Network
                                       Inventory application. To learn more, see
                                       Configuring Telecommunications Network
                                       Inventory.

                                            Note: All selections in the Lists view

                                             are accessible to all user roles, including
                                             the following selections under the
                                             Administration node. However, only
                                             those users with an assigned admin role
                                             have write or delete access privileges in
                                             the administration functions.

                                       Instantiate your network inventory using
                                       design and assign. To learn more, seeDesign
                                       and assign.

                                       Create the bill of materials to procure
                                       the network assets. To learn more, see
                                       Telecommunications Network Inventory
                                       integration with Hardware Asset Management.

Visualize circuits

The network diagram in the Telecommunications Network Inventory application graphically
displays a hierarchical map of the logical connection and its underlying connection elements.
You can use the network diagram to get a detailed overview of the logical connection.

The network diagram graphically displays a circuit of the logical connection elements, and the
details of each element. It provides a detailed overview of a logical connection and how the

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    30
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 31 -->
          various elements are connected to each other. You can view the following by using the network
          diagram:
           · Logical connection and all the underlying connection elements.
           · Revision of the logical connection and all underlying connection elements.
           · Protection paths of the logical connection.
          A protection path of a logical connection refers to an alternative route in case the primary path
          (logical connection) fails or experiences significant issues.
          The following example shows a network diagram in the Telecommunications Network Inventory
          application.

                    Example for a network diagram

          A network diagram contains two panels:
           · The map pane shows the map for a selected logical connection, revision of the logical

             connection, and protection path.
           · The details pane shows related information of the logical connection according to the current

             selections.
          To learn more about how to use the network diagram, see Network diagram.

         Map pane

          The map shows all logical connection elements in the hierarchy starting with the home node
          CI, up to the specified level. You can expand the hierarchy levels up to three levels and view all
          the underlying connections. You can only expand connections that have connection elements
          underneath them.
          You can perform the following actions in the map pane:
           · Expand and collapse the nodes and view all the underlying connections.
           · View the revision of the logical connection.
           · View the protection paths of the logical connection.
           · Use the zoom controls to zoom in and out of the map.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 31

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 32 -->
To learn more, see View the details of a network diagram.

Details pane

The details pane shows the related information about the logical connection elements in a
network diagram. If a node is selected in the map pane, the details pane shows the related
information for that node. For example, if you select a logical connection node on the network
diagram, then the details pane shows all the details related to that logical connection.

You can perform the following actions in the details pane:

· Select the info icon ( ) to open the details pane.

· Select more options icon (  ) in the details pane and then select View Details to redirect to
 the corresponding CI form.

Access

You can access the network diagram in the Telecommunications Network Inventory Workspace
as follows:
1. Navigate to Workspaces > Network Inventory Workspace.
2. Open the desired logical connection record.
3. Select View connection to open the network diagram for the respective logical connection.

Attribute packs

Use an attribute pack to capture the attributes that you define against a set of records in a
configuration item (CI) in the Telecommunications Network Inventory application. You can
capture the additional information about the network asset in the inventory form that belongs to
the CI.

Introduction to attribute packs

An attribute pack is a collection of attributes that you can associate with a subset of a CI. A pack
is an extra set of attributes. These attributes are defined as standard ServiceNow AI Platform
tables and columns.

You create an attribute pack table and configure the mapping between a pack table and CI.
When you create or update the CI record, you can add the pack table and provide the additional
information about the inventory object.

By using an attribute pack, you can manage a CI and its attributes more granularly. For example,
if you consider a server as a CI, an attribute pack for a server could include such attributes as a
hostname or IP address. These attributes provide additional information about the server that
helps you to manage and track it throughout its life cycle. To learn more about how to use an
attribute pack in the inventory form, see Using an attribute pack in an inventory form section.

Use an attribute pack to customize the attributes according to the requirements of your
organization or a subset of CIs. This customization enables your organizations to scale your
present and future inventory management needs.

Using an attribute pack in an inventory form

To use an attribute pack in an inventory form, you, as the administrator, must perform the
following tasks:

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 32

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

