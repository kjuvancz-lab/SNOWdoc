# Zurich IT Asset Management — Condition check definitions / Procurement / Procurement roles +2 more

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2285–2300 of 2359

Sections: Condition check definitions (p2285); Domain separation and Contract Management (p2287); Procurement (p2287); Procurement roles (p2287); Procurement workflows (p2288); Use the Procurement Overview module (p2289); Activate Procurement (p2290); Sourcing items in a service catalog request (p2294)

---

<!-- page 2285 -->
Report

Description

Active
Contracts by
Yearly Cost

All active contracts grouped in ascending order by cost per year.

All Contracts
by State

Contracts grouped by state, such as Draft, Active, or Expired, in bar chart
format

Asset
Contracts by
Type

All active contracts for assets grouped by type, in pie chart format.

Asset
Contracts List

All active contracts for assets by contract number.

Contract
Expenditure
by Type

Total contract expenses by type, such as lease, maintenance, or warranty, in
bar chart format.

Contract
Expenditure
by Vendor

Total costs of all contracts associated with a specific vendor, in bar chart
format.

Contract
Pipeline
Report

All contracts with a state of Draft, Active, or Expired and a substate of
Awaiting Review or Under Review, in bar chart format.

Expiring
Contracts

All contracts expiring in the next 90 days.

Condition check definitions
Condition check definitions enable you to define logical conditions that indicate when to change
a field value in a record.
A scheduled job, called Contract Compliance Checks in System Scheduler >
Scheduled Jobs, evaluates these condition check definitions daily by running the condition
checker. When this job is run, the ConditionChecks Script Include is triggered that runs the
Condition Check Definitions. Use this condition checker to check start dates and end dates and
to set expiration levels for contracts.
For example, a contract has a start date of March 1. When the condition checker runs on March 1,
it verifies that the contract Substate is Approved and sets the contract State to Active based on
the Start Date field.
The daily condition checker sets the appropriate expiration level for active contracts based on
the contract End Date. The expiration level can be viewed in the Contracts list. Knowing the
expiration level can help contract managers renew or extend a contract before it expires.

Define a condition check
You can define a condition check to change values in a contract when the Contract
Compliance Checks scheduled job runs each night.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2285


<!-- page 2286 -->
Before you begin
Procedure
1. Navigate to All > Contract > Administration > Condition Check Definitions.
2. Click New.
3. Complete the form.
Condition check definition fields
Field

Description

Table

The table to which the condition applies. For a contract check definition, select
Contract [ast.contract].

Category

The category for the condition check. Select Contract or None. The category is
used for organizing information and reporting.

Condition The field to be updated, typically Expiration level or State.
field
Event
name

The name for the event to be fired when this condition changes the value of
the field. Create a name using this syntax: <table_name>.<condition_field>, for
example, contract.validation.

Order

The order in which the conditions are evaluated.

4. Right-click the header bar and click Save.
The Conditions related list appears.
5. In the Conditions related list, click New.
6. Complete the form.
Conditions fields
Field

Description

Name

The value the field is set to, if the expiration conditions are met.

Condition The associated condition check.
check
Table

The table associated with the condition check.

Event
name

The name of the event this condition triggers.

Expiration The condition that must be true for the Condition check field to be set to this
Condition value (the Name).
Add as many conditions as are needed.
Compliant System field. Do not use.
state
Order

The order in which the conditions are evaluated. The first condition that is found
to match, where the Expiration Condition is true, is used, and no others are
checked.

7. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2286


<!-- page 2287 -->
The Condition Checks form reopens with the new condition listed in the related list.
8. Optional: Continue adding conditions as needed, following the steps above.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2287


<!-- page 2288 -->
Procurement workflows
Procurement uses the following workflows. You can edit the existing flows or create a flow in the
graphical Workflow Studio to meet your organization's asset procurement process.
• In the Service Catalog Request workflow, items ordered from the service catalog that cost over
one thousand dollars require approval.
Service catalog request workflow

• In the Source Request workflow, catalog tasks are created so that a procurement manager can
source the item by creating a transfer order or purchase order.
Source request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2288


<!-- page 2289 -->
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

2289


<!-- page 2290 -->
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

Checks if the request associated with a requested
item can be sourced (obtained from a transfer order or
by creating a purchase order to a vendor).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2290


<!-- page 2291 -->
Business rule Table

Description

[sc_req_item]
Create
Assets

Receiving Slip Line

Handle roll
up states
and assets
removal

Purchase order line
items

[proc_rec_slip_item]

[proc_po_item]

If the purchase order line item is available, creates
the assets for a receiving slip line when the slip line
assets are received.
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
[proc_po_item]

Sets the Expected delivery date for purchase orders
to the latest purchase order line Expected delivery
date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2291


<!-- page 2292 -->
Business rule Table

Description

Update
expected
delivery
date for
POLs

Sets the Expected delivery date of associated
purchase order lines to the purchase order's
Expected delivery date if at least one of the following
conditions is true.

Purchase Order
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

2292


<!-- page 2293 -->
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

2293


<!-- page 2294 -->
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

2294


<!-- page 2295 -->
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

2295


<!-- page 2296 -->
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

2296


<!-- page 2297 -->
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

2297


<!-- page 2298 -->
Distribution channels enable you to source the assets from the stockrooms that you prefer for
sourcing based on the rank that you provide to the stockrooms.
For more information, see Associate a stockroom with service locations and Link stockrooms
into a distribution channel.
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

2298


<!-- page 2299 -->
subflow takes you through the various stages, the asset details are automatically updated. You
can open the Asset Local Stock subflow to view the status of the stages in the subflow.

Note: Use decision tables to customize the Asset Local Stock subflow. For more details,
see Hardware Asset Management flow customization.
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

2299


<!-- page 2300 -->
8. Select Source Stockroom to select the stockroom from where you want to source the assets.
If your location is associated with a stockroom as a service location, you can source from
this stockroom along with the local stockroom. Service location capabilities enable a single
stockroom to support multiple locations and consume the local stock efficiently. For more
information on Service locations, see Associate a stockroom with service locations.
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

2300


