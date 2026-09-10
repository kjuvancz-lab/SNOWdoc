# Zurich Telecommunications Network Inventory â€” Visualize your network infrastructure

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 56â€“65 of 425

Sections: Visualize your network infrastructure (p56); Configure (p64); Install TNI (p65)

---

<!-- page 56 -->
Related topics
   Visualize your network infrastructure

Visualize your network infrastructure

Use the network visualization view in the Telecommunications Network Inventory to explore
your network infrastructure. You can explore the details about your network site, datacenter, and
topology of your network.

Network visualization overview

The Network visualization provides various options to visualize the network infrastructure-
related functions in the Telecommunications Network Inventory application. You can use the
Network visualization to view the geographical location of your network sites, the floor plan in a
datacenter, and the topology of your network.

         Network visualization page view

The following features are available in the Network visualization view:

   Geo map

         Use the geo map to see the geographical location of your network sites and
         datacenters. You can also get details such as site specific, connectivity, and
         capacity. To learn more, see Geo map.

   Floor map

         Use the floor map to view the location of network assets on a datacenter floor. You
         can also view the operational details of the datacenter on the map, so you can keep
         an eye on power, thermal, and usage data. To learn more, see Floor map.

   Topology

         With the topology map, you can see how elements connect to each other in a
         network, such as equipment and interfaces. Get a high-level view of your whole
         network. To learn more, see Network topology.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    56
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 57 -->
User roles

user roles and responsibilities           Description
User role
DC Floor Designer                         Design the floor layout in Indoor Mapping Map
[sn_ni_core.dc_floor_designer]            Studio, focusing on creating and defining the
                                          visual representation of the floor.
DC Ops Agent [sn_ni_core.dc_ops_agent]
                                          Oversees datacenter floor operations, using
DC Ops Viewer [sn_ni_core.dc_ops_viewer]  the floor map to manage incidents, resolve
                                          problems, and handle change requests.

                                          Read-only access to the Network Inventory
                                          workspace and its components.

Access

You can access the Network visualization page as follows:
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon ( ).

Geo map

Use the geo map in Telecommunications Network Inventory to view the geographical location of
your network sites and datacenters. You can use the geo map to get the details of the network
site and datacenters such as site details, connectivity, and capacity information.

Geo map overview

The geo map (outdoor map) geographically displays the network sites and datacenters on a map
pane including the details of the connections. It provides an overview of the site and details
about the various connections that are connected between the sites. You can view the following
information using the geo map.
 · Geographical location of network sites and datacenters.
 · Connection elements associated with the site such as physical and logical connection,

   topology, and cable route.
 · Associated sites of a network site that you're selected.
 · Related information of a site including the capacity information.

Map layout and features

The following example shows the geo map layout in the Telecommunications Network Inventory
application.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 57

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 58 -->
   Geo map layout

Geo map layout and features

Callout  Feature
1        Navigation panel

                             Use the navigation panel to view a list of locations
                             and sites they're associated with each location. The
                             navigation panel has the following tabs:

                                All Sites

                                      Lists all network sites and datacenters.

                                My Sites

                                      Lists the network sites and datacenters that
                                      you're managing.

                                  Note: Sites without any location details are listed

                                   under Other sites and are displayed as inactive.

                             Select location or site in the navigation panel to zoom to
                             its corresponding area in the map pane.

2        Filter options

                             Map pane displays the network sites and datacenters

                             based on the filter condition that you set. Use the

                             following options to filter the network sites:

                             Domain

                             Filters the sites based on the domain name.

                             Stage

                             Filters the sites based on the life-cycle
                             stage.

                             Connectivity

                             Displays the type of connections such as
                             physical and logical connection, topology,
                             and cable for a network site that you're
                             selected on the map pane.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    58
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 59 -->
Geo map layout and features (continued)

Callout  Feature

3        Map pane            Note: The datacenter doesn't show cable filter

                              option.

                        The map pane displays the network site and datacenter

                        with a location icon ( ). You can zoom in or out of
                        the map using the plus (+) or minus (-) buttons. When
                        you zoom out, the sites that are closely situated near
                        each other geographically, appear as cluster icon

                        ( ) on the map pane. The number that is next to a
                        cluster indicates the number of sites in that cluster.
                        If a same location has multiple sites, it shows as a

                        location cluster icon ( ). The location icon with red

                        color ( ) indicates that the site exceeds the capacity
                        threshold. By default the map pane shows all the
                        sites that are exceeded the capacity threshold. The
                        sn_ni_adv.threshold_capacity_site_usage
                        system property maintains the value of the threshold of
                        site capacity usage in percentage.

4        Details pane   You can view the following information with the map
                        pane:
5        Search box
                         · View the associated sites by selecting a network site
                           or datacenter.

                         · Hover over a site shows the site-specific information.

                         · View the physical and logical connections between
                           the sites.

                         · View the cable route between the sites.

                         · View the topology that is associated with a site.

                        The details pane shows the related information about
                        a network site or datacenter that you're selected in the

                        map pane. You can select the info icon ( ) to view the
                        details pane. If a location has multiple sites, the details
                        pane shows the related information about all the sites.
                        You can also view the available capacity of the site in the
                        details pane.

                        Use the search box to select a site to view its location
                        and details. You can select one site at a time.

Access

You can access the geo map in the Telecommunications Network Inventory workspace as
follows:

1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon ( ) to open the Network visualization window.

3. Select Geo map tab.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    59
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 60 -->
To learn more about how to use the geo map, see View details of the geo map.

Related topics
   Geo map

Floor map

Use the floor map in the Telecommunications Network Inventory application to view a layout
of your datacenter infrastructure. You can view the network assets placement and monitor the
operational data on the map.

Floor map overview

The floor map provides a visual representation of your datacenter floor. Use the floor map to view
the layout of your datacenter infrastructure including network asset placement and operational
details to monitor power, thermal, and usage data. You can view alerts, incidents, changes
requests, and capacity information of the datacenter.

You can view the following information using the floor map.
 · Details of the objects on the floor
 · View operational data
 · View alert information
 · Visualize a rack
 · View floor and rack health information

Floor map layout and features

The following example shows a floor map layout in the Telecommunications Network Inventory
application.

         Floor map layout

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    60
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 61 -->
Floor map layout and features

Callout  Feature               Description
1        Filter options

                               The map pane shows the floor map based on the filters
                               that you set. Use the following options to filter the floor:

                                  Site

                                        Select the campus. A campus must
                                        be associated with any network site or
                                        datacenter. The associated configuration
                                        item (CI) must also have TNI entity
                                        attributes.

                                  Building

                                        Select the building within a campus.

                                  Floor

                                        Select the floor in the building. The map
                                        pane displays the floor map for the selected
                                        floor.

                                  Filter By Account

                                        Select the company account to group the
                                        network assets. You can filter accounts to
                                        show that service-related infrastructure.

                                  View By

                                        Select the type of overlay to view
                                        the operational data such as Power,
                                        Temperature, and RU Utilization.

                                  Time duration

                                        Select the time duration for the operational
                                        metric data.

2        Map pane

                               The map pane displays the objects of a datacenter floor,
                               including the following details.

                                · Places with boundary line.

                                · Markers on the datacenter floor.

                                · Places that are associated with a rack or cabinet CI in
                                  bluish green color.

                                · Places that are associated with other facility hardware
                                  in yellow color.

                                · Selected place borders are highlighted in black color.

                                · Places that haven't been mapped with a CI appears in
                                  gray color.

                               · Alert information with an alert icon (  ) on a place that
                                is associated with a rack CI.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 61

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 62 -->
Floor map layout and features (continued)

Callout  Feature       Description

                       · Temperature, Power, and RU Utilization data with color-
                        coded rack overlays according to map legend.

                       · View map legends of metric overlay and network
                        assets color codes.

3        Details pane  You can zoom in or out of the map using the plus (+) or
                       minus (-) buttons.

                       The details pane shows the related information about a
                       place that you're selected in the map pane. Select the

                       info icon ( ) to view the details pane. When you first
                       open the details pane, it shows the details of the floor.
                       Select a place to learn more about it. If a configuration
                       item (CI) is associated with that place, you see the
                       details about that CI.

                       Select the alert icon ( ) on the map pane to view the
                       details of the alerts, incidents, and change requests that
                       are associated with the corresponding CI. You can also

                       select the green lightening bolt icon ( ) on the details
                       pane to view the same details.

                            Note: Alerts are displayed when the

                             Telecommunications Alarm Management Open
                             API (sn_ind_tmf642) plugin is installed. Incidents
                             are displayed when the Customer Service Problem
                             Management (sn_sprb_mgmt) plugin is installed.

4        Search box    Use the search box to find hardware on the map pane.
                       The searched hardware is highlighted on the map. If
5        Rack view     the hardware is located directly on the floor (not inside
                       a rack), the system highlights the exact location of the
                       hardware on the floor map. Search option also highlights
                       the hardware within the Rack view if the searched
                       hardware is placed within a rack or cabinet.

                       Rack view shows the visual representation of a rack.
                       The Rack view also shows the warning labels for alerts,
                       incidents, and change requests. Select a rack CI in the
                       map pane to open the Rack view.

         Managing your floor map

          You can upload and manage the datacenter map objects using the Indoor Mapping Map Studio.
          You can view the respective floor plans for a selected building in a datacenter campus using the
          floor map. To learn more, see Upload and manage floor map for your datacenter.

         Access

          Access the floor map in the Telecommunications Network Inventory workspace as follows:
© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 62

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 63 -->
          1. Navigate to Workspaces > Network Inventory Workspace.
          2. Select the blue hub icon ( ).
          3. Select the Floor map tab.
          To learn more about how to use the floor map, see Floor map.

         Network topology

          The topology in the Telecommunications Network Inventory application graphically displays
          how the different elements in a network such as equipment, connections, and interfaces are
          organized and connected to one another. By using a topology, you get a bird's eye view to the
          network.

         Topology visualization overview

          The network topology is a visual representation of the network elements such as nodes
          (equipment), edges (connections), and termination points (interfaces), and how they're
          organized and connected to one another. A topology can be a ring, tree, mesh, star, or bus
          in structure. A topology enables you to plan the network expansions, monitor the network
          performance, and troubleshoot the faults occurring in the network.
          The following example shows a topology in the Telecommunications Network Inventory
          application.

                    Network topology

          You can view the topology in the Network Viewer window in the Telecommunications Network
          Inventory workspace. The Network Viewer window contains the following:
           · The search box and advanced filter enable you to select the topology.
           · The map pane shows the network topology.
           · Details pane on the shows related information of the topology according to the current

             selections.

© 2025 ServiceNow, Inc. All rights reserved. ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries. 63

Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 64 -->
Search box

Use the search box to select the topology that you want to visualize. You can select multiple
topologies at a time. The advanced filter option enables you to filter the topologies based on the
conditions that you set.

Map pane

The map pane shows the topology that you selected in the search box. You can view many
topologies in the map pane at a time. The map pane also shows the name of each element in the
topology.

You can perform the following actions in the map pane:
 · Hover over a node to highlight the connections that are associated with the node.
 · Select one among the topologies to highlight the elements associated with it.

 · Select the refresh icon ( ) to reload the map and return it to its initial view.

 · Select the fit to screen icon ( ) to adjust the topology to the size of the map pane.
 · Use the zoom controls to zoom in and out of the map.

Details pane

The details pane shows the related information about the topology, node, or connection that
you're selected. You can select the info icon ( ) to view the details pane. Initially the details
pane shows the related information about the topology record. If you select a node, then the
details pane shows the related information about that node. If you select an empty space on the
map pane, the details pane shows related information about the topologies that are opened.

You can also select View Details in the details pane to redirect to the corresponding CI record.

Access

You can access the network topology in the Telecommunications Network Inventory workspace
as follows:
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the network visualization icon ( ).
3. Select the Topology tab.

To learn more about how to create and view a topology in the Telecommunications Network
Inventory application, see Network topology.

Related topics
   Data model
   Network topology

Configuring Telecommunications Network Inventory

Learn how to configure the Telecommunications Network Inventory application so that you can
define your telecommunications network and create a comprehensive network inventory model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    64
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 65 -->
Install Telecommunications Network Inventory

If you have the admin role, you can install the Telecommunications Network Inventory
application. The application includes the demo data and installations that are related
ServiceNow® Store applications and plugins, if they aren't already installed.

Before you begin
 · Ensure that the application and all of its associated ServiceNow Store applications have valid

   ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
   or application .
 · Ensure to install the demo data of Telecommunications Network Inventory. On installing the
   demo data, the flows and subflows are triggered. The demo data enables you to understand
   the flow of OMT-TNI integration. As part of the demo data along with the required attributes, the
   following are also created:
   1. Order- Includes an order request for installation of fiber broadband demo data
   2. Order task- An order task is created automatically when an order is created
  3. OMT task- order management tasks that are created under an order task
  4. Change request- this includes the change request details for the installation of fiber

      broadband
  5. Change task- multiple tasks are created to fulfill the order

        Note: On successful installation of demo data, the demo data for GPON broadband and

         design assign link aggregation group is automatically added.

 · Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
   sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

About this task
The following items are installed with Telecommunications Network Inventory:
 · Plugins
 · Store applications
 · Roles
 · Tables

For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Telecommunications Network Inventory application (sn_ni_adv) using the filter criteria

   and search bar.

        Note: Installation of TNI Advanced leads to automatic installation of TNI Core without its

         demo data. You need to manually load or install the demo data for TNI Core demo data.

   You can search for the application by its name (Network Inventory) or ID. If you can't find the
   application, you might have to request it from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    65
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

