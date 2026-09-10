# Zurich Telecommunications Network Inventory â€” Equipment holder extension classes / Equipment extension classes

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 286â€“313 of 425

Sections: Equipment holder extension classes (p286); Equipment extension classes (p289)

---

<!-- page 286 -->
Equipment Holder form - Configuration (continued)

Field       Description

                   Note: This field is only accessible when the US Imperial system is used

                     for unit of measurement.

            · Pounds (lbs)

                  Note: This field is only accessible when the US Imperial system is used

                    for unit of measurement.

Related topics
   product/tmt-telecom-network-inventory/task/define-tni-equipment-holders.dita

Equipment holder extension classes

The Equipment Holder extension classes are the sub-classes that are extended from
the Equipment Holder. You can define equipment holder records for these classes in the
Telecommunications Network Inventory application.

Equipment Holder extended classes

Class Name  Table Name             Extends from    Description
Cabinet
            cmdb_ci_container_cabicnmetdb_ci_equipment_hoAldeterlecommunications
Multi Rack                                                                      cabinet, also known
                                                                                as a telecom cabinet
                                                                                or equipment
                                                                                cabinet, is a physical
                                                                                enclosure used
                                                                                to house and
                                                                                protect various
                                                                                telecommunications
                                                                                and network
                                                                                equipment, such as
                                                                                switches, routers,
                                                                                patch panels, and
                                                                                power supplies. It
                                                                                provides a secure
                                                                                and organized
                                                                                environment for
                                                                                the installation,
                                                                                management, and
                                                                                interconnection of
                                                                                telecommunications
                                                                                infrastructure within
                                                                                a network or data
                                                                                center.

            cmdb_ci_container_multci_mradcbk_ci_equipment_hoAldemrulti-rack, also
                                                                                referred to as a multi-
                                                                                rack system or multi-
                                                                                rack enclosure,

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    286
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 287 -->
Equipment Holder extended classes (continued)

Class Name  Table Name  Extends from           Description

                                               is a configuration
                                               consisting of multiple
                                               interconnected
                                               equipment racks
                                               used for housing
                                               and organizing a
                                               large amount of
                                               telecommunications
                                               or network equipment
                                               in a centralized
                                               manner. It provides
                                               expanded capacity
                                               and scalability,
                                               allowing for efficient
                                               deployment and
                                               management of
                                               equipment within
                                               data centers or
                                               telecommunication
                                               facilities.

Rack        cmdb_ci_container_rackcmdb_ci_equipment_hoAlderarck, commonly
                                                                                known as a server
                                                                                rack or equipment
                                                                                rack, is a framework
                                                                                designed to securely
                                                                                hold and organize
                                                                                various IT and
                                                                                telecommunications
                                                                                equipment, such as
                                                                                servers, networking
                                                                                devices, and storage
                                                                                units. It provides
                                                                                a standardized
                                                                                form factor for
                                                                                easy installation,
                                                                                organization, and
                                                                                maintenance of
                                                                                equipment in
                                                                                data centers and
                                                                                other technology
                                                                                environments.

Shelf       cmdb_ci_container_shelcf mdb_ci_equipment_hoAldeshr elf holder, also
                                                                                known as a rack
                                                                                shelf or equipment
                                                                                shelf, is a component
                                                                                designed to support
                                                                                and hold non-
                                                                                rackmount equipment
                                                                                or devices within a
                                                                                rack or equipment
                                                                                cabinet. It provides
                                                                                a stable platform

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    287
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 288 -->
Equipment Holder extended classes (continued)

Class Name  Table Name  Extends from           Description
Slot
                                               for equipment that
                                               does not have
                                               built-in rackmount
                                               capabilities,
                                               allowing for efficient
                                               organization and
                                               integration of various
                                               devices within the
                                               rack infrastructure.

            cmdb_ci_container_slot cmdb_ci_equipment_hoIlndethr e context of
                                                                                technology and
                                                                                hardware, a slot
                                                                                refers to a physical
                                                                                or virtual receptacle
                                                                                designed to hold
                                                                                and accommodate
                                                                                a specific type of
                                                                                component, such
                                                                                as an expansion
                                                                                card or memory
                                                                                module. It provides
                                                                                a standardized
                                                                                interface and location
                                                                                for inserting and
                                                                                connecting the
                                                                                component to the
                                                                                main system or
                                                                                device.

                                               Dependent
                                               on Hardware
                                               (contains::contained
                                               by).

                                               Name is usually
                                               discoverable. If not
                                               available,use the
                                               name of the card that
                                               is contained in this
                                               slot.

Subslot     cmdb_ci_container_subsclmotdb_ci_equipment_hoIlndeorur context, a
                                                                                slot that is present
                                                                                on a Card and can
                                                                                accommodate child
                                                                                cards is considered a
                                                                                subslot.

                                                                                Dependent
                                                                                on Hardware
                                                                                (contains::contained
                                                                                by).

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    288
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 289 -->
Equipment Holder extended classes (continued)

Class Name           Table Name  Extends from                             Description

                                                                          Identification: Name
                                                                          (100). Name is
                                                                          discovered from
                                                                          SNMP. If not available,
                                                                          use the name of the
                                                                          card that is contained
                                                                          in this subslot.

Related topics
   product/tmt-telecom-network-inventory/task/define-tni-equipment-holders.dita

Equipment extension classes

The Equipment extension classes are the subclasses that are extended from the telco
equipment, network gear, and hardware tables. You can define equipment records for these
classes in the Telecommunications Network Inventory application.

Equipment extended classes

Class Name           Table Name  Extends generic CI class Description
Logical Composite
                     cmdb_ci_logical_compocsmitedb_ci                     A logical composite
Power Over Ethernet                                                       is a logical device
Device                                                                    that is composed
                                                                          of multiple distinct
                                                                          entities, which are
                                                                          aggregated together
                                                                          to provide a function.
                                                                          It refers to grouping
                                                                          of network elements
                                                                          such as equipment
                                                                          and racks that are
                                                                          logically connected
                                                                          to achieve a specific
                                                                          purpose or function,
                                                                          rather than being
                                                                          physically connected.

                     cmdb_ci_power_over_etchmerdnbe_t_cdi_eipv_icsewitch  Power over Ethernet
                                                                          (PoE) is a technology
                                                                          that enables for
                                                                          the transmission
                                                                          of both data and
                                                                          electrical power over
                                                                          a single Ethernet
                                                                          cable, simplifying
                                                                          the deployment
                                                                          and connectivity
                                                                          of network devices
                                                                          such as IP cameras,
                                                                          wireless access
                                                                          points, and VoIP

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    289
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 290 -->
Equipment extended classes (continued)

Class Name           Table Name         Extends generic CI class Description

                                                                          phones by eliminating
                                                                          the need for separate
                                                                          power sources.
                                                                          This enables easier
                                                                          installation and
                                                                          flexibility in network
                                                                          infrastructure.

Service Aggregation  cmdb_ci_service_aggregcamtidonb_croi_uitpe_rrouter  A service aggregation
Router                                                                   router is a network
                                                                         device that
                                                                         consolidates and
                                                                         routes traffic from
                                                                         multiple service
                                                                         providers or network
                                                                         connections into
                                                                         a single network
                                                                         infrastructure,
                                                                         enabling efficient
                                                                         management and
                                                                         distribution of
                                                                         services to end-users
                                                                         or multiple locations.
                                                                         It acts as a centralized
                                                                         hub for aggregating
                                                                         and directing traffic
                                                                         from various sources
                                                                         to optimize network
                                                                         performance and
                                                                         simplify network
                                                                         management.

Residential Gateway  cmdb_ci_residential_gatcemwdaby_ci_modem_netwoArkresidential
                                                                                         gateway is a device
                                                                                         that combines
                                                                                         the functionality
                                                                                         of a modem,
                                                                                         router, and often
                                                                                         other networking
                                                                                         components,
                                                                                         providing internet
                                                                                         connectivity, local
                                                                                         network management,
                                                                                         and potentially
                                                                                         additional services
                                                                                         such as Wi-Fi, firewall,
                                                                                         and voice capabilities,
                                                                                         to residential users or
                                                                                         small home networks.
                                                                                         It serves as the
                                                                                         primary point of
                                                                                         entry for internet
                                                                                         access and enables
                                                                                         the connection and

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    290
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 291 -->
Equipment extended classes (continued)

Class Name             Table Name       Extends generic CI class Description
Multi Service Network
Router                                                                    communication of
                                                                          devices within a home
Fabric Interconnect                                                       network.

Protocol Converter     cmdb_ci_multi_service_ncmetdwbo_rcki__rnoeutgeer ar  A multi-service
                                                                            network router is a
                                                                            versatile networking
                                                                            device capable
                                                                            of supporting and
                                                                            routing various types
                                                                            of network traffic, such
                                                                            as data, voice, and
                                                                            video, over different
                                                                            network protocols
                                                                            or technologies,
                                                                            including Ethernet,
                                                                            MPLS, and IP. It
                                                                            provides the ability
                                                                            to handle multiple
                                                                            services and diverse
                                                                            traffic types within
                                                                            a single router
                                                                            infrastructure,
                                                                            facilitating efficient
                                                                            communication
                                                                            and connectivity for
                                                                            different applications
                                                                            and systems.

                       cmdb_ci_fabric_interconcnmedctb_ci_netgear           A fabric interconnect
                                                                            is a network
                                                                            component in a data
                                                                            center architecture
                                                                            that serves as a
                                                                            central switch for
                                                                            connecting and
                                                                            managing multiple
                                                                            servers, storage
                                                                            systems, and other
                                                                            network devices. It
                                                                            provides high-speed
                                                                            communication and
                                                                            enables efficient
                                                                            data flow between
                                                                            various components
                                                                            within the data center
                                                                            infrastructure.

                       cmdb_ci_protocol_convecrmtedrb_ci_netgear            Device used to
                                                                            convert standard or
                                                                            proprietary protocol
                                                                            of one device to the
                                                                            protocol suitable for
                                                                            the other device or

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    291
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 292 -->
Equipment extended classes (continued)

Class Name            Table Name           Extends generic CI class Description
Network Monitoring
                                                                             tools to achieve the
Network Tap                                                                  interoperability.

Network Testing Unit  cmdb_ci_network_monitcomrindgb_ci_network_testinAg_nuentiwt ork monitoring
                                                                                          unit is a dedicated
                                                                                          device or software
                                                                                          system that
                                                                                          continuously monitors
                                                                                          and analyzes network
                                                                                          traffic, performance,
                                                                                          and security in real-
                                                                                          time, providing
                                                                                          administrators with
                                                                                          insights, alerts, and
                                                                                          visibility into the
                                                                                          health and status
                                                                                          of the network
                                                                                          infrastructure. It
                                                                                          helps ensure optimal
                                                                                          network performance,
                                                                                          detect anomalies,
                                                                                          troubleshoot issues,
                                                                                          and maintain network
                                                                                          security.

                      cmdb_ci_network_tap  cmdb_ci_network_monitAorninegtwork tap is a
                                                                             passive hardware
                                                                             device that allows
                                                                             for the non-intrusive
                                                                             monitoring or
                                                                             capturing of network
                                                                             traffic by providing
                                                                             a copy of the data
                                                                             passing through a
                                                                             specific network
                                                                             link to an external
                                                                             monitoring or
                                                                             analysis tool. It
                                                                             enables network
                                                                             administrators to
                                                                             gain visibility into
                                                                             network traffic without
                                                                             disrupting or affecting
                                                                             the normal operation
                                                                             of the network.

                      cmdb_ci_network_testincgm_udnbi_t ci_network_testinAg_nuentiwt ork testing
                                                                                          unit is a device or
                                                                                          software tool used to
                                                                                          evaluate and assess
                                                                                          the performance,
                                                                                          functionality,
                                                                                          and reliability
                                                                                          of a computer

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    292
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 293 -->
Equipment extended classes (continued)

Class Name            Table Name        Extends generic CI class Description

                                                                          network. It helps
                                                                          measure network
                                                                          parameters, identify
                                                                          issues, validate
                                                                          configurations, and
                                                                          ensure optimal
                                                                          network performance,
                                                                          often through the
                                                                          generation of test
                                                                          traffic or simulated
                                                                          network conditions.

Radio Access Network  cmdb_ci_radio_access_ncemtdwbo_rcki_ni_telco_equipAmRenatdio Access
                                                                                          Network (RAN) is a
                                                                                          part of the mobile
                                                                                          telecommunications
                                                                                          system that
                                                                                          encompasses
                                                                                          the infrastructure
                                                                                          and components
                                                                                          responsible
                                                                                          for wireless
                                                                                          communication
                                                                                          between user
                                                                                          devices and the core
                                                                                          network, enabling
                                                                                          connectivity and data
                                                                                          transmission over
                                                                                          radio frequencies.

Radio Control         cmdb_ci_radio_control_hcamrdwb_acrie_radio_access_nReatdwio rckontrol
Hardware                                                                                  hardware refers to the
                                                                                          devices, components,
                                                                                          and systems that
                                                                                          enable remote control
                                                                                          of various devices
                                                                                          or mechanisms
                                                                                          through the use of
                                                                                          radio frequency
                                                                                          signals. It typically
                                                                                          includes transmitters,
                                                                                          receivers, antennas,
                                                                                          and associated
                                                                                          circuitry, allowing
                                                                                          users to wirelessly
                                                                                          manipulate and
                                                                                          control vehicles,
                                                                                          drones, robotic
                                                                                          systems, or other
                                                                                          electronic equipment
                                                                                          from a distance.

Distributed Antenna   cmdb_ci_distributed_antcemndnba_csyi_srtaedmio__rceomnotrtoel_hAaDrdAwSarreemote,
System Remote                                                                             also known as a

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    293
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 294 -->
Equipment extended classes (continued)

Class Name           Table Name         Extends generic CI class Description

Distributed Antenna                                                       Distributed Antenna
System Controller                                                         System remote,
                                                                          is a component
Small Cell Radio                                                          of a wireless
Gateway                                                                   communication
                                                                          infrastructure that
                                                                          extends the coverage
                                                                          and capacity of
                                                                          wireless networks
                                                                          by connecting to a
                                                                          central DAS unit and
                                                                          distributing wireless
                                                                          signals to remote
                                                                          areas or buildings,
                                                                          ensuring reliable
                                                                          wireless connectivity
                                                                          in those locations.

                     cmdb_ci_distributed_antcemndnba_csyi_srtaedmio__ccoonntrtroolle_rhAaDrdAwSacreontroller, or
                                                                                         Distributed Antenna
                                                                                         System controller, is
                                                                                         a network device that
                                                                                         manages and controls
                                                                                         the operation of a
                                                                                         Distributed Antenna
                                                                                         System. It oversees
                                                                                         signal distribution,
                                                                                         optimization, and
                                                                                         coordination of
                                                                                         multiple DAS remotes,
                                                                                         ensuring efficient
                                                                                         coverage, capacity,
                                                                                         and quality of wireless
                                                                                         communications
                                                                                         within a specific area
                                                                                         or venue.

                     cmdb_ci_small_cell_radicom_gdabt_ecwi_aryadio_control_hAasrdmwaallrceell radio
                                                                                         gateway is a device
                                                                                         that serves as an
                                                                                         interface between
                                                                                         small cell base
                                                                                         stations and the core
                                                                                         network infrastructure.
                                                                                         It facilitates the
                                                                                         communication
                                                                                         between small cell
                                                                                         radios and the wider
                                                                                         network, enabling
                                                                                         the extension of
                                                                                         wireless coverage
                                                                                         and capacity in areas
                                                                                         with high user density

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    294
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 295 -->
Equipment extended classes (continued)

Class Name     Table Name               Extends generic CI class Description
Baseband Unit
                                                                          or limited macrocell
EnodeB                                                                    coverage.
GnodeB
               cmdb_ci_baseband_unitcmdb_ci_radio_control_hAabrdawseabreand
                                                                                   unit (BBU) is a
                                                                                   key component
                                                                                   in a wireless
                                                                                   communication
                                                                                   system that
                                                                                   processes and
                                                                                   manages the digital
                                                                                   baseband signals
                                                                                   for transmitting and
                                                                                   receiving data over
                                                                                   the air. It performs
                                                                                   functions such as
                                                                                   modulation, coding,
                                                                                   decoding, and signal
                                                                                   processing, serving
                                                                                   as the intelligence
                                                                                   behind the radio
                                                                                   access network.

               cmdb_ci_enode_b          cmdb_ci_baseband_unitAn eNodeB, short for
                                                                          Evolved Node B, is a
                                                                          key component in the
                                                                          Long-Term Evolution
                                                                          (LTETM*) network
                                                                          architecture that
                                                                          serves as the base
                                                                          station for wireless
                                                                          communication,
                                                                          connecting user
                                                                          devices to the
                                                                          core network and
                                                                          managing radio
                                                                          resources.

               cmdb_ci_gnode_b          cmdb_ci_baseband_unitGNodeB, or Next-
                                                                          Generation NodeB,
                                                                          is a term used in
                                                                          the context of 5G
                                                                          networks to refer
                                                                          to the base station
                                                                          that serves as the
                                                                          interface between
                                                                          user devices and
                                                                          the 5G core network,
                                                                          enabling high-
                                                                          speed wireless
                                                                          communication and
                                                                          supporting advanced
                                                                          features such as

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    295
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 296 -->
Equipment extended classes (continued)

Class Name             Table Name       Extends generic CI class Description

                                                                          massive connectivity
                                                                          and low latency.

Mixed NodeB            cmdb_ci_mixed_node_bcmdb_ci_baseband_unitA mixed NodeB
                                                                                           device refers to a
                                                                                           telecommunications
                                                                                           equipment that
                                                                                           supports multiple
                                                                                           radio access
                                                                                           technologies, typically
                                                                                           combining both 2G
                                                                                           and 3G technologies
                                                                                           in a single base
                                                                                           station.

Base Station           cmdb_ci_base_station_ccomndtrbo_llceir_baseband_unitA Base Station
Controller                                                                                 Controller (BSC) is
                                                                                           a network element
                                                                                           in a cellular system
                                                                                           that manages and
                                                                                           controls one or more
                                                                                           base transceiver
                                                                                           stations (BTS). It
                                                                                           handles tasks such
                                                                                           as radio resource
                                                                                           management, call
                                                                                           control, and handover
                                                                                           management,
                                                                                           ensuring efficient
                                                                                           operation and
                                                                                           communication
                                                                                           between the BTS and
                                                                                           the mobile switching
                                                                                           center (MSC) or core
                                                                                           network.

Radio Transmission     cmdb_ci_radio_transmiscsmiodnb__hcair_drwadairoe_access_nReatdwio rtkransmission
Hardware                                                                                   hardware refers to the
                                                                                           physical components
                                                                                           and equipment used
                                                                                           in the process of
                                                                                           transmitting radio
                                                                                           signals in a wireless
                                                                                           communication
                                                                                           system.

Small Cell Radio Node  cmdb_ci_small_cell_radicom_ndobd_eci_radio_transmisAsiosmn_ahllacrdelwl raardeio
                                                                                           node is a compact
                                                                                           and low-power base
                                                                                           station that extends
                                                                                           the coverage and
                                                                                           capacity of a cellular
                                                                                           network in areas with
                                                                                           high user density

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    296
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 297 -->
Equipment extended classes (continued)

Class Name         Table Name           Extends generic CI class Description
Remote Radio Unit
Repeater                                                                  or limited macrocell
Antenna Control                                                           coverage. It provides
                                                                          localized wireless
                                                                          connectivity and
                                                                          offloads network
                                                                          traffic by serving a
                                                                          smaller geographic
                                                                          area, typically in urban
                                                                          environments or
                                                                          indoor settings.

                   cmdb_ci_remote_radio_ucnmitdb_ci_radio_transmisAsiorenm_hoaterdrwadairoenode,
                                                                                       also known as a
                                                                                       remote radio head
                                                                                       (RRH), is a component
                                                                                       of a distributed
                                                                                       antenna system
                                                                                       (DAS) or a radio
                                                                                       access network (RAN)
                                                                                       that separates the
                                                                                       radio frequency (RF)
                                                                                       components from the
                                                                                       baseband processing
                                                                                       unit. It allows for
                                                                                       the deployment of
                                                                                       radio transceivers
                                                                                       closer to the antenna,
                                                                                       reducing signal loss
                                                                                       and enabling flexible
                                                                                       network design and
                                                                                       optimization.

                   cmdb_ci_repeater     cmdb_ci_radio_transmisAsiorenp_ehaatredrwisarae
                                                                          device used in
                                                                          telecommunications
                                                                          and networking to
                                                                          amplify or regenerate
                                                                          signals to extend
                                                                          their reach and
                                                                          improve signal
                                                                          quality. It receives
                                                                          incoming signals,
                                                                          amplifies them, and
                                                                          retransmits them to
                                                                          cover larger distances
                                                                          or overcome signal
                                                                          degradation in
                                                                          wired or wireless
                                                                          communication.

                   cmdb_ci_antenna_controcml db_ci_radio_transmisAsinona_nhteanrdnwa acroentroller
                                                                                       is a device or
                                                                                       component that
                                                                                       manages and controls

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    297
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 298 -->
Equipment extended classes (continued)

Class Name  Table Name                  Extends generic CI class Description

Antenna                                                                   the positioning,
ONT                                                                       configuration, and
ONU                                                                       operation of an
                                                                          antenna system.
                                                                          It regulates the
                                                                          movement, alignment,
                                                                          and parameters of the
                                                                          antenna to optimize
                                                                          signal reception,
                                                                          transmission, and
                                                                          coverage, typically
                                                                          in applications
                                                                          such as satellite
                                                                          communications,
                                                                          radar systems, or
                                                                          wireless networks.

            cmdb_ci_antenna             cmdb_ci_radio_transmisAsinona_nhteanrdnwa aisre
                                                                          a device that
                                                                          receives or transmits
                                                                          electromagnetic
                                                                          signals, typically used
                                                                          to facilitate wireless
                                                                          communication by
                                                                          converting electrical
                                                                          currents into radio
                                                                          waves or vice versa.

            cmdb_ci_optical_networckm_tdebrm_cini_anl i_telco_equipAmnenOtNT, or Optical
                                                                                Network Terminal,
                                                                                is a device used in
                                                                                fiber-optic networks
                                                                                to convert optical
                                                                                signals into electrical
                                                                                signals, enabling the
                                                                                delivery of high-speed
                                                                                internet, phone, and
                                                                                television services to
                                                                                end-users.

            cmdb_ci_optical_networckm_udnbi_t ci_ni_telco_equipAmnenOtNU, or Optical
                                                                                Network Unit, is a
                                                                                device that resides
                                                                                at the customer
                                                                                premises in a fiber-
                                                                                optic network and
                                                                                serves as an interface
                                                                                between the optical
                                                                                network and the
                                                                                customer's devices,
                                                                                allowing the delivery
                                                                                of high-speed
                                                                                internet, phone, and
                                                                                television services.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    298
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 299 -->
Equipment extended classes (continued)

Class Name              Table Name           Extends generic CI class Description

Voice Gateway           cmdb_ci_voice_gatewaycmdb_ci_ni_telco_equipAmveonitce gateway is
                                                                                            a device that acts
                                                                                            as an interface
                                                                                            between traditional
                                                                                            telephony systems
                                                                                            (such as analog
                                                                                            or digital phone
                                                                                            lines) and IP-based
                                                                                            networks, enabling
                                                                                            the conversion
                                                                                            of voice signals
                                                                                            into digital data for
                                                                                            transmission over the
                                                                                            internet or other IP
                                                                                            networks. It facilitates
                                                                                            the integration of
                                                                                            voice communication
                                                                                            into IP-based
                                                                                            communication
                                                                                            systems.

Optical Line Amplifier  cmdb_ci_optical_line_amcpmlidfibe_rci_ni_telco_equipAmnenotptical line
                                                                                            amplifier is a device
                                                                                            used in fiber optic
                                                                                            communication
                                                                                            systems to boost
                                                                                            or amplify optical
                                                                                            signals traveling
                                                                                            through a fiber optic
                                                                                            cable, enabling long-
                                                                                            distance transmission
                                                                                            without the need for
                                                                                            electronic conversion.

Battery Distribution    cmdb_ci_battery_distribuctmiodnb__fcuis_en_i_btaeylco_equipAmbenattery distribution
Fuse Bay                                                                                    fuse bay is a
                                                                                            compartment or
                                                                                            enclosure that
                                                                                            houses fuses
                                                                                            designed to protect
                                                                                            electrical systems
                                                                                            connected to a
                                                                                            battery by controlling
                                                                                            and distributing
                                                                                            power to various
                                                                                            circuits, ensuring
                                                                                            safe operation and
                                                                                            preventing damage
                                                                                            from overcurrent
                                                                                            conditions.

Call Server             cmdb_ci_call_server  cmdb_ci_ni_telco_equipAmceanltl server is
                                                                               a centralized
                                                                               communication

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    299
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 300 -->
Equipment extended classes (continued)

Class Name             Table Name       Extends generic CI class Description

Channel Bank                                                              system that manages
                                                                          and controls
Media Converter                                                           telephone calls,
                                                                          routing them to
Digital Cross Connect                                                     the appropriate
System                                                                    destinations,
                                                                          handling call setup,
                                                                          termination, and
                                                                          other call-related
                                                                          functionalities within
                                                                          a telephony network
                                                                          or VoIP (Voice over
                                                                          Internet Protocol)
                                                                          system.

                       cmdb_ci_channel_bank cmdb_ci_ni_telco_equipAmcehnat nnel bank is
                                                                                           a device used in
                                                                                           telecommunications
                                                                                           to multiplex and
                                                                                           demultiplex multiple
                                                                                           analog or digital
                                                                                           communication
                                                                                           channels onto a single
                                                                                           transmission medium,
                                                                                           such as T1 or E1 lines,
                                                                                           allowing efficient
                                                                                           transmission and
                                                                                           management of voice
                                                                                           or data signals.

                       cmdb_ci_media_convertcemr db_ci_ni_telco_equipAmmenetdia converter is
                                                                                           a device that bridges
                                                                                           different types of
                                                                                           network media, such
                                                                                           as converting signals
                                                                                           between copper and
                                                                                           fiber optic cables,
                                                                                           enabling seamless
                                                                                           communication
                                                                                           between disparate
                                                                                           network technologies
                                                                                           and extending the
                                                                                           reach of network
                                                                                           connections.

                       cmdb_ci_digital_cross_ccomnndebc_tc_is_ynsi_tetemlco_equipAmdenigtital cross
                                                                                           connect system
                                                                                           (DCS) is a
                                                                                           telecommunications
                                                                                           device that allows
                                                                                           efficient routing
                                                                                           and management
                                                                                           of digital voice
                                                                                           or data channels

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    300
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 301 -->
Equipment extended classes (continued)

Class Name           Table Name         Extends generic CI class Description
Echo Cancellation
System                                                                    within a network. It
                                                                          enables the flexible
Voice Activity                                                            interconnection
Detection Equipment                                                       and reconfiguration
                                                                          of communication
Media Gateway                                                             paths, facilitating
                                                                          reliable and scalable
                                                                          connectivity in
                                                                          complex network
                                                                          environments.

                     cmdb_ci_echo_cancellatciomnd_bs_ycsit_enmi_telco_equipAmnenect ho cancellation
                                                                                         system is a signal
                                                                                         processing
                                                                                         technology or device
                                                                                         that reduces or
                                                                                         eliminates the echo
                                                                                         effect caused by
                                                                                         the reflection of
                                                                                         transmitted audio
                                                                                         signals back to the
                                                                                         sender. It improves
                                                                                         the audio quality
                                                                                         and intelligibility of
                                                                                         voice communication
                                                                                         by suppressing
                                                                                         unwanted echoes
                                                                                         and improving the
                                                                                         overall clarity of the
                                                                                         conversation.

                     cmdb_ci_voice_activity_dcemtdecbt_icoin__nei_qtueilpcmo_eenqtuipVmoeicnet activity
                                                                                         detection (VAD)
                                                                                         equipment is a
                                                                                         system or device that
                                                                                         analyzes audio signals
                                                                                         to determine the
                                                                                         presence or absence
                                                                                         of human speech.
                                                                                         It is commonly
                                                                                         used in various
                                                                                         applications such as
                                                                                         voice communication
                                                                                         systems, voice-
                                                                                         controlled devices, or
                                                                                         speech recognition
                                                                                         systems to accurately
                                                                                         detect and
                                                                                         differentiate between
                                                                                         speech and non-
                                                                                         speech segments.

                     cmdb_ci_media_gatewacymdb_ci_ni_telco_equipAmmenetdia gateway is a
                                                                                         network device that

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    301
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 302 -->
Equipment extended classes (continued)

Class Name            Table Name        Extends generic CI class Description

                                                                          converts and bridges
                                                                          communication
                                                                          protocols between
                                                                          different types
                                                                          of networks,
                                                                          enabling seamless
                                                                          communication
                                                                          between diverse
                                                                          systems such as
                                                                          traditional telephony
                                                                          networks and
                                                                          Voice over IP (VoIP)
                                                                          networks. It facilitates
                                                                          the translation and
                                                                          transmission of
                                                                          voice, video, and
                                                                          data over different
                                                                          networks, ensuring
                                                                          interoperability
                                                                          and efficient
                                                                          communication.

Multi Service Switch  cmdb_ci_multi_service_scwmitdcbh_ci_ni_telco_equipAmmenutltiservice
                                                                                          switch is a network
                                                                                          device that provides
                                                                                          integrated switching
                                                                                          capabilities for
                                                                                          handling multiple
                                                                                          types of traffic, such
                                                                                          as voice, data, and
                                                                                          video, over a single
                                                                                          network infrastructure.
                                                                                          It enables efficient
                                                                                          and flexible traffic
                                                                                          management, allowing
                                                                                          the consolidation of
                                                                                          various services onto
                                                                                          a unified platform.

Mobility Management   cmdb_ci_mobility_manacgmemdbe_nct_i_ennit_iteylco_equipAmmenotbile management
Entity                                                                                    entity (MME) is a key
                                                                                          component in LTETM*
                                                                                          (Long-Term Evolution)
                                                                                          and 5G wireless
                                                                                          networks that handles
                                                                                          the control plane
                                                                                          functions for mobile
                                                                                          devices, including
                                                                                          authentication,
                                                                                          mobility management,
                                                                                          session management,
                                                                                          and security. It acts
                                                                                          as the primary control
                                                                                          point for managing

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    302
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 303 -->
Equipment extended classes (continued)

Class Name         Table Name           Extends generic CI class Description
Mobile Switching
Center                                                                    and coordinating the
                                                                          movement of mobile
Microwave Radio                                                           devices within the
Equipment                                                                 network.

Network Interface  cmdb_ci_mobile_switchicnmg_dcbe_nctie_rni_telco_equipAmmenotbile switching
Device                                                                                 center (MSC) is a
                                                                                       core component in
                                                                                       cellular networks
                                                                                       that connects mobile
                                                                                       devices to the
                                                                                       public switched
                                                                                       telephone network
                                                                                       (PSTN) or other
                                                                                       mobile networks.
                                                                                       It performs call
                                                                                       routing, switching, and
                                                                                       signaling functions,
                                                                                       ensuring seamless
                                                                                       connectivity and
                                                                                       enabling voice and
                                                                                       data communication
                                                                                       between mobile
                                                                                       subscribers and other
                                                                                       networks.

                   cmdb_ci_microwave_radcimo_debq_ucipi_mnie_ntet lco_equipMmiecnrot wave radio
                                                                                       equipment refers
                                                                                       to the hardware
                                                                                       used in wireless
                                                                                       communication
                                                                                       systems that transmit
                                                                                       and receive data
                                                                                       using high-frequency
                                                                                       microwave signals.
                                                                                       It facilitates the
                                                                                       transmission of voice,
                                                                                       video, and data over
                                                                                       long distances without
                                                                                       the need for physical
                                                                                       cables, enabling
                                                                                       point-to-point or point-
                                                                                       to-multipoint wireless
                                                                                       connectivity.

                   cmdb_ci_network_interfaccmed_bd_ecvii_cnei_telco_equipAmNenIDt (Network
                                                                                       Interface Device) is a
                                                                                       telecommunications
                                                                                       device located at the
                                                                                       customer premises
                                                                                       that serves as the
                                                                                       demarcation point
                                                                                       between the service
                                                                                       provider's network

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    303
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 304 -->
Equipment extended classes (continued)

Class Name              Table Name      Extends generic CI class Description

                                                                          and the customer's
                                                                          internal network. It
                                                                          provides physical
                                                                          connectivity and often
                                                                          includes testing and
                                                                          diagnostic features
                                                                          for troubleshooting
                                                                          and monitoring the
                                                                          connection.

Network Interface Unit  cmdb_ci_network_interfaccmed_bu_nciti_ni_telco_equipAmNenIUt (Network
                                                                                            Interface Unit) is
                                                                                            a device used in
                                                                                            telecommunications
                                                                                            networks that
                                                                                            provides the interface
                                                                                            between the service
                                                                                            provider's network
                                                                                            and the customer's
                                                                                            premises, typically
                                                                                            for data services. It
                                                                                            may include functions
                                                                                            such as signal
                                                                                            conditioning, protocol
                                                                                            conversion, and
                                                                                            line termination to
                                                                                            facilitate reliable data
                                                                                            transmission.

Private Branch          cmdb_ci_private_branchc_mexdcbh_acni_gnei_telco_equipAmPenBtX (Private Branch
Exchange                                                                                    Exchange) is a
                                                                                            telephony system
                                                                                            used within an
                                                                                            organization that
                                                                                            allows for internal
                                                                                            communication
                                                                                            between different
                                                                                            extensions and
                                                                                            facilitates external
                                                                                            calls by connecting
                                                                                            them to the public
                                                                                            telephone network.
                                                                                            It manages call
                                                                                            routing, call
                                                                                            forwarding, and other
                                                                                            telephony features,
                                                                                            providing an efficient
                                                                                            and centralized
                                                                                            communication
                                                                                            solution for
                                                                                            businesses.

Signal Transfer Point   cmdb_ci_signal_transferc_mpodibn_t ci_ni_telco_equipAmSenigtnal Transfer
                                                                                            Point (STP) is a

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    304
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 305 -->
Equipment extended classes (continued)

Class Name           Table Name         Extends generic CI class Description

                                                                          telecommunications
                                                                          network element
                                                                          that facilitates the
                                                                          routing and transfer of
                                                                          signaling messages
                                                                          between different
                                                                          networks, enabling
                                                                          interconnection
                                                                          and interoperability
                                                                          between various
                                                                          telecommunications
                                                                          systems. It acts
                                                                          as a central hub
                                                                          for managing
                                                                          signaling traffic and
                                                                          ensuring efficient
                                                                          communication
                                                                          between different
                                                                          nodes in the network.

Network Timing       cmdb_ci_network_timingcmdb_ci_ni_telco_equipAmnenetwork timing
                                                                                         device, also known
                                                                                         as a network time
                                                                                         server or time
                                                                                         synchronization
                                                                                         device, is a device
                                                                                         that provides accurate
                                                                                         and synchronized
                                                                                         time information to
                                                                                         networked devices
                                                                                         and systems. It
                                                                                         ensures that various
                                                                                         devices in a network
                                                                                         maintain consistent
                                                                                         and precise time for
                                                                                         tasks such as logging,
                                                                                         authentication, and
                                                                                         coordination of
                                                                                         network activities.

Voicemail Equipment  cmdb_ci_voicemail_equicpmmdebn_tci_ni_telco_equipVmoeicnet mail equipment
                                                                                         refers to the hardware
                                                                                         or system used for
                                                                                         recording, storing,
                                                                                         and retrieving voice
                                                                                         messages in a
                                                                                         telecommunications
                                                                                         network. It allows
                                                                                         callers to leave
                                                                                         recorded messages
                                                                                         when the called
                                                                                         party is unavailable
                                                                                         and enables the
                                                                                         recipient to listen to

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    305
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 306 -->
Equipment extended classes (continued)

Class Name              Table Name      Extends generic CI class Description

                                                                          and manage these
                                                                          messages at their
                                                                          convenience.

Communication           cmdb_ci_communicationc_mddisbt_ricbiu_tnioi_nte_lpcaon_eql uipAmceonmt munications
Distribution Panel                                                                          distribution panel is
                                                                                            a centralized device
                                                                                            used to organize and
                                                                                            distribute various
                                                                                            communication
                                                                                            signals, such as
                                                                                            telephone, data,
                                                                                            and video, within a
                                                                                            building or premises.
                                                                                            It acts as a hub
                                                                                            for connecting
                                                                                            and managing
                                                                                            communication lines,
                                                                                            allowing for easy
                                                                                            access, organization,
                                                                                            and troubleshooting
                                                                                            of the network
                                                                                            infrastructure.

Fiber Panel             cmdb_ci_fiber_distributiocnm_dpba_ncei_l communicationA_fdibisetribpuatnioenl, _aplsaonel
                                                                                            known as a fiber optic
                                                                                            patch panel, is a
                                                                                            hardware component
                                                                                            used in fiber optic
                                                                                            networks to provide
                                                                                            a central point
                                                                                            for terminating,
                                                                                            organizing, and
                                                                                            managing fiber
                                                                                            optic cables. It
                                                                                            allows for efficient
                                                                                            connectivity, easy
                                                                                            maintenance, and
                                                                                            flexibility in routing
                                                                                            and patching fiber
                                                                                            optic connections.

Fiber Serving Terminal  cmdb_ci_fiber_serving_tcemrmdibn_acl i_communicationA_fdibisetribseurtvioing_panel
                                                                                            terminal (FST) is a
                                                                                            device located at the
                                                                                            customer premises in
                                                                                            a fiber optic network
                                                                                            that serves as the
                                                                                            demarcation point
                                                                                            between the service
                                                                                            provider's fiber
                                                                                            optic infrastructure
                                                                                            and the customer's
                                                                                            internal network. It

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    306
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 307 -->
Equipment extended classes (continued)

Class Name              Table Name      Extends generic CI class Description

                                                                          provides termination
                                                                          and connection
                                                                          points for fiber optic
                                                                          cables, facilitating the
                                                                          delivery of high-speed
                                                                          broadband services
                                                                          to the customer's
                                                                          location.

PFP                     cmdb_ci_primary_flexibiclimty_dpbo_cini_t communicationIn_dthisetrcibounttieoxnt_opfanel

                                        telecommunications

                                        infrastructure, a

                                        primary flexibility point

                                        (PFP) is a designated

                                        location where

                                        telecommunication

                                        cables and pathways

                                        converge to allow for

                                        easy accessibility and

                                        future modifications.

                                        It serves as a central

                                        hub for routing,

                                        terminating, and

                                        distributing cables,

                                        providing flexibility

                                        and scalability in

                                        network installations.

Serving Area Interface  cmdb_ci_serving_area_icnmtedrfba_ccei_communicationA_sdeisrtvrinbgutaiorena_panel
                                                                                            interface (SAI)
                                                                                            is the boundary
                                                                                            or demarcation
                                                                                            point where the
                                                                                            telecommunications
                                                                                            service provider's
                                                                                            network connects
                                                                                            to the customer's
                                                                                            premises or internal
                                                                                            network. It marks the
                                                                                            transition between
                                                                                            the service provider's
                                                                                            responsibility
                                                                                            for maintaining
                                                                                            the network and
                                                                                            the customer's
                                                                                            responsibility for the
                                                                                            wiring and equipment
                                                                                            within their premises.

Digital Cross Connect   cmdb_ci_digital_cross_ccomnndebc_tc_i_pcaotcmhm_puannicealtionA_digstitraibl uctrioosns_panel
Patch Panel                                                                                 connect patch
                                                                                            panel, also known
                                                                                            as a DCS patch
                                                                                            panel, is a hardware

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    307
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 308 -->
Equipment extended classes (continued)

Class Name           Table Name         Extends generic CI class Description

Fiber Cross Connect                                                       component used in
Panel                                                                     telecommunications
                                                                          networks to facilitate
RJ45 Patch Panel                                                          the cross-connection
                                                                          and management
V35 Patch Panel                                                           of digital circuits or
                                                                          channels. It allows for
                                                                          easy reconfiguration
                                                                          and routing of digital
                                                                          signals, enabling
                                                                          efficient provisioning
                                                                          and troubleshooting
                                                                          of communication
                                                                          paths within the
                                                                          network infrastructure.

                     cmdb_ci_fiber_cross_concmnedcbt_cpia_ncoeml municationA_fdibisetribcruotsiosnc_opnanneecl t
                                                                                         panel is a device
                                                                                         used in fiber optic
                                                                                         networks to facilitate
                                                                                         the interconnection
                                                                                         and management
                                                                                         of fiber optic
                                                                                         cables. It provides a
                                                                                         centralized location
                                                                                         for organizing, routing,
                                                                                         and cross-connecting
                                                                                         individual fiber optic
                                                                                         strands, allowing for
                                                                                         efficient maintenance,
                                                                                         scalability, and
                                                                                         flexibility in fiber optic
                                                                                         network installations.

                     cmdb_ci_rj45_patch_pacnmeldb_ci_communicationA_ndRisJtr4ib5uptiaotnc_hpanel
                                                                                         panel is a hardware
                                                                                         component used to
                                                                                         terminate and manage
                                                                                         network connections
                                                                                         in Ethernet systems.
                                                                                         It provides multiple
                                                                                         RJ45 ports that allow
                                                                                         for the organized
                                                                                         and convenient
                                                                                         termination of
                                                                                         Ethernet cables,
                                                                                         enabling easy
                                                                                         patching and
                                                                                         rearrangement of
                                                                                         network connections.

                     cmdb_ci_v35_patch_panceml db_ci_communicationA_Vd.i3s5tripbauttciohnp_apnaenlel
                                                                                         is a hardware
                                                                                         component used in

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    308
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 309 -->
Equipment extended classes (continued)

Class Name            Table Name           Extends generic CI class Description

                                                                             telecommunications
                                                                             and networking
                                                                             to facilitate the
                                                                             termination and
                                                                             management of
                                                                             V.35 cables. It
                                                                             provides multiple
                                                                             V.35 ports that allow
                                                                             for the organized
                                                                             and convenient
                                                                             termination of V.35
                                                                             connections, enabling
                                                                             easy patching and
                                                                             rearrangement of V.35
                                                                             circuits.

Digital Distribution  cmdb_ci_digital_distribuctimond_bp_acni_eclommunicationA_digstitraibl udtiisotnri_bpuatinoenl
Panel                                                                                     panel, also
                                                                                          known as a digital
                                                                                          distribution frame,
                                                                                          is a device used in
                                                                                          telecommunications
                                                                                          networks to terminate,
                                                                                          manage, and
                                                                                          distribute digital
                                                                                          signals, typically in
                                                                                          the form of T1 or E1
                                                                                          lines. It provides a
                                                                                          centralized point for
                                                                                          organizing and cross-
                                                                                          connecting digital
                                                                                          circuits, facilitating
                                                                                          efficient transmission
                                                                                          and management of
                                                                                          digital communication
                                                                                          within the network.

Multiplexer           cmdb_ci_multiplexer  cmdb_ci_ni_telco_equipAmmenutltiplexer, often
                                                                             referred to as a MUX,
                                                                             is a device used in
                                                                             telecommunications
                                                                             and data transmission
                                                                             to combine multiple
                                                                             signals or data
                                                                             streams into a single
                                                                             composite signal
                                                                             for more efficient
                                                                             transmission over
                                                                             a shared medium.
                                                                             It allows for the
                                                                             simultaneous
                                                                             transmission of
                                                                             different signals
                                                                             or data streams

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    309
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 310 -->
Equipment extended classes (continued)

Class Name  Table Name                  Extends generic CI class Description
DSLAM       cmdb_ci_dslam
                                                                          over a single
IP DSLAM    cmdb_ci_ipdslam                                               channel, increasing
WDM         cmdb_ci_wdm                                                   the capacity
                                                                          and efficiency of
                                                                          communication
                                                                          systems.

                                        cmdb_ci_multiplexer  A DSLAM (Digital
                                                             Subscriber Line
                                                             Access Multiplexer)
                                                             is a network
                                                             device used in
                                                             telecommunications
                                                             to aggregate and
                                                             manage multiple
                                                             digital subscriber
                                                             lines (DSL) within a
                                                             service provider's
                                                             network. It enables
                                                             the delivery of high-
                                                             speed broadband
                                                             services over existing
                                                             copper telephone
                                                             lines by separating
                                                             voice and data
                                                             traffic and routing it
                                                             to the appropriate
                                                             destinations.

                                        cmdb_ci_multiplexer  An IP DSLAM (Internet
                                                             Protocol Digital
                                                             Subscriber Line
                                                             Access Multiplexer)
                                                             is a DSLAM that
                                                             supports IP-based
                                                             services, allowing for
                                                             the delivery of high-
                                                             speed broadband
                                                             internet services over
                                                             digital subscriber
                                                             lines. It provides the
                                                             necessary IP routing
                                                             and processing
                                                             capabilities to handle
                                                             IP-based traffic,
                                                             enabling efficient and
                                                             scalable delivery of
                                                             internet connectivity
                                                             to end-users.

                                        cmdb_ci_multiplexer  WDM (Wavelength
                                                             Division Multiplexing)
                                                             is a technology
                                                             used in fiber optic

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    310
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 311 -->
Equipment extended classes (continued)

Class Name        Table Name            Extends generic CI class Description

                                                                          communication
                                                                          systems to increase
                                                                          the capacity of a
                                                                          single optical fiber
                                                                          by simultaneously
                                                                          transmitting multiple
                                                                          wavelengths of
                                                                          light. It allows for
                                                                          the multiplexing
                                                                          and demultiplexing
                                                                          of different optical
                                                                          signals, enabling
                                                                          higher data
                                                                          transmission
                                                                          rates and efficient
                                                                          utilization of fiber
                                                                          optic infrastructure.

OLT               cmdb_ci_optical_line_tercmmidnba_l ci_multiplexer An OLT (Optical Line

                                                               Terminal) is a network

                                                               device used in fiber

                                                               optic communication

                                                               systems that serves

                                                               as the endpoint of

                                                               a passive optical

                                                               network (PON). It

                                                               connects the service

                                                               provider's network

                                                               to the subscriber's

                                                               premises, managing

                                                               and controlling

                                                               the distribution

                                                               of optical signals,

                                                               and facilitating the

                                                               communication

                                                               between the service

                                                               provider and multiple

                                                               ONUs (Optical

                                                               Network Units)

                                                               or ONTs (Optical

                                                               Network Terminals) in

                                                               the PON.

Optical Splitter  cmdb_ci_optical_splittercmdb_ci_multiplexer  An optical splitter,
                                                               also known as a beam
                                                               splitter, is a passive
                                                               device used in fiber
                                                               optic networks to
                                                               divide an incoming
                                                               optical signal into
                                                               multiple output
                                                               signals of equal or
                                                               varying power levels.
                                                               It enables the sharing

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    311
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 312 -->
Equipment extended classes (continued)

Class Name             Table Name       Extends generic CI class Description
Optical Carrier
Transport Node                                                            of a single optical fiber
                                                                          connection among
Fan Shelf                                                                 multiple users or
                                                                          devices, enabling for
Monitoring Unit Shelf                                                     efficient distribution
                                                                          of optical signals in a
                                                                          network.

                       cmdb_ci_optical_carrier_ctmradnbs_pcoi_rtm_nuoltdipelexer  An optical carrier
                                                                                  transport node,
                                                                                  also known as an
                                                                                  OXC (Optical Cross-
                                                                                  Connect) or an OTN
                                                                                  (Optical Transport
                                                                                  Network) node, is
                                                                                  a network element
                                                                                  that facilitates the
                                                                                  routing, grooming,
                                                                                  and switching off
                                                                                  high-capacity optical
                                                                                  signals in an optical
                                                                                  transport network. It
                                                                                  enables efficient and
                                                                                  flexible management
                                                                                  of optical channels,
                                                                                  enabling for the
                                                                                  transport of large
                                                                                  volumes of data over
                                                                                  long distances in
                                                                                  telecommunications
                                                                                  networks.

                       cmdb_ci_fan_module cmdb_ci_hardware                        A fan shelf is a
                                                                                  hardware component
                                                                                  designed to provide
                                                                                  active cooling and
                                                                                  airflow management
                                                                                  within a rack or
                                                                                  equipment cabinet.
                                                                                  It typically contains
                                                                                  multiple fans that
                                                                                  help dissipate heat
                                                                                  generated by the
                                                                                  equipment, ensuring
                                                                                  proper ventilation
                                                                                  and preventing
                                                                                  overheating.

                       cmdb_ci_monitoring_uncitmdb_ci_hardware                    A monitoring unit
                                                                                  shelf, also known
                                                                                  as a monitoring unit
                                                                                  rack or chassis, is a
                                                                                  dedicated enclosure
                                                                                  designed to house

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    312
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 313 -->
Equipment extended classes (continued)

Class Name      Table Name              Extends generic CI class Description

                                                                          monitoring units or
                                                                          devices used for
                                                                          network monitoring
                                                                          and management
                                                                          purposes. It provides
                                                                          a centralized and
                                                                          secure location
                                                                          for installing and
                                                                          organizing monitoring
                                                                          equipment, such as
                                                                          network analyzers,
                                                                          probes, or monitoring
                                                                          appliances, enabling
                                                                          for efficient monitoring
                                                                          and analysis of
                                                                          network traffic and
                                                                          performance.

Keyboard Video  cmdb_ci_keyboard_videcom_mdbo_ucsie_hardware  A keyboard video
Mouse Switch                                                  mouse (KVM) switch
                                                              is a hardware device
                                                              that enables a user
                                                              to control multiple
                                                              computers or servers
                                                              using a single set of
                                                              keyboard, monitor,
                                                              and mouse device.
                                                              It enables seamless
                                                              switching and
                                                              management of
                                                              multiple systems from
                                                              a central workstation.

Serving GPRS    cmdb_ci_serving_gprs_scumpdpbo_rtc_i_nnoid_etelco_equipAmnenetwork node
Support Node                                                                        in a GSM (Global
                                                                                    System for Mobile
                                                                                    Communications)
                                                                                    or GPRS (General
                                                                                    Packet Radio Service)
                                                                                    network. Serving
                                                                                    GPRS Support Node
                                                                                    (SGSN) is responsible
                                                                                    for the delivery of data
                                                                                    packets from and to
                                                                                    the mobile stations
                                                                                    within its service area.
                                                                                    It plays a crucial role
                                                                                    in packet-switched
                                                                                    networks, managing
                                                                                    mobility and
                                                                                    session information
                                                                                    for devices like
                                                                                    smartphones
                                                                                    and other mobile

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    313
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

