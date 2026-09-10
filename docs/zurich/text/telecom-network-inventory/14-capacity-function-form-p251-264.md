# Zurich Telecommunications Network Inventory â€” Capacity Function form / Card form / Change request and change task forms

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 251â€“264 of 425

Sections: Capacity Function form (p251); Card form (p252); Change request and change task forms (p252)

---

<!-- page 251 -->
 Script - Additional fields      Description
 Field
 Entity table                    Entity table within the database where you're
 Script                          querying.

Related topics                   A script that determines how to query the
   Capacity Function form        desired data. The script must include an
   Create capacity function      answer variable and the type of variable is a
                                 number or string.

Capacity Function form

The Capacity Function form enables you to describe the details for a capacity function record.

Capacity Function form

Field     Value

Name      Name of the capacity function record.

Application Application name for which the capacity functions are created.

Description A brief description about the capacity function.

Function  Type of capacity calculation. Select one from the following.
             Max
                   Maximum number of network assets.
             Occupied
                   Total number of network assets that are occupied.
             Available
                   Total number of network assets that are available. It's the
                   difference between maximum and occupied assets.
             Max Contiguous
                   Maximum contiguous network assets that are available.

Strategy  Methods for capacity calculation. Select one from the following.

          Static Value

                 A fixed or constant value is used to calculate the capacity. The
                 static value approach uses a predetermined metric to calculate
                 the capacity without considering a field in the record that you
                 query.

          Aggregate query count

                 A database query that uses an aggregate function to calculate the
                 capacity. In this strategy, you query a related field in a record that
                 is present in the entity table. This type of query is useful for getting
                 summary information about the field in a table, such as the total
                 number of records that meet specific conditions.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    251
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 252 -->
Capacity Function form (continued)

Field  Value
          Value field

                Use this strategy to check a particular value in a query table, which
                is present in the database.

          Script

                An advanced strategy approach, where a script is used for
                querying.

       Depending on the strategy that you're selected, additional fields appear in the
       form. To learn more about the additional fields, see Capacity function additional
       fields.

Measurement Unit of measurement depends on the type of capacity being calculated. Select

type   one from the following.

       · Unit

       · Power

       · Weight

       · Slot Unit

       · Port Unit

Order  Order field value.

Related topics
   Create capacity function
   Capacity management

Card form

The Card form enables you create, review, and modify the network card details.

Interface Card form

Field  Description

Name   Name of this network interface card. The ServiceNow AI Platform uses this name to
       identify it in your network inventory.

Ports Total number of ports on this network interface card.

Ports in Number of ports in use on this network interface card.
use

Slots Total number of slots on this network interface card.

Related topics
   Define the card details

Change request and change task forms

The change request forms enable you to request a change.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    252
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 253 -->
Change task form of change models  Description
Change model
Add cable                          Change model to create a change task for
Add Card                           adding a card. To learn more, see the add
Create inventory equipment         card form in Change request and change task
                                   forms.
Create logical connection
                                   Change model to create a change request
Create physical connection         for adding an interface card. To learn more,
                                   see the add card form in Change request and
                                   change task forms.

                                   Change model to create a change request for
                                   creating inventory equipment. To learn more,
                                   see the create equipment form in Change
                                   request and change task forms.

                                        Note: To see the compute and create

                                         logical connection form, see Compute
                                         and Create Logical Connection form.

                                   Change model to create a change request for
                                   creating a logical connection. To learn more,
                                   see the Change request and change task
                                   forms.

                                        Note:

                                          · To update or revise a logical
                                            connection CI, see Revise a
                                            configuration item using design and
                                            assign.

                                          · To modify logical connection
                                            endpoints, see Modify logical
                                            connection endpoints model.

                                   Change model to create a change request for
                                   creating a physical connection. To learn more,
                                   see Change request and change task forms.

                                        Note:

                                          · To update or revise a physical
                                            connection CI, see Revise a
                                            configuration item using design and
                                            assign.

                                          · To modify physical connection
                                            endpoints, see Modify physical
                                            connection endpoints.

Create Rack/Cabinet                Change model to create a change request for
                                   creating and visualizing a rack or cabinet. To

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    253
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 254 -->
Change task form of change models (continued)

Change model                          Description

                                      learn more, see Change request and change
                                      task forms.

                                               Note:

                                               1. For creating a rack or cabinet, ensure
                                                  that the following exist:

                                                  A model in equipment holder
                                                     model with Model categories as
                                                     Equipment Rack.

                                                  A relationship in network model
                                                     relationships with the Relationship
                                                     type as Rack to Slot.

                                                  A template in the inventory template
                                                     where the inventory model has a
                                                     rack model.

                                               A rack is created based on the
                                               selected rack model in the template,
                                               and the rack slots are created based
                                               on the rack template.

Add equipment to Rack/cabinet              2. To add equipment to a rack, see
                                               Create a change request from Network
Remove Equipment or Shelf from Rack/           Inventory Workspace.
Cabinet
                                      Change model to add a new or existing
                                      equipment to a rack. To learn more, see
                                      Change request and change task forms.

                                      Change model to remove an equipment or a
                                      shelf from a rack or cabinet slot. To learn more,
                                      see Change request and change task forms.

                                               Note: Shelf cannot be removed if it is

                                               related to any equipment.

IP address allocation                 Change model to create a change request for
Phone number allocation               IP address allocation. To learn more, see the
                                      IP address allocation form in Change request
                                      and change task forms.

                                      Change model to create a change request for
                                      a phone number allocation. To learn more, see
                                      the Manage phone number form in Change
                                      request and change task forms.

GPON Broadband form

Fields                                Description
Order task
                                      Specifies the fulfillment task generated from
                                      the service order to provision the GPON

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    254
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 255 -->
GPON Broadband form (continued)  Description
Fields                           broadband service. This task is used to
                                 track and complete the technical fulfillment
Location                         activities associated with the order.
                                 Specifies the physical network location where
Customer Site                    the GPON access infrastructure is installed.
ONT equipment template           Network site.
Splitter                         Equipment template.
Splitter port                    Equipment.
Pon Network Path                 Port interface.
ISPN VLAN                        Pon logical connection.
ISP EVPN VPWS                    ISPN VLAN logical connection.
IP Version                       ISP EVPN VPWS logical connection.
Number of IP Addresses           IP version.
Start IP Address                 Total number of IP addresses.
                                 Starting IP address.

Change Request form              Description
Field
Number                           Change request number.
Requested by
                                 User who has requested the change. This field
Category                         is available in the Change Requests list view
Service                          so that you can see who requested a particular
Service offering                 change.

Configuration item               Category of this change request. Select Other
Priority                         if your category isn't in the list.
Risk
                                 Business service that you want to make
                                 available for this change request.

                                 Service option that consists of one or more
                                 service commitments that uniquely define the
                                 level of service. You can select the different
                                 levels of performance and features for a
                                 service through service offerings. You must
                                 select a service to filter the available service
                                 offerings.

                                 Configuration item (CI) that the change applies
                                 to.

                                 Priority of this change request.

                                 Risk level for the change.

                                 Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    255
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 256 -->
Change Request form (continued)  Description
Field
                                  · High
Impact
Short description                 · Moderate
Description
Model                             · Low

                                 Measure of the effect of a change on the
                                 business processes.

                                 Summary of the change.

                                 Description of the change in detail.

                                 Change model that is associated with the
                                 Telecommunications Network Inventory
                                 change request.

                                 After selecting the change model tile, the
                                 associated model appears in this field. You
                                 can also manually select one of the following
                                 options:

                                    Add Interface Card

                                          Change model that is used to add
                                          an interface card in an equipment
                                          slot.

                                    Create Inventory Equipment

                                          Change model that is used to
                                          add equipment when using an
                                          inventory template in a site or
                                          equipment holder.

                                    Create Logical Connection

                                          Change model that is used to
                                          create a logical connection
                                          between two network interfaces.

                                    Create Physical Connection

                                          Change model that is used to
                                          create a physical connection
                                          between two network interfaces.

                                    Emergency

                                          Change model that is used for
                                          the Telecom Network Inventory
                                          emergency changes.

                                    GPON Broadband Service

                                          Change model that is used to
                                          fulfill a Gigabyte Passive Optical
                                          Network (GPON) broadband
                                          order request.

                                    Normal

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    256
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 257 -->
Change Request form (continued)    Description
Field                                       Change model that is used for
                                            the Telecommunications Network
State                                       Inventory normal changes.
Assignment group
Assigned to                             Note: These change models are

Change Request form- Schedule tab        available in the Changes > All > New
Field                                    window.
Planned start date
                                   Current state of this change request, New, or
Planned end date                   closed.

CAB required                       Group working on the change request.
CAB date
Actual start date                  User that the change is assigned to. If an
                                   assignment rule applies, the change is
                                   automatically assigned to the appropriate user
                                   or group.
                                    · New
                                    · Design In Progress
                                    · Design Review
                                    · Design Complete

                                   Description

                                   Projected start date for the implementation.
                                   The planned start date can be the current date
                                   or a future date. The default value for this field
                                   is the current date. To change the planned
                                   start date, select the calendar icon and
                                   select a new date.

                                   Projected end date for the implementation.
                                   The planned end date must be after the
                                   planned start date. The default value for this
                                   field is one day after the planned start date.
                                   To change the planned end date, select the
                                   calendar icon and select a new date.

                                   Option that designates if this change request
                                   requires a Change Advisory Board (CAB)
                                   approval before implementation.

                                   CAB approval date for the implementation.

                                   Actual start date for the implementation.
                                   The actual start date can be on or before the
                                   planned start date.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    257
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 258 -->
Change Request form- Schedule tab (continued)

Field                                   Description
Actual end date
                                        Actual end date for the implementation. The
CAB delegate                            actual end date can be before the planned
CAB recommendation                      start date but not before the actual start date.

                                        User who attends the Change Advisory Board
                                        (CAB) meeting to describe the change.

                                        Notes or recommendations that are related to
                                        the CAB meeting.

Change Request form- Notes tab          Description
Field
Watch list                              User who gets the notifications about the
                                        change request. Add the names of the users
Additional comments (Customer visible)  who receive notifications and can view the
                                        watch topic.
Work notes
Work notes list                         Option that designates if the work notes need
                                        to be shared with the user who requested the
                                        change.

                                        Work notes for the change request.

                                        Users who can get the notification about the
                                        work notes.

Change Request form- Closure Information tab

Field                                   Description
Close code
                                        Close code that best describes the reason
                                        you're closing this change request. Select one
                                        of the following options:

                                         · Successful
                                         · Unsuccessful with issues
                                         · Unsuccessful

Close notes                             Any additional notes that describe the
                                        outcome of closing this change request.

Change Task form

Fields                                  Description

Number                                  Change task identification number.

Change request                          Change request number under which this
                                        change task was created.

Configuration item                      Configuration item (CI) that the change is
                                        applied to.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    258
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 259 -->
Change Task form (continued)  Description
Fields
Request type                  Request type. Depending on your selection,
                              the record producer form under the task
                              attributes gets updated. This field represents
                              the type of change request. Select any one of
                              the following:

                                 Revise CI

                                       This type of request definition
                                       enables you to select a CI that
                                       you want to revise and clones the
                                       selected CI details and related
                                       items. The Configuration item
                                       field is automatically updated
                                       with the cloned CI name having
                                       suffix as revised.

                                       All the changes made to the CI
                                       are now applied to the cloned CI.
                                       Also, both original and duplicated
                                       CIs can be found under Affected
                                       CIs tab. To customize the cloning
                                       process, see #unique_92.

                                 Add cable

                                       This type of request definition
                                       enables you to create a cable
                                       record.

                                 Add Card

                                       This type of request definition
                                       enables you to select a site and
                                       equipment model when you add
                                       interface cards. To learn more
                                       about equipment instantiation,
                                       see Design and assign.

                                 Create equipment

                                       This type of request definition
                                       enables you to select a network
                                       site and an inventory template for
                                       equipment instantiation. If you
                                       want to place your equipment
                                       inside a rack, you can select an
                                       equipment holder.

                                 Create Physical Connection and Create
                                 Logical Connection

                                       These types of request
                                       definitions have similar sets of
                                       site and equipment selection
                                       fields for the physical or logical
                                       connections between your start

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    259
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 260 -->
Change Task form (continued)

Fields                        Description

                                       (A) and end (Z) locations. You
                                       can only select those interfaces
                                       that are associated with the
                                       designated equipment model for
                                       the A-start and Z-end interfaces.

                                    For the instantiation of physical
                                    or logical connections, you must
                                    select a physical connection
                                    model or a logical connection
                                    model, depending on the type
                                    of connection that you want to
                                    create between the two sites. For
                                    a logical connection, this internal
                                    code creates a CI record, and
                                    additional path elements.

                              Logical connection - Path compute

                              This type of request definition
                              has a set of site and equipment
                              fields for start and end locations.

                              For initiation of the path compute
                              of the logical connection, you
                              must select logical connection
                              model. To learn more, see
                              Compute and Create Logical
                              Connection form.

                              Modify members of a topology

                              This type of request definition
                              enables you to create a cable
                              record. o learn more about
                              modifying a network topology
                              record, see Add or remove a
                              member to network topology
                              record.

                              IP Address Allocation

                              This type of request definition
                              enables you to instantiate an IP
                              address allocation and assign
                              new services to the IP addresses.
                              To learn more, see IP address
                              allocation form in Change
                              request and change task forms.

                              Phone Number Allocation

                                                                                         This type of request definition                                                        260
                                                                                         enables you to instantiate a
                                                                                         phone number allocation. You
                                                                                         can allocate, de-allocate, and
                                                                                         create numbers that are provided
                                                                                         externally. To learn more, see the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 261 -->
Change Task form (continued)  Description
Fields
Short description                      Manage phone number form in
Description                            Change request and change task
State                                  forms.

Assignment group              Short description for this order task.
Assigned to
Work notes                    Description of this order task.
Update
Close Task                    State of this change task. Select one of the
Delete                        following options:

                                 Pending
                                       Task is waiting for an action from
                                       the user.

                                 Open
                                       No action is taken on this task yet.

                                 In Progress
                                       Task processing is in progress.

                                 Closed
                                       Change task is complete.

                                 Canceled
                                       Change task has been canceled.

                              Name of the group that is responsible for this

                              task. Select the search icon (         ) to select a
                              group from the list.

                              Depending on the selected group, the users
                              who are assigned to the list are shown. Select

                              the search icon ( ) to see the list of users.

                              Free-form work order note text.

                              Option to save changes that you made to the
                              order task.

                              Option to change the state of the order task to
                              Closed.

                              Option to delete this order task.

Create inventory equipment or Create Rack/Cabinet - Task Attributes

Fields                        Description
Inventory template
                              Name of the inventory template for the
                              equipment model. The instantiation process
                              uses it to generate a network asset instance in
                              the designated network site.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    261
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 262 -->
Create inventory equipment or Create Rack/Cabinet - Task Attributes (continued)

Fields                 Description

                       Note:

                        · Depending on the selected inventory
                          template, a list of the optional
                          templates appears at the bottom of the
                          form.

                        · When you select an optional template,
                          the current template values are
                          overwritten.

                        · This field is applicable only for Create
                          inventory equipment.

Equipment holder       Name of the telco equipment holder. Select a
                       rack or a cabinet where the equipment can be
                       installed.

                            Note:

                              · The Telco equipment holder field lists
                                all racks and cabinets.

                              · This field is applicable only for Create
                                inventory equipment.

Network site           Name of the network site in which the process
Rack/Cabinet template  is instantiating the equipment.

Stockroom Location     Template name of the rack template where you
Asset                  want to add all the slots to.

                            Note:

                              · Based on the selected Rack template,
                                Stockroom location, and Asset
                                the slots, network sites, and related
                                network sites are added.

                              · This field is applicable only for Create
                                rack.

                       Name of the stockroom location where the
                       asset is located.

                       To learn more, see Telecommunications
                       Network Inventory integration with Hardware
                       Asset Management.

                       Name of the asset that is associated with this
                       record.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    262
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 263 -->
Create inventory equipment or Create Rack/Cabinet - Task Attributes (continued)

Fields                                        Description

                                              To learn more, see Telecommunications
                                              Network Inventory integration with Hardware
                                              Asset Management.

IP Address Allocation form - Task Attributes

Field                                         Description
Operation Type
                                              Type of operation. Select one of the following
                                              options:

                                               · Create IP network subnet: Creates a
                                                 network subnet with a CIDR value.

                                              Note: For the IP network subnet

                                              creation, the Create IP Subnetwork
                                              flow action is initiated. To learn more,
                                              see Create IP subnetwork function.

                                              · Convert CIDR to IP addresses: Converts a
                                               single or multiple CIDRs to IP addresses and
                                               stores them in an IP address allocation.

                                                    Note: For the CIDR-to-IP address

                                                      conversion, the CIDR-to-IP range flow
                                                      action is initiated. To learn more, see
                                                      CIDR to IP range function.

Name                                          Name for this IP allocation.
IP pool                                       Parent pool of this IP address allocation.
IP network subnet CIDR                        CIDR value.
Managed Network                               IP address or allocation that you can select
                                              and assign a network to.
Owned by configuration item                   Configuration item that owns this allocation.
IP network subnet                             Network subnet that you searched for and
                                              selected to convert its CIDR-to-IP addresses.

                                                   Note: This field is used only for

                                                    converting the CIDR-to-IP address.

Manage Phone Number - Task Attributes         Description
Fields                                        Action that you can select:
Action

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    263
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 264 -->
Manage Phone Number - Task Attributes (continued)

Fields                   Description

                         · Allocate: Allocates the numbers from a
                          block

                         · De-allocate: De-allocates the numbers.
                          The status of the numbers is changed to
                          Quarantine.

                                                   Note: When you select this action,

                                                   you must select an allocation or the
                                                   selected numbers that you want to
                                                   deallocate. This action results in
                                                   changing the status to Quarantine.

                         · Ported-in: Includes the numbers that are
                          moved from another operator. The numbers
                          are stored in a telephone number allocation
                          of telephone numbers only.

                               Note: Multiple allocations get created

                                 if the numbers aren't in a series of
                                 numbers. Also, by default, the numbers
                                 are changed to the assigned or the
                                 ported-in status.

                         · Create: Creates the phone number
                          allocation for the numbers that are assigned
                          to an external telephone block. You're
                          assigning the numbers to a network
                          inventory-based phone number allocation.

Service                  Service for these numbers. The selected
                         service gets assigned to the numbers.
Quantity
Phone number allocation       Note: Ensure that you've created
Line number
                               a service for this phone number. To
                               learn more, see Manage your network
                               functions.

                         Total number of required phone numbers.

                              Note: This field disappears for a

                               deallocated action.

                         Available number allocations that are based
                         on the provided information that you enter. You
                         can select a phone number allocation for your
                         line number.

                         Enter your required line number in xxxx-xxxx or
                         xxx-xxx or xxx, xxx-xxx format.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    264
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

