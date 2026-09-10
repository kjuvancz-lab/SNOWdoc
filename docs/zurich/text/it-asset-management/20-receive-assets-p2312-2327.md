# Zurich IT Asset Management — Receive assets

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2312–2327 of 2359

Sections: Receive assets (p2312); Integrating with external procurement applications (p2316); Domain separation and Procurement (p2328)

---

<!-- page 2312 -->
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

2312


<!-- page 2313 -->
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

2313


<!-- page 2314 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2314


<!-- page 2315 -->
Create a receiving slip
Receiving slips are created automatically during the process of receiving assets. You can also
create receiving slips manually.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2315


<!-- page 2316 -->
◦ A Number is assigned.
◦ In Received, the current date and time are added.
◦ In Received by, the currently logged in user is added.
3. In Purchase Order Line, select the reference lookup icon and select a purchase order line.
The Purchase Order Line field is required if the parent receiving slip has an associated
purchase order. Only purchase order lines that are associated with the same purchase order
linked to the parent receiving slip are available for selection.
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
For more details on creating consumable assets, see Create consumable assets.

Integrating with external procurement applications
Manage an end-to-end procurement process by integrating external procurement applications
with Software Asset Management and create software requisitions directly on the external
procurement applications. Software Asset Management tracks these requisitions and
automatically generates entitlements or entitlement import errors after these requisitions are
received on the external procurement application.
Integrating Software Asset Management with external procurement applications help you to:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2316


<!-- page 2317 -->
• Gain end-to-end visibility of the entire purchase request to entitlement creation.
• Automate the complete process of creating software requisitions to entitlement creation.
• Reduce errors in entitlement creation.

Before you begin
• Activate the Procurement plugin (com.snc.procurement). For more information, see Activate
Procurement.
• Install the Asset Management - Procurement Integration (app-itam-procurement-integration)
store application from ServiceNow Store. For more information, see Install Asset Management Procurement Integration.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2317


<!-- page 2318 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Components installed with Asset Management - Procurement Integration
Several types of components are installed with activation of the Asset Management Procurement Integration application, such as tables and scheduled jobs.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2318


<!-- page 2319 -->
Sample use case: Tenant-customers of a shared environment must be able to change the
impact, urgency, or priority matrix to set priority within their domain.
For more information on support levels, see Application support for domain separation

.

Asset Management - Procurement integration overview
Domain separation is present in all aspects of the Asset Management - Procurement Integration
application.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2319


<!-- page 2320 -->
Before you begin
• Install the Asset Management - Procurement Integration (app-itam-procurement-integration)
store application from ServiceNow Store. For more information, see Install Asset Management Procurement Integration.
• You must have the Software Asset Management Enterprise license.
• Activate the Coupa spoke. For more information, see Coupa Spoke

.

• Activate the Procurement plugin (com.snc.procurement). For more information, see Activate
Procurement.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2320


<!-- page 2321 -->
• core.inventory.transfer.read
• core.inventory.transfer.write
• core.invoice.delete
• core.invoice.read
• core.invoice.write
• core.item.read
• core.item.write
• core.legal_entity.read
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2321


<!-- page 2322 -->
Field

Description

Select Coupa integration.
Status

Status of the integration profile.
◦ If you haven’t published the integration
profile, this field is automatically set to
Draft.
◦ If you’ve already published the integration
profile, this field is automatically set to
Published.

Active

This field is visible and set to true only when
the integration profile is published.
If you set this field to false, the associated
requisitions with this integration profile aren’t
created and tracked.

4. Select Save.
5. Select the Preview icon
next to the Connection & Credentials field.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2322


<!-- page 2323 -->
Field

Description

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2323


<!-- page 2324 -->
If you want to delete the Coupa integration profile, see Deleting an external procurement
application integration profile.
Create a requisition on Coupa through Procurement application
Create software requisitions directly on Coupa through the ServiceNow Procurement application
to purchase software.

Before you begin

To create a requisition on Coupa through ServiceNow Procurement application, you must
perform the following tasks.
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
more information, see View software model results.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2324


<!-- page 2325 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2325


<!-- page 2326 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2326


<!-- page 2327 -->
Requisition or Purchase Order form (continued)
Coupa Requisition field

ServiceNow Procurement
Purchase Order field

Description

to find the corresponding
reference record in Coupa.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2327


