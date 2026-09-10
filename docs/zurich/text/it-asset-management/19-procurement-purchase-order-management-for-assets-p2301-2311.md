# Zurich IT Asset Management — Procurement purchase order management for assets

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2301–2311 of 2359

Sections: Procurement purchase order management for assets (p2301)

---

<!-- page 2301 -->
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

2301


<!-- page 2302 -->
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

2302


<!-- page 2303 -->
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

2303


<!-- page 2304 -->
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

2304


<!-- page 2305 -->
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
about this field, seePurchase order expected delivery date.)

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

2305


<!-- page 2306 -->
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

2306


<!-- page 2307 -->
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

2307


<!-- page 2308 -->
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

2308


<!-- page 2309 -->
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

2309


<!-- page 2310 -->
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

2310


<!-- page 2311 -->
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

2311


