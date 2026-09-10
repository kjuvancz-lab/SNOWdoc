# Zurich Telecommunications Network Inventory â€” Network site form / Network topology form / Pack tables +3 more

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 357â€“366 of 425

Sections: Network site form (p357); Network topology form (p358); Pack tables (p358); Path computation error messages (p362); Physical Connection form (p362); Physical connection modification request form (p365)

---

<!-- page 357 -->
Network Model Relationship form (continued)

Field      Description

           The default value is 1. If the parent model has multiple relationships, the
           sequence number for the first relationship is set to 1 and the number following
           the highest value of the first relationship is set for the consecutive relationships.
           For example, let's say that your equipment has a model relationship with two
           slots and two ports. When the relationship is created, the sequence number of
           the slots and ports are set to 1 and 3.

           Note: This attribute is only for Rack to Slot, Equipment to Slot,

           Equipment to Network Interface, Interface card to Slot, Interface card to
           Network Interface, Cable to Strand, and Logical Connection to Channel
           relationship types.

Parent     Bandwidth of the parent product model.
bandwidth
                Note: This attribute is only visible for the Logical Connection to Channel

                 relationship type.

Child      Bandwidth of the child product model.
bandwidth
                Note: This attribute is only visible for the Logical Connection to Channel

                 relationship type.

Related topics
   Define a network model relationship

Network site form

The Network Site form enables you to define a network site where you house network equipment.

Network Site form

Field      Description
Name
           Name of the network site where the equipment resides. The ServiceNow AI
           Platform uses this name to identify your network inventory. For example, TROY
           IXC POP.

NPANXX     Assigned NPA-NXX code for this network site:
Location    · This code is a combination of area codes (NPAs) and local exchanges (NXXs).
            · The combined code can contain the last four digits of up to 10,000 telephone

              numbers that are within a specific region. This region is associated with the
              central office for the assigned code.
            · For example, 858-335 is the NPA-NXX for the phone number 858-335-9500.

           Geographic location of the network site. Select the search icon ( ) and select a
           location from the Location hierarchy. To learn more about the Location hierarchy,
           see product/tmt-telecom-network-inventory/task/define-tni-locations.dita.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    357
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 358 -->
Network Site form (continued)

Field   Description
County  Name of the county in which the network site is located.

Region

        Name of the geographic region in which the network site is located.

POTS    Plain Old Telephone Service number (POTS) that is associated with this network
number  site.

Subcategory Subcategory of the site.

     Note: To learn about the remaining identification fields that are common to most of the

      Inventory and Inventory number allocation menu forms, see Commonly used network asset
      instance identification fields.

Related topics
   product/tmt-telecom-network-inventory/task/define-tni-sites.dita

Network topology form

The Network Topology form enables you to create, and review the topology details of a network.

Network Topology form

Field                    Description
Name                     Name of the topology.
Bandwidth                Bandwidth of the topology.
Life cycle stage         Life-cycle stage of the network inventory asset.
Support group            Group that supports this network asset.
Life cycle stage status  Status of the life-cycle stage.
Managed by               Name of the person who manages this network asset.
Model ID                 Manufacturer's model identification number for this network asset.
Comments                 Comments if any.

Related topics
   Manually create a network topology
   Network topology

Pack tables

Use pack tables to learn about the tables that help to model your 5G network.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    358
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 359 -->
Pack Tables                   Description
Table name                    GNB distribution unit identifier
*pack_3gppTM_gnb_du_function  GNB identifier
pack_3gpp_gnb_du_function     GNB identifier length
pack_3gpp_gnb_du_function     GNB distribution unit name
pack_3gpp_gnb_du_function     GNB identifier
pack_3gpp_gnb_cu_cp_function  GNB identifier length
pack_3gpp_gnb_cu_cp_function  GNB control unit name
pack_3gpp_gnb_cu_cp_function  Mobile country code
pack_3gpp_gnb_cu_cp_function  Mobile network code
pack_3gpp_gnb_cu_cp_function  X2 block list
pack_3gpp_gnb_cu_cp_function  X2 allow list
pack_3gpp_gnb_cu_cp_function  XN block list
pack_3gpp_gnb_cu_cp_function  XN allow list
pack_3gpp_gnb_cu_cp_function  XN no block list
pack_3gpp_gnb_cu_cp_function  Dapsho control flag
pack_3gpp_gnb_cu_cp_function  CHO control flag
pack_3gpp_gnb_cu_cp_function  GNB control unit user plane identifier
pack_3gpp_gnb_cu_up_function  GNB identifier
pack_3gpp_gnb_cu_up_function  GNB identifier length
pack_3gpp_gnb_cu_up_function  Cell local identifier
pack_3gpp_nrcellcu            PLMN info list
pack_3gpp_nrcellcu            Name
pack_3gpp_nrcelldu            PLMN info list
pack_3gpp_nrcelldu            Administrative state
pack_3gpp_nrcelldu            Cell state
pack_3gpp_nrcelldu            Cell local identifier
pack_3gpp_nrcelldu            Physical cell identity
pack_3gpp_nrcelldu            Tracking area codes
pack_3gpp_nrcelldu            Synchronization signal block frequency
pack_3gpp_nrcelldu            Synchronization signal block periodicity
pack_3gpp_nrcelldu            Synchronization signal block subcarrier
pack_3gpp_nrcelldu            spacing
                              Synchronization signal block duration
pack_3gpp_nrcelldu            Operation state
pack_3gpp_nrcelldu

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    359
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 360 -->
Pack Tables (continued)    Description
Table name                 Radio frequency channel number down link
pack_3gpp_nrcelldu         Radio frequency channel number up link
pack_3gpp_nrcelldu         Radio frequency channel number
pack_3gpp_nrcelldu         supplementary up link
                           Base station channel bandwidth downlink
pack_3gpp_nrcelldu         Synchronization signal block offset
pack_3gpp_nrcelldu         Base station channel bandwidth uplink
pack_3gpp_nrcelldu         Base station channel bandwidth
pack_3gpp_nrcelldu         supplementary up link
                           Network function instance ID
pack_3gpp_managed_element  Network function type
pack_3gpp_managed_element  Heartbeat timer
pack_3gpp_managed_element  Authentication information
pack_3gpp_managed_element  Host address
pack_3gpp_managed_element  Enabled network function types
pack_3gpp_managed_element  Enabled network function domains
pack_3gpp_managed_element  Locality
pack_3gpp_managed_element  Capacity
pack_3gpp_managed_element  Network function set identifiers
pack_3gpp_managed_element  Serving scope
pack_3gpp_managed_element  Network function supports load
pack_3gpp_managed_element  Network function supports overload
pack_3gpp_managed_element  Network function recovery times
pack_3gpp_managed_element  SCP domains
pack_3gpp_managed_element  Vendor identifier
pack_3gpp_managed_element  AMF (Access and Mobility Management
pack_3gpp_amf_function     Function) regional identifier
                           SBI fully qualified domain name
pack_3gpp_amf_function     AMF set identifier
pack_3gpp_amf_function     CNSI identifiers
pack_3gpp_amf_function     Backup failure AMF (Access and Mobility
pack_3gpp_amf_function     Management Function) mobile country code
                           Backup failure AMF mobile network code
pack_3gpp_amf_function     Backup failure AMF identifier
pack_3gpp_amf_function     Backup removal AMF mobile country code
pack_3gpp_amf_function

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    360
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 361 -->
Pack Tables (continued)  Description
Table name               Backup removal AMF mobile network code
pack_3gpp_amf_function   Backup removal AMF identifier
pack_3gpp_amf_function   Tracking area codes
pack_3gpp_smf_function   SBI fully qualified domain name
pack_3gpp_smf_function   PDN gateway FQDN
pack_3gpp_smf_function   Access type
pack_3gpp_smf_function   Priority
pack_3gpp_smf_function   CNSI identifiers
pack_3gpp_smf_function   Visited SMF support indicator
pack_3gpp_smf_function   Network function instance identifier
pack_3gpp_upf_function   Tracking area codes
pack_3gpp_upf_function   Cnsi identifiers
pack_3gpp_upf_function   SMF serving area
pack_3gpp_upf_function   Support interworking with EPS
pack_3gpp_upf_function   PDU session types
pack_3gpp_upf_function   Access Traffic Steering, Switching, and
pack_3gpp_upf_function   Splitting
                         Multipath TCP
pack_3gpp_upf_function   Perform RTT without PMT
pack_3gpp_upf_function   UELP address indicator
pack_3gpp_upf_function   Wireline Access Gateway Function IPv4 end
pack_3gpp_upf_function   point
                         Wireline Access Gateway Function IPv6 end
pack_3gpp_upf_function   point
                         Wireline Access Gateway Function FQDN
pack_3gpp_upf_function   Trusted Non-3GPP Access Point IPv4 end
pack_3gpp_upf_function   point
                         Trusted Non-3GPP Access Point IPv6 end
pack_3gpp_upf_function   point
                         Trusted Non-3GPP Access Point FQDN
pack_3gpp_upf_function   Trusted WLAN interworking function IPv4 end
pack_3gpp_upf_function   point
                         Trusted WLAN interworking function IPv6 end
pack_3gpp_upf_function   point
                         Trusted WLAN interworking function FQDN
pack_3gpp_upf_function   Priority
pack_3gpp_upf_function

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    361
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 362 -->
 Pack Tables (continued)               Description
 Table name                            Redundant GPRS tunneling protocol
 pack_3gpp_upf_function                IP upstream
 pack_3gpp_upf_function                Data forwarding
 pack_3gpp_upf_function                Support packet forwarding control protocol
 pack_3gpp_upf_function                Support baremetal orchestrator
 pack_3gpp_upf_function                Local port
 pack_3gpp_ep_rp                       Local IPv4 address
 pack_3gpp_ep_rp                       Local IPv6 address
 pack_3gpp_ep_rp                       Local VLAN
 pack_3gpp_ep_rp                       Remote IPv4 address
 pack_3gpp_ep_rp                       Remote IPv6 address
 pack_3gpp_ep_rp

* 3GPP is a trademark of ETSI.
Related topics

   Model 5G network function

Path computation error messages

Path computation error messages enable you to understand the error messages that occur
during the path computation.

Error messages

Error message

Error                                  Resolution

                                                                    Create a connection between the sites.
No path found between the sites <site1_name>

and <site2_name>.

Related topics
   Design your GPON Broadband Service

Physical Connection form

The Physical Connection form enables you to define a physical connection by describing its
configuration and connection details.

Related topics
   Define the physical connection details

Physical Connection form

          The Physical Connection form enables you to describe the details for a physical connection.                                                                           362

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 363 -->
Physical Connection form

Field      Description
Name
           Name of this physical connection. The ServiceNow AI Platform uses this name to
           identify it in your network inventory.

Product    Name of the product model that is associated with the physical connection. Click
Model
           the search icon ( ) to select the product model.

            · If you selected Optical Fiber Cable, the Cable parameters tab appears so that
              you can enter additional information.

            · If you selected Fiber Link, then you must fill in the information for the Cable and
              Strand number fields in the Physical connection element form.

Link Type Type of link for the physical connection. For example, Fibre or coaxial.

Bandwidth

AtoZ       Total bandwidth capacity from Site A to Site Z for this network connection.

Bandwidth

ZtoA       Total bandwidth capacity from Site Z to Site A for this network connection.

Site A

           Originating network site for this connection. Select the search icon ( ) and
           select a network site. To learn more, see product/tmt-telecom-network-inventory/
           task/define-tni-sites.dita.

Site Z

           Destination network site for this connection. Select the search icon ( ) and
           select a network site. To learn more, see product/tmt-telecom-network-inventory/
           task/define-tni-sites.dita.

Related topics
   Define the physical connection details

Physical Connection form - Configuration

The Configuration section in the Physical Connection form enables you to create a physical
connection.

Physical Connection form - Configuration

Field       Description
Port A
            Network interface that is used in the Port A connection. Select the search icon
            ( ) and select a network interface. To learn more, see Define the network
            interface details.

Management

option      Attribute that indicates who or what is responsible for managing this endpoint.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    363
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 364 -->
Physical Connection form - Configuration (continued)

Field     Description
Endpoint
role      Endpoint role that is associated with the service endpoint for this network asset.
          An endpoint role is the function that is served by the endpoint of the service
Port Z    that you're providing. Select one of the following options:
           · ROOT or LEAF endpoint role, as defined by the Metro Ethernet Forum (MEF).
           · --None-- for no assigned endpoint role.

          Network interface that is used in the Port Z connection. Select the search icon
          ( ) and select a network interface. To learn more, see Define the network
          interface details.

Vendor

          Name of the network asset's vendor. Select the search icon ( ) and select a
          vendor code. To learn more, see Create manufacturer and vendor codes.

Cost

          Cost of this network asset.

Distance  Route length of this connection, expressed in the unit of measure that you
Unit      select in the Unit field.

          Unit of measure in which you're expressing the route length of the connection in
          the Distance field. Select one of the following options:

             --None--
                   No distance measurement expressed for the connection route
                   length.

             Miles
                   Distance is expressed in miles.

             Kilometers
                   Distance is expressed in kilometers.

             Feet
                   Distance is expressed in feet.

             Meters
                   Distance is expressed in meters.

     Note: To learn about the remaining configuration fields that are common to most of the

      Inventory menu forms, see Commonly used network asset instance configuration fields.

Related topics
   Define the physical connection details

Cable Parameters form

The Cable Parameters form enables you to define cable parameters for a physical connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    364
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 365 -->
Cable Parameters form

Field            Description
Cable type       Name of the cable type.

Cable number Number of the cable that is used in the physical connection.

Stand count      Number of fibers that this cable contains.

Cable length     Length of the cable in millimeters (mm).

Parent cable     Option that designates the top-layer physical connection.

Color code       Color of the cable line.

Sparelength A Length of the cable that connects to site A in millimeters (mm).

Sparelength Z Length of the cable that connects to site Z in millimeters (mm).

KML Route        Option that designates the fiber route maps in a KML format.

Related topics
   Define the physical connection details

Physical connection modification request form

The Physical connection modification request form enables you to modify endpoints of a
physical connection record in the Telecommunications Network Inventory application.

Logical/Physical connection modification request form

Fields                                     Description
A end Site
                                           Starting network (Site A field) site where this
                                           selected logical or physical connection is
                                           configured.

                                           Note: This field is auto populated

                                           based on the selected site or equipment
                                           or interface or connection.

Z end Site                                 Ending network site (Site Z field) where this
                                           selected logical or physical connection is
                                           configured.

                                                Note: This field is auto populated

                                                 based on the selected site or equipment
                                                 or interface or connection.

A end Equipment                            Starting network (Site A field) equipment
                                           where this logical or physical connection is
                                           configured.

                                                Note: This field is auto populated

                                                 based on the selected site or equipment
                                                 or interface or connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    365
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 366 -->
Logical/Physical connection modification request form (continued)

Fields               Description
Z end Equipment
                     Ending network (Site Z field) equipment
                     where this logical or physical connection is
                     configured.

                     Note: This field is auto populated

                     based on the selected site or equipment
                     or interface or connection.

A end interface      Starting interface (Site A field) point where this
                     logical or physical connection is configured.

                          Note: This field is auto populated

                           based on the selected site or equipment
                           or interface or connection.

Z end interface      Ending interface (Site Z field) point where this
                     logical or physical connection is configured.

                          Note: This field is auto populated

                           based on the selected site or equipment
                           or interface or connection.

Physical Connection  Select a physical connection that needs
                     modification from the list.

                          Note:

                            · The list includes both physical and
                              their revisions. On selecting the
                              revision of a physical connection,
                              the Create Revision check box
                              disappears.

                            · This field is applicable only for physical
                              connection modification form.

                            · This field is auto populated based
                              on the selected site or equipment or
                              interface.

Create Revision      Option to enable or disable revision process.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    366
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

