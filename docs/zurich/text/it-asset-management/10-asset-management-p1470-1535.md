# Zurich IT Asset Management — Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1470–1535 of 2359

Sections: Asset Management (p1470); Explore (p1470); Use (p1481); Reference (p1522)

---

<!-- page 1470 -->
Table

Description

lines, including details, such as the originating
account and the delivery address.
RMA response order line
Model and asset information associated with
[sn_daas_common_rma_response_orderline] the RMA creation.
Inbound asset order
[sn_itam_common_inbound_asset_order]

Information about the asset request with
multiple order lines, such as the originating
account and the delivery address.

Inbound asset order line
Information about the model for which the asset
[sn_itam_common_inbound_asset_orderline] is requested.

Asset Management
The Asset Management application integrates the physical, technological, contractual, and
financial aspects of information technology assets. Asset Management focuses on the financial
tracking of company property.

Get started

Explore

Use

Reference

Learn the key features and
business value that the
Asset Management offers.

Use the Asset
Management to efficiently
manage your assets.

Get additional information
about the roles, domain
separation, lists and
forms in the Asset
Management application.

Troubleshoot and get help
• Ask or answer questions in the Asset Management ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Asset Management Workspace
The user interface of the Asset Management application is enhanced to make it more userfriendly and intuitive, enabling you to manage your hardware installations better.
You can use the Asset Management new user interface, referred to as Asset Workspace, or
continue using the classic Asset Management.
The Asset Management application's core functionality remains the same in both the user
interfaces.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
If you’re using the Asset Management application newly from the Vancouver release, the Asset
Management Workspace is installed by default.

Note: The Asset Workspace is installed by default only on the zBoot ServiceNow
instances and not on the ServiceNow instances upgraded to the latest version. When the
Hardware Asset Management application is activated, the Hardware Asset Workspace
replaces the Asset Workspace.

Using the Asset Management Workspace
The Asset Workspace is a unified medium with multiple views that help you manage your assets
efficiently. The views provide you with visibility into all the important aspects of your assets, such
as dashboards on Stockroom, Asset count by model, lifecycle state, model category, and overall
performance of assets.
The Asset Workspace contains the following views:
• Hardware asset overview
• Inventory view
• Asset estate view
• Model management view
• Contract management view
If you’re upgrading to the Vancouver release, you must activate the Asset Management
Workspace (sn_itam_workspace) plugin to use the Asset Workspace.

Note: After moving to Asset Management Workspace, you can still use the Asset
Management classic. For more information, see Asset Management

.

Related topics
Customize tabs in Asset Workspace

Hardware asset overview
Enhance your Asset Management experience by using the modernized and user-friendly
Hardware asset overview view. The Hardware asset overview is a simplified and intuitive
environment that helps you use the application more effectively by reducing complexity.
Use the Hardware asset overview view to:
• Act on discrepancies such as when an asset is missing PO number, model number, asset
function, or manufacturer.
• Navigate to specific dashboards on asset functions such as Asset requests, Transfer orders,
and Stock orders.
• View the 360 asset view section displaying asset counts by model category and asset value by
model category.
• View the overall performance section displaying the Discovered and undiscovered asset count
and Assets eligible for refresh by model category.
Select any widget or chart to view detailed information and take appropriate actions. You can
also use Location, Stockroom, and Model category lists to filter your results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
Hardware asset overview

Quick links
Widget or
chart

Description

Asset
requests

Number of requested items where the item’s model is hardware, consumable, or
bundle.

Transfer
orders

Number of active transfer orders.

Stock orders

Number of requested hardware inventory stock order items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
360 asset view
Widget or chart

Description

Asset count by
model category

Number of assets grouped by the model category such as Consumable,
Computer, and Mobile Device.

Asset value by model Cost of assets grouped by the model category such as Software
category
License, Consumable, and Server.
Overall performance
Widget or chart

Description

Discovered and
undiscovered
asset count

Comparison of the number of discovered and undiscovered assets
grouped by model category. Undiscovered assets are the assets that aren’t
discovered at all or not discovered within one month.

Assets eligible
for refresh by
model category

Number of assets that have already expired or the current day is the expiry
date, and are eligible for a refresh.

Load reports on Hardware asset overview
You can load charts or widgets that fetch a huge set of asset records on demand instead of
loading them along with the page. This approach enables you to reduce the loading time for the
Hardware asset overview page.
The system property

sn_itam_workspace.asset_overview_enable_lazy_loading provides you with
an option to either selectively load reports you want to view or load reports concurrently with the
page. By default, this system property is set to False. When this system property is enabled on
your ServiceNow instance, you can view reports by using the Load report option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
Load reports on Hardware Asset overview

Inventory view
Use the Inventory view in the Asset Workspace to view and manage inventory-related functions
such as stockrooms and transfer orders.
The Inventory view provides access to actions for filling in missing stockroom details such as
assignment group, stockroom name, manager, and type.
Select any widget or chart to view the details. You can also use Location, Stockroom, Model
category, and Domain filters to narrow down your results.

Note: The Domain filter is available only when you’ve enabled the Domain Extensions
Installer (com.glide.domain.msp_extensions.installer) and Domain Separation (plugin
com.snc.pa.domain_support) plugins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
Inventory view

Inventory overview
Widget or chart

Description

Open hardware requests
from stock (YTD)

Number of transfer orders of Procurement type that are already
delivered and created this calendar year.

Open transfer orders

Number of canceled or undelivered transfer orders.

Active stock rules by
model category

All active stock rules grouped by their model category.

Asset estate view
Use the Asset estate view in the Asset Workspace to create, view, and modify the assets and also
manage asset functions and notifications.

Note: Software license tab is hidden when Software Asset
Management (com.snc.software_asset_management) or Software Asset Management
Professional (com.snc.pa.samp) is active. You can view this Software license tab in Software
Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
Asset estate view

Asset overview
Chart or widget

Description

Hardware warranty
expiration this year

Count of hardware and consumable assets that are expiring this
current year.

Asset requests

Count of hardware, consumable, and bundle requests in the
catalog.

Asset lifecycle by state

Number of assets grouped by the lifecycle state such as Retired, In
use, In stock.

Assets by model category Number of assets grouped by the model category such as Software
License, Consumable, Server.
Incomplete assets by
model category

Asset models without purchase order number, purchase order line,
or receiving line.

Spend by model category Cost of assets grouped by their model category.

Load reports on Asset estate view
You can load charts or widgets that fetch a huge set of asset records on demand instead of
loading them along with the page. This approach enables you to reduce the loading time for the
Asset estate view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
The system property sn_itam_workspace.asset_estate_enable_lazy_loading
provides you with an option to either selectively load reports you want to view or load reports
concurrently with the page. By default, this system property is set to False. When this system
property is enabled on your ServiceNow instance, you can view charts or widgets by using the
Load report option.
Load reports on Asset estate view

Exclude Install Base Item (IBI) assets from reports
Any item that is provided as a service or sold to your customer is tracked as an Install Base Item
(IBI). The Model category table associates Asset class, CI class, and Install Base Item (IBI) class.
By default, the reports and Important Actions in the Asset estate view include all the assets in
the Asset [alm_asset] table. However, you can filter IBI assets from reports and Important Actions
cards. For details on configuration required to filter IBI assets, see the Sold products exclusion
from the reports and Important Actions of Asset Workspace [KB1584331]
article in the Now
Support Knowledge Base

Model management view
Use the Model management view in the Asset Workspace to create or modify models, view and
manage the asset model-related functions such as hardware and consumable models nearing
the end of life.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
Note: Software model tab is hidden when Software Asset
Management (com.snc.software_asset_management) or Software Asset Management
Professional (com.snc.pa.samp) is active. You can view this Software model tab in Software
Asset Workspace.
Model management view

Model overview
Widget or chart

Description

Hardware models up for end
of life this year

Count of hardware models whose start date of the end of life
phase is the current year.

Consumable models up for
end of life this year

Count of consumable models whose start date of the end of life
phase is the current year.

Missing data

Count of models that have missing model name, manufacturer,
and model number.

Product model status

Current count of hardware, consumable, and software models
based on the status of the models.

Contract management view
Use the Contract management view in the Asset Workspace to view and manage details
of contracts such as Contract number, Contract start and end dates, terms and conditions
statements.
The Contract management view includes important actions for managing your contract, contract
expenditure by type and vendor, and the list of expiring contracts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
Contract management view

Customize tabs in Asset Workspace
Adjust the content shown in the tabs of Asset Workspace or Hardware Asset Workspace views to
meet your specific business needs.

Before you begin

Role required: admin

About this task

In the Asset Management Workspace, the content displayed in tabs such as All
Assets and Hardware Assets in the Asset Estate view is determined by functions in
the AssetWorkspaceUtil script include. These functions specify which table to
use and what title to display for each tab. For example, the Asset estate page uses the
getAssetEstateTabs function to fetch tab details, while other pages like Model
Management and Inventory have their own specific functions. When a tab is selected, its index is
used to fetch the corresponding item from the list, determining the displayed content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


<!-- page 1480 -->
Note: This task shows how to hide the All Assets tab on the Asset estate page. Using the
same approach, you can hide other tabs in Asset estate, Model management, or Inventory
pages. Modify the content displayed in a tab by updating the script include where details
such as list titles and data sources are defined.
• To properly hide a tab, you must deactivate the tab in UIB and comment out the
corresponding JSON structure in the Script Include file.
• The order of tab details in the functions within the Script Include file must match with
the tab order in UI Builder. If not, the tabs displayed won’t match their corresponding
configurations.

Procedure
1. In UIB settings, deactivate the All Assets tab by deselecting the Active check box for the
Availability option.

2. The tab details in the Asset Estate page are fetched using the getAssetEstateTabs
function defined in the script include.

3. Comment out the JSON section containing details related to the All Assets tab and save the
Script Include file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
4. Reload the Asset estate page in the workspace.
The All Assets tab has been hidden, but all the other tabs remain visible.

Using Asset Management
Use the Asset Management application to manage your assets efficiently.

Mobile app for Hardware Asset Management
Use the ServiceNow Mobile and ServiceNow Agent apps to manage your assets.
ServiceNow Agent app
Use the ServiceNow Agent app to create assets, look up assets, and receive assets from a
purchase order.
Create an asset
Use the ServiceNow Agent app to create an asset record by scanning the asset.

Before you begin

Download the ServiceNow Agent app from Apple App Store or Google Play Store.
Role required: asset
The Procurement plugin (com.snc.procurement) must be installed to get the procurement
features in ServiceNow Agent app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
Procedure
1. Navigate to Asset and tap Create Asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
2. Scan the asset serial number or asset tag, then tap Search.
If the asset exists in your ServiceNow instance, an asset record is displayed. This information is
to ensure that you don't create duplicate asset records.
3. Optional: To update an existing asset, select the asset and then tap Update Asset.
4. If no existing asset record is found, tap the action icon in the upper right and select Create
Asset.
5. Scan or enter values for the Asset Tag, Serial Number, Model (non-software), Stockroom,
State, and Substate fields.
6. Tap Submit to create the asset.
Asset lookup
Search for an asset record in your ServiceNow instance by scanning the asset.

Before you begin

Role required: asset

Procedure
1. Navigate to Asset and tap Asset lookup.
2. Scan the asset tag, then tap Search.
3. An asset record is displayed if the asset exists in your ServiceNow instance.
You can select the existing asset to update it or to create an incident related to it.
Receive assets from a purchase order
Scan assets from a purchase order (PO) to verify that you received all assets from the order.

Before you begin

Role required: procurement_admin or procurement_user

Procedure
1. Navigate to Procurement and tap POs Next 30 Days.
2. Select a purchase order.
3. Tap Related list.
4. Tap the PO Line Items asset that you ordered and swipe Receive to receive the asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
5. If you only need to receive a single purchase, on the Receive form, scan the QR code for either
the asset tag or serial number.
6. If you need to receive multiple purchases, on the Receive form, tap Scan next item until you've
scanned all of your purchases.
7. Tap Submit.

Result

The purchase order is marked as received.
Verify and depart your assets for disposal
Use the ServiceNow Agent app to scan, verify, and depart your assets for disposal.

Before you begin

To verify an asset using the ServiceNow Agent app, make sure that a Disposal order exists in your
Hardware Asset Management instance.
Role required: asset

About this task

After a Disposal order is initiated for your asset, use the ServiceNow Agent app to scan, verify,
and depart the asset. You do not have to manually verify and depart your assets.
On the app, you can use the same functionalities when you are offline. For more information, see
Offline mode .

Procedure
1. Navigate to All > Asset > Asset disposal.
The Verification tab shows the list of verification tasks, while the Departure tab shows the list
of departure tasks. These tasks are for the assets that are present in a particular asset location
for disposal.
2. Scan and verify your assets in one of the following ways.
◦ Swipe a verification task to the left.
◦ Tap a verification task to open it and then tap Scan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
You can scan multiple assets together. After you open a verification task, the verification task
shows the number of assets that are verified, not verified, or expected to be verified. Click
Expected, Verified, or Not verified to view the respective types of assets.
Here is an example of a Verification tab that shows expected, verified, and not verified assets.

3. Tap Review > Submit.
A pop-up message appears and shows the successful verification of the scanned assets. The
lists of verified and not verified assets are updated.
4. Once you scan all the assets, tap Complete to close the verification task.
If there are still some assets left for scanning and you click Complete, then a pop-up window
appears to confirm if you still want to close the task. If you tap Complete, the task is closed.
5. Enter the vendor details and the scheduled date by using your Hardware Asset Management
instance.
See Create a disposal order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
After you enter the vendor details and close the Schedule Pickup task from your Hardware
Asset Management instance, the Departure tab shows the list of departure tasks to process.
6. Scan and depart your assets in one of the following ways.
◦ Swipe a departure task to the left.
◦ Tap a departure task to open it and then tap Scan.
You can scan multiple assets together. After you open a departure task, the departure task
shows the number of assets that are departed, not departed, or expected to be departed. Click
Expected, Departed, or Not departed to view the respective types of assets.
7. Tap Review > Submit.
A pop-up window appears and shows the successful departure of the scanned assets. The
lists of departed and not departed assets are updated.
8. Once you scan all the assets, tap Complete to close the departure task.
If there are still some assets left for scanning and you click Complete, then a pop-up window
appears to confirm if you want to close the task. If you tap Complete, the task is closed.
Now Mobile app
Use the Now Mobile app to view the assets that are assigned to you, to report any issues with
your assets, and to remotely receive new assets. Create incidents to report any issues with your
assets to your IT department.
Download the Now Mobile app from Apple App Store or Google Play Store.
The Now Mobile app provides different services for tasks and requests.
Now Mobile app

To view all the assets that are assigned to you, navigate to My Items > My Assets > Hardware.
The tab shows the assets that have the State field set to In transit or In use, Sub-state set to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


<!-- page 1488 -->
Reserved, and the Reserved to field set to your name. You can create an incident for an asset
that is in use.
When you are away from your office, you can remotely receive an asset that is in transit. Scan the
QR code for the asset tag so that you can automatically notify the IT department that you have
received the asset.

Work with Asset and CI
Asset and configuration item (CI) management refers to creating assets, setting appropriate
states and substates, synchronizing assets and CIs, managing consumables, and retiring assets.
Create assets
Create hardware, software, consumable, bundle, pallet, mobile, and facility assets using the Core
UI or the Hardware Asset Workspace.

Before you begin

Role required: asset

About this task
Unique identifiers for assets
When you create an asset that belongs to a model category linked to a CI class
with identification rules defined for fields like the Asset tag, Serial number, or
MAC address, you should provide details for at least one of these fields. The
identification rules for a CI class are defined in the CMDB Identification and
Reconciliation engine (IRE). For more details, see Identification rules
and Create a
CI identification rule . These rules help to uniquely identify the asset through these
required fields and maintain accurate asset records. However, specifying the values
for these fields is optional in the following scenarios:
• When you are creating an asset that belongs to a model category without a CI
class.
• When you are creating an asset that belongs to a model category linked to a CI
class without any identification rules defined.

Procedure
1. Create an asset.
Interface

Action

a. Navigate to All > Asset > Portfolios > All As­
sets.
Core UI

b. Select the type of asset that you want to cre­
ate.
c. Select New.
a. Navigate to All > Hardware Asset Work­
space > Asset estate.

Hardware Asset Workspace

b. Select New Asset.
c. In the dialog box, select the asset type and
then select Create.

2. On the Asset record fields form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
For a description of the field values, see Asset record fields.
3. Submit or save the asset form.
Retire assets
You can retire an asset at any time.

Before you begin

Role required: asset

About this task

After you change the state of an asset to Retired, the Substate field is active. When you retire an
asset, the status of related CIs also changes to Retired. Selecting a substate is not required, but
can be helpful for tracking and reporting.

Note: When you manually change the state of the asset from Retired to any other value
such as In use the asset becomes active again.

Procedure
1. Navigate to All > Asset > Portfolios > All Assets.
2. In State, select Retired.
3. Optional: In Substate, select Disposed, Sold, Donated, or Vendor Credit.
4. Click Update.
Delete assets
You can delete an asset at any time.

Before you begin

Note: If an asset is a part of an asset bundle, the asset cannot be deleted.
Role required: asset

About this task

A confirmation must be accepted before the asset and components are permanently deleted. If a
CI and asset are linked, deleting one also deletes the other.
Only delete an asset to clean up errors. For tracking purposes, the correct method for managing
an asset that is no longer in use is to change the state of the asset to Retired.

Procedure
1. Navigate to All > Asset > Portfolios > All Assets.
2. Select the check box to the left of the asset Name.
3. In the Actions choice list below the list, select Delete.
Map asset and CI fields
When you map the asset and CI fields, synchronization happens both ways. Changes to either
the asset or CI record are updated to the logically mapped record. You can synchronize custom
mappings and mappings provided with the base instance.

Before you begin

Role required: admin or asset
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
Note: If you upgraded from a prior release and customized the

AssetAndCISynchronizer script include before the upgrade, you must overwrite the
customization and then recreate the custom mappings.

About this task

You can conditionally map the fields for synchronization. For example, you can map the Location
field only for a hardware asset and not for a software asset. So when an asset is updated, the
Location field is synchronized only for the hardware asset.

Note: You can't map the asset and CI fields if the asset value is present only in the
Hardware [alm_hardware] table and not in the Asset [alm_asset] table.

Procedure
1. Navigate to All > Asset > Administration > Asset-CI Field Mapping and click New.
2. From the Asset field list, select the field.
This list refers to the alm_asset table.
3. Select the logically associated field from the Configuration Item fieldlist that refers to the
cmdb_ci table.
4. To create conditions for the mapping, click the Advanced view related link.
◦ To specify conditions for synchronizing the asset field with the CI field, use the Asset
mapping condition builder.
◦ To specify conditions for synchronizing the CI field with the asset field, use the
Configuration Item mapping condition builder.
5. Select the Active check box to activate the mapping.
6. Select Submit.
Map asset state and CI install status
Map the asset State and Substate fields to the CI Install Status field. The Substatus field of the
CI Install Status field should not be used for hardware CIs.

Before you begin

Role required: admin or asset

Note: If you upgraded from a prior release and customized the

AssetAndCISynchronizer script include before the upgrade, you must overwrite the
customization and then recreate the custom mappings.

About this task

Asset synchronization does not update this field when hardware assets are updated. When you
create the mapping, you can set the synchronisation direction from Asset to CI, but not from CI to
Asset. For non-Hardware CI classes, you can set the synchronisation in both the directions.
The hardware and consumable assets don't have the Build state and Design substate because
they are already prepared. Therefore, the Asset CI install status mappings table doesn't have a
mapping for the Build state. For more details on asset states, see Set asset states and substates.

Procedure
1. Navigate to All > Asset > Administration > Asset-CI Install Status Mapping.
By default, only custom mappings display. The list of mappings uses the filter condition of [Out
of the box] [is] [False].
2. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
3. From the Asset State list, select the state you want to map.
4. Optional: If available, select a substate from the Asset Substate list.
Some of the asset states do not have a substate.
5. From the Configuration Item Status list, select the logically associated CI status you want to
map.
6. From the Sync direction list, select the direction you want to drive the synchronization.
7. Select the Active check box to activate the mapping.
8. Click Submit.
Map asset state and CI hardware status
Map the asset State and Substate fields to the CI Hardware Status field. Don't use the
Substatus field on hardware CIs because the CI synchronization does not update the field when
assets are updated. When you create the mapping, you can set the synchronization direction
from the asset, CI, or both.

Before you begin

Role required: admin or asset

Note: If you upgraded from a prior release and you've customized the

AssetAndCISynchronizer script before the upgrade, overwrite the customization and
then recreate the custom mappings.
The hardware and consumable assets don't have the Build state and Design substate because
they are already prepared. Therefore, the Asset CI hardware state mappings table doesn't have a
mapping for the Build state. For more details on asset states, see Set asset states and substates.

About this task

The Install Status and Hardware Status fields of a CI are independent of each other. There is no
correlation between them. A change to the Hardware Status field does not change the CI Install
Status field and vice versa.

Procedure
1. Navigate to All > Asset > Administration > Asset-CI Hardware Status Mapping.
By default, only custom mappings display. The list of mappings uses the filter condition of [Out
of the box] [is] [False].
2. Click New.
3. From the Asset state list, select the state you want to map.
4. Optional: If available, select a substate from the Asset substate list.
Some of the asset states do not have a substate.
5. From the Configuration Item statuslist, select the logically associated CI state you want to
map.
6. Optional: If available, select a substate from the Configuration Item substatus list.
Some of the CI statuses do not have a substatus.
7. From the Sync direction list, select the direction you want to drive the synchronization.
8. Select the Active check box to activate the mapping.
9. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
Manage various assets through asset classes
The default asset classes are Hardware, Software License, Consumable, Bundle, Software
Entitlement, and Facility. These general classes can be used to manage various assets.
If the general classes that are provided aren't appropriate for a specific group of assets, consider
creating a new asset class. For example, a fleet of cars could be tracked in a custom asset class
named Vehicle. Before creating new asset classes, analyze business needs to see if the general
classes can be used. Managing a lot of asset classes can be difficult to maintain.
Built-in functionality allows you to use asset classes for financial tracking, in a model bundle, and
as a pre-allocated asset.
Create an asset class
Creating an asset class requires defining a new table and creating a corresponding application
and module, then adding the new asset class to new or existing model categories. The default
asset classes are Hardware, Software License, and Consumable. These general classes can be
used to manage various assets.

Before you begin

Role required: asset or category_manager

About this task

If the general classes aren’t appropriate for a specific group of assets, consider creating an
asset class. For example, a fleet of cars could be tracked in a custom asset class named Vehicle.
Before creating asset classes, analyze business needs to see if the general classes can be used.
A large number of asset classes can be difficult to maintain.
Built-in functionality allows you to use asset classes for financial tracking, in a model bundle, and
as a pre-allocated asset.
Ensure that the model categories contain models. Use the Table form to extend an existing table.

Procedure
1. Navigate to All > System Definition > Tables & Columns > Create Table and fill out the Table
form fields with information on the new table.

Field

Description

Label

Display name of table that can be localized.
For example, a custom asset class to track a fleet of cars can be labeled
as Vehicle.

Name

Internal name of table that can’t be changed later.
For example, the Vehicle asset class can be named alm_u_vehicle.

Extends table

Table that new table inherits fields from.
The Asset (alm_asset) table can be extended to create a custom asset
class.

Application

Application that uses the record.

Create module

Check box for creating a module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


<!-- page 1493 -->
Field

Description

Create mobile
module

Check box for creating a mobile module.

Add module to
menu

Menu that module displays.

New menu name

New menu name.

2. Click Submit.
3. Navigate to the new application (for example, Asset > Vehicle) and click New.
4. Configure the form to include Model, Model Category, and Quantity.
5. Create a model category and add the asset class you created to the Asset class field.
6. Create models and add them to the model category.

What to do next

Now that the model category (associated with the new asset class) and the models are created,
manage the models as assets. For example, use the model in a bundle.
Create license assets
You can manage your organization's software license assets.

Before you begin
Role required: sam

About this task

Examples include a license to use a single copy of a desktop software program and an enterprise
license to install a software program on multiple computers.

Procedure
1. Navigate to All > Asset > Portfolios > License Assets and click New.
2. In the Rights field, type the number of entitlements to be granted by this license.
3. Complete the form as described in Create assets.
Set asset states and substates
Use asset states and substates to track assets accurately and at a detailed level.

Before you begin

Role required: asset

About this task

Good asset information helps you with reporting, controlling assets, and lowering costs. For
example, recording missing items using the State and Substates fields enables you to run
reports and analyze the information. You can use this information to lower costs.

Tip: You shouldn’t modify state values. If the state values are supported and defined by
the process, you can modify substates.
Some of the substate values are available with more than one state. For example, the substate
Pending disposal is available with the state In stock, In transit, and Retired. The combination of
the State and the Substate fields provide the correct asset tracking information. For example, an
asset that is In stock and Pending disposal indicates that the asset is no longer used and is in
the stockroom waiting to be disposed of.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
Procedure
1. Navigate to All > Asset > Portfolios > All Assets.
2. Select an asset.
3. Edit the State and Substate fields.
Asset states and substates definitions
State

Available substates

Notes

On order

None

Asset is ordered but isn't
received.

In stock

Asset is stored in a
◦ Available: Asset is available
stockroom. Substate
for use.
indicates if the asset can be
◦ Reserved: Asset is
put to use.
reserved for a user who
requested it through a
sourcing request.
◦ Defective: Asset is faulty or
inoperative.
◦ Pending repair: Defective
asset is marked for repair
by the vendor.
◦ Pending install: Asset is yet
to be installed.
◦ Pending donation: Asset
is marked for donation
because it’s no longer
required in your stockroom.
◦ Pending disposal: Asset
is marked for disposal
because it’s no longer
required in the stockroom.
◦ Pending transfer: Asset
is being planned to be
transferred through a
transfer order.
◦ Pre-allocated: Asset is
ready to be allocated but
isn’t a financial liability until
it’s allocated to a user.
◦ On hold: Asset isn’t ready
to be used because it’s
awaiting something. For
example, necessary
documentation is pending.
◦ Legal hold: Asset is kept on
hold because of some legal
reasons.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
State

Available substates

Notes

◦ Quarantine: Asset is kept in
isolation in the stockroom.
◦ Pending certificate: Asset
is awaiting certificate for
disposal.
◦ Pending return: Asset
that is leased is yet to be
returned.
◦ Test: Asset is in the
testing phase and not yet
operational.
◦ Pending resale: Asset is
awaiting resale.
◦ Pending evaluation: Asset
is yet to be evaluated or
assessed to confirm if it
can be used.
In transit

◦ Available: Asset is available
for use.

Asset is being transported.

◦ Reserved: Asset is
reserved for a user who
requested it through a
sourcing request.
◦ Defective: Asset is faulty or
inoperative.
◦ Pending install: Asset is yet
to be installed.
◦ Pending disposal: Asset
is marked for disposal
because it’s no longer
required in your stockroom.
◦ Pending donation: Asset
is marked for donation
because it’s no longer
required in your stockroom.
◦ Pre-allocated: Asset is
ready to be allocated but
isn’t a financial liability until
it’s allocated to a user.
◦ Pending resale: Asset is
awaiting resale.
In use

◦ Pending fulfillment: Asset
is functional but awaiting
business conditions such
as billing and signoff.

Asset is in use. This
option is available for nonconsumables only.

◦ End of support: Asset
isn't provided any support
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
State

Available substates

Notes

services through incidents
or contracts.
◦ Pending retirement: Asset
is marked for retirement
because it’s no longer in
service. Asset has reached
the end of life and can be
sold, disposed, or donated.
◦ None
In maintenance

None

Asset is being repaired or
undergoing maintenance.

Retired

◦ Disposed: Asset is
disposed because it has
reached end of life.

Set the asset to a Retired
state when the asset has
reached the end of life. Only
delete asset records if they
were created erroneously.

◦ Pending disposal: Asset
is marked for disposal
because it’s nearing the
end of life.
◦ Sold: Asset is sold.
◦ Donated: Asset is donated
to charity organization
through asset donation
orders.
◦ Vendor credit: Old faulty
asset is returned to the
vendor for a replacement
asset through Return
Merchandise Authorization
(RMA).
◦ Lease return: Leased
hardware asset is returned
before the expiry of
contract.
◦ Obsolete: Asset is obsolete
and should be disposed.
◦ RMA: Faulty asset is
returned to or replaced by
the vendor through Return
Merchandise Authorization
(RMA).
◦ Buy out: Leased hardware
asset is bought before the
expiry of contract.
◦ Pending resale: Asset is
awaiting resale.
Missing

◦ Lost
◦ Stolen

An asset that is missing or
lost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
State

Available substates

Notes

Build

None

Asset is being prepared.
This state is used during the
creation of an asset bundle.

Note: Hardware and
consumables don't have
a Build state.

Add depreciation to an asset
Depreciation is the reduction in the value of an asset over time.

Before you begin

Role required: asset

About this task

A depreciation schedule can be added to hardware assets. Based on the
information specified in the asset record, the ServiceNow AI Platform calculates the
depreciation amount daily using the Calculate Depreciation scheduled job. The
sn_itam_trigger_depreciation_job_after_days system property determines
when the Calculate Depreciation scheduled job calculates the depreciation amount.

Important: The depreciation fields on the asset, such as Depreciated amount, Residual

value, and Residual date are updated daily by the Calculate Depreciation
job. If you plan to enable audit logging in these fields, it logs every change daily. This
process could result in a large volume of audit entries, which might impact storage and log
management.
The ServiceNow AI Platform calculates the read-only Residual date and Residual value fields
based on the Cost, Depreciation, and Depreciation effective date fields. For example, if the
asset Cost is $1000.00, the Straight Line depreciation method is selected, and exactly two years
have passed, the Residual value would be $500.00.
When an asset is in the In Use state, the asset form populates a Deprecation effective date.
For more information about fixed assets and depreciation, see Using Depreciation with Fixed
Assets.

Procedure
1. Navigate to All > Asset > Portfolios > Hardware Assets.
2. Select an asset.
3. Fill in the Depreciation, Depreciation effective date, Salvage Value, and Covered by fixed
asset fields as described in Create assets.
Consider these points.
◦ If the depreciation effective date is in the future, depreciation is 0 and the current residual
value is the original purchase price. The system doesn’t begin to calculate depreciation until
the effective date is reached.
◦ The salvage value must be less than or equal to the asset cost. If a salvage value greater
than the cost is entered, a warning message appears and the record can’t be saved.
4. Select and hold (or right-click) the header and select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
5. Select Calculate Depreciation.
The Residual date, Residual value, and Depreciated amount fields are automatically
calculated.

Create fixed assets
Fixed assets are containers that can hold multiple assets. Fixed assets are commonly tracked
at the corporate level by a finance or accounting department, but may contain IT assets such as
hardware and software.
The Fixed Asset option in the Cost application shows the IT assets related to a fixed asset
record. This link can help IT stay coordinated with the corporate asset system. Users with the
financial_mgmt_admin and financial_mgmt_user roles can create fixed assets. After creating a
fixed asset and adding assets, the residual value can be automatically calculated.
To create a fixed asset:
1. Navigate to Cost > Fixed Assets.
2. Click New.
3. Enter a name for the fixed asset.
4. Click Submit.
To add assets to a fixed asset:
1. Navigate to Cost > Fixed Assets.
2. Click a fixed asset.
3. In the Covered assets related list, click Edit.
4. In the Collection list, double-click an asset to add it to the Covers Assets List.
5. Click Save.
To sum the residual values of all assets in a fixed asset:
1. Navigate to Cost > Fixed Assets.
2. Click a fixed asset.
3. Click Sum Residual Value.
The ServiceNow platform calculates theResidual Value, Total cost, and Total depreciation
based on information in the Financial and Depreciation sections on the individual asset
records.
Use depreciation with fixed assets
You can calculate depreciation for a fixed asset using a choice of depreciation schedules.
Calculating depreciation for a fixed asset can help IT coordinate with the corporate fixed asset
system to report correct valuation and book value.

Before you begin

Role required: financial_mgmt_admin or financial_mgmt

About this task

When creating a new depreciation schedule, select the Declining Balance or Straight Line
depreciation Category. The two categories depreciate an asset by the same overall amount
during the asset life cycle, but do so on different schedules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
• Declining Balance: depreciates an asset by a greater amount in earlier accounting periods
than in later periods.
• Straight Line: depreciates an asset by an equal amount each accounting period.
The following example shows depreciated value on a $10,000.00 asset over five years using the
two different methods.
Using depreciation with fixed assets
Year

Declining balance

Straight line

1

$5000.00

$8000.00

2

$2500.00

$6000.00

3

$1250.00

$4000.00

4

$625.00

$2000.00

5

$0

$0

Procedure
1. To view a depreciation schedule, navigate to Financial Management > Depreciation and click
the Category.
2. To create a new depreciation schedule, click New.
3. Enter a Name.
4. Select a Category.
5. Add a Script to calculate depreciation value.
Example depreciation schedule script

6. Click Submit.
The depreciation schedule is now available in the Depreciation field on the asset record.

Consumables life cycle
Consumables are assets that are not tracked individually, but as a group of the same model.
The group of consumables has one or more of the following traits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
• Same location
• Same state
• Consumed by the same asset, typically as accessories or parts
Some common consumable assets include mouse devices, computer keyboards, and pencils.
The base ServiceNow system includes the Consumable model category. The first step in working
with models is to create a model within the model category for an individual consumable asset.
Items such as monitors, keyboards, and mouse devices are often tracked as consumables.
Consumables cannot be pre-allocated.
Consumable assets are stored in the Consumable [alm_consumable] table. Consumables follow
a slightly different life cycle from other assets.

Stages of consumables
The consumable lifecycle stages are as follows.
• On order
• In stock
• In transit
• Consumed
• In maintenance
• Retired
• Missing
View consumable assets
Consumables are tracked as a group of the same model, but you can view individual
consumables in the consumable model record.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Consumable Models.
2. Open a consumable model record.
3. View individual consumables in the Consumables related list.
Create consumable assets
Create a consumable to track an asset as a group of the same model.

Before you begin

Role required: asset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
Procedure
1. Navigate to All > Asset > Portfolios > Consumables and create a new record (see table for
field descriptions).
Consumable record form
Field

Description

Display
name

Name of the asset.

Model
category

Model category that controls if an asset is linked to a CI.

Model

Product model of the asset.

Quantity

Amount of items the asset represents.

General
State

State of the asset.

Parent

Parent asset. When a parent asset is defined, the Assignment and State fields
of the child asset are automatically populated based on the Assignment and
State fields of the parent asset and are read-only.

Class

Type of asset. The system automatically sets the Class to Consumable.

Expenditure The type of expenditure. Choose from the following options:
type
◦ Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
◦ Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.
Substate

Substate of the asset.

Location

Location of the asset.

Cost

Price that the asset was purchased for.

Cost Center Cost center financially responsible for the asset.
Disposal
Disposal
order
number

A unique number assigned to the asset disposal order.

Note: This field appears only if you have installed Hardware Asset
Management from the ServiceNow Store.

Disposal
vendor

The vendor assigned to carry out the asset disposal order.

Note: This field appears only if you have installed Hardware Asset
Management from the ServiceNow Store.
Vendor
disposal
order ID

Order number assigned by the vendor assigned to carry out the asset disposal
order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Field

Description

Note: This field appears only if you have installed Hardware Asset
Management from the ServiceNow Store.
Disposal
date

The date when the asset disposal order process is completed.

Note: This field appears only if you have installed Hardware Asset
Management from the ServiceNow Store.
Disposal
reason

Text explaining why the asset is being retired.

Beneficiary

Organization that receives the asset when it is retired.

Resale
price

Value of the asset when it is retired. For example, if the asset is donated, the
value used when reporting taxes.

Scheduled
retirement

Scheduled date on which the asset is retired.

Retired
date

Actual date on which the asset was retired.

Activities
Work Notes Work notes related to the asset.
2. Click Submit.
Consume consumable assets
To consume consumable assets, they must have a state of In Stock and a substate of Available.

Before you begin

Role required: asset

Procedure
1. Navigate to All > Asset > Portfolios > Consumables.
2. Click the Display Name of a consumable asset with a state of In Stock and a substate of
Available.
3. Click Consume.
4. Enter the Quantity to consume.
5. In Asset, click the lookup icon and select the asset associated with the consumable.
Example
For example, a mouse tracked as a consumable asset can be associated with a nonconsumable asset such as a computer.
6. In User, click the lookup icon and select a user associated with the consumable.
7. Click OK.
On the Consumable form, the Quantity field shows the reduced number. The Consumables
list contains two records for the consumable in the specific stockroom: one with a state and
substate of In Stock and Available (if you did not consume the entire quantity), and one with

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
a state of Consumed. If a consumable is not in the process of being transferred to a different
stockroom and information in the data record is the same, similar records merge automatically.
After a consumable is consumed, the record remains in the system for reporting purposes.
Return consumable assets to stockrooms
Move a consumable asset that is in a consumed state and has completed its life cycle back to an
in-stock status.

Before you begin

Role required: asset, itil, itil_admin

Procedure
1. Navigate to All > Asset > Consumables.
2. In the consumable record, click Retire.
Retire appears only if the consumable asset is currently in a consumed state.
3. In the Retire Asset dialog box, select a stockroom.
The quantity gets populated based on the quantity of the consumption of the consumable
asset.
4. Update the Quantity field based on the quantity of consumable assets that you want to retire.
You can choose to retire the entire quantity of consumable assets or only a part of the quantity.
5. Select a substate and click OK.
You return to the consumable record. A message appears at the top of the form layout with the
number of assets that you have retired.
Dispose of consumable assets
Dispose of those consumable assets that are no longer required in your stockrooms.

Before you begin

Role required: asset, itil, itil_admin
Know that the Planned for disposal column in the Consumable [alm_consumable] table indicates
if the consumable asset is marked for disposal or not.

Procedure
1. Navigate to All > Asset > Consumables.
2. In the consumable record on the top right of the page, click Mark for disposal.
Mark for disposal appears only for consumable assets that are in the in-stock state and not
marked for disposal.
3. In the Planned for disposal dialog box, enter the total quantity or partial quantity of the
consumable asset.
If you enter a partial quantity, a new consumable record is created with the substate as
pending disposal. If you enter a total quantity, the consumable's record substatus changes to
"pending disposal" and you return to the same consumable record.
After you mark the consumable asset for disposal, Mark for disposal no longer appears.

Note: Only a consumable marked for disposal is included in a disposal order. After you
mark a consumable for disposal, it does not get merged with another consumable record.
4. Click Cancel from disposal to cancel disposing a consumable asset.
Cancel from disposal appears if the Planned for disposal column for the consumable is set to
true and the Disposal number field is blank.
5. In the Cancel from disposal dialog box, select a stockroom.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
If a stockroom is already selected, then the Stockroom field is read-only.
6. Select a substate and click OK.
The Planned for disposal column is set to false. If you added this consumable record to a
disposal record, the planned asset record is deleted.

Stockrooms
Stockrooms are places to which assets are assigned.
When stock is low on a particular asset, stock rules can either notify an asset manager or
automatically transfer inventory from one stockroom to another.
Stockrooms are separate, standalone entities in the Asset Management application.
Stock rules
Stock rules are defined criteria stating that when the inventory of a particular asset in a particular
stockroom reaches a specified threshold, a certain number should either be transferred from
another stockroom or ordered from a vendor.
For example, a specific model of computer keyboard reaches an inventory of 10 in a particular
stockroom and, because a stock rule is in place, a transfer order is automatically created to
transfer 50 from a different stockroom. Because there can be multiple assets of a model within a
stockroom, stock rules enable you to check all assets fitting the criteria and view a total count.
There are two restocking options:
• Email notifications can be sent to the stockroom manager (specified in the Manager field on
the stockroom record) through the Asset Restocking email action when the inventory of a
particular asset in the stockroom reaches a specified threshold. You can customize this email
notification by updating the details in the following tabs:
◦ When to send: Set the conditions under which the email should be triggered.
◦ Who will receive: Specify the recipients of the email.
◦ What it will contain: Define the content and information included in the email.
A task is automatically created for the stockroom manager or, if Procurement is active, a
purchase order and a purchase order line item are created.
• A transfer order can be generated automatically to restock the item from another stockroom.

Stock Rule Runner job
The Stock Rule Runner job runs everyday to check if the inventory in the stockroom has reached
the threshold set by the stock rule. The job then triggers tasks or workflows to restock the
inventory. This job creates tasks for stockroom managers and also sends email notifications to
them.

Important: If restocking is in progress, the system doesn’t create duplicate email
messages or duplicate transfer orders. It's important to act on it promptly.
By default, the glide.sc.checkout.twostep system property that's set to false, results
in the automatic submission of requests when items are added to the Service Catalog cart. Also,
with this setting of the system property, the Stock Rule Runner job triggers the creation of tasks,
purchase orders, transfer orders, and Service Catalog requests.
If the value of the glide.sc.checkout.twostep system property is set to true, then the
CartJS API adds items to the cart but the requests aren't submitted automatically. Instead, the
request submission requires additional actions to be performed, affecting the automatic flow of
the Stock Rule Runner job.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
The pending_delivery is used to indicate whether a stock rule is awaiting fulfillment or delivery.
The pending_delivery can be set to any of the following values:
• When this flag is set to true, the stock rule is in progress, and the system doesn't generate
duplicate tasks or orders for the same item.
• When this flag is set to false, the system reprocesses the stock rule and triggers the creation of
tasks and orders again.

Note: Make sure that the pending_delivery flag is updated to false when a stock rule has
been processed, enabling the Stock Rule Runner job to run without redundancy.
Based on the Stock rule type and the plugin activated on your ServiceNow instance, the Stock
Rule Runner job creates purchase orders, transfer orders, Service Catalog requests, or tasks.

Important:
If the Procurement plugin and the Hardware Asset Management application aren't
activated, the Stock Rule Runner job creates a task instead of a purchase order or a Service
Catalog request. This task prompts the stockroom manager to take the necessary actions to
replenish the inventory.
Stock Rule Runner job behavior
Stock rule
type

Orders/Requests created

Stockroom A transfer order is created automatically when the inventory in a stockroom
reaches the threshold set by the stock rule.
The transfer order is created to transfer stock from another stockroom to replenish
the inventory.

Note: If a transfer order is already in progress, then additional transfer
orders aren't created.
Vendor

When the Procurement plugin (com.snc.procurement) is activated, a purchase
order and corresponding purchase order line items are created.
Purchase orders and purchase order line items are created when the inventory in
a stockroom reaches the defined threshold and needs replenishment directly from
the vendor.

Note: You must have a procurement_user role to access the purchase order
and purchase order line item.
Vendor or
Service
Catalog

When the Hardware Asset Management application is installed and the stock rule
is set to Vendor or Service Catalog, then note the following points:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
Stock Rule Runner job behavior (continued)
Stock rule
type

Orders/Requests created

• The Stock Rule Runner job submits a Service Catalog request instead of creating
a purchase order.
• The Service Catalog request is automatically submitted for stock replenishment
through the Service Catalog. The items are added to the Service Catalog cart for
the Stockroom manager to review and approve.
• The pending_delivery flag is used to track the status of the Service Catalog
requests. This flag guarantees that the Service Catalog requests are processed
correctly, avoiding duplicate actions.

Related topics
Create a stock rule

Manage pre-allocated assets
Manage pre-allocated assets, which are the assets that the vendor still owns, but has agreed to
store in a customer stockroom for just-in-time procurement.
Create pre-allocated assets
Create a pre-allocated asset that physically exists, but isn’t yet a financial liability.

Before you begin

Role required: asset

About this task
Procedure
1. Navigate to All > Asset > Portfolios > All Assets and create a record (see table for field
descriptions).

Note: Category must have the Allow pre-allocated option selected.
Consumable record form
Field

Description

Display
name

Name of the asset.

Model
category

Model category that controls whether an asset is linked to a CI.

Model

Product model of the asset.

Quantity

Number of items the asset represents.

General
State

State of the asset.

Stockroom

Stockroom of the asset. This field is only available if the State field is set to In
stock.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
Field

Description

Parent

Parent asset. When a parent asset is defined, the Assignment and State fields
of the child asset are automatically populated based on the Assignment and
State fields of the parent asset and are read-only.

Class

Type of asset. The system automatically sets the Class to Consumable.

Expenditure The type of expenditure. Choose from the following:
type
◦ Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
◦ Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.
Substate

Substate of the asset.

Location

Location of the asset.

Cost

Price that the asset was purchased for.

Cost Center Cost center financially responsible for the asset.
Activities
Work Notes Work notes related to the asset.
2. Select Submit.
Allocate a pre-allocated asset
Assets can be allocated from pre-allocated asset records, which creates new asset records and
reduces the Quantity in the original pre-allocated asset record.

Before you begin

Role required: asset

About this task

Allocating an asset makes it a financial liability. After all pre-allocated assets have been
allocated, the pre-allocated asset record is removed from the asset list.

Procedure
1. Navigate to All > Asset > Portfolios > All Assets.
2. Filter the Substate column to show only Pre-allocated assets.
3. Select the reference icon in the row containing the asset to allocate.
4. Select Allocate at the bottom of the form.

Note: If the glide.asset.create_ci_with_ire property is set to true, a form
appears when you click Allocate. On the form, fill in the Asset tag, Serial number, and
Reserved for fields, then click OK.

Result

The system creates and navigates to a new asset record, which has the same model and parent
information as the pre-allocated asset. The new asset has a Quantity of one, while the preallocated asset's Quantity is reduced by one.
Split a pre-allocated asset
You can split a pre-allocated asset to create a group that can be moved to a different stockroom.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Before you begin

Role required: asset

About this task

For example, a group of 100 pre-allocated computers is in Stockroom A. Split the group into two
groups of 50 and move one group to Stockroom B. Allocate the computers from the two different
stockrooms.

Procedure
1. Navigate to All > Asset > Portfolios > All Assets.
2. Filter the Substate column to show only Pre-allocated assets.
3. Select the reference icon in the row containing the asset to split.
4. Select Split.
5. Enter a Quantity to Split and select OK.
The pre-allocated asset is split into two groups and the Quantity field on each record indicates
the number in each group.

Manage transfer order
Manage the asset movement from one stockroom to the other using transfer order.
Transfer order flow
Use the Transfer Order flow to track asset movement from one stockroom to the other and the
Transfer Order Line flow to handle the processing of transfer order lines. You can edit the existing
flow or create a flow in the graphical Workflow Studio to meet your organization's asset transfer
process.

Prerequisites
Asset Management (com.snc.asset_management) plugin is installed.

Transfer Order
In the asset life cycle automation process, the In stock assets are transferred from one
stockroom to the other through the Transfer Order flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
Transfer Order

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Transfer Order Line
In the asset life cycle automation process, when multiple assets are transferred under one
transfer order, the Transfer Order Line flow handles the processing of transfer order lines.
Transfer Order Line

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Related topics
Transfer orders for Asset Management
Transfer orders for Asset Management
Transfer orders move assets between company stockrooms.
The Asset Management application enables asset managers to create transfer orders for moving
assets between company stockrooms.
Consumable assets and non-consumable assets can be transferred as follows:
• If an asset is consumable, it can be transferred and the quantity can be greater than one.
Consumable parts are tracked by the system qualitatively.
• If an asset is non-consumable, it must be transferred as a single entity with a quantity of one.
Non-consumable parts correspond to assets defined in the system.

Important: In the Asset Management application, the Transfer Order Line workflow
manages the processing of transfer order lines. If your ServiceNow instance has the
following plugins activated, the transfer order lines are processed using a workflow,
depending on the plugin installed.
• If the Service Management Core plugin is activated, the Transfer Order Line SM core
workflow manages the processing of the transfer order lines.
• If the Field Service Management plugin (com.snc.work_management) is activated, the
Transfer Order Line SMCore workflow manages the processing of the transfer order lines.
For more information, see Move an asset through the transfer process

.

Transfer order lines
Transfer Order Lines is a new module under Inventory with Template Tasks and Template
Subtasks as the sub modules. Transfer order lines allow the transfer of multiple assets on one
transfer order. Actions such as shipment preparation can take place at the transfer order line
level. Pre-allocated assets can be included in a transfer order line, but can only be transferred
in their full quantity. A business rule prevents the same asset from being transferred on two
different transfer orders at the same time.

Note: The Transfer Order and the Transfer Order Line workflows have moved from the
Procurement plugin to the Asset Management plugin. The Transfer Order Line workflow
runs only if no other workflows are matched or running on a specific record.

Transfer order line tasks
When you create a transfer order line, based on the model category specified in the asset, a
transfer order line task is automatically created. Transfer order line tasks are created to move
transfer order lines from one stage to the other. Transfer order line tasks also help you to track
service levels and the time frame needed to complete a transfer order.
Default template tasks are available with the Asset Management application. The template
tasks are based on model categories. Default template tasks cannot be deleted or modified. If
required, you can also create your own customized template tasks. For more information, see
Create a customized template task. When you create a transfer order line and select an asset,
that asset corresponds to a model category. If a customized template task exists for that model
category then that template task is added to the transfer order line as a transfer order line task. If
no customized template task match is found for the asset you selected, then the default template
task is added as a transfer order line task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Closing a transfer order line task completes the task and creates the next task in the process.
For example, once you close the Ready for fulfillment task, the state for this task appears as
Closed Complete and a new task is opened for the next stage, Ready for Shipment. This process
continues till you close all the tasks required for completing the transfer order line. As you close
a task and as a task moves from one stage to the next, the asset gets automatically updated
too. For example, when the transfer order line moves from Ready to Fulfillment to Prepare for
Shipment, the asset's status also moves from available to reserved.

Note:
If you skip a transfer order line task and select Closed Skipped, the asset is not updated
automatically. Once the asset is received or delivered, you can make the update manually.
If you are upgrading from any previous release to the New York release, and you have
an open transfer order line that is still being processed, all the transfer order line tasks
associated with that transfer order line are simultaneously created and displayed in the
transfer order line form layout. Based on the stage of the transfer order line, the tasks
that still need to be processed will be open; all the other tasks that have already been
completed will be closed. Based on the order, if you close a later transfer order line task, all
the previous tasks, which are currently open, automatically will be Closed Skipped.

Transfer order line subtasks
To further add granularity and efficiency to the process, you can also create subtasks for each
transfer order line task. Each transfer order line task can have multiple subtasks. For example,
before preparing for shipment, for a computer, you may want to create subtasks for imaging
the computer or adding additional software. If subtasks have been defined for a particular
transfer order line task, then the subtasks are automatically added to the transfer order line task.
Once all the subtasks are closed, the transfer order line task is automatically closed. For more
information, see Create a template subtask.
Related topics
Transfer order flow
Transfer assets using transfer orders
Transfer assets from one location to the other by moving the assets through the transfer order
process. You create a transfer order and move it from its initial Draft status to the final Received
status.

Before you begin

Role required: inventory_user
The inventory_user, asset, or procurement_user role can only access the Transfer Order
[alm_transfer_order] reports. You must activate the Procurement (com.snc.procurement) plugin
for the inventory_user, asset, and procurement_user roles.

Procedure
1. Navigate to All > Inventory > Transfer Orders > Create Transfer Order.
2. In the From Stockroom list, select a stockroom from which you want to ship the items.
3. In the To Stockroom list, select a stockroom where you want to ship the items.

Note: If you select the same stockroom in both the From Stockroom and To Stockroom
fields, the transfer order automatically moves from Draft to Received when a transfer
order line is added.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
4. Select a date and time for the delivery from the Delivery by date date picker.
5. Select Submit.
6. Open the transfer order.
7. Next to Transfer Order Lines, click New.
8. Select a model for the transfer order line.
9. If the model is a consumable, specify a quantity in Quantity Requested.
10. Click Submit.
After creating transfer order lines, the transfer order and all the transfer order lines are in the
draft stage. While a transfer order or a transfer order line is in the draft stage, it can be deleted.

Note: When an asset is part of a transfer order set to Draft, the asset record updates to
show the asset as reserved. You can't request or transfer the asset while it’s reserved.
When you create a transfer order line, based on the model category specified in the asset,
a transfer order line task is automatically created. The transfer order line task helps you to
progress through the various stages of the transfer order line. Each transfer order line task
represents a particular stage in the transfer process. As you close a task, a new task is created
and the transfer process moves to the next stage.
11. Open the transfer order line task and click Close Task.
The transfer order line task is completed and a new transfer order line task is opened.

What to do next

Keep closing each task until you reach the last stage (Received). After you close the task for the
Received stage, the transfer order line is completed and closed. All transfer order lines and the
transfer order are marked Delivered.
Summary of transfer order line tasks
As assets move through the transfer process, the stage of a transfer order is updated based on
the individual transfer order lines tasks.
Transfer order line tasks
Transfer
order line
stages

Description

Draft

When a transfer order line is created for the asset.
On the asset form, the State field value remains In stock, and the Substate field
value is updated to Pending transfer.

Requested

This task is created first for the transfer order line.
On the asset form, the State field value remains In stock, and the Substate field
value remains Pending transfer.

Shipment
After the Requested task is closed, this task is created. This task deals with
Preparation preparing the transfer order line for shipment. Specify the values for the shipment
tracking fields such as Shipping carrier, Vendor, Tracking number, and Ship
date.
On the asset form, the State field value remains In stock, and the Substate field
value remains Pending transfer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
Transfer order line tasks (continued)
Transfer
order line
stages

Description

In Transit

After the Shipment Preparation task is closed, this task is created.
On the asset form, the State field value changes to In transit, and the Substate
field value is updated to Reserved.

Received

After the In Transit task is closed, this task is created.
On the asset form, the State field value changes to In stock, and the Substate
field value is updated to Available. The Stockroom field value is updated as the
asset is received in the destination stockroom.

Delivered

After the Received task is closed, this task is created. After you close the
Delivered task, the transfer order line is completed.
On the asset form, the State field value remains In stock and the Substate field
value is updated to Reserved.

Delete a transfer order
You can delete a transfer order only if the transfer order is still in the draft stage.

Before you begin

Role required: inventory_user
The inventory_user, asset, or procurement_user role can only access the Transfer Order
[alm_transfer_order] reports. You must install the Procurement (com.snc.procurement) plugin for
the inventory_user, asset, and procurement_user roles.

Procedure
1. Navigate to All > Inventory Management > Transfer Orders > Transfer Orders
2. Select the check box beside a transfer order.
3. From the Actions on the selected rows menu at the bottom of the list, select Delete.
Related topics
Delete a transfer order line
Return items received in a transfer order
Delete a transfer order line
You can delete a transfer order line only if it's still in the draft stage.

Before you begin

Role required: inventory_user
The inventory_user, asset, or procurement_user role can only access the Transfer Order
[alm_transfer_order] reports. You must install the Procurement (com.snc.procurement) plugin for
the inventory_user, asset, and procurement_user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
Procedure
1. Open a transfer order.
2. Select the check box beside a transfer order line.
3. From the Actions on the selected rows menu at the bottom of the list, select Delete.
Alternatively, you can cancel a transfer order or a transfer order line while it is in Requested
or Shipment Preparation stage. Once all the lines are canceled, the transfer order is
automatically canceled.
Related topics
Delete a transfer order
Return items received in a transfer order
Return items received in a transfer order
When you receive a transfer order and if there’s a problem with all or some of the items, you can
return the transfer order.

Before you begin

Role required: inventory_user
The inventory_user, asset, or procurement_user role can only access the Transfer Order
[alm_transfer_order] reports. You must activate the Procurement (com.snc.procurement) plugin
for the inventory_user, asset, and procurement_user roles.

About this task

Items in a transfer order must be received before they can be returned.

Procedure
1. Navigate to All > Inventory Management > Transfer Orders.
2. Select a transfer order that is in the Received stage.
3. Click the transfer order line Number of the item to return.
4. Click Return.
5. Enter a quantity to return.
6. Enter a reason for the return.
7. Select the Defective check box to return items that are broken.
Defective items are returned to the stockroom from which they were delivered, but aren’t
added to available stock. Instead, they’re tracked in the separate category named "Defective"
so they can’t be requested or transferred again.
8. Click OK.
9. Click Update.
A new transfer order line is automatically created.
A new corresponding parent transfer order is also automatically created with the new transfer
order line on it.
10. If you’re returning a consumable, navigate to the transfer order line record, and click the model
name to open the model record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
The model record shows which stockrooms contain the model. The one defective model is
listed.

Note: The defective model is still at the stockroom to which it was delivered. The
defective model must be transferred back to the stockroom where it originated.
11. Move the new transfer order through the regular transfer order process.
Items are automatically returned to the stockroom from which they were delivered. A transfer
order line item that has been returned can’t be delivered later.
If you return another defective model from the same, original order, the two defective returns
are merged into one line item.
Create a transfer order for Asset Management
Create a transfer order in order to transfer assets from one location to the other.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to All > Inventory Management > Transfer Orders > Create Transfer Order.
2. Click the From stockroom list to select a stockroom from which the item(s) is to be shipped.
3. Click the To stockroom list to select a stockroom where the item(s) is to be shipped.
4. Click Submit.
Once the transfer order is created, you can create transfer order lines to specify the items that
the transfer order comprises of. See Create a transfer order line .
Create a transfer order line
Transfer order lines specify the exact items that comprise a transfer order.

Before you begin

Role required: inventory_user

About this task

A transfer order can contain one or more transfer order lines. Under a single transfer order, all
transfer order lines will have the same From location and To location. Each line contains an asset
to transfer and the quantity to transfer. The item to transfer is identified by asset name and model
name. A transfer order line can involve one quantity of a non-consumable asset or multiple
quantities of a consumable asset. A bundled model can be transferred.

Procedure
After creating a transfer order, click New in the Transfer Order Lines related list and fill in the
fields as appropriate.

Field

Description

Number

Internal unique number identifying the transfer order line.

Transfer
Order

The transfer order to which the transfer order line belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
Field

Description

Model

Model of the items requested by the transfer order line. For example, a printer. If the
Asset field is filled out first, the Model field is automatically filled in with the model
corresponding to the asset.

Quantity Number of items requested by the transfer order line. For example, 3 computers are
requested requested to be transferred.
Quantity
received

Number of items already received. For example, 3 keyboards are transferred, 2 are
received.

Stage

Current stage of the transfer order. Transfer order lines can only be created when a
transfer order is in Draft stage.

Request
line

Requested item to associate with the transfer order line.

Asset

Asset requested by the transfer order line. For example, a specific printer. The
asset can filter on stockrooms.

Quantity Number of items yet to be received. For example, 3 keyboards had been requested,
remaining 2 are received, 1 is remaining.
Quantity
returned

Number of items that already needed to be returned.

Create a customized template task
Create customized template tasks to configure your specific task workflow for transfer order lines.
Default template tasks are available with the Asset Management application. You can’t modify or
delete a default template task.

Before you begin

Role required: inventory_user

About this task

Template tasks help you progress through the various stages of the transfer order line. Custom
template tasks are stored in the Custom Template Task [alm_custom_template_task] table. The
template tasks are based on model categories. For example, when you create a customized
template task for the Application model category, whenever a transfer order line is created for the
Application model category, the template tasks associated with the Application model category
are used as transfer order line tasks. When you create customized template tasks, make a copy
of the Transfer Order Line workflow and update the workflow accordingly. For example, if you
need only four tasks out of five, you can delete the additional task from the workflow.

Note: Two template tasks can’t be created when they’re based on the same model
category, the same order number and the same stage. The model category, the order, and
the stage have to be unique for each template task. For example, you can’t create two
template tasks for Prepare for Shipment, based on the Application model category, order
number 200, and the stage as Requested. If you try to create an identical template task as
mentioned in the example, an error message is displayed.

Procedure
1. Navigate to All > Inventory > Transfer Order Lines > Template Tasks.
All the default template tasks that are available with the Asset Management application are
listed.
2. Click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
You can also customize a template task by copying a default template task. Click Copy Default
Template and select a model category.
3. Fill out the form fields (as shown in the table).

Field

Description

Task name

Name of the template task

Model category

Model category this template task is based
on.

Order

Order in which the template task is added to
the transfer order line.

Short description

Brief description about this template task.

Next stage

Stage that this template task gets executed.

4. Click Submit.
Create a template subtask
Create template subtasks to add granularity to the transfer order line tasks. For example, before
preparing for shipment, for a computer, you may want to create sub tasks for imaging the
computer or adding additional software.

Before you begin

Role required: inventory_user

About this task

The template subtasks that you create are stored in the Template Subtask
[alm_template_subtask] table. When a transfer order line task is created and if subtasks are
defined for that transfer order line task, then the subtasks are automatically added to the transfer
order line task.

Procedure
1. Navigate to All > Inventory > Transfer Order Lines > Template Subtasks.
2. Click New and fill out the form fields (as shown in the table).

Field

Description

Short Description

A brief description of the subtask.

Subtask name

A name for the subtask.

Task

The task that this subtask is associated to.

3. Click Submit.
Transfer order line asset tracking
As transfer order line actions are triggered, the stock information and states of any affected
assets are updated. Consumables and non-consumables are tracked differently.
When an asset is included in a transfer order line, the following takes place:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


<!-- page 1519 -->
• A substate field on the asset form changes to reflect the transfer order line states
• The Active TO option on the asset form is automatically selected to show that the asset is part
of a transfer order and cannot be added to multiple transfer orders
• The asset is removed from the pool of available assets and changed to a state of In Stock
Pending Transfer
Related topics
Delete a transfer order
Delete a transfer order line
Return items received in a transfer order
Transfer order line asset tracking of non-consumables
When transfer order line stages change for non-consumables, it affects asset substates.

Transfer order
line stage

Affect on asset substate

Draft

Asset moves to In Stock > Pending Transfer (from the current stockroom). If
the asset is a consumable, the quantity can be edited.

Requested

Asset stays in In Stock > Pending Transfer.

Shipment
Preparation

Asset stays in In Stock > Pending transfer.

In Transit

Asset moves to In Transit > Reserved.

Received

Asset moves to In Stock > Available (in the destination stockroom).

Delivered

Asset moves to In Stock > Reserved.

Related topics
Delete a transfer order
Delete a transfer order line
Return items received in a transfer order
Transfer order line asset tracking consumables
When a consumable is added to a transfer order line, the stock for the consumable is split into
two records and the transfer order links to the newly created stock line.
For example:
1. Stockroom A has ten keyboards in stock.
2. A transfer order line named TOL1 transfers three keyboards from stockroom A to stockroom B.
3. The stock of ten keyboards in A is split into two records: seven shown as In stock > Available
and three shown as In Stock > Pending Transfer.
4. Another transfer order is created with a transfer order line named TOL2 that transfers two
keyboards from stockroom A to stockroom B.
5. The seven remaining keyboards are split into another two lines: five In stock > Available and
two In stock > Pending Transfer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
Note: The three In Stock > Pending Transfer and the two In Stock > Pending Transfer
are not merged together because they are not part of the same transfer order line and not
necessarily from the same person.
6. As TOL2 for two keyboards moves from Draft to Requested to Shipment Preparation, TOL1 for
the three keyboards remains In Stock > Pending Transfer.
7. When TOL1 for the three keyboards moves to the In Transit stage, the three keyboards are
changed to the In Transit > Reserved stage. The same happens for TOL2 with two keyboards.
8. When TOL1 is Received, the three keyboards move to In stock > Available in stockroom B.
9. When TOL2 is received in stockroom B, the two keyboards move to In stock > Available and
are merged with the three keyboards that are also In Stock > Available in B.
10. At the end, stockroom B shows five keyboards are In Stock > Available.
Related topics
Delete a transfer order
Delete a transfer order line
Return items received in a transfer order
Perform bulk updates for transfer order lines
Update tasks for multiple transfer order lines at one go to streamline the transfer order process.

Before you begin

Transfer order lines enable the transfer of multiple assets on a transfer order. When you create
a transfer order line, a transfer order line task is automatically created. Transfer order line tasks
are created to move transfer order lines from one stage to the other. Each transfer order line can
have multiple tasks such as Requested, Shipment Preparation, In Transit. For information on
the stages of a transfer order line task, see Summary of transfer order line tasks.
Role required: inventory_user

Procedure
1. Navigate to All > Inventory > Transfer Order.
2. Select Bulk Update next to the Transfer Order Lines related list.
The system property sn_itam_tol_bulk_update_max_count determines the
maximum count of transfer order lines that would be processed during a single bulk update
operation.
The Bulk Update - Transfer Order Line dialog box appears.
3. In the Select a stage field, select the stage that you want to move this task to.
For example, if all the transfer order lines are currently in the Draft stage and you want to move
them to the next stage, which is Requested, select Requested in the Select a stage field.
All transfer order lines, along with the asset display names that are eligible to move to the
selected stage appear in the Available box.

Note: If there are no transfer order lines eligible to move to the selected stage, the
Available box doesn’t display any transfer order lines.

4. In the Assigned to field, select the person you want to assign this task to.
The Assigned to field defaults to the logged-in user.
5. Select the transfer order lines in the Available box and move them to the Selected box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
When you select the transfer order lines, you can view the model and asset display names
for hardware and consumable assets. For consumable assets, you can view additional details
such as quantity requested and quantity received.
6. Select Update.
All the selected transfer order line tasks and associated subtasks for the selected stage are
closed and the next task in the process is created. For example, all the transfer order line tasks
in the Requested stage are closed and the next task in the process Shipment Preparation, is
created.
7. Return to the Bulk Update - Transfer Order Line dialog box to continue this process until you
close all the tasks required for completing the transfer order line.

Example Asset Management process
The best method for managing assets depends on business needs and how your business is
organized.

Before you begin

Role required: asset

About this task

These steps are one possible process for getting started with Asset Management.

Procedure
1. Identify assets in your system.
A key component of asset management is the initial and ongoing inventory or discovery of
what you own. The ServiceNow platform provides the following options for asset discovery.
◦ The separate, robust Discovery tool.
◦ For organizations that want to use the discovery technologies they have deployed already,
such as SMS, Tally NetCensus, LanDesk, or others, ServiceNow can support integration
to those technologies via web services. Scanned data can be mapped directly into the
Configuration Management Database (CMDB).
2. Clean up information in the CMDB.
Remove information that is obsolete or invalid. Ensure that all remaining information is
accurate and complete. Add any necessary information.
3. Create categories of asset models such as computers, servers, printers, and software.
4. Create asset models.
Models are specific versions or various configurations of an asset, such as a MacBook Pro 17".
5. Create individual assets, such as hardware, consumables, and software licenses.
If you used a discovery tool, you may already have many assets identified accurately.
6. Manage assets by counting software licenses, viewing assets that are in stock, setting asset
states and substates, and analyzing unallocated software.

Use Organization Management
The Organization Management application provides an easy way to perform such asset
management tasks as updating users and adding vendors.
It includes managing your vendors and manufacturers, as well as managing locations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
Create a new vendor or manufacturer
You can create a new vendor, which is a company that sells assets or services that your
organization purchases. You can also create a new manufacturer, which is a company that builds
assets that your organization purchases.

Before you begin

Role required: user_admin and asset

Procedure
1. Navigate to one of the following:
◦ Organization > Vendors
◦ Organization > Manufacturers
◦ Organization > Companies
2. Click New and create a new record.
3. Complete the form and select either Manufacturer or Vendor.

Note: A company can be considered both a vendor and a manufacturer.
4. Click Submit.
Locations module
The Locations module is the Asset view of the Location table [cmn_location].
In addition to the physical specifics for the location, the Asset view includes the Stock room
designation and a list of configuration items (CI) in stock at that location.
Asset location

Asset Management references
Reference topics provide additional information about the lists and forms that you use to
configure and administer Asset Management.

Domain separation and Asset Management
Domain separation is supported in Asset Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Quick start test for Asset Management
Validate that Asset Management still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.

Asset Management
Asset Management quick start tests requires the Asset Management plugin
(com.snc.asset_management).
Asset Management test
Name

Description

Release version

Asset Sourcing - Consume
local asset stock

Validates the consume local
asset stock flow.

Yokohama

Related topics
Quick start tests

Installed with Asset Management
Several tables, user roles, UI policies, script includes, client scripts, and business rules are
installed with Asset Management.
Demo data is available with asset management. The demo data provides information such as
users, assets, and individual stockrooms.

Tables
Asset Management includes the following tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
Asset Management tables
Table

Description

Asset [alm_asset]

Stores general, financial, and contractual information about
assets.

Asset Entitlement
[alm_entitlement_asset]

Enables ServiceNow to categorize the Asset Entitlement table
and enforce how entitlements behave.

Consumable
[alm_consumable]

Stores data about consumable assets (previously known as
parts).

Default Stockroom
[alm_user_stockroom]

Stores the relationship between a user and their default
stockroom.

Fixed Assets
[alm_fixed_assets]

Stores fixed assets, which are containers that can hold multiple
assets.

Fixed asset to asset
[m2m_fixed_asset_to_asset]

Stores associations between fixed assets and assets.

Hardware [alm_hardware]

Stores general, financial, and contractual information about
hardware assets.

License Entitlement
[alm_entitlement]

Stores entitlements that permit users or machines to use a
software license.

Software License
[alm_license]

Stores general, financial, and contractual information about
software license assets.

Stock Rule [alm_stock_rule]

Transfers stock or sends an email message to the asset
manager when a specified asset drops below a set threshold.

Stockroom [alm_stockroom]

Stores information about stockrooms.

Stockroom Model
Tracks all models that have ever been stocked in a stockroom.
[alm_m2m_stockroom_model] This table is automatically populated.
Stockroom Type
[alm_stockroom_type]

Stores general information about stockroom types.

Transfer Order
[alm_transfer_order]

Contains data about transfer orders, including the state and
stockrooms.

Note: The inventory_user, asset, or procurement_user
role can only access the reports. You must activate
the Procurement (com.snc.procurement) plugin for the
inventory_user, asset, and procurement_user roles.
Transfer Order Line
[alm_transfer_order_line]

Contains data about individual assets being shipped with a
transfer order.

User Entitlement
[alm_entitlement_user]

Enables ServiceNow to categorize the User Entitlement table
and enforce how entitlements behave.

User roles
Asset Management includes the following user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
Asset Management user roles
Role

Contains roles

Tasks

• category
manager

• Manage hardware and consumable assets
([alm_hardware] and [alm_consumable]).

• contract
manager

• Asset manager can’t edit asset records that are created
and updated automatically, but can read and delete the
asset records when needed.

asset (Asset
Manager)

• financial
mgmt user
• inventory
user
• procurement
user
inventory_admin inventory user

• Create requests.
• Create and delete stock information.
• Access to requests, purchase orders, and base system
catalog tasks.

• Create and delete stock information.
• Edit stock rules, stockrooms, and stockroom types.

inventory_user

none

• Access stock information.
• Create and manage transfer orders.

sam

• contract
manager
• model
manager
• financial
mgmt user

• Create, edit, change, and manage software licenses.
• Edit the Software model field on a Discovery models and
software installations.
• Approve a model. Has full control of the Software Asset
Management application.
• Controls the Software Asset Management IBM PVU
Process Pack, if activated.

UI policies
Asset Management includes the following UI policies.
Asset Management UI policies
Name

Table

Description

Hide asset tag and
serial num

[alm_asset]

Hides the asset tag when the asset is pre-allocated
and the quantity is greater than 1.

Hide/show parent
stockroom on
Stockroom Replenish

[alm_stock_rule]

Shows the Parent stockroom field only when the
Restocking option field is set to Stockroom.

Make allocated to and
assigned to required.

License
Makes the Allocated to and Assigned to fields
Entitlement
required.
[alm_entitlement]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
Asset Management UI policies (continued)
Name

Table

Description

Make substatus read[alm_asset]
only when not required

Sets the Substatus to read-only if the State is On
order, In use, Consumed, or In maintenance.

Model bundle field
hidden but present for
UI Policy conditions
purposes

[alm_asset]

Hides the Model Bundle field. Exists on page only
for use by UI policies and client scripts.

Pre-allocated
constraints

[alm_asset]

Hides unneeded fields and related lists when the
asset is pre-allocated.

Quantity readonly until
model and category
qualify the asset and
are not bundle

[alm_asset]

Sets the Quantity field to read-only for assets that
aren’t consumable, software, or pre-allocated.
Quantity is also read-only if the model or model
category fields are empty.

Show 'Assigned to'

[alm_asset]

Shows the Assigned to field if the State field is
notOn order, In stock, or In transit.

Show 'Reserved for'

[alm_asset]

Shows the Reserved for field if the State field is On
order, In stock, or In transit.

Show 'Stockroom'

[alm_asset]

Shows the Stockroom field if either of the following
conditions is true:
• The State field is In stock and Substate isn’t Preallocated.
• The Substate is Pre-allocated and Parent is
empty.

Script includes
Asset Management includes the following script includes.
Asset Management script includes
Name

Description

AssetandCI

Code for creating and managing the relationship between asset
and CI records.

AssetAndCISynchronizer

Synchronization code between asset and CI records.

AssetUtils

Utility functions for asset management. Also checks if a license
can be merged and then merges licenses if requirements are met.

AssetUtilsAJAX

AJAX-based utility functions for asset management. Call the
AssetUtils script include from a client-side UI action.

Consumables

Code to change (for example, consume, split, and merge)
consumables.

FixedAssetUtils

Methods for rolling up fixed asset costs.

PortalFilters

Filters used in the My Assets portal.

PreAllocatedAssets

Code to change pre-allocated assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
Asset Management script includes (continued)
Name

Description

StockRuleFilters

Reference qualifier code for filtering options on reference fields
on stock rules.

StockRuleTransfer

Transfer order creation code for when stock rules are triggered.

TransferOrderDateTimeAjax Date comparison utility for transfer orders.
TransferOrderFilters

Reference qualifier code for reference field filtering options on
transfer orders.

TransferOrderFinder

Finds an appropriate transfer order to put a transfer order line
into.

TransferOrderHelper

Function that checks if a transfer order has multiple transfer order
lines.

TransferOrderLineFilters

Reference qualifier code for reference field filtering options on
transfer order lines.

TransferOrderReceiver

Code for receiving a transfer order line.

TransferOrderReturn

Code for returning a transfer order line.

TransferOrderStageHandler Code for changing transfer order stages and transfer order line
stages.
TransferOrderStageHelper

Helper method to get numeric stages for transfer orders and
transfer order lines.

Client scripts
Asset Management includes the following client scripts.
Asset Management client scripts
Name

Table

Description

Correct
substatus

[alm_asset]

Updates the Substatus field when the Status field is
modified.

Ensure no
negative
quantity

[alm_asset]

Clears the Quantity field when set to less than 1.

Error on preallocated
substatus

[alm_consumable]

Prevents Substatus field from being set to be Preallocated for consumable assets. Also displays an
error message.

Error on preallocated
substatus

[alm_license]

Prevents Substatus field from being set to be Preallocated for license assets. Also displays an error
message.

Null out
allocated_to

[alm_entitlement]

Does the following when the Assigned to field is
set:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
Asset Management client scripts (continued)
Name

Table

Description

• Clears the Allocated to field and makes it not
required.
• Makes the Assigned to field required.
Null out
assigned_to

[alm_entitlement]

Does the following when the Allocated to field is
set:
• Clears the Assigned to field and makes it not
required.
• Makes the Allocated to field required.

Salvage must
be less than
cost

[alm_asset]

Displays a warning if a salvage value greater than
the cost of an asset is entered.

Set Cost of the
Asset

[alm_asset]

Populates the Cost field when the Model field is
set.

Set Loc/
CC/Dep/Com
from assigned
to

[alm_asset]

Populates the Location, Cost center, Department,
and Company fields when the Assigned to field is
set.

Set Location
[alm_asset]
from stockroom

Populates the Location field when the Stockroom
field is set.

Update From
Location from
Stockroom

Populates the From location field when the From
stockroom field is set.

[alm_transfer_order]

Update Model [alm_transfer_order_line] Populates the Model field when the Asset field is
and Quantity
set. If the asset is a pre-allocated asset, this client
based on Asset
script also populates the Quantity field.
Update To
Location from
Stockroom

[alm_transfer_order]

Populates the To location field when the To
stockroom field is set.

Update UI on
[alm_transfer_order_line] Runs checks, and updates the user interface, when
load and model
the transfer order line form is loaded and when a
change
model is selected.
Validate
Delivery by
Date

[alm_transfer_order]

Validates that the delivery date is in the future.

Verify Stock
Available

[alm_transfer_order_line] Verifies that stock exists to fulfill the quantity
requested.

Verify Stock
Available
(Stockroom)

[alm_transfer_order_line] Verifies that stock exists to fulfill the quantity
requested when the From stockroom value
changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
Business rules
Asset Management includes the following business rules.
Asset Management business rules
Name

Table

Description

Allocated more
licenses than
rights

Software License
[alm_license]

Prevents creation or update of a license if the
number of licenses allocated is larger than the
total rights.

Asset
Retirement

Asset [alm_asset]

Clears the Assigned to, Stockroom, and Reserved
for fields and sets the retirement date to the
current time when the asset is retired.

Automatically
Change TOL
State

Transfer Order Line
If a transfer order has the same From stockroom
[alm_transfer_order_line] and To stockroom and it’s a personal stockroom,
this business rule:
• Sets the transfer order line Stage to Delivered.
• Sets the asset Substate to Reserved.
If a transfer order has the same From stockroom
and To stockroom and it isn’t a personal
stockroom, this business rule:
• Sets the transfer order Stage to Received.
• Sets the asset Substate to Pending transfer.

Build bundle
Asset [alm_asset]
components on
Insert

Creates assets for the components related to
a bundle if the model of the created asset is a
bundle.

Clear Assigned
To on update

Asset [alm_asset]

Clears the Assigned to field if the State field
changes to On order, In stock, or In transit.

Clear fields
irrelevant for
preallocated

Asset [alm_asset]

Clears the value of fields that are irrelevant for preallocated assets.

Create Asset on Configuration Items
insert
[cmdb_ci]

Creates a corresponding asset when a new
configuration item with no asset is created.

Create asset on Configuration Items
model change
[cmdb_ci]

Creates a new associated asset when the Model
ID field changes.

Create CI on
insert

Asset [alm_asset]

Creates a corresponding configuration item when
a new asset with no configuration item is created.

Create
Stockroom
Model Relation

Asset [alm_asset]

Creates a record (if none exists) in the Stockroom
Model table indicating the stockroom that holds
the model when an asset is created or updated.

Delete all
Transfer Order
Lines

Transfer Order
[alm_transfer_order]

Deletes all related transfer order lines when a
transfer order is deleted.

Ensure
Entitlements

License Entitlement
[alm_entitlement]

Checks that the total number of entitlements for
the related license doesn’t exceed the number of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
Asset Management business rules (continued)
Name

Table

do not exceed
rights

Description

rights given by the license when an entitlement is
created.

GenerateAssets Model Categories
Executes a scheduled script job to create assets
[cmdb_model_category] for configuration items.
Inherit
information
from parent

Asset [alm_asset]

Assigns some parent values to the asset when
assigning a new parent to an asset.

Managed
Stockroom for
Vendor

Stock Rule
[alm_stock_rule]

Validates that a vendor replenishing stock rule has
a stockroom selected and the stockroom has an
related manager with a valid email address.

Mandate
allocated to or
assigned to

License Entitlement
[alm_entitlement]

Makes a value in either the Allocated to field or the
Assigned to field required.

Merge Records

Consumable
[alm_consumable]

Merges consumables that have matching fields
and aren’t In Transit into one record containing the
total count.

Null out asset
on insert and
stay

Configuration Items
[cmdb_ci]

Clears the Asset field on insert when the field
includes an asset that has a CI.

Null out Ci on
insert and stay

Asset [alm_asset]

Nulls out the asset field so a new asset is created
for the CI when an insert is performed on an
existing CI.

Populate
reserved for
field

Transfer Order Line
If the transfer order line has an related request
[alm_transfer_order_line] line, this business rule populates the related
asset's Reserved for field with the appropriate
information from the request line.

Push Status
to Asset/
Consumable

Transfer Order Line
Changes the corresponding asset to reflect the
[alm_transfer_order_line] current state of transit when a transfer order line
moves to another state.

Release Asset
on TOL cancel/
delete

Transfer Order Line
Places the corresponding asset back into stock
[alm_transfer_order_line] and unsources the part requirement when a
transfer order line in the draft state is canceled or
deleted.

Rollup TOL
cancellation to
TO

Transfer Order Line
Signals to the corresponding transfer order that
[alm_transfer_order_line] the transfer order line has been canceled.

Salvage value
must be less
than cost

Asset [alm_asset]

Prevents saving an asset record if the salvage
value is greater than the cost.

Sanity check on Asset [alm_asset]
pre-allocated

Prevents creation or update of pre-allocated
assets if they don’t satisfy the conditions to be preallocated.

Set Class

Sets the class for this entitlement depending on
the entitlement is assigned or allocated.

License Entitlement
[alm_entitlement]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
Asset Management business rules (continued)
Name

Table

Description

Set Transfer
Order Type

Transfer Order
[alm_transfer_order]

Sets the type of the transfer order depending on
whether there’s a related service order or work
order task.

Sync model
category

Product Models
[cmdb_model]

When the model category changes, this business
rule creates assets if they didn’t previously exist
for configuration items associated with the model.

Transfer Order
Stockroom
Rules

Transfer Order
[alm_transfer_order]

Prevents the From stockroom field from being
changed if the transfer order has multiple transfer
order lines.

Transition
reserved to
assigned

Asset [alm_asset]

Populates the Assigned to field with the value from
the Reserved for field when the asset is in the
appropriate state.

Trickle
information
down to
components

Asset [alm_asset]

Updates components of an asset to reflect any
changes that have been made to the asset record.

Update Asset
fields on
change

Configuration Items
[cmdb_ci]

Synchronizes fields so changes made on the
Configuration Item form trigger the same update
on the corresponding Asset form, ensuring
consistent reporting. You must update statuses on
the Asset form.

Update CI fields Asset [alm_asset]
on change

Synchronizes fields so changes made on the
Asset form trigger the same update on the
corresponding Configuration Item form, ensuring
consistent reporting.

Update location Asset [alm_asset]
as needed

Updates the location of the asset, if the asset is set
to a new stockroom or assigned to a new user.

Validate Field
Agent Type

Stockroom
[alm_stockroom]

Ensures that you don’t create a stockroom of the
type Field Agent without Work Management or
Field Service Management activated. Allows for
only one personal stockroom per user.

Validate TOL
and check
availability

Transfer Order Line
Validates changes made to the transfer order line
[alm_transfer_order_line] and checks the availability of the assets to be
transferred in the specified stockroom.

Validate
transfer order

Transfer Order
[alm_transfer_order]

Validates that the Delivery by date isn’t earlier than
the current date.

Validate Unique Default Stockroom
Users
[alm_user_stockroom]

Prevents the creation of multiple records with the
same user.

Verify
Entitlement
(Allocated)

License Entitlement
[alm_entitlement]

Ensures that the allocation of the entitlement
follows the allocation condition on the license
when a condition exists.

Verify
Entitlement
(Assigned)

License Entitlement
[alm_entitlement]

Ensures that the assignee of the entitlement
follows the assignment condition on the license
when a condition exists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Asset Management business rules (continued)
Name

Table

Description

Verify
Entitlements
(Allocated)

Software License
[alm_license]

Ensures that the allocations of all the license's
entitlements follow the allocation condition on the
license when a condition exists.

Verify
Entitlements
(Assigned)

Software License
[alm_license]

Ensures that the assignees of all the license's
entitlements follow the assignment condition on
the license when a condition exists.

Verify Not Field
Agent

Default Stockroom
[alm_user_stockroom]

Verifies that the selected default stockroom isn’t of
the Field Agent type.

Installed with Model Management
Several types of components are installed with Model Management.
Demo data is available with Model Management.
Business rules installed with Model Management
Model Management uses a number of business rules.

Name

Table

Description

Abort action
if no license
type

[cmdb_software_product_model] Ensures that a license type (not a license type group
that cannot be handled by counters) has been
selected.

Calculate
display_name

Product Model [cmdb_model]

Sets the Display name field when any of the
following field values change: Manufacturer,
Name, Version, Edition. The display
name differs depending on whether the

glide.cmdb_model.display_name.shorten
property is set to true or false.
Date
validation

[cmdb_m2m_downgrade_model] Ensures that the Start date is before the End date.

Enforce CI
Rules

[cmdb_model_category]

Flag parent
as bundle on
creation

[cmdb_m2m_model_component] Flags a model that has components as a bundle.

License Type - [cmdb_sw_license_calculation]
Fullname
License
validation

Ensures that categories that track assets as
consumables or software licenses do not have a CI
class.

Computes the full name of the license type.

Software Upgrade
Prevents software upgrades and downgrades from
and Downgrades
being duplicated and prevents having duplicate
[cmdb_m2m_downgrade_model] upgrades and downgrades for the same license
where duplication also involves having the same
dates. Also ensures that both the Upgrade parent and
Downgrade child fields are mandatory and that if the
License field is not empty, either Upgrade parent or
Downgrade child must be equal to the license.model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
Name

Table

Description

Protect
[cmdb_model_category]
cmdb_ci_class

Prevents CI class from being changed after creation.

Protect
[cmdb_model_category]
cmdb_ci_class
on insert

Prevents creation of a category if another category
already exists for the chosen CI class.

Protect
Contract

[cmdb_model_category]

Prevents changes to the Contract model category
record.

Set parent's
main
component
link

[cmdb_m2m_model_component] Populates a read-only reference from the bundle to
the component when a bundle component is selected
as the main component.

Unflag parent
on last delete

[cmdb_m2m_model_component] Removes the bundle flag from a model when the last
component is deleted from the bundle.

Update model [cmdb_ci]
category
Validate
record before
creation

Updates the model categories for the associated
model if the model is not already associated with the
CI's model category.

[cmdb_m2m_model_component] Ensures that a component is not already in a bundle
when an attempt is made to add the component to a
bundle.

Client scripts installed with Model Management
Model Management includes a number of client scripts.

Name

Table

Clear models
not matching
license

[cmdb_m2m_downgrade_model] Clears the Upgrade parent and
Downgrade child fields when the License
field is changed to a license and neither
the upgrade or downgrade fields match
the license model.

Constraints
based on asset
class

[cmdb_model_category]

Enables or disables bundling options
based on the asset class of the category.

Hide sections
when needed

[cmdb_model]

Shows and hides sections according to
what is relevant for a given model.

model_category [cmdb_model]
change

Description

Ensures compatibility of classes between
the several categories referenced by the
same model (client part).

Populate
downgrade
from license

[cmdb_m2m_downgrade_model] Sets the downgrade child to the software
model on the referenced license when
an upgrade is selected. Only sets the
downgrade to the license if the license is
not empty.

Populate
upgrade from
license

[cmdb_m2m_downgrade_model] Sets the upgrade parent to the software
model on the referenced license when
a downgrade is selected. Only sets the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
Name

Table

Description

upgrade to the license if the license is not
empty.
Properties installed with Model Management
Model Management includes the property

glide.cmdb_model.display_name.shorten.
Name

Description

glide.cmdb_model.display_name.shorten When set to true, generates shorter
display names for models by
eliminating duplication of the
manufacturer name. Consider
the following model, for which
Manufacturer is set to Spotify and
Name is set to Spotify Premium.
The Display name field is set as
follows, based on the property setting.
• false: Display name is Spotify Spotify
Premium
• true: Display name is Spotify
Premium
For software models, the edition and
version are also included in the name,
if they are specified.
• Type: true | false
• Default value: false
• Location: System Properties
[sys_properties] table
Script includes installed with Model Management
Model Management includes script includes.

Name

Description

ModelAndCategoryFilters Refines reference qualifiers for models and model categories based
on class.
ModelCategoryCheck

Ensures compatibility of classes between the several categories
referenced by the same model.

Tables installed with Model Management
Model Management includes numerous tables.

Table

Description

Application Model
[cmdb_application_product_model]

Stores models used to describe software application
products.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Table

Description

Consumable Model
Describes consumable product models.
[cmdb_consumable_product_model]
Contract Model
[cmdb_contract_product_model]

Stores all contract models.

Depreciation [cmdb_depreciation]

Stores asset depreciation patterns.

Hardware Model
[cmdb_hardware_product_model]

Describes hardware product models.

Model Category
[cmdb_model_category]

Defines groups of assets, consumables, product
bundles, and configuration items.

Model Compatibility
[cmdb_m2m_model_compatibility]

Stores many-to-many relationship between two models
signifying their compatibility with one another.

Model Component
[cmdb_m2m_model_component]

Stores many-to-many relationship between two models
signifying that they form a bundle.

Product model [cmdb_model]

Describes all kinds of product models.

Software License Calculation
[cmdb_sw_license_calculation]

Defines commonly used software licensing patterns.

Software Model
[cmdb_software_product_model]

Describes software product models.

Software Suite
[cmdb_m2m_suite_model

Stores many-to-many relationship between two models
that defines elements of a software suite.

Software Upgrade and Downgrades
[cmdb_m2m_downgrade_model]

Stores many-to-many relationship between two models
signifying that being licensed for one model grants
rights to the other as well.

UI policies installed with Model Management
Model Management includes UI policies.

Name

Table

Description

Hide
Model Category
unverified [cmdb_model_category]

Shows the Enforce CI verification field if the
Asset class and CI class fields are not empty.

Model Category
Lock
[cmdb_model_category]
fields for
Contract
and Work

Sets all fields on the Model Category form to
read-only if the Name is Contract or, Work
Order or Work Task.

Lock
fields for
Contract
Protect
model
category

Product Model [cmdb_model]

Makes the Model categories field mandatory
and read-only if it contains any of the following
values: Software License, Contract, Work
Order, Work Task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


