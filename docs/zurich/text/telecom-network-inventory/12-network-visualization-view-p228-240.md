# Zurich Telecommunications Network Inventory â€” Network visualization view

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 228â€“240 of 425

Sections: Network visualization view (p228); Reference (p241)

---

<!-- page 228 -->
     Note:

      The system now automatically associates each logical interface with its corresponding
      card or equipment. With the logical and physical interface alignment enhancement, logical
      interfaces (such as VLANs) and physical interfaces (such as Gigabyte Ethernet ports) are
      mapped to their parent equipment or card. The system establishes a parent relationship for
      each logical interface using the parent's unique serial number for accurate identification.
      This enhancement ensures consistency across systems and prevents duplicate CI creation
      by aligning identification and relationship logic between logical and physical interfaces.

Related topics
   Logical connections

Network visualization view

Use the Network visualization view in the Telecommunications Network Inventory application to
explore your network site details, datacenters's floor map, and network topology.

Floor map

Use the floor map in the Telecommunications Network Inventory application to view the
datacenters floor details and monitor the operational data.

Upload and manage floor map for your datacenter
Create, manage, and update your datacenter map objects in the Indoor Mapping Map Studio
interface. You can view the datacenter's network infrastructure in Telecommunications Network
Inventory application.

Before you begin
 · Make sure to install Indoor Mapping (sn_map_core) application.
 · Role required: sn_ni_core.dc_floor_designer

About this task
With Indoor Mapping Map Studio, you can manage and edit map objects related to your
datacenter infrastructure in one place. First, create a campus record with details about the
building and floor. Then, upload a source image (CAD file or raster image) of the floor layout.
With this layout, you can make architectural diagrams to show your datacenter facilities. You
can define places using points or polygons. Link these places to place types like racks or
transformers to categorize the network assets and different facilities.

Each place is marked with a title, making it easy to identify on the map. Once the campus record
is created with building and floor details, you can map the campus with a datacenter using CMN
location record. Then, you can map Configuration Items (CIs) to their corresponding places.
Additionally, you can customize how operational data is displayed on the map, enabling real-time
visualization of datacenter performance.

Procedure
1. Create a campus with buildings and floors.

   To learn more, see Create a campus with buildings and floors .

        Note: Make sure the campus and datacenter names that you want to map are the same.

2. Use the boundary editor to map your campus on the global map.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    228
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 229 -->
   You can adjust the boundaries to show the location of your campus and buildings. Boundaries
   are used to differentiate between outdoor maps and indoor mapped areas. To learn more, see
   Working with boundary editor .
3. Upload your floor plan's CAD or raster file.

   You can use the floor plan to make configuration changes and preview the CAD design layout.
   To learn more, see Import CAD files to Map Studio . If you're uploading a raster file, then see
   Import Raster files for more details.

4. Optional: Import outdoor elements such as a logo or an outdoor cafeteria that you want to
   display on the indoor map.
   To learn more, see Import outdoor elements .

5. Add places, icons, and place types to locate your network assets and facilities on a floor.

   To learn more, see Manage places .

   To create a place type, see Create Indoor Mapping icons and place types . To learn about
   available place types, see Data center place types.

6. Use the Map Preview to display maps and test directions that you have created.
7. Optional: Export the updated CAD changes to your CAD file.

   Exporting the updated changes creates a copy of the modified CAD file in Indoor Mapping. To
   learn more about, see Export CAD configuration .

Result
A Indoor Mapping campus record is created with building and floor details.

What to do next
After you create your Indoor Mapping campus record, do the following to view the datacenter
infrastructure in floor map.
1. Map Indoor Mapping campus to a datacenter
2. Map a Configuration Item to a floor map
3. Customize overlays on the floor map
4. Customize overlay time series on the floor map
5. View floor map details

Related topics
   Indoor Mapping

Map Indoor Mapping campus to a datacenter
Map an Indoor Mapping campus to a datacenter Configuration Item (CI) so you can view the
datacenter's network infrastructure in the Telecommunications Network Inventory.

Before you begin
 · Your campus record is created with building and floor details.
 · Your campus record name is the same as the datacenter record.
 · Make sure that you have configured Indoor Mapping campus with a floor plan and map

   objects. To learn more, see Upload and manage floor map for your datacenter.
 · Role required: sn_ni_core.dc_ops_agent

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    229
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 230 -->
About this task
After you create a Indoor Mapping campus record, you must map it to the datacenter
Configuration Item (CI). Synchronize the campus with a location record, which is where the
datacenter is located. Now you can open the campus in the floor map and view the datacenter
infrastructure.

     Note: If you use the same CMN location when creating the data center and campus, the

      campus will be automatically mapped to the CI.

Procedure
1. Navigate to All > Indoor Mapping > Campuses.
2. Open the campus record that you want to map to the datacenter CI.
3. Select Synchronize with CMN Locations.

   The Indoor Map/CMN Location Synchronization form appears.

4. Select the location record in the CMN Location Campus field.
   If you don't have a location record for your datacenter location, create one. Make sure to use
   the same location as the datacenter you want to map. To learn more about how to create
   location record, see product/tmt-telecom-network-inventory/task/define-tni-locations.dita.

5. Select Update to map the campus with the location record.
6. Open the campus record that you want to map to the datacenter record.
7. Select Synchronize with CMN Locations.

   The Indoor Map/CMN Location Synchronization form appears.

8. Complete the synchronization steps.
   To learn more about the synchronization steps, see Synchronize Indoor Mapping map data
   with CMN location .

Result
The Indoor Mapping campus record including buildings, floors, places are mapped to the
datacenter CI.

What to do next
View the details of your datacenter infrastructure using the floor map. To learn more, see View
floor map details.

Related topics

   Synchronize Indoor Mapping with CMN Locations

   Floor map

Map a Configuration Item to a floor map
Map a Configuration Item (CI) to a place on your floor map in the Telecommunications Network
Inventory application so you can view its details.

Before you begin
Role required: sn_ni_core.dc_ops_agent

About this task
Associate a CI such as facility hardware to a place on the floor map to view its details. You can
also understand how your network assets are arranged and placed in the datacenter floor.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    230
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 231 -->
Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon .
   The Network viewer window is displayed.

3. Select the Floor map tab.

4. In the Choose location field, select your Site, Building, and Floor.
   The floor map appears.

5. Select a place on the map.
   If you're mapping an equipment rack, then select the location with Rack place type.

6. On the details pane, select the more options icon (  ), and then select Create place
   mapping.

7. Optional: On the details pane, select the more options icon ( ), and then select Open
   record.
   The place record opens. Select the Place documents tab, and then select New.

8. On the Place document form, fill in the fields.

Place document form

Field          Description
Place
               The name of the place record automatically appears based on the place that
               you select on the floor.

Document       Type of inventory class that you want to map.
table

Configuration  CI that you want to map to the place.
Item
                    Note: A CI must be mapped to only one place. Mapping the same CI to

                     multiple places cause visualization issues on the floor map.

9. Select Save.

Result
The CI is mapped to the place on the floor map. The color of the place is changed and reflects
the selected inventory class according to the map legend. Select the CI on the map pane to view
its details.

Related topics
   Floor map
   Upload and manage floor map for your datacenter

View floor map details
Use the floor map in the Telecommunications Network Inventory application to view placement
of network assets on a datacenter floor and their details such as asset specific and operational
data.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    231
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 232 -->
Before you begin
 · Make sure that a datacenter record is mapped to the campus whose details you want to view.
 · Make sure that you have installed the Telecommunications Alarm Management Open API

   (sn_ind_tmf642) and Customer Service Problem Management (CSPM) (sn_sprb_mgmt) plugin
   to view alert and incident details.
 · Role required: sn_ni_core.dc_ops_agent

About this task
Use the floor map to view the following:
 · Details of the places on the floor.
 · View alert information
 · Visualize a rack
 · View floor and rack health information
 · View operational metrics

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon .
   The Network viewer window is displayed.

3. Select the Floor map tab.
4. In the Choose location field, select your Site, Building, and Floor.

   The floor map appears.
5. View the details of the floor map by performing the following actions on the map pane.

Action                     Details

                           Select an empty space on the floor. You can
                           view the following details on the details pane.

                           Campus

                                    Campus name

                           Building

                                    Building name

                           Floor

                                    Floor name

View the details of floor  Floor area
                                 Total floor area in square feet

                           Total cabinets

                                    Total count of cabinets on the
                                    floor

                           Total equipment

                                    Total count of equipment on the
                                    floor

                           Total interfaces

                                                                                          Total count of interfaces on the                                                      232
                                                                                          floor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 233 -->
Action                                  Details
View the details of a place                Available interfaces
View the alert information                        Available count of interfaces on
Visualize a rack                                  the floor
View floor and rack health information     Connections
                                                  Count of logical connections and
                                                  power circuits related to datacen­
                                                  ter

                                        Select a place on the map pane. The select­
                                        ed place is highlighted on map pane. You can
                                        view the place details on the details pane. If
                                        the place is mapped to a Configuration Item
                                        (CI), then you can see the CI-specific details.

                                        Select the alert icon ( ) on a place in the
                                        map pane. On the details pane, you can view
                                        the following information about the CI that is
                                        mapped on that place.

                                         Active alerts
                                         Active events
                                         Active change requests
                                        You can also select the green lightening bolt

                                        icon ( ) to view the alert information.

                                        Select a rack CI on the map pane. The Rack
                                        view opens. Do the following on the Rack
                                        view.

                                         To open the rack record, select Open rack.
                                         To view the back of the rack, select View

                                           rear panel.

                                        Select an empty space on the map pane to
                                        view the following floor health information on
                                        the details pane.

                                         Cabinet capacity
                                         Temperature
                                         Power usage
                                         Humidity

                                        Select a rack on the map pane to view the fol­
                                        lowing health information.

                                         Rack usage
                                         Temperature
                                         Power usage
                                         Humidity

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    233
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 234 -->
Action                                   Details

View operational metrics                 Select the more option icon ( ) in the health
                                         section, and select Open metrics to view the
View floor map related to a company ac­  metric values.
count
                                         Overlays on a floor map are visual indicators
                                         displayed directly on a datacenter's floor
                                         map. These indicators show real-time or past
                                         operational metrics.

                                         a. In the View By field, select an overlay. The
                                            following overlays are available.

                                            Temperature
                                            Power
                                            RU utilization
                                         b. Select the time duration that you want. The
                                            default time duration is set as Recent. The
                                            following time durations are available.

                                            Recent
                                            Past 3 hours
                                            Past 6 hours
                                            Past 12 hours

                                         For example, select Temperature overlay and
                                         Past 3 hours time duration.The floor map up­
                                         dates with the colors according to the map
                                         legend. If the current time is 9:00 PM, the
                                         map shows the average of operational values
                                         from 6:00 PM to 9:00 PM.

                                         To disable overlays, select None in the View
                                         By field.

                                              Note:

                                               You can only use the Recent time se­
                                                  ries option with the RU utilization over­
                                                  lay.

                                               If no metric data available, system
                                                  shows an error message No metrics
                                                  found for the specified duration.

                                         To deselect overlay, select None in the View
                                         By field.

                                         In the Filter By Accounts field, select an ac­
                                         count. The map highlights the CIs related to
                                         that company account in bluish green color.
                                         CIs related to other accounts are grayed out.
                                         You can also select more than one account.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    234
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 235 -->
Action                           Details
Open a record from details pane
                                 a. On the details pane, select the more op­
                                    tions icon ( ) of a card. The card can be a
                                    place, CI, incident, alert, or change request.

                                 b. Select Open record.

                                 The corresponding record opens. To open a
                                 rack record, you can also select Open rack on
                                 the Rack view.

Related topics
   Floor map
   Configuring overlays on floor map

Print floor map
Print the entire canvas of the floor map based on your map selection in the Telecommunications
Network Inventory application. You can use it as a reference to view the floor map details.

Before you begin
Role required: sn_ni_core.dc_ops_agent

About this task
You can print the floor map by configuring relevant options and applying filters and save the copy
to your local system.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon .
   The Network viewer window is displayed.

3. Select the Floor map tab.
4. Apply filters and select your floor.

5. Select the print icon ( ).

6. On the map pane, select the download icon ( ).
7. On the Edit Map Content panel, configure the fields.

Edit Map Content panel           Description
Field
Show Pin on map                  Option to display a pin on the map.
Remove Outdoor Background
                                 Option to remove the map area outside the
                                 selected building.

8. Optional: Select a place to customize the place settings.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    235
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 236 -->
Place Settings         Description
Field
Show Space Text        Option to display the place label on the map.
Show Space Marker
Order on Map           Option to display the place icon on the map.

Space label text size  Order of the place text and marker on the
                       map.

                        Bring to Top: Place text and marker are
                          moved to the top layer of the map.

                        Default: Place text and marker are on the
                          default layer of the map.

                        Send to Back: Place text and marker are
                          moved to the lowest layer of the map.

                       Size of the place label text on the map.

 9. Select Continue to open the print layout page.
10. Select the paper size and orientation from the Print Layout panel.

     For more information about the options, see Map printing options .

11. In the preview area, zoom and drag the map based on your requirement.
     You can use select and hold (or right-click) to rotate the map.

12. Configure the options in the Print Layout panel.
     For a description of the field values, see Map printing options .

13. Select Print.

 Result
 You can use your web browser to print the map or save it as a PDF.

Trouble?

 · If the aspect ratio of the map is not the same as your instance, verify that the layout settings
   (like page size and orientation) of the print dialog of your browser are the same as the settings
   on your instance.

 · If the map is shifted on the printed page, or the position of icons or the pin isn't the same as
   your instance, set the margins in the print dialog of your browser to None.

Open floor map from an incident or alert
Open datacenter floor map from an incident or alert in Service Operations Workspace for
Telecommunications Network Inventory. You can view the affected hardware details in the floor
map.

Before you begin
Role required: sn_ni_core.dc_ops_agent

Procedure
1. Navigate to Workspaces > Service Operations Workspace.

2. Select the list icon ( ), and then go to Incidents > All.
   To open an alert, go to Alerts > All

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    236
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 237 -->
3. Open the incident or alert record from which you want to view the floor map.
4. Select View impact.

Result
The floor map opens and the affected hardware is highlighted. If the issue is related to a rack or
cabinet, then the Rack view also opens in the floor map.

Geo map

Use the Geo map in the Telecommunications Network Inventory application to view the network
site or data center location and its details.

Related topics
   Geo map

View details of the geo map
Use the geo map to view the geographical location of a network site and datacenter and its
details in the Telecommunications Network Inventory application. You can understand the
detailed overview of the site and information about the connections.

Before you begin
Role required: sn_ni_core.dc_ops_agent

About this task
Use the geo map to do the following:
 · View the details of a network site and datacenter.
 · View the details of the sites in the same location.
 · View the physical and logical connections and topology associated with the site.
 · View the cable routes associated with a site.
 · View the capacity information.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the blue hub icon .
   The Network visualization window is displayed.

3. Select the Geo map tab.
4. View the details of the site by performing the following actions on the map pane.

Action                       Details

View the details of a site.  Hover over the map icon on the map pane
                             and then select View Details. You can view
                             the site details on the details pane. You can
                             also view the image of the site. To learn more
                             about how to upload an image, see Add im­
                             ages to a network inventory record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    237
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 238 -->
Action                                     Details

                                                Note: If you select the datacenter on

                                                 the map pane, select View floor map to
                                                 view the floor map. The View Floor Map
                                                 automatically populates the campus on­
                                                 ly. You must manually select a building
                                                 and floor to view the corresponding floor
                                                 map.

                                           a. Hover over the map icon in the map pane

View the details of the sites in the same loca­ and then select View Details.

tion.                                      b. Select next or previous buttons to view the

                                           details about other site.

View the physical and logical connections  a. Select a site.
and topology details
                                           b. On the Connectivity filter option, select the
                                              option that you want to view the details.

                                              Physical Connections

                                              Logical Connections

                                              Topologies
                                              These connection elements appear as
                                              dashed lines between the sites.

                                           c. Select a line to view the details on the de­
                                              tails pane. The bar chart graph shows the
                                              available connection elements.

View the cable route between sites         a. Select a site.
                                           b. On the Connectivity filter, select Cables.

                                           The map pane displays the cable route be­
                                           tween the sites.

                                                Note: You must only select Cables to

                                                 view the cable route.

View the capacity information              Select a site and view the capacity informa­
                                           tion on the details pane. The bar chart graph
                                           represents the available capacity of the fol­
                                           lowing:

                                            Bearable weights
                                            Rack Units
                                            Allotted Power
                                            Equipment Slots
                                            Equipment Interfaces
                                            Equipment Bandwidth
                                            Card Slots

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    238
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 239 -->
Action                            Details

                                   Card Interfaces
                                   Card Bandwidth

                                  Select the a bar on the graph to redirect to
                                  the corresponding capacity metrics list.

View the change requests                        Select a site to view the number of associat­
                                                ed change requests on the details pane. Only
                                                the change requests assigned to the logged-
                                                in user are displayed.

Related topics
   Geo map

Add images to a network inventory record
Add image to a network inventory record. You can distinguish the network asset with the
uploaded image.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent,
sn_ni_core.inventory_template_manager, sn_ni_core.telco_inventory_catalog_manager

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ) and then go to Network Sites > All Sites.
   You can select the type of inventory that you want to add an image.

3. Open the record that you want to add image.
4. On the Media tab, select New.
5. On the Details tab, fill in the fields.

Network Site form - Site Details

Field    Description
Name     Image name.

Record   Table name where you want to upload the image. For example, if you add an
Table    image to a network site, select Network Site (cmdb_ci_ni_site).

Acquisition The date on which the network resource legally acquired by the organization.
Date

State    Current state of the image. Select Active to display the image in the inventory
         record.

Media    Type of media file.
Type

Description Brief description about the image.

Default  Select this check box to display the image on the inventory record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    239
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 240 -->
Field      Description
Acquired   Name the person who acquired this image.
by
Record ID  Inventory record.
Image      Select Add Image to upload the file.
View Type  Select the view type if you upload multiple images.
Sequence   Select sequence if you upload multiple images.

6. Select Save.

Result
The image is added to the network inventory record.

Related topics
   View details of the geo map

Open site map from a network site form
Open Network site map from a network site form in the Telecommunications Network Inventory
application. You can understand the geographical location of the network site and information
about the connections.

Before you begin
Role required: sn_ni_core.inventory_admin, sn_ni_core.inventory_agent

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Click the list icon ( ) and then go to Network Sites > All Sites.

   You can view the sites that you manage by going to Network Sites > My Sites.

3. Open a network site that you want to see the details.
4. Select Network Site Map.

   The network site form displays the Network Site Map button only if the site location has a valid
   latitude and longitude.

Result
The Network site map page opens and displays your network site.

Network topology

Use the network topology in the Telecommunications Network Inventory application to view how
the different elements in a network are organized and connected to one another.

To view the network topology, you must create the topology record either manually or using a
"design and assign" function. To learn more, see:
 · Manually create a network topology.
 · Create a network topology record by using design and assign.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    240
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

