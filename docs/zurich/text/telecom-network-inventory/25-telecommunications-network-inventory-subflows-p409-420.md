# Zurich Telecommunications Network Inventory â€” Telecommunications Network Inventory subflows

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 409â€“420 of 425

Sections: Telecommunications Network Inventory subflows (p409)

---

<!-- page 409 -->
Telecommunications Network Inventory subflows

You can use Workflow Studio subflows in the Telecommunications Network Inventory application
to automate the network inventory's Design and Assign process.

Related topics
   Telecommunication Network Inventory workflows in Flow Designer

Create Logical Connection with template subflow

The Create Logical Connection with template subflow enables you to create a logical connection
record from an inventory template in the Telecommunications Network Inventory application. The
logical connection record is created based on the input that you receive when you instantiate an
inventory using an inventory template.

You can use the Create Logical Connection with template subflow to create a logical connection
from an inventory template on your network interface cards.

This subflow also creates the connection elements and associates them to the logical
connection.

If you enter a network interface, equipment, physical connection, logical connection, or managed
function as a connection element, the Logical Connection Creation subflow creates the
corresponding connection element.

Roles and availability

Users with the admin role can add a subflow to a flow and define the configuration details of the
flow. This Workflow Studio subflow is available in the Telecommunications Network Inventory
application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Create Logical Connection with template subflow
and their descriptions.

Input fields of Create Logical Connection with template subflow

Field Name   Description                    Data Type
Interface A                                 Reference.Network Interface
Interface Z  Starting network interface     Reference.Network Interface
Change Task  where this logical connection  Reference.Change Task
Interface A  is configured.                 Reference.Network interface
Interface Z                                 Reference.Network interface
             Ending network interface
             where this logical connection
             is configured.

             Change task to instantiate a
             logical connection using a
             template.

             Starting network interface
             where this logical connection
             is configured.

             Ending network interface
             where this logical connection
             is configured.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    409
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 410 -->
Input fields of Create Logical Connection with template subflow (continued)

Field Name                      Description                    Data Type
Bandwidth A                                                    Reference.Bandwidth
                                Bandwidth at the starting
                                logical connection.

Bandwidth Z                     Bandwidth at the ending        Reference.Bandwidth
                                logical connection.

Connection Type                 Type of connection. This       Reference.Logical Connection
                                field information updates      Model
                                the product model that is
                                associated with the physical
                                connection.

Logical Connection Template     Template associated with       Reference.Inventory Template
                                logical connection.

Connection elements             Connection elements that       Array.String
                                are added for the logical
                                connections. Select the add

                                icon ( ) to add a connection
                                element.

Position                        Unit position of this logical  Integer
                                connection.

A End Interface Name            Starting interface name.       String

Z End Interface Name            Ending interface name.         String

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the subflow's output.

Output of subflow               Description                    Data Type
Name                                                           Reference.Logical connection
Logical Connection              Returns a glide record of the  Reference.CI Relationship
                                logical connection.
CI Relationship with Interface                                 Reference.CI Relationship
A                               Returns the CI relationship
                                with a starting network
CI Relationship with Interface  interface.
Z
                                Returns the CI relationship
                                with an ending network
                                interface.

Logical Connection Creation subflow

The Logical Connection Creation subflow enables you to create a logical connection record in
the Telecommunications Network Inventory application based on the input that you receive when
you instantiate an inventory.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    410
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 411 -->
You can use the Logical Connection subflow to create a logical connection on your network
interface cards.

This subflow also creates the connection elements and associates them to the logical
connection.

If you enter a network interface, equipment, physical connection, logical connection, or managed
function as a connection element, the Logical Connection Creation subflow creates the
corresponding connection element.

Roles and availability

Users with the admin role can add a subflow to a flow and define the configuration details of the
flow. This Workflow Studio subflow is available in the Telecommunications Network Inventory
application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Logical Connection Creation subflow and their
descriptions.

Input fields of Logical Connection Creation subflow

Field Name           Description                     Data Type
Interface A
Interface Z          Starting network interface      Reference.Network Interface
Bandwidth            where this logical connection
Connection Type      is configured.

Connection elements  Ending network interface        Reference.Network Interface
                     where this logical connection
                     is configured.

                     Bandwidth of the logical        Reference.Bandwidth
                     connection.

                     Type of connection. This        Reference.Logical Connection
                     field information updates       Model
                     the product model that is
                     associated with the physical
                     connection.

                     Connection elements that        Array.String
                     are added for the logical
                     connections. Select the add

                     icon ( ) to add a connection
                     element.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The following table lists the information about the subflow's output.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    411
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 412 -->
Output of subflow               Description                    Data Type
Name                                                           Reference.Logical connection
Logical Connection              Returns a glide record of the  Reference.CI Relationship
                                logical connection.
CI Relationship with Interface                                 Reference.CI Relationship
A                               Returns the CI relationship
                                with a starting network
CI Relationship with Interface  interface.
Z
                                Returns the CI relationship
                                with an ending network
                                interface.

Related topics
   Telecommunication Network Inventory workflows in Flow Designer

Physical connection creation subflow

The Physical Connection Creation subflow enables you to create a physical connection record in
the Telecommunications Network Inventory application based on the input that you receive when
you instantiate an inventory.

You can use the Physical Connection Creation subflow to create a physical port connection on
the interface cards in your networks.

This subflow also creates the connection elements and associates them to the physical
connection.

If you enter a physical connection element, this subflow creates the corresponding connection
element and associates it to the physical connection.

Roles and availability

Users with the admin role can add a subflow to a flow and define the configuration details of the
flow. This Workflow Studio subflow is available in the Telecommunications Network Inventory
application so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the Physical Connection Creation subflow and their
description.

Input fields of subflow         Description                    Data Type
Field Name                                                     Reference.Network Interface
Interface A                     Starting network interface
                                where this logical connection  Reference.Network Interface
Interface Z                     is configured.
                                                               Reference.Bandwidth
Bandwidth                       Ending network interface
                                where this logical connection
                                is configured.

                                Bandwidth of the logical
                                connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    412
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 413 -->
Input fields of subflow (continued)

Field Name                      Description                     Data Type
Connection Type                                                 Reference.Physical
                                Type of connection. This        Connection Model
CI Relationship                 field information updates
                                the product model that is       Reference.CI Relationship
Physical connection elements    associated with the physical    Type
                                connection.
                                                                Array.String
                                Type of configuration item
                                (CI) relationship. By default,
                                the Logical Creation subflow
                                sets a CI relationship to
                                Terminated::Terminated by.

                                sys_id of the connection
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

The following table lists the information about the subflow's output.

Output of subflow               Description                     Data Type
Name                                                            Record
Physical Connection             Returns a glide record of the   Reference.CI Relationship
                                physical connection.
CI Relationship with Interface                                  Reference.CI Relationship
Z                               Returns the CI relationship
                                with an ending network
CI Relationship with Interface  interface.
A
                                Returns the CI relationship
                                with a starting network
                                interface.

Related topics
   Telecommunication Network Inventory workflows in Flow Designer

TNI Design Assign Connection Element Creation subflow

The TNI Design Assign Connection Element Creation subflow enables you to create the
connection element records in the Telecommunications Network Inventory application. You
can use this flow action to configure the activities in a Design and Assign playbook for logical
connection.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    413
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 414 -->
The TNI Design Assign Connection Element Creation subflow creates the connection elements
that are associated with a logical connection and updates them in a change task. This subflow
functions are as follows.
 · Get the details from the Define end points and Setup logical connection activities.
 · Create connection elements.
 · Check whether the start/end equipment matches with the start/end port.
 · Create CI relationships if the equipment matches with the port.
 · Update change task that is associated with the Assign connection element activity.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Connection Element Creation
subflow and their descriptions.

Input fields of TNI Design Assign Connection Element Creation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Assign          True/False
                         connection element activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign Connection Element Creation subflow output are as follows.
 · Create the connection elements.
 · Create the CI relationship between equipment and port.
 · Update the change task that is associated with the Assign connection element activity.

TNI Design Assign Protected Path Assignment subflow

The TNI Design Assign Connection Element Creation subflow enables you to update the
protection path in the Telecommunications Network Inventory application. You can use this flow
action to configure the activities in a Design and Assign playbook for logical connection.

          The TNI Design Assign Protected Path Assignment subflow gets the protection paths that are                                                                            414
          associated with a logical connection and updates them in a change task. This subflow functions
          are as follows.

           · Get the details from the Assign protection element activity.

           · Update the protection path in the logical connection record.

           · Create CI relationship between logical connection and protected path.

           · Update change task that is associated with the Assign protection element activity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 415 -->
Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Protected Path Assignment
subflow and their descriptions.

Input fields of TNI Design Assign Protected Path Assignment subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Assign          True/False
                         protection element activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign Protected Path Assignment subflow output are as follows.
 · Update the protection path in the logical connection.
 · Create the CI relationship between logical connection and protection path.
 · Update change task that is associated with the Assign protection element activity.

TNI Design Assign IP Address Creation subflow

The TNI Design Assign IP Address Creation subflow enables you to create the IP address
records in the Telecommunications Network Inventory application. You can use this flow action to
configure the activities in a Design and Assign playbook for logical connection.

The TNI Design Assign IP Address Creation subflow creates the IP addresses that are associated
with a logical connection and updates them in a change task. This subflow functions are as
follows.

 · Get the details from the Define IP address activity.
 · Create IP address records.
 · Create CI relationships between allocated IP address and IP address.
 · Create CI relationships between logical connection and IP network subnet.
 · Update change task that is associated with the Define IP address activity.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    415
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 416 -->
Input fields

The following table lists the input fields in the TNI Design Assign IP Address Creation subflow
and their descriptions.

Input fields of TNI Design Assign IP Address Creation subflow

Field Name               Description                           Data Type
Change Task                                                    Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Define IP             True/False
                         address activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign IP Address Creation subflow output are as follows.
 · Create IP address records.
 · Create CI relationships between allocated IP address and IP address.
 · Create CI relationships between logical connection and IP network subnet..
 · Update change task that is associated with the Define IP address activity.

TNI Design assign Logical Connection Creation subflow

The TNI Design assign Logical Connection Creation subflow enables you to create the logical
connection record in the Telecommunications Network Inventory application. You can use this
flow action to configure the activities in a Design and Assign playbook for logical connection.

The TNI Design assign Logical Connection Creation subflow creates the logical connection
record and updates the details in a change task. This subflow functions are as follows.

 · Get the details from the Define end points and Setup logical connection activities.
 · Create the logical connection record with the use of inventory template.
 · Update TNI CI attribute record.
 · Update Configuration Item (CI) on the change request.
 · Update change tasks that are associated with the Define end points and Setup logical

   connection activities.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design assign Logical Connection Creation
subflow and their descriptions.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    416
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 417 -->
Input fields of TNI Design assign Logical Connection Creation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change tasks that are
Ignore Validation Error  associated with Setup logical   True/False
                         connection activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design assign Logical Connection Creation subflow output are as follows.
 · Create the logical connection record.
 · Update TNI CI attribute record.
 · Update Configuration Item (CI) on the change request.
 · Update change tasks that are associated with the Define end points and Setup logical

   connection activities.

TNI Design Assign Number Element Creation subflow

The TNI Design Assign Number Element Creation subflow enables you to create the number
element records in the Telecommunications Network Inventory application. You can use this flow
action to configure the activities in a Design and Assign playbook for logical connection.

The TNI Design Assign Number Element Creation subflow creates the number elements that are
associated with a logical connection and updates them in a change task. This subflow functions
are as follows.

 · Get the details from the Define number element activity.

 · Create connection element records.

 · Update change task that is associated with the Define number element activity.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Number Element Creation
subflow and their descriptions.

Input fields of TNI Design Assign Number Element Creation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Define          True/False
                         number element activity.

                         Ignores any validation errors.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    417
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 418 -->
To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign Number Element Creation subflow output are as follows.
 · Create connection element records.
 · Update change task that is associated with the Define number element activity.

TNI Design Assign Set Attributes subflow

The TNI Design Assign Set Attributes subflow enables you to update the TNI CI attribute record in
the Telecommunications Network Inventory application. You can use this flow action to configure
the activities in a Design and Assign playbook for logical connection.

The TNI Design Assign Set Attributes subflow updates the TNI CI attributes that are associated
with a logical connection and updates them in a change task. This subflow functions are as
follows.
 · Get the details from the Set attributes activity.
 · Update attributes in TNI CI record.
 · Update change task that is associated with the Set attributes activity.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Set Attributes subflow and their
descriptions.

Input fields of TNI Design Assign Set Attributes subflow

Field Name               Description                      Data Type
Change Task                                               Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Set attributes   True/False
                         activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign Set Attributes subflow output are as follows.
 · Update attributes in TNI CI record.
 · Update change task that is associated with the Set attributes activity.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    418
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 419 -->
TNI Design Assign Request Details Update subflow

The TNI Design Assign Set Attributes subflow enables you to validate the design request in the
Telecommunications Network Inventory application. You can use this flow action to configure the
activities in a Design and Assign playbook for logical connection.

The TNI Design Assign Request Details Update subflow validates the design request of a logical
connection and updates details in a change task and change record. This subflow functions are
as follows.
 · Get the details from the Review and submit activity.
 · Update work notes in the change request.
 · Update the Configuration Item (CI) in the change task.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Request Details Update subflow
and their descriptions.

Input fields of TNI Design Assign Request Details Update subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Review and      True/False
                         submit activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

The TNI Design Assign Request Details Update subflow output are as follows.
 · Update work notes in the change request.
 · Update the Configuration Item (CI) in the change task.
 · Validate the design request.

TNI Design Assign Connection Element Validation subflow

The TNI Design Assign Connection Element Validation subflow enables you to validate the
connection element records in the Telecommunications Network Inventory application. You
can use this flow action to configure the activities in a Design and Assign playbook for logical
connection.

The TNI Design Assign Connection Element Validation subflow validates whether the connection
element records required for the Assign connection element activity have already been used or
not. If the connection elements are already used, the subflow passes the information.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    419
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 420 -->
Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign Connection Element Validation
subflow and their descriptions.

Input fields of TNI Design Assign Connection Element Validation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Assign          True/False
                         connection element activity.

                         Ignores any validation errors.

To learn more about the variable data types, see Flow Designer input and output data variables .

Output

If the connection element is already used, then the subflow passes the following message "The
connection element has already been fully used. Please try creating another one."

TNI Design Assign IP Address Validation subflow

The TNI Design Assign IP Address Validation subflow enables you to validate the IP address
records in the Telecommunications Network Inventory application. You can use this flow action to
configure the activities in a Design and Assign playbook for logical connection.

The TNI Design Assign IP Address Validation subflow validates whether the IP address records
required for the Define IP address activity have already been used or not. If the IP addresses are
already used, the subflow passes the information.

Roles and availability

An admin can add a subflow to a flow and define the configuration details of the flow. This
Workflow Studio subflow is available in the Telecommunications Network Inventory application
so that you can perform inventory-related data operations.

Input fields

The following table lists the input fields in the TNI Design Assign IP Address Validation subflow
and their descriptions.

Input fields of TNI Design Assign IP Address Validation subflow

Field Name               Description                     Data Type
Change Task                                              Reference.Change Task
                         The change task that is
Ignore Validation Error  associated with Define IP       True/False
                         address activity.

                         Ignores any validation errors.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    420
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

