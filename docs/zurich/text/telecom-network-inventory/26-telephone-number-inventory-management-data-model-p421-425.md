# Zurich Telecommunications Network Inventory â€” Telephone number inventory management data model / Time series metrics for datacenter / TNI CI Attributes form

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 421â€“425 of 425

Sections: Telephone number inventory management data model (p421); Time series metrics for datacenter (p422); TNI CI Attributes form (p423)

---

<!-- page 421 -->
To learn more about the variable data types, see Flow Designer input and output data variables .

Output

If the IP address is already used, then the subflow passes the following message "IP address has
already been created. Please try creating another one."

TNI Design Assign Number Element Validation subflow

The TNI Design Assign Number Element Validation subflow enables you to validate the number
element records in the Telecommunications Network Inventory application. You can use this flow
action to configure the activities in a Design and Assign playbook for logical connection.

The TNI Design Assign Number Element Validation subflow validates whether the number
element records required for the Define number element activity have already been used or not.
If the number elements are already used, the subflow passes the information.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Number Element Validation
subflow and their descriptions.

Input fields of TNI Design Assign Number Element Validation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Define          True/False
                         number element activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

If the number element is already used, then the subflow passes the following message "Number
element has already been created. Please try creating another one."

Telephone number inventory management data model

By using the telephone number inventory management data model, you can understand how the
tables of a telephone block, telephone number allocation, and telephone number relate to each
other.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    421
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 422 -->
Data model

The following diagram shows the telephone number inventory management data

model.

The data model provides an overview of telephone number usage and availability. With this data
model, you can store the telephone block, allocation, and telephone number.

     Note: You can also allocate or deallocate a telephone number for a customer service. You

      must create a telephone block for the telephone number block table.

A telephone number is assigned this way:
1. A telephone number inventory manager creates a telephone number block to store all the

   different types of telephone numbers. The numbers can be categorized based on the area,
   country, port-in type, or port-out type. Each record of the block is stored in the table of the
   telephone number block.
2. A telephone number inventory manager then creates a telephone allocation to assign a
   service to a series or to a set of numbers. A telephone block can have a group as its child.
   These allocations are created in the telephone number allocation table.
3. The telephone number allocation table relates the telephone numbers that are ready to use to
   a record in the telephone number table.

Related topics
   Create a telephone infrastructure

Time series metrics for datacenter

Use time series metrics to calculate the operational details of network assets in the
Telecommunications Network Inventory application.

Time series metrics  Metric field name  Table name
Name                 u_humidity         cmdb_ci_cage
Humidity (%)

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    422
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 423 -->
Time series metrics (continued)

Name                        Metric field name      Table name
Sold Current (A)            u_sold_current         cmdb_ci_cage

Temperature (C)             u_temperature          cmdb_ci_cage

Cabinet Rating (kVA)        u_cabinet_rating       cmdb_ci_cage

Peak Last Seven Days Ratio  u_peak_last_seven_days_ratio cmdb_ci_cage
(%)

Peak Last Seven Days (kVA) u_peak_last_seven_days  cmdb_ci_cage

Apparent Power (kVA)        u_apparent_power       cmdb_ci_cage

Contractual Power (kVA)     u_contractual_power    cmdb_ci_cage

Power Factor (pf)           u_power_factor         cmdb_ci_cage

Kilowatt Hour (kWh)         u_kilowatt_hour        cmdb_ci_cage

Real Power (kW)             u_real_power           cmdb_ci_circuit

Kilowatt Hour (kWh)         u_kilowatt_hour        cmdb_ci_datacenter

Power Consumption To        u_power_consumption_to_contraccmtudabl_ci_datacenter
Contractual (%)

Rack Units Available (U)    u_rack_unit_available  cmdb_ci_datacenter

Rack Unit Usage (%)         u_rack_unit_usage      cmdb_ci_datacenter

Rack Units Used (U)         u_rack_unit_occupied   cmdb_ci_datacenter

Units Available (U)         u_unit_available       cmdb_ci_equipment_holder

Unit Usage (%)              u_unit_usage           cmdb_ci_equipment_holder

Units Used (U)              u_unit_occupied        cmdb_ci_equipment_holder

Weight Available (lb)       u_weight_available     cmdb_ci_equipment_holder

Weight Usage (%)            u_weight_usage         cmdb_ci_equipment_holder

Weight Used (lb)            u_weight_occupied      cmdb_ci_equipment_holder

Power Available (kW)        u_power_available      cmdb_ci_equipment_holder

Power Usage (%)             u_power_usage          cmdb_ci_equipment_holder

Power Used (kW)             u_power_occupied       cmdb_ci_equipment_holder

TNI CI Attributes form

The TNI CI Attributes form enables you to create the Telecommunications Network Inventory
attribute details for a network inventory in the Telecommunications Network Inventory
application.

TNI CI Attributes form                       Description
Field
Configuration item                           Configuration item (CI) of the network
                                             inventory asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    423
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 424 -->
TNI CI Attributes form (continued)  Description
Field
Network domain                      Domain of ownership and responsibility for
                                    this network asset or connection. Select one
Inventory category                  of the following options:
Inventory template
Equipment CLLI                         Mobility
                                             Represents wireless devices and
Site                                         connections.
Distinguished name
Type                                   Telco
Role                                         Represent the edge or access
                                             networks.

                                       Core
                                             Represents the core network
                                             infrastructure.

                                    Type of inventory.

                                    Inventory template if any.

                                    Assigned equipment Common Location
                                    Identifier Code (CLLI) for this network asset.
                                    The North American telecommunications
                                    industry uses the CLLI code to specify the
                                    location and function of telecommunications
                                    equipment.

                                    Network site or data center in which the
                                    network inventory asset is installed. Click the
                                    search icon ( ) and select a network site. To
                                    learn more, see product/tmt-telecom-network-
                                    inventory/task/define-tni-sites.dita.

                                    Alternate name reference for the network
                                    asset that is based on the concatenated
                                    names and IDs from the other related network
                                    assets.

                                    Optional user-defined type code that you use
                                    to categorize the types of the various network
                                    entities or assets. Select the search icon ( )
                                    and select a type code.

                                    Optional user-defined role code that you use
                                    to categorize the roles or purposes of the
                                    various network entities or assets. Select the
                                    search icon ( ) and select a role code.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    424
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 425 -->
TNI CI Attributes form (continued)  Description
Field
Function                            Optional user-defined function code that you
                                    use to categorize the functions of the various
Unit position                       network entities or assets. Select the search
Access identifier                   icon ( ) and select a function code.
Date of last maintenance
Is Alarmable                        Unit position of this network asset.
Replaceable
                                    Not applicable.
Spare
                                    Date that this network asset was last serviced.
Operation notes                     Option that designates if an alarm system can
                                    be assigned to this network asset.

                                    Option that designates if this network asset
                                    can be replaced if it malfunctions or is affected
                                    by a network outage.

                                    Option that designates if this network asset is
                                    a spare.

                                    Free-form operation note text for this network
                                    asset. For example, Check diesel fuel
                                    for generator.

Related topics
   Create a telecommunications equipment instance

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    425
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

