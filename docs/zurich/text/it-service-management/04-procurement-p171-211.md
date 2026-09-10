# Zurich IT Service Management — Procurement

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 171–211 of 3857

Sections: Procurement (p171)

---

<!-- page 171 -->
Domain separation and Contract Management
Domain separation is unsupported in Contract Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Procurement
®

Procurement managers can use the ServiceNow Procurement application to create purchase
orders and to obtain items for fulfilling service catalog requests.
Procurement offers the ability to perform the following functions.
• Track service catalog requests
• Create and manage purchase orders
• Create and manage transfer orders
• Receive assets

Procurement roles
The Procurement application uses the following roles.

Role

Contains roles

procurement_admin procurement_user

Description

Can create purchase orders without a request.
Can view requests and requested items. Can view
transfer orders. Can create a purchase order or
transfer order when sourcing items for a request.
Can view the vendor catalog.
Can refresh, add, delete, and rearrange gauges in
the Procurement Overview module.

procurement_user

financial_mgmt_user, Can create purchase orders without a request.
model_manager
Can view requests and requested items. Can
view transfer orders. Can create a purchase
order or transfer order when sourcing items for a
request. Can view the vendor catalog. Can view
and refresh gauges in the Procurement Overview
module.

Procurement workflows
Procurement uses the following workflows. You can edit the existing flows or create a flow in the
graphical Workflow Studio to meet your organization's asset procurement process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
• In the Service Catalog Request workflow, items ordered from the service catalog that cost over
one thousand dollars require approval.
Service catalog request workflow

• In the Source Request workflow, catalog tasks are created so that a procurement manager can
source the item by creating a transfer order or purchase order.
Source request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
• In the Procurement Process Flow-Hardware, a Service Catalog request task for a hardware
asset is created so that a procurement manager can source the item by creating a transfer
order or purchase order.
Procurement Process Flow-Hardware

Related topics
Workflows
Sourcing items in a service catalog request
Procurement purchase order management for assets

Use the Procurement Overview module
Use the gauges on the Procurement Overview homepage to help you track and manage
requests, purchase orders, and other important aspects of the procurement process.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to All > Procurement > Overview.
2. Click elements within the gauges to obtain more information.
Example
For example, click a request number to view the request record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
Activate Procurement
You can activate the Procurement plugin that provides core procurement capabilities.

Before you begin

Role required: procurement_admin, procurement_user

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Procurement plugin (com.snc.procurement) using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Components installed with Procurement
Several types of components are installed with Procurement.
Demo data is available with Procurement. The demo data provides sample requests, purchase
orders, purchase order line items, and receiving slips.
Business rules installed with Procurement
Procurement plugin adds the following business rules.

Business rule Table

Description

Adjust
remaining
quantity

Calculates the remaining quantity of items ordered on
a purchase order line items by subtracting the amount
received from the amount ordered.

Purchase order line
items
[proc_po_item]

Can request Request
be sourced
[sc_request]

Checks if a request can be sourced.

Cancel
Request
Procurement
[sc_request]
Orders

Cancels all unreceived purchase orders and
unshipped transfer order lines associated with the
request's items if the request state changes to Closed
Cancelled.

Check if
req item is
sourced

Requested Item

Sets the Sourced field on the parent request to true if
all requested items have been sourced.

Check if
request is
sourceable

Requested Item

[sc_req_item]

[sc_req_item]

Checks if the request associated with a requested
item can be sourced (obtained from a transfer order or
by creating a purchase order to a vendor).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
Business rule Table

Description

Create
Assets

Receiving Slip Line

If the purchase order line item is available, creates
the assets for a receiving slip line when the slip line
assets are received.

Handle roll
up states
and assets
removal

Purchase order line
items

[proc_rec_slip_item]

[proc_po_item]

Manages purchase order line items if they are
canceled or received. If a purchase order line is
canceled, this business rule deletes any pre-created
assets.
This business rule also checks the status of other
purchase order lines that share the same purchase
order and, if necessary, updates the status of the
purchase order. For example, when the last purchase
order line is received, the status of the purchase order
changes to Received.

Redirect
Transfer Order Line
TOL to
existing TO- [alm_transfer_order_line]
Procurement

Attaches a transfer order line to an existing transfer
order if the transfer order is in the Draft stage and has
the same From stockroom and To stockroom values
as the transfer order line.

Shipping
Cost
Changes

Purchase Order

Recalculates the total cost of the purchase order if the
shipping rate changes.

State
Change

Transfer Order Line

State
Change

Purchase order line
items

[proc_po]

Marks the requested item as Received if the state
of the associated transfer order line changes to
[alm_transfer_order_line] Received.

[proc_po_item]
State
Change PO

Purchase Order

Total Cost

Purchase order line
items

[proc_po]

[proc_po_item]

Sets the time at which the purchase order line item
is ordered and updates the original requested item
when the purchase order line item is received.
Changes the purchase order line item status when the
status of the associated purchase order changes.
Calculates the total order cost based on the cost of
individual items and the quantity ordered. When you
receive a purchase order line item, this business rule
also takes the following steps.
• Populates the List price field with the value from the
Cost field unless you enter a different value.
• Calculates the Total list price field value by
multiplying the List price and Ordered quantity
values.

Update
expected
delivery
date for PO

Purchase order line
items

Update
expected

Purchase Order

[proc_po_item]

Sets the Expected delivery date for purchase orders
to the latest purchase order line Expected delivery
date.
Sets the Expected delivery date of associated
purchase order lines to the purchase order's

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
Business rule Table

Description

delivery
date for
POLs

Expected delivery date if at least one of the following
conditions is true.

[proc_po]

• The purchase order line has no expected delivery
date.
• The purchase order line's expected delivery date is
later than the purchase order's expected delivery
date.
• The purchase order line's expected delivery date is
the same as the purchase order's previous delivery
date.

Update
Ordered
Date

Purchase Order
[proc_po]

Sets the Ordered date field to the date and time
at which the status of the purchase order is set to
Ordered.

Update PO

Purchase order line
items

Updates the purchase order if the cost of any
purchase order line item changes.

[proc_po_item]
Update
Purchase
Order Line

Receiving Slip Line

Update
Request
Item CI

Hardware

[proc_rec_slip_item]

[alm_hardware]

Updates the Quantity received field on the
associated purchase order line item when a receiving
slip item is received.
Sets the Configuration item field on the catalog task
and requested item to the related hardware CI created
during the procurement process.

Related topics
Business rules
Client scripts installed with Procurement
Procurement plugin adds the following client scripts.

Client
script

Hide
request
item if
request is
not empty

Table

Description

Catalog Task

Displays the task's Request item and the request item's
Requested for value if the task is associated with a
requested item and not directly with a request. Otherwise,
if the task is associated with a request, the client script
displays the Request and the request's Requested for value.

[sc_task]

Purchase Receiving Slip Line Changes the Purchase Order Line field on the Receiving
Order Line
Slip Line form to mandatory if the associated receiving slip
Mandatory [proc_rec_slip_item] has a listed purchase order.
Script includes installed with Procurement
Procurement plugin adds the following script include.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
Script include

Description

ProcurementUtils

Provides utilities for Procurement.

Tables installed with Procurement
Procurement plugin adds the following tables.

Table

Description

Purchase Order

Stores information about items ordered, cost of items ordered, and users
that require the items for orders placed with a vendor.

[proc_po]

Note: The asset, procurement_user, inventory_admin, or
contract_manager role can only access the reports. You
must activate the Hardware Asset Management Professional
(com.sn_hamp) plugin for the contract_manager and
inventory_admin role.
Purchase order line Stores information about items and quantity ordered on purchases
items
orders.
[proc_po_item]

Note: The asset, procurement_user, inventory_admin, or
contract_manager role can only access the reports. You
must activate the Hardware Asset Management Professional
(com.sn_hamp) plugin for the contract_manager and
inventory_admin roles.

Receiving Slip
[proc_rec_slip]

Stores receiving information for items ordered with a purchase order. Can
reference multiple receiving slip lines.

Receiving Slip Line

Stores receiving information for items ordered on a specific purchase
order line, such as the items ordered, quantity ordered, and who ordered
[proc_rec_slip_item] them.
User roles installed with Procurement
Procurement plugin adds the following user roles.

Role

Contains roles

procurement_admin procurement_user

Description

Can create purchase orders without a request.
Can view requests and requested items. Can view
transfer orders. Can create a purchase order or
transfer order when sourcing items for a request.
Can view the vendor catalog.
Can refresh, add, delete, and rearrange gauges in
the Procurement Overview module.

procurement_user

financial_mgmt_user, Can create purchase orders without a request.
model_manager
Can view requests and requested items. Can
view transfer orders. Can create a purchase
order or transfer order when sourcing items for a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
Role

Contains roles

Description

request. Can view the vendor catalog. Can view
and refresh gauges in the Procurement Overview
module.

Sourcing items in a service catalog request
A service catalog request can contain multiple items that must be sourced.
Methods of sourcing requested items

Note: Only items with an assigned model can be sourced. You can’t source bundles.
Sourcing requested items from local stockrooms
You can use the assets available in the requester’s local stockroom to fulfill a service catalog
request. The assets that are in stock are reserved and a fulfillment task is created to source and
fulfill the request.

Sourcing requested items from other stockrooms
When the requested items aren’t in stock, you can create a purchase order to deliver the items
from other source stockrooms to your local stockroom. You can request multiple items in a
purchase order.
After creating a purchase order, you can create hardware assets and reserve it for the requester
either before or after you receive the requested items. You can’t create or assign software
licenses to the requester before you receive the software licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
Sourcing requested hardware items
You can source requested hardware items by creating a transfer order. You can transfer hardware
assets from a source stockroom to multiple destination stockrooms.
When a source stockroom doesn’t have enough items in stock, you can specify multiple source
stockrooms in the transfer order so that the hardware items can be transferred to the destination
stockrooms.

Important: If the Field Service Management application is also activated on your
ServiceNow instance, then a workflow in this application processes the transfer orders. For
more information, see Move an asset through the transfer process .

Sourcing requested software licenses
To source a requested software license, you must assign the rights of the software license to a
user or a device so that they’re authorized to use the software.
Related topics
Manage transfer orders
Track a request from the service catalog
Models
Bundled models
Source requests from local stockrooms
Create a purchase order from a request
You can create a purchase order directly from a request. This approach enables procurement
managers to obtain items and fulfill requests from the Service Catalog. You can create multiple
purchase orders from a request.

Before you begin

Role required: procurement_admin or procurement_user

About this task

If you don't have the Sourcing and Procurement Operations (SPO) application, you can create a
purchase order to obtain items and fulfill requests from the Service Catalog.
If you have the Sourcing and Procurement Operations (SPO) application along with required
plugins installed, and the necessary role assigned, you can create a purchase order by
accessing the Shopping Hub catalog items.
• Required plugins:
◦ Asset Management Integration for Sourcing and Procurement Operations
(com.snc.sn_spend_asset)
◦ Sourcing and Purchasing Automation (com.snc.sn_pr)
◦ Shopping Hub (com.snc.uib.sn_spend_uib)
• Required roles: The procurement manager has the asset manager role
(sn_spend_asset.spo_shopper) and other roles depending on the IT Asset Management
applications.
For more information about the Asset Management Integration for Sourcing and Procurement
Operations (com.snc.sn_spend_asset) plugin, see Sourcing and Procurement Operations
integration with IT Asset Management . For more information about Asset Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
Integration for Sourcing and Procurement Operations better together feature, see Enhancing
the asset procurement experience using IT Asset Management (ITAM) and Sourcing and
Procurement Operations (SPO) .

Procedure
1. Navigate to All > Procurement > Requests > Requests.
2. Select the Number of a request that has been approved but not sourced.
Look in the Request State and Sourced columns.
3. In the Catalog Tasks related list, select a Source Request Items number.
4. Select Source Request.
The Source Request screen is displayed with a list of all the requested items.
5. Select Purchase in the requested item section.

Important: If you're using the Sourcing and Procurement Operations (SPO)

application, when you select Purchase, a validation check runs to verify that the following
conditions are met:
◦ Required plugins are installed to enable the procurement manager to work on assigned
requests by using the SPO's Shopping Hub workflows.
◦ The procurement manager has the correct role.
After successful validation, you're directed to a new Source Request page. The SPO's
Shopping Hub workflow guides you through the steps to complete the checkout of
the requested items, and you don't need to follow steps 6 through 11 on this page for
purchase order creation. Depending on whether the requested items have contractual
pricing or not, a purchasing or sourcing flow is triggered, and you need to provide the
details for completing the order. For more information about creating sourcing request or
purchase requisition, see Create Sourcing Request or Purchase Requisition in SPO via
ITAM Workspace .
6. In the Vendor list, select the vendor from which the requested item or items should be
delivered.
7. Verify if the Out of Stock field is set to false.
If the vendor doesn't have stock, the field value is true.
8. In the Quantity field, specify the quantity you want to order.
9. In the Destination Stockroom list, select the destination to which the requested item or items
should be delivered.
10. Optional: Select the Consolidate PO check box to combine the listed items with existing
purchase orders.
(Optional) When you check Consolidate Purchase Orders, all items sourced from the same
vendor on the same request are placed on the same purchase order. When you select a
vendor, the system automatically searches for purchase orders that have been created for the
same request, have the same Vendor selected, and have the Requested status. If the system
finds a match, all items are placed on the same purchase order and can be ordered together. If
the system doesn’t find a match, a new purchase order is created.
For example, if you’re purchasing 25 phones from Apple and an open purchase order exists
for Apple, the 25 phones are added to the open purchase order. If there are no open purchase
orders for the selected vendors, new purchase orders are created. Items ordered from the
same vendor are grouped. Different items are shown on separate lines on the purchase order.
11. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
Result
• A purchase order is created.
• On the request, the Sourced check box is selected
Create a transfer order from a request
You can create a transfer order directly from a request to source hardware items and
consumables from stockrooms.

Before you begin

Role required: procurement_admin or procurement_user
Important: If the Field Service Management application is also activated on your
ServiceNow instance, then a workflow in this application processes the transfer orders. For
more information, see Move an asset through the transfer process .

Procedure
1. View procurement requests.
UI

Action

Core UI

Navigate to All > Procurement > Requests >
Requests.

Hardware Asset Workspace

a. Navigate to All > Hardware Asset Work­
space > Asset operations.
b. In the Procurement list, select Requests.

2. Select a request that has been approved but not sourced.
Check the Request State and Sourced columns.
3. In the Catalog Tasks related list, select a sourcing task.
4. Select Source Request.
The Source Request or Sourcing page appears with a list of all the requested items.
5. Create a transfer order.
UI

Action

Core UI

Select Add Transfer Order.

Hardware Asset Workspace

Select Transfer.

6. Optional: On the Sourcing page of the Hardware Asset Workspace, select the Source through
distribution channel check box to source the assets from the inbound distribution channels
that support the destination stockrooms.

Note: The Source through distribution channel check box that enables you to source
through a distribution channel for Transfer orders appears only in the Hardware Asset
Workspace. Your preference of selecting or clearing this check box is saved and is shown
when you open the Sourcing page again.
You can associate the location of the requester as a service location with multiple stockrooms
for better location coverage. Also, these stockrooms can be associated with multiple inbound
stockrooms or distribution channels for optimized transfer of assets between the stockrooms.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
Distribution channels enable you to source the assets from the stockrooms that you prefer for
sourcing based on the rank that you provide to the stockrooms.
For more information, see Associate a stockroom with service locations
into a distribution channel .

and Link stockrooms

7. In the Source stockroom list, select a stockroom from which the hardware item should be
sourced.

Note: In the Hardware Asset Workspace, the Source stockroom list shows only the
inbound distribution channels of the stockrooms that support the location of the
requester under the following conditions:
a. When you’ve selected the Source through distribution channel option.
b. When the inbound distribution channels are added to the stockrooms that support the
location of the requester.
8. In the Transfer Quantity field, specify the quantity you want to transfer.
The In stock column, displays the total stock available with the selected source stockroom.
9. In the Destination stockroom list, select the destination to which the requested item or items
should be delivered.

Note: In the Hardware Asset Workspace, the Destination stockroom list shows only the
stockroom that supports the location of the requester under the following conditions:
a. When you’ve selected the Source through distribution channel option.
b. When the location of the requester is added as a service location of one or more
stockrooms.
10. Select Submit.
A transfer order is created to move the item or items from the Source stockroom location to
the Destination stockroom location. When you view the request, the Sourced check box is
selected.
Related topics
Manage transfer orders
Source requests from local stockrooms
Get visibility into local stockrooms at the time of sourcing requests.

Before you begin

You can source a request by using assets from the requester's local stockroom.
• If stock is available in the local stockroom, the asset is reserved and follows the fulfillment task
to source the request.
• If the requester's location is supported by another stockroom as part of service locations, the
asset can also be sourced from this stockroom.
• If stock in the local stockroom is unavailable, you can get the assets transferred from other
stockrooms or create a purchase order.

The Workflow Studio application is used to create the Asset Local Stock subflow to take you
through the process of using assets from your local stockroom to source your request. As the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
subflow takes you through the various stages, the asset details are automatically updated. You
can open the Asset Local Stock subflow to view the status of the stages in the subflow.

Note: Use decision tables to customize the Asset Local Stock subflow. For more details,
see Hardware Asset Management flow customization

.

Role required:
• procurement_user or procurement_admin
• inventory_user or inventory_admin

Procedure
1. Log in with credentials for the role of procurement_user or procurement_admin.
2. Navigate to All > Service Catalog and select Hardware.
3. Select the hardware item that you want to source and select Order Now
Your request is submitted and the Order Status form layout appears.
4. Select the request number.
5. On the Request form layout, select the Catalog Tasks related list to view the sourcing task for
the request.
6. Select the sourcing task and select Source Request.

The Sourcing form shows the following hardware sourcing request details:
◦ Total requested- Quantity of the hardware requested.
◦ Requested for- Name of the person for whom the hardware is requested.
◦ Location- Place where the hardware should be deployed.
Trouble?
If the Source Request functionality or button isn't functioning as expected, confirm that the
catalog task has both the Parent and Request fields populated. For more information, see
View and edit a catalog task. The Request ID, which is required for the Source Request page
to function correctly is derived from the Parent field of the catalog task. If the Parent field is
missing and the catalog task was created using Flow Designer, refer to the relevant Set Parent
field when creating Catalog Task from Flow Designer
for further details.
7. Select Consume to source the available stock from the local stockroom and from the
stockroom that supports your location.
If stock isn’t available in your local stockroom and the stockroom that supports your
location, select Transfer or Purchase to source the request via a transfer order or
a purchase order. If you create a transfer order and want the local stockroom to
be included in the list of stockrooms to choose from, the admin must turn on the
glide.asset.procurement.sourcing.local_stock_transfer property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
8. Select Source Stockroom to select the stockroom from where you want to source the assets.
If your location is associated with a stockroom as a service location, you can source from
this stockroom along with the local stockroom. Service location capabilities enable a single
stockroom to support multiple locations and consume the local stock efficiently. For more
information on Service locations, see Associate a stockroom with service locations .
If the Asset pick task is enabled for the source stockroom, then this task is added to the
Hardware Asset Refresh Request and Hardware Asset Request flows.
9. In the Consume Quantity field, specify the quantity of assets that you want to consume from
the stockroom that you selected.
10. Select Reserved for to specify a user for whom you want to source the request.
11. To source from multiple stockrooms, repeat steps 7–9.
12. Select Submit.
A consume asset task is created. Assets are selected from the stockrooms and are reserved
for the user who you selected in the Reserved for list. The state of the selected asset moves to
in stock and the substate to reserved.
13. Log in with credentials for the role of inventory_admin or inventory_user.
14. Select the Requested Items related list and then select the request item.
15. Select the Asset Tasks related list and then select a task to select and assign an asset to the
sourcing task.
The Consume Asset Task form layout appears in the Asset Tasks module. Based on the type
of asset (hardware or consumable) that is being sourced, fields in the form layout differ. The
Assets Tasks module lists all the asset task records.
16. Change that you need and then close the task when you’re done.
◦ For hardware assets: Assets are auto-assigned to sourcing tasks but you can change an
asset by selecting the Asset list. After you’re done, select Close Task.
◦ For consumable assets: The model for the asset appears on the form layout instead of the
asset. Select Close Task or Consume and Close. If you select Consume and Close, the
reserved asset is automatically picked up and assigned to the user. If you select Close Task,
you must go to the Consumable form layout and assign an asset to the user manually.
Add an assignment from a request
You can add assignments directly from a request to source rights from software licenses.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to All > Procurement > Requests > Requests.
2. Select the request that has been approved but not sourced.
Check the Request State and Sourced columns.
3. In the Catalog Tasks related list, select a number.
4. Select Source Request.
5. Select Add assignments in the requested software item section.
6. In the License Name list, select a license from which the software rights should be sourced.
The Available Rights column, displays the total rights available with the selected license.
7. In the Rights field, specify the rights you want to assign.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
8. From the Type list, select whether to assign the rights to a user or device.
9. In the Assigned\Allocated list, select the user or device to whom the requested item should
be assigned.
10. Select Submit.
An assignment is created to assign rights from the License Name location to the Assigned
\Allocated user or device. When you view the request, the Sourced check box is selected.
11. Run the conuter to make sure that you are in compliance.
You are prompted to run the software counter if the Software Asset Management is active.
12. Select OK.
For auditing, the Assigned Licences related list in the Request form will provide the details of
all the assignments done as part of this request.

Procurement purchase order management for assets
Accurate purchase order information is important for invoice tracking, receiving, and reporting in
the ServiceNow platform.
The Procurement application enables users with an appropriate procurement role to manage
purchase order information for assets. It also provides direct access to service catalog requests.
You can create purchase orders and transfer orders directly from requests.
Before using the Procurement application, create assignment groups for catalog tasks.
Assignment groups are sets of users, filtered by location, who can perform catalog tasks.
Related topics
Manage transfer orders
Create a group
Track a request from the service catalog
The Procurement application lets you track a request that was ordered from the service catalog.

Before you begin

Role required: procurement_admin or procurement_user

About this task

When a user places an order from the service catalog, a request record is created to track the
order. Each ordered item becomes a requested item that is listed on the request record. For
example, a single request for one laptop, two monitors, and one keyboard creates the following
records.
Request REQ0000001: 4 items
• Requested Item RITM0000001: 1 laptop
• Requested Item RITM0000002: 2 monitors
• Requested Item RITM0000003: 1 keyboard

Procedure
1. Navigate to All > Procurement > Requests > Requests.
2. Click a request Number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
The Requested Items related list displays the items that were ordered. You can view the
requested item, or view associated Purchase Orders, Transfer Orders, and Assignments on
other related lists. A catalog task is automatically generated for each requested item to identify
the source of the item, whether it must be purchased or transferred from a stockroom.
Cancel a request from the service catalog
You can cancel a request from the service catalog if, for example, the item is no longer needed or
the request was not approved.

Before you begin

Role required: catalog_admin, procurement_admin, or procurement_user

About this task

When a service catalog request is canceled, the following actions occur automatically.
• Associated purchase orders that have not been received are canceled.
• All procurement tasks are canceled.
• Associated transfer orders are canceled, if all transfer order lines related to the transfer order
are also associated with the service catalog request and the transfer order lines have all been
canceled. If the transfer order contains transfer order lines that are not related to the service
catalog request and those lines have not been canceled, the transfer order is not canceled.
Associated transfer order lines that are in the In Transit or Delivered stages are not canceled.

Procedure
1. Navigate to All > Procurement > Requests > Requests.
2. Click a request Number.
3. Click Cancel Request.
View and edit a catalog task
Catalog tasks are used to source items and fulfill requests. You can view and edit catalog tasks
from a request.

Before you begin

Role required: procurement_admin or procurement_user

About this task

If a request requires approval, a catalog task is created automatically when the request is
approved. If a request doesn’t require approval, a catalog task is created automatically when the
request is created.

Note: If a request contains one requested item and the item has no model specified, a
catalog task isn’t created automatically. If a request includes multiple items and only some
have a specified model, catalog tasks are automatically created, but only for those items
with a model.

Procedure
1. Navigate to All > Procurement > Requests > Tasks.
2. Open a catalog task.
3. Edit the fields as necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Catalog task fields
Field

Description

Number

The unique number identifying the catalog task.

Request

The number of the request to which the catalog task is associated. The
information in this field is derived from the Number field on the Request form.

Request item The number of the requested item to which the catalog task is associated.
The information in this field is derived from the Number field on the
Requested Item form.
Requested
for

The name of the person for whom the associated item was requested. The
information in this field is derived from the Request or Request item field.

Due date

The date by which the catalog task should be completed.

Configuration The configuration item associated with the Request Item.
item
Approval

The status of catalog task approval: Not Yet Requested, Requested,
Approved, or Rejected.

State

The current state of the catalog task: Pending, Open, Work in Progress,
Closed Complete, Closed Incomplete, or Closed Skipped.

Assignment
group

The group from which an individual is selected to complete the catalog task.

Assigned to

The individual assigned to complete the catalog task is selected from the
Assignment group.

Work notes
list

The list of users to receive email notifications when the work notes on the
catalog task are updated.

Short
description

A brief description of the catalog task.

Description

A detailed description of the catalog task.

Work notes

Information about how the catalog task is resolved.

Parent

The parent record associated with the task.

Additional
comments

Additional information about the catalog task.

4. Select Update.
Related topics
Models
Create a purchase order
You can create a purchase order. Purchase orders specify assets to order from a single vendor.

Before you begin

Role required: procurement_admin or procurement_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
About this task

For example, an organization can create a purchase order to buy 20 laptop computers or 10
servers. Information on a purchase order enables physical and financial tracking of the assets
that were ordered.
You can also use a transfer order if an asset is already owned by an organization. A transfer
order is used to internally transfer assets from one stockroom to another instead of purchasing
the assets. For example, a company stockroom in New York has five laptops that are needed
in Boston. You create a transfer order to move the laptops from the New York stockroom to the
Boston stockroom.
After you create a purchase order, the Receiving Slip related list is available on the Purchase
Order form. A receiving slip is created manually or automatically when the item is received.
The Receiving Slip related list shows all receiving slips related to the purchase order. After a
receiving slip is added to a purchase order, all fields on the purchase order record become readonly.

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Click New.
3. Complete the form.
Purchase order fields
Field

Description

Number

The unique number identifying the purchase order.

Due by

The date by which the purchase order Total cost must be paid.

Vendor

The supplier to which the purchase order was issued.

Ship to

The stockroom to which the items on the purchase order should be shipped.

Note: This field is required but doesn't affect creating requisitions for
software on Coupa.
PO date

The date on which the purchase order was created.

Status

The status of the purchase order: Canceled, Ordered, Received, Requested, or
Suspended.

Assigned to The user to whom the purchase order is assigned.
Bill to

The location responsible for paying the purchase order Total cost.

Short
A brief description of the purchase order.
description
General section
Shipping

The delivery method to be used when shipping the items on the purchase
order.

Terms

The purchase order payment terms: Credit, Net 30 days, or Net 90 days.

Ship rate

The amount that must be paid for the delivery method specified in the Shipping
field.

Total cost

The sum of all item costs on the purchase order and the shipping costs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
Field

Description

Description A full description of the purchase order contents.
Details section
Initial
request

The record number of the request that requires the items on the purchase
order.

Requested
by

The user requesting the items on the purchase order.

Note:
The email ID or email address of the user requesting the items on the
purchase order must be the same on both Coupa and ServiceNow
Procurement application.

Requested

The date the user in the Requested by field requested the items on the
purchase order.

Ordered

The date and time of clicking the Order button on the Purchase Order form.

Expected
delivery

The date the items associated with the purchase order are expected to arrive in
the stockroom identified in the Ship to field. This field can’t be edited when the
purchase order has a Status of Received or Canceled. (For more information
about this field, seePurchase order expected delivery date .)

Received

The date and time at which the purchase order status changed to Received.

Contract

The record number of the contract with the vendor from which the items on the
purchase order are ordered.

Department The department responsible for paying for the purchase order.
Budget
number

The budget number related with the purchase order.

Vendor
account

The vendor account related with the purchase order.

4. Click Submit.

What to do next

Add purchase order line items to specify what you are ordering from this vendor.
Related topics
Manage transfer orders
Create a purchase order line item
After you save a new purchase order, you create purchase order line item records to specify the
individual items to order.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Open a purchase order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
3. In the Purchase order line items related list, click New.
4. Complete the form.
Purchase order line item fields
Field

Description

Number

The unique number identifying the purchase order line item.

Vendor

The supplier from which this product should be ordered.

Product
Model

The model of the purchase order line item.

Product
Catalog

The product catalog category to which the product model is assigned. For
example, Hardware, Software, or Supplies.

Part
number

The identification number assigned to the product model.

Metric
group

Each metric group has a set of license metrics that are specific to the software
publisher.

Note: If you select only a software model in the Product model field, this
field gets displayed on the form.
License
metric

License metric for the license group that the software license is counted against
when reconciliation is run. The options for license metric change based on the
Metric group field.

Note:
◦ If you select only a software model in the Product model field, this field
gets displayed on the form.
◦ If you choose a license metric that isn't available on Coupa, the license
metric value is defaulted as each.
Request
line

The identification number of the requested item record associated with this
purchase order line item.

Ordered

The date and time at which this purchase order line item was ordered.

Expected
delivery

The date the purchase order line item is expected to arrive in the stockroom
identified in the Ship to field on the purchase order record. This field is
automatically filled with the value in the Expected delivery field on the
purchase order record. This field can be edited when the purchase order line
item has a Status of Requested.
For more information about this field, see Purchase order expected delivery
date.

Received

The date and time at which the purchase order line item status was changed to
Received.

Purchase
order

The purchase order record number associated with this purchase order line
item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
Field

Description

Rights per
license
pack

Rights associated with each pack that is purchased for Microsoft Per Core or
Microsoft Per Core with CAL licenses.

Number of
packs

Number of packs for Microsoft Per Core or Microsoft Per Core with CAL licenses.

Status

The current status of the purchase order line item: Canceled, Ordered, Pending
Delivery, Received, or Requested.

Ordered
quantity

The number of product models that were ordered.

Received
quantity

The number of product models that were shipped and received. The vendor
may have sent multiple shipments.
The received quantity can be larger or smaller than the Ordered quantity. For
example, you may have ordered five laptops but the vendor sent six.

Remaining
quantity

The number of product models that still need to be received to fulfill the
Ordered quantity.

List price

The price at which the item retails, not including discounts. If the system creates
the purchase order from the service catalog ordering process, the purchase
order line item inherits the list price from the associated vendor catalog item.
If the vendor catalog item does not have a list price value and you have not
entered a value, this field is automatically populated with the value from the
Cost field.

Cost

The cost of a single product model, including discounts. If the system creates
the purchase order from the service catalog ordering process, the purchase
order line item inherits the cost from the associated vendor catalog item Vendor
Price.

Total cost

The cost of a single product model multiplied by the value specified in Quantity.

Noncatalog
request

Select this check box to create a requisition for an item that is not present in the
product catalog of the organization.

Note:
◦ This field isn't visible on the form if you haven't published a procurement
integration profile. For more information, see Integrating with external
procurement applications.
◦ If you select only a software model in the Product model field, this check
box gets displayed on the form.
◦ If you select an item in the Product Catalog field, the check box gets
automatically unchecked.
◦ If you haven't selected any item in the Product Catalog field, this check
box is automatically checked, which indicates you are submitting a noncatalog request.

Stock
Order

Read only and selected if the related request is using the bulk stock order
workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
Field

Description

Note: Appears for all purchase order line items when the Hardware Asset
Management application is installed from ServiceNow Store.
Short
A few words or short phrase describing the purchase order line item.
description
5. Click Submit.
The purchase order reopens with the line item listed. The purchase order and line item are in
Requesteds status.
6. Optional: Continue adding purchase order line items for this vendor, as needed.
7. After you initiate the order with the vendor and are ready to show that the order was placed,
click Order.
The status of the purchase order and line items change to Ordered.
Related topics
Vendor catalog items
Purchase order status
Purchase orders follow a specific life cycle. The Status field on the purchase order record is
always read-only.
Purchase order status

Status life cycle
Status

Description

Requested The status is Requested when you create a purchase order.
Ordered

The status changes to Ordered when you add purchase order line items, and click
Order.

Pending
Delivery

When you create assets before receiving them as a purchase order line item, the
status of purchase orders and purchase order line items changes to Pending
Delivery status.

Received

When ordered assets arrive in the specified stockroom and you click Receive, the
status of purchase orders and purchase order line items changes to Received.

Canceled

You can cancel a purchase order if its status is Requested, Ordered, or Pending
Delivery. For more information, see Cancel a purchase order.

Purchase order expected delivery date
The purchase order record and the purchase order line item record both contain the Expected
delivery date field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
The Expected delivery field can be edited on both records. Editing the field on one record can
change the field on the other record.
• If you add an expected delivery date to the purchase order and the expected delivery date
field on the purchase order line item is blank, the date on the purchase order is added
automatically to the purchase order line item.
• If you add an expected delivery date on the purchase order line item and the expected
delivery date field on the purchase order is blank, the date on the purchase order line item is
added automatically to the purchase order.
• If the purchase order and the purchase order line item have the same expected delivery date
and you change the date on the purchase order, the date is changed automatically on the
purchase order line item.
• If you change the date on the purchase order line item to a date that is later than the one
specified on the purchase order, the date on the purchase order is changed to the new date.
The expected delivery date of a purchase order line item cannot be later than the expected
delivery date on the associated purchase order.
• If you change the date on the purchase order line item to a date that is earlier than the date
specified on the purchase order, the date on the purchase order remains the same.
Cancel a purchase order
You can cancel purchase orders with a status of Requested, Ordered, or Pending Delivery.

Before you begin

Role required: procurement_admin or procurement_user

About this task

Purchase order line items can also be canceled from a purchase order.

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Open a purchase order to cancel.
3. Click Cancel.
All associated purchase order line items that have not been received are canceled. Any assets
created for the purchase order are deleted.
Cancel a purchase order line item
You can cancel a purchase order line items with a status of Requested, Ordered, or Pending
Delivery.

Before you begin

Role required: procurement_admin or procurement_user

About this task

Keep the following in mind when you cancel a purchase order line item.
• When a purchase order line item is canceled, if all other line items are also canceled, the
purchase order is canceled.
• After a purchase order line item is canceled, it can be reordered if the associated purchase
order has not been canceled or received.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
• If you cancel a purchase order line item for which assets were created, the assets are deleted
from the system and removed from the purchase order.
• If you reorder the same purchase order line item, the assets are recreated for that line if the
line has a status of Pending Delivery.

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Open a purchase order.
3. In the Purchase order line items related list, select a line item to cancel.
4. Click Cancel.
Reorder a purchase order
You can reorder a purchase order that was canceled.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Open a purchase order with a status of Canceled.
3. Click Order.
The status changes to Ordered for the purchase order and all associated purchase order line
items.
Reorder a purchase order line item
You can reorder a purchase order line item that was canceled.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Open a purchase order.
3. In the Purchase order line items related list, select a line item with a status of Canceled.
4. Click Order.
The purchase order line item Status field changes based on the Status field of the associated
purchase order. For example, if the purchase order has a status of Pending Delivery, the
purchase order line item status changes to Pending Delivery and the assets for the purchase
order line item are created automatically.
Create an asset and reserve it for the requester
Create the asset before they're delivered so that you can create the asset record with an asset
tag and serial number early in the process and reserve the asset for the user who requested it.
The receiver can only select the assets to be received as assets are pre-created.

Before you begin

Role required: procurement_admin or procurement_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
About this task

Some requests must be approved before items on the request can be sourced. In the base
system, requests over $1,000 require approval. To change the $1,000 approval threshold and
other workflow attributes, edit the Service Catalog Request workflow.
When the asset state is In stock, the Reserved for field is maintained as the asset is received
and placed in a stockroom. When the asset state changes to In use, the Reserved for field is
relabeled Assigned to. If there is a name in the Reserved for field, the name is retained when
the field is relabeled. A user with the asset role can change the name in the Assigned to field.
Changing the name is helpful, for example, if an IT technician orders 10 laptops and must assign
them to individual users.

Note: If assets are not created prior to delivery, they are automatically created from line
items when purchase orders are received. Also you can enter the asset details and receive
them when the purchase orders are received.

Procedure
1. Navigate to All > Procurement > Requests > Tasks.
2. Open a task with a State of Open and a Short description of Source Request Items.
3. Click Source Request.
◦ If the request is already fulfilled or the items in the request are not sourceable, the Source
Request button is hidden.
◦ If the requested item does not have an assigned model, the item is not listed on the Source
the Request dialog box.
◦ Any items on the purchase order that have a remaining quantity of 0 are not listed on the
Source the Request dialog box.
4. Select a Destination Stockroom.
5. Select the Create PO option for one or more listed items.
6. For each item requiring a purchase order, select a Vendor.
7. Click OK.
8. Navigate to Procurement > Orders > Purchase Orders.
9. Open the purchase order you just created.
If you created a purchase order for more than one item, multiple purchase orders may have
been created.
10. Select Order.
After the items are ordered, no additional purchase order line items can be added to the
purchase order.
The status of all purchase order line items changes to Ordered.
11. Click the Create hardware assets prior to delivery related link to automatically create
hardware assets for all purchase order line items.
Hardware assets are listed in the Assets related list. Click an asset in the list to view the asset
record. Except for consumables, the Reserved for field contains the name of the user who
made the original request.
You can also create assets for individual purchase order line items. On a purchase order, go to
the Purchase order line items related list and click a specific purchase order line item number.
Then, click the Create hardware assets prior to delivery related link. Only the hardware
assets included on the purchase order line item are created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
Related topics

Set asset states and substates
Models

Receive assets
Assets can be received and added to the system when they are delivered to a stockroom.
Users with an appropriate procurement role can receive assets. If one purchase order contains
multiple purchase order lines, the lines can be received at different times. This is useful if items
arrive at the stockroom in different shipments. The purchase order status does not change to
Received until all purchase order lines are received.
As an alternative to receiving assets when they arrive, you can create assets before they arrive
and reserve them for the requester.
Receive an asset
When assets are received and delivered to a stockroom, they’re added to the system.

Before you begin

Role required: procurement_admin or procurement_user

About this task

When you receive assets:
• If you haven’t pre-created hardware assets, you can enter asset details and reserve them for
users.
• You can over receive an order wherein, the received quantity can be higher than the ordered
quantity.
• If you have ordered multiple items with different receiving stockrooms, you can receive them at
the same time.

Procedure
1. View purchase orders.
UI

Action

Core UI

Navigate to All > Procurement > Orders > Pur­
chase Orders.

Hardware Asset Workspace

a. Navigate to Workspaces > Hardware As­
set Workspace > Procurement.
b. Select the Purchase orders tab.

Enterprise Asset Workspace

a. Navigate to Workspaces > Enterprise As­
set Workspace > Procurement.
b. Select the Purchase orders tab.

OT Asset Workspace

a. Navigate to Workspaces > OT Asset Work­
space > Procurement.
b. Select the Purchase orders tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
2. Select a purchase order with a Status of Ordered or Pending Delivery.
3. Select Receive.
The Receive Purchase Order screen appears with the list of the products ordered.
4. Select the Received check box for the line items that you’re receiving.
5. To receive software assets:
a. Edit the Receiving Stockroom if the items arrived at a different stockroom than the one
specified on the purchase order.
b. Edit the Receiving Quantity if the number of items delivered doesn't match the number
ordered.
c. Edit the Unit Cost if the price changed between the time the item was ordered and the time it
arrived at the stockroom.
Enter a number. The number can include decimals.
d. Select Capture Asset tags to enter asset details.
You can't enter details for assets more than the received rights.
e. In the Capture Asset Tag dialog box, select Insert a new row.
f. Enter the asset tag, serial number, rights, and License key.
6. To receive hardware, consumables, and enterprise assets:
a. Edit the Receiving Stockroom if the items arrived at a different stockroom than the one
specified on the purchase order.

Note: The asset bundle when received creates the asset bundle with the status as
Bundle. You must add the individual assets under the asset bundle.

b. Edit the Receiving Quantity if the number of items delivered doesn’t match the number
ordered.
c. Select the Reserve toggle button to reserve the item.
When a reserved item is received, the State and Substate fields on the corresponding asset
record are automatically set to In stock and Reserved, respectively. If the Reserve button
isn’t selected for an item, the State and Substate fields on the corresponding asset record
are set to In stock and Available.

Note: You can’t reserve consumables.
d. From the Reserved for list, select a user you want reserve the asset for.
If a name was specified in the Requested for field on the Purchase order line item form, the
name is added automatically but can be changed.
You can add multiple users in the Capture Asset tags dialog box.
e. Select Capture asset tags to enter asset details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
You can’t enter details for assets more than the received quantity. You can also reserve
assets for a user.

Note: If you’ve pre-created the assets, you must select the ones you want to receive.
The Capture asset tags dialog box appears with the following fields to be filled in:
▪ Asset Tag
▪ Serial number
▪ MAC address
▪ Reserved for
If you have activated the Enterprise Asset Management or OT Asset Management
application, then the MAC address field is also displayed.
f. In the Capture asset tags dialog box, select Insert a new row.
g. Enter the asset details that are required to proceed with receiving the assets.
If the assets that you’re receiving belong to model categories linked to a CI class with
identification rules defined for fields like the Asset tag, Serial number, or MAC address, you
should provide details for at least one of these fields. For example, if identification rules are
defined for the Serial number and MAC address, you should provide a value for either of
these fields to proceed. The Capture asset tags dialog box displays a message indicating
the specific field values you should provide.
The identification rules for a CI class are defined in the CMDB Identification and
Reconciliation engine (IRE). For more details, see Identification rules
and Create a CI
identification rule . These rules help to uniquely identify the asset through these required
fields and maintain accurate asset records.
h. From the Reserved for list, select the user for whom the item was ordered.
If a name was specified in the Requested for field on the Purchase order line item form, the
name is added automatically, but you can change it.
i. Edit the Unit Cost if the price changed between the time the item was ordered and the time it
arrived at the stockroom.
Enter a number. The number can include decimals.
7. Select Submit.
A confirmation message displays with the details of assets received.
8. Select OK.
A receiving slip is automatically created and can be viewed in the Receiving Slips related list. If
items on a purchase order are received at different times, a new receiving slip is created each
time any item on the purchase order is received. For example, if 30 laptop computers were
ordered and arrived in three separate shipments, three receiving slips are created.
Different assets are created for each hardware item. If it’s a software asset, one single asset
is created for each license if you don't split the rights. For consumables, if an asset exists, it’s
updated, or else, new assets are created.
Create a receiving slip
Receiving slips are created automatically during the process of receiving assets. You can also
create receiving slips manually.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
Before you begin

Role required: procurement_admin or procurement_user

About this task

After a receiving slip has been created for a purchase order, all fields on the purchase order
record are changed to read-only.

Procedure
1. Navigate to All > Procurement > Receiving > Receiving Slips.
2. Click New.
A Number is assigned automatically. The current date and time is added automatically to the
Received field.
3. Select a Purchase Order.
Only purchase orders with a status of Ordered, Pending Delivery, or Requested are listed in
the selection window. The Vendor column lists the vendor specified on the purchase order.
The Ship to column lists the destination stockroom specified on the purchase order.
4. Select a Receiving Stockroom.
5. Click Submit.

What to do next

Add a receiving slip line to the receiving slip to identify the items from the purchase order that
were received.
Create a receiving slip line
When assets arrive at a stockroom and you receive them, a receiving slip is created on the
purchase order. You create a receiving slip line to identify the specific assets and quantities that
were received.

Before you begin

Role required: procurement_admin or procurement_user

About this task

If the asset already exists, the asset record is updated when you save the receiving slip line. If
the asset does not already exist, a new hardware or software asset record is created. The Model
category and Configuration item fields are automatically filled in on the new asset record based
on information in the request, purchase order, or receiving slip. If Asset Tag and Serial Number
information exists, it is not overwritten.

Procedure
1. Navigate to All > Procurement > Receiving > Receiving Slips and open a receiving slip.
2. In the Receiving Slip Lines related list, select New.
The following fields are completed automatically.
◦ A Number is assigned.
◦ In Received, the current date and time are added.
◦ In Received by, the currently logged in user is added.
3. In Purchase Order Line, select the reference lookup icon and select a purchase order line.
The Purchase Order Line field is required if the parent receiving slip has an associated
purchase order. Only purchase order lines that are associated with the same purchase order
linked to the parent receiving slip are available for selection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
4. In Quantity, enter the number of items received.
For example, five items were ordered, but only two are being received.
5. Optional: Edit the Received by, Requested for, and Unit cost fields, as needed.
6. Select Submit.

Result

The Receiving stockroom field on the Receiving Slip record becomes read-only.
Consumable assets
A consumable asset is one that is purchased in quantity and distributed. It is assigned to the
consumable model category, and the asset record tracks the quantity that is available and total
cost. When consumable assets are received, they are merged into an existing consumable
record, if available.
For the records to merge, the consumable cannot be listed on an active transfer order and the
Model, Location, Model Category, Stockroom, Status, and Substatus fields on the asset record
must match.
If consumables are merged into an existing consumable record, the cost of the additional
consumables received is added to that of the existing consumables in the record. For example,
if 50 computer keyboards arrive and 20 keyboards of the same model exists in the receiving
stockroom, the two records are merged showing 70 keyboards in the stockroom with a combined
total cost.
If no matching consumable record exists in the receiving stockroom, a record is created. After the
consumables are received, the quantity is updated, but individual consumables are no longer
tracked within the Procurement application and are not displayed on receiving slip lines.

Note: The related list of a purchase order doesn't display consumable asset details. This
means that you can't track consumables through a purchase order.
For more details on creating consumable assets, see Create consumable assets

.

Integrating with external procurement applications
Manage an end-to-end procurement process by integrating external procurement applications
with Software Asset Management and create software requisitions directly on the external
procurement applications. Software Asset Management tracks these requisitions and
automatically generates entitlements or entitlement import errors after these requisitions are
received on the external procurement application.
Integrating Software Asset Management with external procurement applications help you to:
• Gain end-to-end visibility of the entire purchase request to entitlement creation.
• Automate the complete process of creating software requisitions to entitlement creation.
• Reduce errors in entitlement creation.

Before you begin
• Activate the Procurement plugin (com.snc.procurement). For more information, see Activate
Procurement.
• Install the Asset Management - Procurement Integration (app-itam-procurement-integration)
store application from ServiceNow Store. For more information, see Install Asset Management Procurement Integration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
Install Asset Management - Procurement Integration
You can install the Asset Management - Procurement Integration application (app-itamprocurement-integration) from the ServiceNow Store.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Asset Management - Procurement Integration
application listing in the
ServiceNow Store for information on dependencies, licensing or subscription requirements,
and release compatibility.
Role required: Now Support
After the Asset Management - Procurement Integration has been entitled, you can reach out to
Now Support
to install this application.

About this task

Scheduled jobs and tables are installed with Asset Management - Procurement Integration:
For more information, see Components installed with Asset Management - Procurement
Integration.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Asset Management - Procurement Integration application (app-itam-procurementintegration) using the filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In a list next to the Install button, you see the versions that are available to you.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Components installed with Asset Management - Procurement Integration
Several types of components are installed with activation of the Asset Management Procurement Integration application, such as tables and scheduled jobs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
Scheduled jobs installed
Scheduled job

Description

ITAM - Sync
<procurement_integration_profile_name>
purchase orders

Fetches the status of the already created
requisitions daily.
This scheduled job is automatically created when
you publish the integration profile.

Tables installed
Table

Description

Procurement Integration Profile

Includes the details of the third-party procurement
integrations that are connected to the Procurement
application in ServiceNow.

[itam_procurement_integration_profile]
Procurement Integration Jobs
[itam_procurement_integration_job]
Integration Scheduled Job Results
[itam_procurement_integration_job_log]

Includes the mapping information of a procurement
integration profile with its associated scheduled
jobs.
Includes the details of the failure of the scheduled
job execution.

Domain separation and Asset Management - Procurement Integration
Domain separation is supported for Asset Management - Procurement Integration. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.

Support level: Enhanced
• Includes Basic and Standard levels.
• Data-driven process enables service provider customers to modify business logic that
is based on defined use cases. These configurations are UI-based and fail-safe so that
configurations by one customer can’t affect another.
• Tenants of the instance must be able to configure minimum viable product (MVP) business
logic and data parameters for themselves. This logic and parameters would be expected for
the application's normal function.
Sample use case: Tenant-customers of a shared environment must be able to change the
impact, urgency, or priority matrix to set priority within their domain.
For more information on support levels, see Application support for domain separation

.

Asset Management - Procurement integration overview
Domain separation is present in all aspects of the Asset Management - Procurement Integration
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
How domain separation works in Asset Management - Procurement Integration
• You can create multiple procurement integration profiles in each domain. You must have only
one published and active profile in each domain, including the parent domain.
• For the Purchase Order to create a requisition in your external purchasing application, a
published procurement integration profile must exist in the domain of the purchase order.
• All Purchase Orders, Purchase Order Lines, Receiving Slips, Receiving Slip Lines, entitlements,
entitlement import errors, and expense line records that you created are stamped with the
respective domain of the purchase order.
The Procurement Integration Job [itam_procurement_integration_job] table isn't domain
separated.
However, each procurement integration job is associated with a procurement integration profile.
The job execution only synchronizes the updates from the external purchasing application to the
purchase orders that are stamped with the corresponding procurement integration profile.

Domain separated tables
• Procurement Integration Profile [itam_procurement_integration_profile]
• Procurement Integration Job Log [itam_procurement_integration_job_log]

Required plugins
• Domain separation extension (com.glide.domain.msp_extensions.installer)
• SAMP (com.sn_samp_master)
• Procurement (com.snc.procurement)
Other supported plugins
Service Catalog – Domain Separation (com.glideapp.servicecatalog.domain_separation)
Integrating with Coupa
Integrating Coupa with Software Asset Management helps you create software requisitions
directly on Coupa. Software Asset Management tracks these requisitions and automatically
generates entitlements or entitlement import errors after these requisitions are received on
Coupa.

Note: This integration doesn't pull requisitions created on Coupa to Software Asset
Management.

Before you begin
• Install the Asset Management - Procurement Integration (app-itam-procurement-integration)
store application from ServiceNow Store. For more information, see Install Asset Management Procurement Integration.
• You must have the Software Asset Management Enterprise license.
• Activate the Coupa spoke. For more information, see Coupa Spoke

.

• Activate the Procurement plugin (com.snc.procurement). For more information, see Activate
Procurement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
Synchronize reference data
Both ServiceNow Procurement and Coupa have theirs own set of tables and reference data
types. For a smooth and successful integration, you must synchronize the data you would refer.
For more information, see Reference data synchronization.

Warning: If you don't synchronize data, you might encounter a few issues while creating
a requisition on Coupa.
Create a Coupa integration profile
Create a Coupa integration profile to verify the status of the procurement-scheduled jobs,
entitlements, and entitlement import errors created through this profile.

Before you begin

Role required: sam_admin
Create an OAuth 2.0 connection with Coupa to get the Client ID and Client Secret. For more
information, see OAuth 2.0 Getting Started with Coupa API . Save the Client ID and Client Secret
in a secure location for later use.
You must set the following scopes while creating an OAuth 2.0 connection with Coupa.
• core.approval.configuration.read
• core.approval.read
• core.approval.write
• core.catalog.read
• core.common.read
• core.contract.read
• core.contract.write
• core.inventory.adjustment.read
• core.inventory.adjustment.write
• core.inventory.asn.read
• core.inventory.common.write
• core.inventory.consumption.read
• core.inventory.consumption.write
• core.inventory.receiving.read
• core.inventory.receiving.write
• core.inventory.return_to_supplier.read
• core.inventory.transfer.read
• core.inventory.transfer.write
• core.invoice.delete
• core.invoice.read
• core.invoice.write
• core.item.read
• core.item.write
• core.legal_entity.read
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
• core.purchase_order.read
• core.purchase_order.write
• core.requisition.read
• core.requisition.write
• core.sourcing.pending_supplier.read
• core.sourcing.pending_supplier.write
• core.sourcing.read
• core.sourcing.response.award.write
• core.sourcing.response.read
• core.sourcing.response.write
• core.sourcing.write
• core.supplier.read
• core.supplier.write
• core.user.read
• core.user.write

Note: If these scopes aren't associated with the Client ID and Client Secret, the OAuth
token flow fails on ServiceNow.

Procedure
1. Navigate to Software Asset Workspace > License operations > Purchasing > Procurement
integrations.
2. Select New.
3. On the form, fill in the fields.
Create New Procurement Integration Profile
Field

Description

Display name

Name of the procurement integration profile.
For example, Coupa integration.

Connection & Credentials

Connection and credential alias for Coupa.
This field gets automatically populated to
sn_coupa_spoke.Coupa_OAuth.

Profile type

Type of integration profile.
Select Coupa integration.

Status

Status of the integration profile.
◦ If you haven’t published the integration
profile, this field is automatically set to
Draft.
◦ If you’ve already published the integration
profile, this field is automatically set to
Published.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
Field

Active

Description

This field is visible and set to true only when
the integration profile is published.
If you set this field to false, the associated
requisitions with this integration profile aren’t
created and tracked.

4. Select Save.
next to the Connection & Credentials field.
5. Select the Preview icon
You get redirected to the Connection & Credential Aliases form.
6. Select Create New Connection & Credential in the Related Links section to create connection
credential.
7. In the dialog box, fill in the fields.
Create Connection and Credential
Field

Description

Name (Connection)

Name to identify the connection uniquely. For
example, Coupa OAuth connnection.

Connection URL

URL to make a connection to Coupa. Use the
https://<coupa-instance-url>
format.
◦ For customer instances,
use the https://
{organization_name}.coupahost.com
format.
◦ For partner and demo
instances, use the https://
{organization_name}.coupacloud.com
format.

Name (Credential)

Name to identify the credential uniquely. For
example, Coupa OAuth credential.

Token URL

URL used to generate OAuth token. Use the
https://<coupa-instance-url>/
oauth2/token format.

OAuth Client ID

Identifier (Client ID) generated in Coupa.

OAuth Client Secret

Secret (Client Secret) generated in Coupa.

8. Select Create and Get OAuth Token.
Your ServiceNow instance creates an OAuth for Coupa and then automatically returns you to
the Integration Profile form.
9. Optional: Create a child alias that can uniquely identify the connection and credentials for this
integration profile.
The first Coupa integration profile that you create uses the default (parent) connection and
credential alias for Coupa. Each additional Coupa integration profile that you create needs
a unique child alias that helps differentiate the connection and credentials between each
integration profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
a. On the Connection & Credential Aliases form, select the link under Child Aliases >
Parentalias=*** to add child aliases.
b. Select New.
c. Enter a name for the child alias in the Name field.
d. Right-click the form header and then select Save.
e. After the form reloads, select the Create New Connection & Credential related link.
f. Repeat steps 7 and 8.
g. In the Connection & Credential field of the Integration Profile form, select the lookup icon to
locate and select the child alias that you created.
Selecting the child alias associates the alias with the integration profile. Your ServiceNow
instance uses this alias to identify the connection and credentials for this integration profile.
10. Select Publish.

Result

After you publish the integration profile, the scheduled job ITAM - Sync Coupa purchase
orders runs daily and fetches the status of the already created requisitions.

Note: If you haven't created any requisition, the scheduled job doesn't run.
You can view this information by clicking the Procurement Integration Jobs tab.

What to do next

Verify if the scheduled job ITAM - Sync Coupa purchase orders has run successfully
by selecting the Integration Scheduled Job Results tab. If the job has failed, you can view the
list of errors by following these steps:
1. On the Procurement integration profile form, select the Procurement Integration Job Log
related list.
2. Open the job log record where the displayed status shows as failed.
3. Select the related list Asset Job Log Details to find out the reason for the job failure.
Create software requisitions directly on Coupa through the ServiceNow Procurement application
to purchase software.
If you want to delete the Coupa integration profile, see Deleting an external procurement
application integration profile.
Create a requisition on Coupa through Procurement application
Create software requisitions directly on Coupa through the ServiceNow Procurement application
to purchase software.

Before you begin

To create a requisition on Coupa through ServiceNow Procurement application, you must
perform the following tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
• Create and publish a Coupa integration profile. For more information see, Create a Coupa
integration profile.
• Ensure that the Purchase Order you create has at least one Purchase Order Line, and all
Purchase Order Lines must be for software products.
• Synchronize reference data types on both ServiceNow Procurement and Coupa applications.
For more information, see Reference data synchronization.
If all these conditions are met, you can create a requisition in Coupa.
If the conditions aren’t met, requisitions aren't created on Coupa, and the legacy procurement
flow continues on the Procurement application.
Role required: sam_admin and procurement_integrator

Note: The procurement_integrator role is added to the sam_admin role. The
procurement_integrator role enables the SAM admin to view the connections and aliases.

About this task

You can create a requisition on Coupa through the following ways:
• When a user requests software through Service Catalog. For more information, see Request a
catalog item from Service Portal .
• If a procurement_user or sam_admin directly creates a Purchase Order on the Procurement
application. For more information, see Create a Purchase Order.
• When a sam_user creates a Purchase Order directly from the Remediation Options form. For
more information, see View software model results .
Requisitions are of the following types:
• Catalog request: A requisition created for an item that is already present in the external
purchasing application.
• Non catalog request: A requisition created for an item that isn't present in the product catalog
of the organization.
For more information about creating a Purchase Order, see Create a purchase order.

Procedure
1. Navigate to All > Procurement > Orders > Purchase Orders.
2. Select New.
3. On the form, fill in the fields.
Purchase order fields
Field

Description

Number

The unique number identifying the purchase order.

Due by

The date by which the purchase order Total cost must be paid.

Vendor

The supplier to which the purchase order was issued.

Ship to

The stockroom to which the items on the purchase order should be shipped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
Field

Description

Note: This field is required but doesn't affect creating requisitions for
software on Coupa.
PO date

The date on which the purchase order was created.

Status

The status of the purchase order: Canceled, Ordered, Received, Requested, or
Suspended.

Assigned to The user to whom the purchase order is assigned.
Bill to

The location responsible for paying the purchase order Total cost.

Short
A brief description of the purchase order.
description
General section
Shipping

The delivery method to be used when shipping the items on the purchase
order.

Terms

The purchase order payment terms: Credit, Net 30 days, or Net 90 days.

Ship rate

The amount that must be paid for the delivery method specified in the Shipping
field.

Total cost

The sum of all item costs on the purchase order and the shipping costs.

Description A full description of the purchase order contents.
Details section
Initial
request

The record number of the request that requires the items on the purchase
order.

Requested
by

The user requesting the items on the purchase order.

Note:
The email ID or email address of the user requesting the items on the
purchase order must be the same on both Coupa and ServiceNow
Procurement application.

Requested

The date the user in the Requested by field requested the items on the
purchase order.

Ordered

The date and time of clicking the Order button on the Purchase Order form.

Expected
delivery

The date the items associated with the purchase order are expected to arrive in
the stockroom identified in the Ship to field. This field can’t be edited when the
purchase order has a Status of Received or Canceled. (For more information
about this field, seePurchase order expected delivery date .)

Received

The date and time at which the purchase order status changed to Received.

Contract

The record number of the contract with the vendor from which the items on the
purchase order are ordered.

Department The department responsible for paying for the purchase order.
Budget
number

The budget number related with the purchase order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
Field

Description

Vendor
account

The vendor account related with the purchase order.

4. Right-click on the form and select Save.
You can add purchase order line items to specify what you are ordering from this vendor. For
more information about creating a purchase order line item, see Create a purchase order line
item. A requisition line is created with a unique ID in Coupa.
5. After you’ve added at least one purchase order line item, select Order.
A requisition ID is displayed on your Purchase Order and the corresponding requisition line
IDs are displayed on your Purchase Order Lines.

Note: Wait for some time and then reload the Purchase Order form to view the
generated IDs or errors.

Result

After the status of the Purchase Order is Received on Coupa, the following activities occur:
• Assets and Receiving Slips get created and you can find the Purchase Order Number on the
Purchase Order form.
• The Asset Management - Procurement Integration application automatically generates
entitlements.
• On receipt of the assets, the scheduled job ITAM - Sync Coupa purchase orders
creates a Receiving Slip and Receiving Slip Lines on the ServiceNow Procurement application.
This job also pulls the Coupa fields such as Manufacturer part number, Status, and Receiving
quantity. The values returned from Coupa through the receiving transactions are used
to populate the created entitlements. However, if these values are not available from the
receiving slips, then the Asset Management - Procurement Integration application uses the
values populated in the Purchase Order of the Procurement application.
• If any discrepancy exists on the Purchase Order, Asset Management - Procurement Integration
creates entitlement import errors. You can view the errors by selecting the Entitlement Import
Errors tab under a Purchase Order, Purchase Order Line item, and Receiving Slip line.
Reference data synchronization
For a successful integration of Coupa with Software Asset Management, you must synchronize
the following reference data types on both the ServiceNow Procurement application and Coupa.
Requisition or Purchase Order form
Coupa Requisition field

ServiceNow Procurement
Purchase Order field

Requested by

Requested by

Description

The email address that
is associated with the
Requested by record is used
to find the corresponding
reference record in Coupa.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
Requisition Line or Purchase Order Line Item fields
Coupa Requisition Line fields

ServiceNow Procurement
Purchase Order Line Item fields

Supplier

Vendor

The supplier or vendor from
which the software product
should be ordered.

unit-price

Cost

The cost or price of a single
product model, including
discounts.

Currency

Cost

Currency is a reference field
on Coupa. For a successful
integration, verify that the
currency codes on Coupa and
ServiceNow match.

Item

Catalog Item

The Coupa items and
ServiceNow Procurement
catalog items must share the
same display name.

Description

Note: This field is
only used for catalog
requests.
Description

Product Model

The model of the purchase
order line item.

Note: This field is only
used for non-catalog
requests.
Deleting an external procurement application integration profile
If you want to stop using an external procurement application for creating software requisitions
through Software Asset Management, you can delete the integration profile.
A sam_admin can delete an integration profile by selecting Delete on the integration profile
record.
When you delete a direct integration profile, all scheduled jobs and the job results associated
with the profile gets deleted. The integration profile references are also removed from the
Purchase Order records on ServiceNow.
After you delete the integration profile, Software Asset Management doesn’t consider any in
progress requests. Ensure that all the requests in progress are completed before you delete the
integration profile.

Domain separation and Procurement
Domain separation is supported in Procurement processing. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


