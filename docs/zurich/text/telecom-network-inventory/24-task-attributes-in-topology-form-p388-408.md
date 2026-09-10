# Zurich Telecommunications Network Inventory â€” Task attributes in Topology form / Telco Equipment form / Telecommunications Network Inventory function catalog

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 388â€“408 of 425

Sections: Task attributes in Topology form (p388); Telco Equipment form (p388); Telecommunications Network Inventory function catalog (p389)

---

<!-- page 388 -->
Task Attributes tab (continued)

Field                Description
Z end Interface
Physical Connection  Ending network interface where this physical connection is configured.
Model
Bandwidth            Physical connection model where this physical connection is
                     configured.

                     Total bandwidth capacity between starting and ending sites for this
                     network connection.

Task attributes in Topology form

The Task attributes in Topology form enables you to design and assign a topology record in the
Telecommunications Network Inventory application.

Design & Assign Topology form - Task Attributes tab

Field                            Description
Name                             Name of the topology.

Topology model                   Inventory model associated with the topology.

Bandwidth                        Bandwidth of the topology.

Topology sites                   Site associated with the topology. You can
                                 select multiple sites.

Topology nodes                   Equipment (node) associated with the
                                 topology. You can select multiple nodes.

Root nodes                       Root node among the topology nodes.

Topology connection type         Type of connection. Select one from the
Topology connections             following:

                                  · Logical Connection

                                  · Physical connection

                                 Connections that are associated with the
                                 topology. You can select multiple connection
                                 records.

Related topics
   Create a network topology record by using design and assign

Telco Equipment form

The Telco Equipment form enables you to create, review, and modify the network asset details for
a piece of equipment.

Configuration

Field           Description
Part number     Assigned part number for this network asset.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    388
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 389 -->
Configuration (continued)

Field         Description
              Date that this network asset was manufactured.
Date of       Date that this network asset was last serviced.
manufacture
              Number of equipment holder units that are in use in this network asset.
Date of last
service

Rack units
occupied

Firmware
manufacturer Manufacturer of the firmware.

Firmware      Version of the firmware that is used in this network asset.
version

Memory size   Size of the memory device that is used in this network asset, in megabytes. For
(MB)          example, 2500 MB for a 2.5-GB memory chip.

Storage size  Storage size of the device, in gigabytes. For example, 2.5 GB.
(GB)

     Note: To learn about the remaining configuration fields that are common to most of the

      Inventory menu forms, see Commonly used network asset instance configuration fields.

Related topics
   product/tmt-telecom-network-inventory/task/define-tni-equipment.dita

Telecommunications Network Inventory function catalog

By using the Telecommunications Network Inventory function catalog, you can access the
functions that help you to automate the network inventory's Design and Assign process.

Related topics
   Telecommunication Network Inventory workflows in Flow Designer

Allocate Free Number function

The Allocate Free Number function enables you to assign free numbers from the
Telecommunications Network Inventory number record. You use this function to allocate a
quantity of numbers from a specified range to add against the configuration item (CI) in a number
element.

You use the Allocate Free Number function to do the following actions:
 · Assign the free number from a number range that is in the inventory record.
 · Get the free number from the number range and create the inventory number record as a child

   number.
 · Add the free numbers against the CI in a number element.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    389
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 390 -->
Roles and availability

An admin role can add an action to a flow and define the configuration details of the flow. This
function is available as a Workflow Studio action in the Telecommunications Network Inventory
application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Allocate Free Number action and their
descriptions.

Input fields of Allocate Free Number function

Field Name                   Description                     Type
Number Range
Count                        Inventory number record         Reference.Inventory Number
Number Type                  where you need the free         record
                             number for.
Owned by configuration item
Consecutive                  Total count of the free         Integer
                             numbers.

                             Type of network connection      Choice
                             that you need the free
                             numbers for. Select one of the
                             following:

                                VLAN

                                      Single VLAN
                                      number record.

                                LAG

                                      Single LAG
                                      number record.

                             Configuration item (CI) that    Reference.Configuration Item
                             is related to the Inventory
                             number record.

                             Option to return the            True/False
                             consecutive free numbers.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function           Description                     Type
Name                                                         Array.Integer
FinalRecordList              Returns the list of inventory
                             number records for the
                             number range.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    390
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 391 -->
Example

Consider that a VLAN has 1-4096 as the number range and 1-1000, 1001-2500, and 2510-4096
are the subranges. If you give the count as 4, the function returns the list of inventory number
records for 2501, 2502, 2503, and 2504. These numbers are free in the VLAN number range.

Create CI From Template function

The TNI Create CI From Template function enables you to create the inventory instance in the
designated site or equipment holder in the Telecommunications Network Inventory application
when you instantiate an inventory with the inventory template. You can automatically create the
inventory when you instantiate the network inventory design and assign process.

The TNI Create CI From Template function creates configuration items (CIs), such as the interface
card, equipment, network site, and network interface, depending on the inventory template
requirement.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Create CI From Template function and their
description.

Input fields of Create CI From Template function

Field Name          Description                     Data Type
Network Site
                    sys_id of the network site      String
Equipment Holder    record that is associated with
                    the new CI.
Inventory Template
                    sys_id equipment holder         String
Change Task         record that is associated with
                    the new CI.
Template Overrides
Stockroom Location  sys_id of the Inventory         String
                    Template that is associated
Asset               with the new CI.

                    Change task that instantiates String
                    a new instance for the network
                    asset.

                    Override value if any.          String

                    Name of the stockroom           String
                    location where the asset is
                    located.

                    Name of the asset that is       String
                    associated with this record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    391
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 392 -->
To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function  Description                     Data Type
Name                                                String
Record ID           Returns the sys_id of the new
                    inventory instance.

Example

This flow action creates a telco equipment record when you use an inventory template to
instantiate equipment.

Cascade Update function

The Cascade Update function enables you to update a configuration item (CI) attribute in the
Telecommunications Network Inventory application and cascade the change in all related CIs.
You can use this function to automatically cascade the field values in related CIs when you use
Workflow Studio.

You can use the Cascade Update function to update any field in the inventory record and
cascade the changes all the way down to the hierarchy mentioned in the inventory record.

If there's a conflict, such as any discrepancies found in the related CIs, this function returns an
error. For example, let's say that you pass the change request and CI but the CI isn't added to the
affected CI list of the change request. Instead, it returns a sort error with the conflict information
in execution.

     Note: This function doesn't work on Life Cycle Stage and Life Cycle Status fields.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Cascade Update function and their descriptions.

Input fields of Cascade Update function

Field Name          Description          Data Type         Mandatory?

Change Request      Change request       Reference.Change  No

                    that is related to the Request

                    affected CI list.

CI                  CI where you want to Reference.ConfigurationNo

                    update the field.    Item

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    392
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 393 -->
Input fields of Cascade Update function (continued)

Field Name              Description   Data Type                   Mandatory?
Field                                                             No
                        Attribute in the CI that String
                        you want to cascade.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

Use this function to update the CI attribute in all related CIs.

Cascade rule for all common attributes of CI

The following table lists the information about the cascade rules for the different types of CIs.

Cascade rules           Cascade Rule                              Example
CI
Telco Equipment         Attributes that are updated for           The Type field that is updated
                        the related equipment holder              in the equipment record
Telco Equipment Holder  (slot), interface card, telco             cascades all the way down to
                        equipment holder (subslot),               the hierarchy mentioned in
Interface Card          and network interface records.            the inventory record.
Network Interface
                        Attributes that are updated               The Type field that is updated
Physical Connection     for the related interface                 in the equipment record
                        card, telco equipment holder              cascades all the way down to
Logical Connection      (subslot), and network                    the hierarchy mentioned.
                        interface records.

                        Attributes that are updated for           The Type field that is updated
                        the related telco equipment               in the equipment record
                        holder (subslot) and network              cascades all the way down to
                        interface records.                        the hierarchy mentioned.

                        Attributes that are updated for           The Port Bandwidth field that
                        the related network interface             is updated in the equipment
                        record.                                   record cascades all the
                                                                  way down to the hierarchy
                                                                  mentioned in the inventory
                                                                  record.

                        Attributes are updated for the            The Bandwidth field that is
                        related physical connection               updated in the equipment
                        record.                                   record cascades all the
                                                                  way down to the hierarchy
                                                                  mentioned in the inventory
                                                                  record.

                        Attributes that are updated               The Bandwidth field that is
                        for all the next element CI               updated in the equipment
                        records, which are defined                record cascades all the
                        in the connection element                 way down to the hierarchy
                        that reference the logical                mentioned in the inventory
                        connection record.                        record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    393
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 394 -->
Create and Assign Range/Single Number function

The Create and Assign Range/Single Number function enables you to create the inventory
number records for a number range when you process the network inventory workflow.

You use the Create and Assign Range/Single Number function to create the inventory number
records between the input start and end numbers. This function also creates the corresponding
number elements.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

An admin role can add an action to a flow and define the configuration details of the flow. This
function is available as a Workflow Studio action in the Telecommunications Network Inventory
application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Allocate Free Number action and their
descriptions.

Input fields of Create and Assign Range/Single Number function

Field Name          Description            Type                 Required?

Owned By            Inventory number       Reference.ConfigurationYes
Configuration Item  record that you need   Item
                    the free number for.

Start               Start number of the Integer                 Yes

                    inventory number

                    record.

End                 End number of the      Integer              No

                    inventory number

                    record. You must

                    provide the value

                    when it's a range.

Name                Name of the inventory String                Yes

                    number record that

                    you want to create.

Number Type         Type of network        Choice               Yes

                    connection that

                    you need the free

                    numbers for. Select

                    one of the following:

                    VLAN Range

                    Range
                    of VLAN
                    numbers.

                    VLAN Subrange

                                                       Subset or                                                                                                                394
                                                       a range
                                                       of VLAN

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 395 -->
Input fields of Create and Assign Range/Single Number function (continued)

Field Name          Description              Type                     Required?
Parent Number                                                         No
                             numbers
                             within
                             the
                             overall
                             VLAN
                             range.

                       VLAN

                             Single
                             VLAN
                             number
                             record

                       LAG Range

                             Range
                             of LAG
                             numbers.

                       LAG

                             Single
                             LAG
                             number
                             record

                    Parent number record.    Reference.Inventory
                    If you don't select the  Number record
                    parent number record,
                    the function returns
                    only an inventory
                    number record for the
                    start number.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function  Description                    Type
Name                                               Record
Inventory Number    Returns the inventory number
                    record.

Example

Consider, a VLAN has 1-4096 as range and 1-1000, 1001-2500, and 2510-4096 are the
subranges. If you give the start number as 2501 and the end number as 2502, the function
creates a number range of 2501-2502 and returns the inventory number record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    395
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 396 -->
Create Logical Interface function

The Create Logical Interface function enables you to create logical interfaces in the
Telecommunications Network Inventory application.

You can use the Create Logical Interface function to create the logical interfaces that are created
either as a termination point for logical connections or as a child of a physical or logical interface.
A physical or logical Interface can have multiple child logical interfaces. The bandwidth of the
logical Interface isn't fixed and you can configure it as applicable. Also, this function sets the
virtual flag of the logical network interface.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Create Logical Interface function and their
descriptions.

Input fields of logical interface action

Field Name        Description                      Data Type
Parent Interface                                   Array.String
                  Parent network interface
Name              record to create the             String
                  relationship with a logical
                  interface. Click the add icon

                  ( ) to add an interface.

                  Name of the new logical
                  interface.

                  Note: If you don't enter

                  the logical interface
                  name, this flow action
                  generates the model
                  name with the number
                  after the maximum
                  number of unit positions.

Type              Optional user-defined            Reference.TRF Value
Role              type code that you use to
                  categorize the types of various
                  network entities or assets.

                  Optional user-defined            Reference.TRF Value
                  role code that you use to
                  categorize the roles or
                  purposes of the various
                  network entities or assets.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    396
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 397 -->
Input fields of logical interface action (continued)

Field Name             Description                       Data Type
Function
                       Optional user-defined             Reference.TRF Value
                       function code that you use
                       to categorize the functions of
                       the various network entities or
                       assets.

Telco Equipment        Equipment that is associated      Reference.Telco equipment
                       with the logical interface. If
                       you do not enter the name of
                       the equipment, this function
                       selects the associated
                       equipment from the parent
                       interface.

Port Bandwidth         Bandwidth of this logical         Reference.Bandwidth
                       connection.

Product Model          Network interface model that      Reference.Network Interface
                       is associated with the logical    Model
                       interface.

CI Relationship        Type of CI relationship. By       Reference.CI Relationship
                       default, the Create Logical
                       Interface flow action sets the
                       CI relationship to Contains :
                       Contained By. The parent
                       interface can support multiple
                       interface record references
                       as an input. If you enter the
                       same parent CI more than
                       once, the system ensures that
                       it associates to a unique set of
                       parent-child relationship.

Aggregation Interface  Option to ensure that each        True/False
                       parent interface must only
                       have one child interface.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function     Description                       Data Type
Name                                                     Record
Result Id              Returns a glide record of the
                       logical interface.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    397
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 398 -->
Create Logical Connection function

The Create Logical Connection function enables you to create a logical connection record in
the Telecommunications Network Inventory application based on the input (interfaces) that you
receive when you instantiate an inventory.

You can use the Create Logical Connection function to create a logical connection on your
network interface cards.

When you enter the Interface A, this function automatically retrieves the data for Site A,
Equipment A, and Port A. Similarly, after passing input Interface Z, the function retrieves the
data for the associated Site Z, Equipment Z, and Port Z. This function also retrieves the data for
Bandwidth AtoZ and Bandwidth ZtoA from the Bandwidth field.

This function also creates the connection elements and associates them to the logical
connection.

If you configure a network interface, equipment, physical connection, logical connection, or
managed function as a connection element, the Logical Connection Creation function creates
the corresponding connection element and associates it to a logical connection.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Create Logical Connection function and their
descriptions.

Input fields of Create Logical Connection function

Field Name           Description                    Data Type
Interface A                                         Reference.Network Interface
Interface Z          Starting network interface
Bandwidth            where this logical connection  Reference.Network Interface
Connection Type      is configured.
                                                    Reference.Bandwidth
Connection elements  Ending network interface       Reference.Logical Connection
                     where this logical connection  Model
                     is configured.
                                                    Array.String
                     Bandwidth of the logical
                     connection.

                     Type of connection. This
                     field information updates
                     the product model that is
                     associated with the physical
                     connection.

                     Connection elements that
                     are added for the logical
                     connections. Click the add

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    398
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 399 -->
Input fields of Create Logical Connection function (continued)

Field Name          Description                                 Data Type

                    icon ( ) to add a connection
                    element.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function  Description                                 Data Type
Name                                                            Record
Logical Connection  Returns a glide record of the
                    logical connection.

Create Physical Connection function

The Create Physical Connection function enables you to create a physical connection record in
the Telecommunications Network Inventory application based on the input that you receive when
you instantiate an inventory.

You can use the Create Physical Connection function to create a physical port connection on the
interface cards in your networks.

When you enter the Interface A, this function automatically retrieves the data for related Site A,
Equipment A, and Port A. Similarly, after passing input Interface Z, the function retrieves the data
for associated Site Z, Equipment Z, and Port Z. This function also retrieves the data for Bandwidth
AtoZ and Bandwidth ZtoA from the Bandwidth field.

This function also creates the connection elements and associates them to the physical
connection.

If you pass a physical connection element, this subflow creates the corresponding connection
element and associates it to the physical connection.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Create Physical Connection function and their
description.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    399
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 400 -->
Input fields of physical connection action

Field Name                    Description                    Data Type
Interface A                                                  Reference.Network Interface
                              Starting network interface
                              where this logical connection
                              is configured.

Interface Z                   Ending network interface       Reference.Network Interface
                              where this logical connection
                              is configured.

Bandwidth                     Bandwidth of the logical       Reference.Bandwidth
                              connection.

Connection Type               Type of connection. This       Reference.Physical
                              field information updates      Connection Model
                              the Product Model that is
                              associated with the physical
                              connection.

Physical Connection Elements  sys_id of the connection       Array.String
                              elements that are added for
                              the physical connections. If
                              the physical connection has
                              the Connection Type attribute
                              as Cable, you can add the
                              connection element. Click

                              the add icon ( ) to add a
                              connection element.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function            Description                    Data Type
Name                                                         Record
Physical Connection           Returns a glide record of the
                              physical connection.

Create IP subnetwork function

The Create IP Subnetwork function enables you to create an IP subnetwork record in the
Telecommunications Network Inventory application based on the input that you receive when
you instantiate an inventory.

You can use this action as a flow designer action in the Telecommunications Network Inventory
workflow. Here, either CIDR or, first IP and last IP, or first IP and total host are required inputs to
create a subnetwork. If the parent IP pool is provided in input, then the function validates and
ensures that the subnetwork that is being created is under the provided IP pool.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    400
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 401 -->
Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Flow Designer action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

Input fields of Create IP subnetwork function

Field name              Description                     Data type
Parent IP pool                                          String
                        Provide the name of the
CIDR                    parent IP pool to which         String
First IP                you want to assign this         IP Address (Validated IPv4,
                        subnetwork to.                  IPv6)
                                                        IP Address (Validated IPv4,
                        CIDR                            IPv6)
                                                        Integer
                        First IP address in the series
                                                        Reference
Last IP                 Last IP address in the series

Total Host              Number of hosts in the IP
Managed Network         subnet

                        managed network of private
                        IPs

Output

The following table lists the information about the function output.

Output of function      Description                     Data type
Name                    Returns a glide a record        Record
IP subnetwork

CIDR to IP range function

Classless Inter-Domain Range (CIDR) to IP range flow action enables you to create a set of IP
addresses using the Classless Inter-Domain Range (CIDR) using Telecommunications Network
Inventory application based on the input that you receive when you instantiate an inventory.

Upon calling this flow action, a CIDR is fetched using the given IP subnetwork. Further, using the
CIDR a set of IP addresses are created. These IP addresses are further stored in the allocated IP
addresses table.

This function also ensures that there is no other allocated IP address created for this particular IP
subnetwork.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Flow Designer action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    401
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 402 -->
Input fields

Input fields of CIDR to IP range function

Field name            Description                 Data type
Change Task                                       Reference
                      Provide change task number
IP Subnetwork         for this task               String

                      Provide name of the
                      subnetwork from where the
                      CIDR must be fetched

Output

         The following table lists the information about the function output.

Output of function    Description                 Data type
Name                  Returns a glide a record    Record
Allocated IP address

Get Interface Summary function

The Get Interface Summary function enables you to retrieve all the network interface records
that are associated with the input. You can use this function to automatically get the details of the
available interface, connected interface, and the physical connection of the equipment in the
Telecommunications Network Inventory application when you use Workflow Studio.

The Get Interface Summary function enables you to retrieve the network interface records
that are associated with the input such as Site, Rack, or Equipment. You must enter the site,
equipment, or rack value to return the output.

If multiple inputs don't match, the action reports an error. For example, let's say that you can see
the equipment and site details but because the equipment doesn't belong to the site, the system
reports an error with the conflict information.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Get Interface Summary function and their
descriptions.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    402
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 403 -->
Input fields of Get Interface Summary function

Field Name                     Description                        Data Type
Site
                               Network site that is associated Reference.Network Site
                               with the network interface.

Rack                           Rack that is associated with       Reference.Telco equipment
                               the network interface.

Equipment                      Equipment that is associated       Reference.Telco equipment
                               with the network interface.

Availability                   Status of the network asset.       Choice
Model                          You can select one from the
                               following options:                 Reference.Physical
                                                                  Connection Model
                                · Available

                                · Used

                                · Reserved

                                · Shared

                               Physical connection model
                               that is associated with the
                               network interface.

Type                           Optional user-defined              Reference.TRF Value
                               type code that you use to
                               categorize the types of the
                               various network entities or
                               assets.

Role                           Optional user-defined              Reference.TRF Value
                               role code that you use to
                               categorize the roles or
                               purposes of the various
                               network entities or assets.

Function                       Optional user-defined              Reference.TRF Value
                               function code that you use
                               to categorize the functions of
                               the various network entities or
                               assets.

If multiple records are found  Option to return the type of       Choice
action                         output when multiple records
                               are found. You can select
                               Return only the first record
                               from the list to return the first
                               interface network record.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    403
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 404 -->
Output of function    Description                     Data Type
Name                                                  Array.String
Available Interfaces  Returns the sys_id list of the  Array.String
Connected Interfaces  available network interfaces.
                                                      Array.String
Physical Connections  Returns the sys_id list of
                      the network interfaces that
                      are connected to the other
                      network assets.

                      Returns the sys_id list of the
                      physical connections.

Example

If the input is passed as Equipment-1 as shown in the following example where Port-1, Port-2, and
Port-3 are connected to Equipment-1, Port-4 and Port-5 are connected to Equipment-2, physical
connection-1 between Port-2 and Port-4, and physical connection-2 between Port-3 and Port-5.
Then the output is as follows:

 · Available Interface - Port-1
 · Connected Interfaces - Port-2 and Port-3
 · physical Connections - PC-1 and PC-2

If you select If multiple records are found action as Return only the first record, it returns Port-1,
Port-2, and PC-1, respectively.

Lookup Next Hub function

The Lookup Next Hub function enables you to take the network interface record as input
and return the details of the related physical connection record. You can automatically get
the details of the physical connection and interconnected ports of the equipment in the
Telecommunications Network Inventory application when you use the Workflow Studio
application.

You can use the Lookup Next Hub function to return the following:

 · Physical connection that is related to the port.

 · Empty response if no physical connection is related to the port.

 · sys_id of the front and back ports, and the port name, if there's a configuration item (CI)
   relationship between the front and back ports.

 · NextHub interface and the interfaces that are connected to the other end of the physical
   connection.

 · NextHub interconnected interface and the interconnected interfaces that are connected to the
   other end of the physical connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    404
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 405 -->
You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Lookup Next Hub action and their descriptions.

Input fields of next hub action

Field Name                       Description                      Data Type
                                                                  Reference.Network Interface
Network Interface                Network interface record.        Choice

If multiple records are found    Option to select the action
action                           when multiple records are
                                 found. You can select Return
                                 only the first record from the
                                 list to return the details of
                                 the first physical connection
                                 record.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function output.

Output of function               Description                      Data Type
Name
Physical Connections             Returns the list of sys_ids      Array.String
                                 of the physical connection
Interconnected Port              records that are related to the
                                 network interface.
NextHub Interface
                                 Returns the list of sys_ids      Array.String
NextHub Interconnected           of the ports that are
Interface                        interconnected to the network
                                 interface.

                                 Returns the list of sys_ids      Array.String
                                 of the interfaces that are
                                 connected to the other end of
                                 the physical connection.

                                 Returns the list of sys_ids of   Array.String
                                 the interconnected interfaces
                                 that are connected to the
                                 other end of the physical
                                 connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    405
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 406 -->
Example

   Use Case 1

         If the input is passed as Interface-1 of Equipment-1 as shown in the following
         example, the function returns empty records, because the network inventory has no
         physical or internal connections in the network inventory.

Use Case 2

      If the input is passed as Interface-1 of Equipment-1 as shown in the following
      example, the function returns the network interface record of Interface-2.

Use Case 3

      If the input is passed as Interface-1 of Equipment-1 as shown in the following
      example, the function returns the network interface record of Interface-2 and the
      physical connection record of PC-1.

Use Case 4

      If the input is passed as Interface-1 of Equipment-1 as shown in the following
      example, the NextHub Interface is 3 and the NextHub Interconnected Interface is 4.

Path Search function

The Path Search function enables you to execute the path computation function between the
starting and ending sites in the Telecommunications Network Inventory application. You can
use this function for the path computation when you process the network inventory design and
assign.

You can use the Path Search function to identify the possible paths between your network sites.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    406
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 407 -->
If no path is found, the Path Search function uses the available input to create a logical
connection without adding any connection elements. If you don't enter the end equipment,
it selects any equipment that matches the Type attribute that belongs to the end site. The
function uses the start and end interfaces in the input to set the Port A and Port Z of the logical
connections. Otherwise, it selects any interface in the Availability field, which is marked as
Available.

You can use this function as a Workflow Studio action in the Telecommunications Network
Inventory workflow.

Roles and availability

Users with the admin role can add an action to a flow and define the configuration details of the
flow. This function is available as a Workflow Studio action in the Telecommunications Network
Inventory application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Path Search function and their description.

Input fields of Path Search function

Name             Description                     Data Type
Start Site                                       String
End Site         sys_id of the starting network  String
Start Equipment  site where this connection is   String
End Equipment    configured.                     String
Start Interface                                  String
                 sys_id of the ending network
                 site where this connection is
                 configured.

                 sys_id of the starting network
                 equipment where this
                 connection is configured.

                 sys_id of the ending network
                 equipment where this
                 connection is configured.

                 sys_id of the starting
                 network interface where this
                 connection is configured.

                 Note: If this field is left

                 empty, it automatically
                 selects the interface
                 by using the path
                 computation to create a
                 logical connection.

End Interface    sys_id of the ending            String
                 network interface where this
                 connection is configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    407
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 408 -->
Input fields of Path Search function (continued)

Name                         Description                    Data Type

                             Note: If this field is left

                             empty, it automatically
                             selects the interface
                             by using the path
                             computation to create a
                             logical connection.

End Equipment Type           sys_id of the ending network   String
Logical Connection Model     equipment type where this
Bandwidth                    connection is configured.
Allowed Logical Connection
Model                        sys_id of the logical          String
                             connection model where this
Allowed Physical Connection  connection is configured.
Model
                             sys_id of the bandwidth of the String
Fail Action                  connection.

                             sys_id of the supported        Array.String
                             models for the logical
                             connection. Click the add

                             icon ( ) to add a logical
                             connection model.

                             sys_id of the supported        Array.String
                             models for the physical
                             connection. Click the add

                             icon ( ) to add a physical
                             connection model.

                             Option to select the action    Choice
                             when the function fails. You
                             can select an action from the
                             list. By default, the Create
                             logical connection without
                             path elements is selected.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the function's output.

Output of function           Description                    Data Type
Name                                                        String
Connection id                Returns the sys_id of the
                             logical connection record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    408
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

